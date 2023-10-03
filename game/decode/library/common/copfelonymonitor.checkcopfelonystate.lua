export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/FelonyChaseMonitor.lua")
  cbox:RegisterBox("Domino/System/FelonyState.lua")
  cbox:RegisterBox("Domino/System/FelonySystemController.lua")
  cbox:RegisterBox("Domino/System/FelonyType.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v2.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
end
function export:Init(cbox)
  local l0
  self.NoCopFelony = DummyFunction
  self.EvadedInsideZone = DummyFunction
  self.EvadedOutsideZone = DummyFunction
  self.BeingChased = DummyFunction
  self.Player = nil
  self.IsCopFelony = 0
  self[14] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_14_Out_0
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_1_Out_0
  l0.ResetOut = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_6_Disabled
  l0.EnterRadius = self.f_6_EnterRadius
  l0.ExitRadius = self.f_6_ExitRadius
  self[2] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_2_Out_0
  l0.ResetOut = DummyFunction
  self[15] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_15_Out_0
  l0.ResetOut = DummyFunction
  self[5] = cbox:CreateBox("Domino/System/FelonyChaseMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = DummyFunction
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = self.f_5_ScanSuccess
  l0.ScanFailure = DummyFunction
  l0.Chasing = self.f_5_Chasing
  l0.Searching = self.f_5_Searching
  l0.Evaded = self.f_5_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self[10] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_10_Out_0
  l0.ResetOut = DummyFunction
  self[12] = cbox:CreateBox("Domino/System/FelonyType.lua")
  l0 = self[12]
  l0._graph = self
  l0.None = self.f_12_None
  l0.Police = self.f_12_Police
  l0.Club = self.f_12_Club
  l0.Viceroy = self.f_12_Viceroy
  l0.Fixer = self.f_12_Fixer
  l0.Pawnee = self.f_12_Pawnee
  l0.MadnessPill = self.f_12_MadnessPill
  l0.SpiderPill = self.f_12_SpiderPill
  l0.CTOS = self.f_12_CTOS
  self[7] = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.DisplayRequested = DummyFunction
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_7_HideRequested
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
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
  self:en_3()
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0:In()
end
function export:Reset()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0:In()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  l0 = self[12]
  l0:GetFelonyType()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Reset()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:In()
  l0 = self[2]
  l0:Reset()
  l0 = self[1]
  l0:Reset()
end
function export:f_14_Out_0()
  self = self._graph
  self:NoCopFelony()
end
function export:f_8_Disabled()
  self = self._graph
  self:NoCopFelony()
end
function export:f_1_Out_0()
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
  l0.Disabled = self.f_8_Disabled
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
function export:f_6_Disabled()
  self = self._graph
  self:EvadedOutsideZone()
end
function export:f_6_EnterRadius()
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
  l0.Disabled = self.f_9_Disabled
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
function export:f_6_ExitRadius()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Disable()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0.CheckNow = 1
  l0:Start()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:In()
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  self:en_3()
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0:In()
end
function export:f_15_Out_0()
  self = self._graph
  self:BeingChased()
end
function export:f_5_Chasing()
  local l0
  self = self._graph
  l0 = self[10]
  l0:In(0)
end
function export:f_5_Evaded()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Hide()
end
function export:f_5_ScanSuccess()
  local l0
  self = self._graph
  l0 = self[10]
  l0:In(0)
end
function export:f_5_Searching()
  local l0
  self = self._graph
  l0 = self[10]
  l0:In(0)
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0:In(0)
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:In()
  l0 = self[14]
  l0:Reset()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Display()
end
function export:f_12_Club()
  local l0
  self = self._graph
  l0 = self[12]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[14]
  l0:In(0)
end
function export:f_12_CTOS()
  local l0
  self = self._graph
  l0 = self[12]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[14]
  l0:In(0)
end
function export:f_12_Fixer()
  local l0
  self = self._graph
  l0 = self[12]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[14]
  l0:In(0)
end
function export:f_12_MadnessPill()
  local l0
  self = self._graph
  l0 = self[12]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[14]
  l0:In(0)
end
function export:f_12_None()
  local l0
  self = self._graph
  l0 = self[12]
  self.IsCopFelony = l0.IsCopFelony
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:In()
end
function export:f_12_Pawnee()
  local l0
  self = self._graph
  l0 = self[12]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[14]
  l0:In(0)
end
function export:f_12_Police()
  local l0
  self = self._graph
  l0 = self[12]
  self.IsCopFelony = l0.IsCopFelony
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  l0.player = self.Player
  l0._graph = self
  l0.Free = self.f_4_Free
  l0.BeingScanned = self.f_4_BeingScanned
  l0.ScannedSuccessfully = self.f_4_ScannedSuccessfully
  l0.Chased = self.f_4_Chased
  l0.Evaded = self.f_4_Evaded
  l0.InvalidPlayer = DummyFunction
  l0:GetFelonyState()
end
function export:f_12_SpiderPill()
  local l0
  self = self._graph
  l0 = self[12]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[14]
  l0:In(0)
end
function export:f_12_Viceroy()
  local l0
  self = self._graph
  l0 = self[12]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[14]
  l0:In(0)
end
function export:f_9_Disabled()
  self = self._graph
  self:EvadedInsideZone()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Reset()
end
function export:f_7_HideRequested()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Enable()
end
function export:f_4_BeingScanned()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In(0)
end
function export:f_4_Chased()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In(0)
  l0 = self[15]
  l0:In(0)
end
function export:f_4_Evaded()
  local l0
  self = self._graph
  l0 = self[1]
  l0:In(0)
end
function export:f_4_Free()
  local l0
  self = self._graph
  l0 = self[1]
  l0:In(0)
end
function export:f_4_ScannedSuccessfully()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In(0)
end
function export:en_3()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_3_Out
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Entity1 = self.NewMissionZone
  l0.Entity2 = self.Player
  l0.Radius = 125
  l0.CheckNow = 1
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.MessageType = "MissionUpdate"
  l0.OasisID_1 = {
    section = "MISSIONS.MAIN.OBJECTIVES.Act_01.Driving_Mission_0.Objective_018_EscapePolice",
    item = "Description",
    id = "177104"
  }
  l0.Duration = -1
end
function export:NoCopFelony()
end
function export:EvadedInsideZone()
end
function export:EvadedOutsideZone()
end
function export:BeingChased()
end
_compilerVersion = 4
