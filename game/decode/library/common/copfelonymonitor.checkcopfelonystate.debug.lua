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
  self._name = "CheckCopFelonyState"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState"
  self.NoCopFelony = DummyFunction
  self.EvadedInsideZone = DummyFunction
  self.EvadedOutsideZone = DummyFunction
  self.BeingChased = DummyFunction
  self.Player = nil
  self.IsCopFelony = 0
  self.box_OnceOnly_v2_14 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_14
  l0._graph = self
  l0._name = "box_OnceOnly_v2_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|490493720"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_14_Out_0
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v2_1 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_1
  l0._graph = self
  l0._name = "box_OnceOnly_v2_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|735602032"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_1_Out_0
  l0.ResetOut = DummyFunction
  self.box_Proximity_Monitor_6 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_6
  l0._graph = self
  l0._name = "box_Proximity_Monitor_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|758630645"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_6_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_6_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_6_ExitRadius
  self.box_OnceOnly_v2_2 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_2
  l0._graph = self
  l0._name = "box_OnceOnly_v2_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|786658144"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_2_Out_0
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v2_15 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_15
  l0._graph = self
  l0._name = "box_OnceOnly_v2_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1480707137"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_15_Out_0
  l0.ResetOut = DummyFunction
  self.box_FelonyChaseMonitor_5 = cbox:CreateBox("Domino/System/FelonyChaseMonitor.lua")
  l0 = self.box_FelonyChaseMonitor_5
  l0._graph = self
  l0._name = "box_FelonyChaseMonitor_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1610251179"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = DummyFunction
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = self.f_box_FelonyChaseMonitor_5_ScanSuccess
  l0.ScanFailure = DummyFunction
  l0.Chasing = self.f_box_FelonyChaseMonitor_5_Chasing
  l0.Searching = self.f_box_FelonyChaseMonitor_5_Searching
  l0.Evaded = self.f_box_FelonyChaseMonitor_5_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self.box_OnceOnly_v2_10 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_10
  l0._graph = self
  l0._name = "box_OnceOnly_v2_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1852371818"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_10_Out_0
  l0.ResetOut = DummyFunction
  self.box_FelonyType_12 = cbox:CreateBox("Domino/System/FelonyType.lua")
  l0 = self.box_FelonyType_12
  l0._graph = self
  l0._name = "box_FelonyType_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1854075992"
  l0.None = self.f_box_FelonyType_12_None
  l0.Police = self.f_box_FelonyType_12_Police
  l0.Club = self.f_box_FelonyType_12_Club
  l0.Viceroy = self.f_box_FelonyType_12_Viceroy
  l0.Fixer = self.f_box_FelonyType_12_Fixer
  l0.Pawnee = self.f_box_FelonyType_12_Pawnee
  l0.MadnessPill = self.f_box_FelonyType_12_MadnessPill
  l0.SpiderPill = self.f_box_FelonyType_12_SpiderPill
  l0.CTOS = self.f_box_FelonyType_12_CTOS
  self.box_MissionModuleBox_v2_7 = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self.box_MissionModuleBox_v2_7
  l0._graph = self
  l0._name = "box_MissionModuleBox_v2_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|2059649540"
  l0.DisplayRequested = DummyFunction
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_box_MissionModuleBox_v2_7_HideRequested
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
  self:OnEnter_box_Get_Player_ID_3()
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|956151571", "956151571", "CheckCopFelonyState", "In", "box_Get_Player_ID_3.In", self, l0)
  l0:In()
end
function export:Reset()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|930275993"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|242722755", "242722755", "CheckCopFelonyState", "Reset", "box_Ordered_Output_16.In", self, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FelonyType_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1502610228", "1502610228", "CheckCopFelonyState", "box_Get_Player_ID_3.Out", "box_FelonyType_12.GetFelonyType", clone, l0)
  l0:GetFelonyType()
end
function export:f_box_Simple_Node_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_15()
  l0 = self.box_OnceOnly_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|253462599", "253462599", "CheckCopFelonyState", "box_Simple_Node_18.Out", "box_OnceOnly_v2_15.Reset", clone, l0)
  l0:Reset()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|2044169149"
  l0.Out = self.f_box_Simple_Node_19_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|290766507", "290766507", "CheckCopFelonyState", "box_Simple_Node_18.Out", "box_Simple_Node_19.In", clone, l0)
  l0:In()
  self:OnEnter_box_OnceOnly_v2_2()
  l0 = self.box_OnceOnly_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1404566715", "1404566715", "CheckCopFelonyState", "box_Simple_Node_18.Out", "box_OnceOnly_v2_2.Reset", clone, l0)
  l0:Reset()
  self:OnEnter_box_OnceOnly_v2_1()
  l0 = self.box_OnceOnly_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1805575137", "1805575137", "CheckCopFelonyState", "box_Simple_Node_18.Out", "box_OnceOnly_v2_1.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_OnceOnly_v2_14_Out_0()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|483331614", "483331614", "CheckCopFelonyState", "box_OnceOnly_v2_14.Out", "NoCopFelony", l0, self)
  self:NoCopFelony()
end
function export:f_box_FelonySystemController_8_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1849865593", "1849865593", "CheckCopFelonyState", "box_FelonySystemController_8.Disabled", "NoCopFelony", clone, self)
  self:NoCopFelony()
end
function export:f_box_OnceOnly_v2_1_Out_0()
  local l0, l1
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
  l0._name = "box_FelonySystemController_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|725065465"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_8_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_OnceOnly_v2_1
  l1 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1389140255", "1389140255", "CheckCopFelonyState", "box_OnceOnly_v2_1.Out", "box_FelonySystemController_8.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Proximity_Monitor_6_Disabled()
  local l0
  self = self._graph
  l0 = self.box_Proximity_Monitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1484761929", "1484761929", "CheckCopFelonyState", "box_Proximity_Monitor_6.Disabled", "EvadedOutsideZone", l0, self)
  self:EvadedOutsideZone()
end
function export:f_box_Proximity_Monitor_6_EnterRadius()
  local l0, l1
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
  l0._name = "box_FelonySystemController_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1876394428"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_9_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_Proximity_Monitor_6
  l1 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|796359788", "796359788", "CheckCopFelonyState", "box_Proximity_Monitor_6.EnterRadius", "box_FelonySystemController_9.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Proximity_Monitor_6_ExitRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_6()
  l0 = self.box_Proximity_Monitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|483440696", "483440696", "CheckCopFelonyState", "box_Proximity_Monitor_6.ExitRadius", "box_Proximity_Monitor_6.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_OnceOnly_v2_2_Out_0()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyChaseMonitor_5
  l0.CheckNow = 1
  l0 = self.box_OnceOnly_v2_2
  l1 = self.box_FelonyChaseMonitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1690520520", "1690520520", "CheckCopFelonyState", "box_OnceOnly_v2_2.Out", "box_FelonyChaseMonitor_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1847953781"
  l0.Out = self.f_box_Simple_Node_17_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|90638403", "90638403", "CheckCopFelonyState", "box_Ordered_Output_16.Out", "box_Simple_Node_17.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Get_Player_ID_3()
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|315955480", "315955480", "CheckCopFelonyState", "box_Ordered_Output_16.Out", "box_Get_Player_ID_3.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v2_15_Out_0()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1969072036", "1969072036", "CheckCopFelonyState", "box_OnceOnly_v2_15.Out", "BeingChased", l0, self)
  self:BeingChased()
end
function export:f_box_FelonyChaseMonitor_5_Chasing()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_10()
  l0 = self.box_FelonyChaseMonitor_5
  l1 = self.box_OnceOnly_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|541083739", "541083739", "CheckCopFelonyState", "box_FelonyChaseMonitor_5.Chasing", "box_OnceOnly_v2_10.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyChaseMonitor_5_Evaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v2_7()
  l0 = self.box_FelonyChaseMonitor_5
  l1 = self.box_MissionModuleBox_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1736941898", "1736941898", "CheckCopFelonyState", "box_FelonyChaseMonitor_5.Evaded", "box_MissionModuleBox_v2_7.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_FelonyChaseMonitor_5_ScanSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_10()
  l0 = self.box_FelonyChaseMonitor_5
  l1 = self.box_OnceOnly_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|897479632", "897479632", "CheckCopFelonyState", "box_FelonyChaseMonitor_5.ScanSuccess", "box_OnceOnly_v2_10.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyChaseMonitor_5_Searching()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_10()
  l0 = self.box_FelonyChaseMonitor_5
  l1 = self.box_OnceOnly_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|798206570", "798206570", "CheckCopFelonyState", "box_FelonyChaseMonitor_5.Searching", "box_OnceOnly_v2_10.In", l0, l1)
  l1:In(0)
end
function export:f_box_Simple_Node_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_1()
  l0 = self.box_OnceOnly_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|403559911", "403559911", "CheckCopFelonyState", "box_Simple_Node_11.Out", "box_OnceOnly_v2_1.In", clone, l0)
  l0:In(0)
end
function export:f_box_Simple_Node_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|241266522"
  l0.Out = self.f_box_Simple_Node_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|786073564", "786073564", "CheckCopFelonyState", "box_Simple_Node_17.Out", "box_Simple_Node_18.In", clone, l0)
  l0:In()
  self:OnEnter_box_OnceOnly_v2_14()
  l0 = self.box_OnceOnly_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1733874817", "1733874817", "CheckCopFelonyState", "box_Simple_Node_17.Out", "box_OnceOnly_v2_14.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_OnceOnly_v2_10_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v2_7()
  l0 = self.box_OnceOnly_v2_10
  l1 = self.box_MissionModuleBox_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|642206044", "642206044", "CheckCopFelonyState", "box_OnceOnly_v2_10.Out", "box_MissionModuleBox_v2_7.Display", l0, l1)
  l1:Display()
end
function export:f_box_FelonyType_12_Club()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_12
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_14()
  l1 = self.box_OnceOnly_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|229187452", "229187452", "CheckCopFelonyState", "box_FelonyType_12.Club", "box_OnceOnly_v2_14.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_12_CTOS()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_12
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_14()
  l1 = self.box_OnceOnly_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|926689544", "926689544", "CheckCopFelonyState", "box_FelonyType_12.CTOS", "box_OnceOnly_v2_14.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_12_Fixer()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_12
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_14()
  l1 = self.box_OnceOnly_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|788045643", "788045643", "CheckCopFelonyState", "box_FelonyType_12.Fixer", "box_OnceOnly_v2_14.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_12_MadnessPill()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_12
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_14()
  l1 = self.box_OnceOnly_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|269616544", "269616544", "CheckCopFelonyState", "box_FelonyType_12.MadnessPill", "box_OnceOnly_v2_14.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_12_None()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_12
  self.IsCopFelony = l0.IsCopFelony
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1760301084"
  l0.Out = self.f_box_Simple_Node_11_Out
  l0 = self.box_FelonyType_12
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1938233852", "1938233852", "CheckCopFelonyState", "box_FelonyType_12.None", "box_Simple_Node_11.In", l0, l1)
  l1:In()
end
function export:f_box_FelonyType_12_Pawnee()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_12
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_14()
  l1 = self.box_OnceOnly_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|544046425", "544046425", "CheckCopFelonyState", "box_FelonyType_12.Pawnee", "box_OnceOnly_v2_14.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_12_Police()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_12
  self.IsCopFelony = l0.IsCopFelony
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  l0.player = self.Player
  l0._graph = self
  l0._name = "box_FelonyState_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|2116953318"
  l0.Free = self.f_box_FelonyState_4_Free
  l0.BeingScanned = self.f_box_FelonyState_4_BeingScanned
  l0.ScannedSuccessfully = self.f_box_FelonyState_4_ScannedSuccessfully
  l0.Chased = self.f_box_FelonyState_4_Chased
  l0.Evaded = self.f_box_FelonyState_4_Evaded
  l0.InvalidPlayer = DummyFunction
  l0 = self.box_FelonyType_12
  l1 = Boxes[PathID("Domino/System/FelonyState.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1174140187", "1174140187", "CheckCopFelonyState", "box_FelonyType_12.Police", "box_FelonyState_4.GetFelonyState", l0, l1)
  l1:GetFelonyState()
end
function export:f_box_FelonyType_12_SpiderPill()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_12
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_14()
  l1 = self.box_OnceOnly_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|2060704298", "2060704298", "CheckCopFelonyState", "box_FelonyType_12.SpiderPill", "box_OnceOnly_v2_14.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_12_Viceroy()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_12
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_14()
  l1 = self.box_OnceOnly_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|2146853747", "2146853747", "CheckCopFelonyState", "box_FelonyType_12.Viceroy", "box_OnceOnly_v2_14.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonySystemController_9_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1371580894", "1371580894", "CheckCopFelonyState", "box_FelonySystemController_9.Disabled", "EvadedInsideZone", clone, self)
  self:EvadedInsideZone()
end
function export:f_box_Simple_Node_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_10()
  l0 = self.box_OnceOnly_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1884366390", "1884366390", "CheckCopFelonyState", "box_Simple_Node_19.Out", "box_OnceOnly_v2_10.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_MissionModuleBox_v2_7_HideRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_6()
  l0 = self.box_MissionModuleBox_v2_7
  l1 = self.box_Proximity_Monitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1663841552", "1663841552", "CheckCopFelonyState", "box_MissionModuleBox_v2_7.HideRequested", "box_Proximity_Monitor_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_FelonyState_4_BeingScanned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_2()
  l0 = self.box_OnceOnly_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|803112812", "803112812", "CheckCopFelonyState", "box_FelonyState_4.BeingScanned", "box_OnceOnly_v2_2.In", clone, l0)
  l0:In(0)
end
function export:f_box_FelonyState_4_Chased()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_2()
  l0 = self.box_OnceOnly_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1070626672", "1070626672", "CheckCopFelonyState", "box_FelonyState_4.Chased", "box_OnceOnly_v2_2.In", clone, l0)
  l0:In(0)
  self:OnEnter_box_OnceOnly_v2_15()
  l0 = self.box_OnceOnly_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1201669292", "1201669292", "CheckCopFelonyState", "box_FelonyState_4.Chased", "box_OnceOnly_v2_15.In", clone, l0)
  l0:In(0)
end
function export:f_box_FelonyState_4_Evaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_1()
  l0 = self.box_OnceOnly_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1180762294", "1180762294", "CheckCopFelonyState", "box_FelonyState_4.Evaded", "box_OnceOnly_v2_1.In", clone, l0)
  l0:In(0)
end
function export:f_box_FelonyState_4_Free()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_1()
  l0 = self.box_OnceOnly_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1589452619", "1589452619", "CheckCopFelonyState", "box_FelonyState_4.Free", "box_OnceOnly_v2_1.In", clone, l0)
  l0:In(0)
end
function export:f_box_FelonyState_4_ScannedSuccessfully()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_2()
  l0 = self.box_OnceOnly_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|1603080155", "1603080155", "CheckCopFelonyState", "box_FelonyState_4.ScannedSuccessfully", "box_OnceOnly_v2_2.In", clone, l0)
  l0:In(0)
end
function export:OnEnter_box_Get_Player_ID_3()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@CheckCopFelonyState|104241732"
  l0.Out = self.f_box_Get_Player_ID_3_Out
end
function export:OnEnter_box_OnceOnly_v2_14()
end
function export:OnEnter_box_OnceOnly_v2_1()
end
function export:OnEnter_box_Proximity_Monitor_6()
  local l0
  l0 = self.box_Proximity_Monitor_6
  l0.Entity1 = self.NewMissionZone
  l0.Entity2 = self.Player
  l0.Radius = 125
  l0.CheckNow = 1
end
function export:OnEnter_box_OnceOnly_v2_2()
end
function export:OnEnter_box_OnceOnly_v2_15()
end
function export:OnEnter_box_OnceOnly_v2_10()
end
function export:OnEnter_box_MissionModuleBox_v2_7()
  local l0
  l0 = self.box_MissionModuleBox_v2_7
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
