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
  self._name = "MainMission_CopFelonyMonitor"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor"
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
  self.box_OnceOnly_v2_66 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_66
  l0._graph = self
  l0._name = "box_OnceOnly_v2_66"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|8172865"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_66_Out_0
  l0.ResetOut = DummyFunction
  self.box_MapPointController_v3_28 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_28
  l0._graph = self
  l0._name = "box_MapPointController_v3_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|122986458"
  l0.Shown = self.f_box_MapPointController_v3_28_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_26 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_26
  l0._graph = self
  l0._name = "box_MapPointController_v3_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|124900119"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_26_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_FelonyType_2 = cbox:CreateBox("Domino/System/FelonyType.lua")
  l0 = self.box_FelonyType_2
  l0._graph = self
  l0._name = "box_FelonyType_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|253828168"
  l0.None = self.f_box_FelonyType_2_None
  l0.Police = self.f_box_FelonyType_2_Police
  l0.Club = self.f_box_FelonyType_2_Club
  l0.Viceroy = self.f_box_FelonyType_2_Viceroy
  l0.Fixer = self.f_box_FelonyType_2_Fixer
  l0.Pawnee = self.f_box_FelonyType_2_Pawnee
  l0.MadnessPill = self.f_box_FelonyType_2_MadnessPill
  l0.SpiderPill = self.f_box_FelonyType_2_SpiderPill
  l0.CTOS = self.f_box_FelonyType_2_CTOS
  self.box_MissionModuleBox_v2_76 = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self.box_MissionModuleBox_v2_76
  l0._graph = self
  l0._name = "box_MissionModuleBox_v2_76"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|265462068"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v2_76_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v2_3 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_3
  l0._graph = self
  l0._name = "box_OnceOnly_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|429400631"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_3_Out_0
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v2_49 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_49
  l0._graph = self
  l0._name = "box_OnceOnly_v2_49"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|626844363"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_49_Out_0
  l0.ResetOut = DummyFunction
  self.box_MapPointController_v3_101 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_101
  l0._graph = self
  l0._name = "box_MapPointController_v3_101"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|680191508"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_101_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_OnceOnly_v2_39 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_39
  l0._graph = self
  l0._name = "box_OnceOnly_v2_39"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|702138422"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_39_Out_0
  l0.ResetOut = DummyFunction
  self.box_MissionModuleBox_v2_8 = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self.box_MissionModuleBox_v2_8
  l0._graph = self
  l0._name = "box_MissionModuleBox_v2_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|755844182"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v2_8_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_MapPointController_v3_60 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_60
  l0._graph = self
  l0._name = "box_MapPointController_v3_60"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|785875611"
  l0.Shown = self.f_box_MapPointController_v3_60_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_OnceOnly_v2_16 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_16
  l0._graph = self
  l0._name = "box_OnceOnly_v2_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|920849427"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_16_Out_0
  l0.ResetOut = DummyFunction
  self.box_FelonyChaseMonitor_44 = cbox:CreateBox("Domino/System/FelonyChaseMonitor.lua")
  l0 = self.box_FelonyChaseMonitor_44
  l0._graph = self
  l0._name = "box_FelonyChaseMonitor_44"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1270601751"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = self.f_box_FelonyChaseMonitor_44_None
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = self.f_box_FelonyChaseMonitor_44_ScanSuccess
  l0.ScanFailure = self.f_box_FelonyChaseMonitor_44_ScanFailure
  l0.Chasing = self.f_box_FelonyChaseMonitor_44_Chasing
  l0.Searching = self.f_box_FelonyChaseMonitor_44_Searching
  l0.Evaded = self.f_box_FelonyChaseMonitor_44_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self.box_OnceOnly_v2_41 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_41
  l0._graph = self
  l0._name = "box_OnceOnly_v2_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1301026620"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_41_Out_0
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v2_48 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_48
  l0._graph = self
  l0._name = "box_OnceOnly_v2_48"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1342600002"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_48_Out_0
  l0.ResetOut = DummyFunction
  self.box_Proximity_Monitor_30 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_30
  l0._graph = self
  l0._name = "box_Proximity_Monitor_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1407665761"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_30_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_30_ExitRadius
  self.box_FelonyChaseMonitor_7 = cbox:CreateBox("Domino/System/FelonyChaseMonitor.lua")
  l0 = self.box_FelonyChaseMonitor_7
  l0._graph = self
  l0._name = "box_FelonyChaseMonitor_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1511726891"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = self.f_box_FelonyChaseMonitor_7_None
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = self.f_box_FelonyChaseMonitor_7_ScanSuccess
  l0.ScanFailure = self.f_box_FelonyChaseMonitor_7_ScanFailure
  l0.Chasing = self.f_box_FelonyChaseMonitor_7_Chasing
  l0.Searching = self.f_box_FelonyChaseMonitor_7_Searching
  l0.Evaded = self.f_box_FelonyChaseMonitor_7_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self.box_MissionModuleBox_v2_27 = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self.box_MissionModuleBox_v2_27
  l0._graph = self
  l0._name = "box_MissionModuleBox_v2_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1591020537"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v2_27_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v2_24 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_24
  l0._graph = self
  l0._name = "box_OnceOnly_v2_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1644111333"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_24_Out_0
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v2_17 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_17
  l0._graph = self
  l0._name = "box_OnceOnly_v2_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1653248353"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_17_Out_0
  l0.ResetOut = DummyFunction
  self.box_MissionModuleBox_v2_100 = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self.box_MissionModuleBox_v2_100
  l0._graph = self
  l0._name = "box_MissionModuleBox_v2_100"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1757962862"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v2_100_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v2_9 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_9
  l0._graph = self
  l0._name = "box_OnceOnly_v2_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1925045746"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_9_Out_0
  l0.ResetOut = DummyFunction
  self.box_FelonyType_46 = cbox:CreateBox("Domino/System/FelonyType.lua")
  l0 = self.box_FelonyType_46
  l0._graph = self
  l0._name = "box_FelonyType_46"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1954120155"
  l0.None = self.f_box_FelonyType_46_None
  l0.Police = self.f_box_FelonyType_46_Police
  l0.Club = self.f_box_FelonyType_46_Club
  l0.Viceroy = self.f_box_FelonyType_46_Viceroy
  l0.Fixer = self.f_box_FelonyType_46_Fixer
  l0.Pawnee = self.f_box_FelonyType_46_Pawnee
  l0.MadnessPill = self.f_box_FelonyType_46_MadnessPill
  l0.SpiderPill = self.f_box_FelonyType_46_SpiderPill
  l0.CTOS = self.f_box_FelonyType_46_CTOS
  self.box_Proximity_Monitor_73 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_73
  l0._graph = self
  l0._name = "box_Proximity_Monitor_73"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1967338983"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_73_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_73_ExitRadius
  self.box_FelonyChaseMonitor_18 = cbox:CreateBox("Domino/System/FelonyChaseMonitor.lua")
  l0 = self.box_FelonyChaseMonitor_18
  l0._graph = self
  l0._name = "box_FelonyChaseMonitor_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2066266211"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = DummyFunction
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = self.f_box_FelonyChaseMonitor_18_ScanSuccess
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
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1625494454"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|399454919", "399454919", "MainMission_CopFelonyMonitor", "ConstantCheck", "box_Get_Player_ID_1.In", self, l0)
  l0:In()
end
function export:DisableConstantCheck()
  local l0
  self:OnEnter_box_FelonyChaseMonitor_18()
  l0 = self.box_FelonyChaseMonitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2128152071", "2128152071", "MainMission_CopFelonyMonitor", "DisableConstantCheck", "box_FelonyChaseMonitor_18.Stop", self, l0)
  l0:Stop()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|45077839"
  l0.Out = self.f_box_Simple_Node_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1420975305", "1420975305", "MainMission_CopFelonyMonitor", "DisableConstantCheck", "box_Simple_Node_13.In", self, l0)
  l0:In()
end
function export:InstantCheck()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_69"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|948787108"
  l0.Out = self.f_box_Get_Player_ID_69_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|197166360", "197166360", "MainMission_CopFelonyMonitor", "InstantCheck", "box_Get_Player_ID_69.In", self, l0)
  l0:In()
end
function export:f_box_OnceOnly_v2_66_Out_0()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_58"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|83963856"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_58_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_58_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_OnceOnly_v2_66
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|758028688", "758028688", "MainMission_CopFelonyMonitor", "box_OnceOnly_v2_66.Out", "box_Compare_Boolean_v2_58.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|847667985"
  l0.Out = self.f_box_Simple_Node_12_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1456162707", "1456162707", "MainMission_CopFelonyMonitor", "box_Simple_Node_13.Out", "box_Simple_Node_12.In", clone, l0)
  l0:In()
end
function export:f_box_FelonySystemController_67_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1276712538", "1276712538", "MainMission_CopFelonyMonitor", "box_FelonySystemController_67.Disabled", "EvadedOutsideRadius_FelonyDisabled", clone, self)
  self:EvadedOutsideRadius_FelonyDisabled()
end
function export:f_box_Compare_Boolean_v2_58_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|556142422", "556142422", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_58.A_is_False", "NoCopFelony_FelonyEnabled", clone, self)
  self:NoCopFelony_FelonyEnabled()
end
function export:f_box_Compare_Boolean_v2_58_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_FelonySystemController_51"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|825500170"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_51_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1138892325", "1138892325", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_58.A_is_True", "box_FelonySystemController_51.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MapPointController_v3_28_Shown()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_31"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|135145923"
  l0.Is_nil = self.f_box_Test_if_Nil_31_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_31_Is_not_nil
  l0 = self.box_MapPointController_v3_28
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|644367583", "644367583", "MainMission_CopFelonyMonitor", "box_MapPointController_v3_28.Shown", "box_Test_if_Nil_31.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v3_26_Hidden()
  local l0
  self = self._graph
  l0 = self.box_MapPointController_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1644503513", "1644503513", "MainMission_CopFelonyMonitor", "box_MapPointController_v3_26.Hidden", "BeingChased", l0, self)
  self:BeingChased()
end
function export:f_box_Test_if_Nil_31_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "DistanceCheck is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_32"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|485912115"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|974919229", "974919229", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_31.Is_nil", "box_TextToScreen_v2_32.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_31_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DistanceCheck
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|150638705"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_29_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_29_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1180894722", "1180894722", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_31.Is_not_nil", "box_Compare_Boolean_v2_29.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_29_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_36"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|392890874"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_36_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_36_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1011044136", "1011044136", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_29.A_is_False", "box_Compare_Boolean_v2_36.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_29_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_33"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|418193087"
  l0.Is_nil = self.f_box_Test_if_Nil_33_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_33_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1465191485", "1465191485", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_29.A_is_True", "box_Test_if_Nil_33.In", clone, l0)
  l0:In()
end
function export:f_box_FelonyState_50_BeingScanned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_41()
  l0 = self.box_OnceOnly_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1508928417", "1508928417", "MainMission_CopFelonyMonitor", "box_FelonyState_50.BeingScanned", "box_OnceOnly_v2_41.In", clone, l0)
  l0:In(0)
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1772389057", "1772389057", "MainMission_CopFelonyMonitor", "box_FelonyState_50.BeingScanned", "BeingScanned", clone, self)
  self:BeingScanned()
end
function export:f_box_FelonyState_50_Chased()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_41()
  l0 = self.box_OnceOnly_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|112972056", "112972056", "MainMission_CopFelonyMonitor", "box_FelonyState_50.Chased", "box_OnceOnly_v2_41.In", clone, l0)
  l0:In(0)
end
function export:f_box_FelonyState_50_Evaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_66()
  l0 = self.box_OnceOnly_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1477420285", "1477420285", "MainMission_CopFelonyMonitor", "box_FelonyState_50.Evaded", "box_OnceOnly_v2_66.In", clone, l0)
  l0:In(0)
end
function export:f_box_FelonyState_50_Free()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_66()
  l0 = self.box_OnceOnly_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1230266927", "1230266927", "MainMission_CopFelonyMonitor", "box_FelonyState_50.Free", "box_OnceOnly_v2_66.In", clone, l0)
  l0:In(0)
end
function export:f_box_FelonyState_50_ScannedSuccessfully()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_41()
  l0 = self.box_OnceOnly_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1571222030", "1571222030", "MainMission_CopFelonyMonitor", "box_FelonyState_50.ScannedSuccessfully", "box_OnceOnly_v2_41.In", clone, l0)
  l0:In(0)
end
function export:f_box_FelonyType_2_Club()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_2
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_3()
  l1 = self.box_OnceOnly_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|304889021", "304889021", "MainMission_CopFelonyMonitor", "box_FelonyType_2.Club", "box_OnceOnly_v2_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_2_CTOS()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_2
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_3()
  l1 = self.box_OnceOnly_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2140371616", "2140371616", "MainMission_CopFelonyMonitor", "box_FelonyType_2.CTOS", "box_OnceOnly_v2_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_2_Fixer()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_2
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_3()
  l1 = self.box_OnceOnly_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1371960194", "1371960194", "MainMission_CopFelonyMonitor", "box_FelonyType_2.Fixer", "box_OnceOnly_v2_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_2_MadnessPill()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_2
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_3()
  l1 = self.box_OnceOnly_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|518408001", "518408001", "MainMission_CopFelonyMonitor", "box_FelonyType_2.MadnessPill", "box_OnceOnly_v2_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_2_None()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_2
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_3()
  l1 = self.box_OnceOnly_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2032949368", "2032949368", "MainMission_CopFelonyMonitor", "box_FelonyType_2.None", "box_OnceOnly_v2_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_2_Pawnee()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_2
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_3()
  l1 = self.box_OnceOnly_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1441811271", "1441811271", "MainMission_CopFelonyMonitor", "box_FelonyType_2.Pawnee", "box_OnceOnly_v2_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_2_Police()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_2
  self.IsCopFelony = l0.IsCopFelony
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  l0.player = self.Player
  l0._graph = self
  l0._name = "box_FelonyState_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1910411918"
  l0.Free = self.f_box_FelonyState_6_Free
  l0.BeingScanned = self.f_box_FelonyState_6_BeingScanned
  l0.ScannedSuccessfully = self.f_box_FelonyState_6_ScannedSuccessfully
  l0.Chased = self.f_box_FelonyState_6_Chased
  l0.Evaded = self.f_box_FelonyState_6_Evaded
  l0.InvalidPlayer = DummyFunction
  l0 = self.box_FelonyType_2
  l1 = Boxes[PathID("Domino/System/FelonyState.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|467009825", "467009825", "MainMission_CopFelonyMonitor", "box_FelonyType_2.Police", "box_FelonyState_6.GetFelonyState", l0, l1)
  l1:GetFelonyState()
end
function export:f_box_FelonyType_2_SpiderPill()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_2
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_3()
  l1 = self.box_OnceOnly_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|251069053", "251069053", "MainMission_CopFelonyMonitor", "box_FelonyType_2.SpiderPill", "box_OnceOnly_v2_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_2_Viceroy()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_2
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_3()
  l1 = self.box_OnceOnly_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|30459140", "30459140", "MainMission_CopFelonyMonitor", "box_FelonyType_2.Viceroy", "box_OnceOnly_v2_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_MissionModuleBox_v2_76_DisplayRequested()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_81"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|849265255"
  l0.Is_nil = self.f_box_Test_if_Nil_81_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_81_Is_not_nil
  l0 = self.box_MissionModuleBox_v2_76
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|345624428", "345624428", "MainMission_CopFelonyMonitor", "box_MissionModuleBox_v2_76.DisplayRequested", "box_Test_if_Nil_81.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1333963693"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_21_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_21_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2069036956", "2069036956", "MainMission_CopFelonyMonitor", "box_Simple_Node_10.Out", "box_Ordered_Output_21.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_64_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|94232504", "94232504", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_64.A_is_False", "NoDistanceCheck_NoCopFelony_FelonyEnabled", clone, self)
  self:NoDistanceCheck_NoCopFelony_FelonyEnabled()
end
function export:f_box_Compare_Boolean_v2_64_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_FelonySystemController_78"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1385319309"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_78_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1518839527", "1518839527", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_64.A_is_True", "box_FelonySystemController_78.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_FelonySystemController_5_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|706606461", "706606461", "MainMission_CopFelonyMonitor", "box_FelonySystemController_5.Disabled", "NoCopFelony_FelonyDisabled", clone, self)
  self:NoCopFelony_FelonyDisabled()
end
function export:f_box_Compare_Boolean_v2_11_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1839366801", "1839366801", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_11.A_is_False", "NoCopFelony_FelonyEnabled", clone, self)
  self:NoCopFelony_FelonyEnabled()
end
function export:f_box_Compare_Boolean_v2_11_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_FelonySystemController_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|409925054"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_15_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1018542537", "1018542537", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_11.A_is_True", "box_FelonySystemController_15.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Boolean_v2_36_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2118857694", "2118857694", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_36.A_is_False", "NoDistanceCheck_NoCopFelony_FelonyEnabled", clone, self)
  self:NoDistanceCheck_NoCopFelony_FelonyEnabled()
end
function export:f_box_Compare_Boolean_v2_36_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_FelonySystemController_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|910043621"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_35_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2142213977", "2142213977", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_36.A_is_True", "box_FelonySystemController_35.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_FelonySystemController_15_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1652268001", "1652268001", "MainMission_CopFelonyMonitor", "box_FelonySystemController_15.Disabled", "NoCopFelony_FelonyDisabled", clone, self)
  self:NoCopFelony_FelonyDisabled()
end
function export:f_box_Test_if_Nil_33_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPointRadius is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1934191153"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|274182004", "274182004", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_33.Is_nil", "box_TextToScreen_v2_34.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_33_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_30()
  l0 = self.box_Proximity_Monitor_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1962080522", "1962080522", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_33.Is_not_nil", "box_Proximity_Monitor_30.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_70_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1864914875", "1864914875", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_70.A_is_False", "EvadedOutsideRadius_FelonyEnabled", clone, self)
  self:EvadedOutsideRadius_FelonyEnabled()
end
function export:f_box_Compare_Boolean_v2_70_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_FelonySystemController_72"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1382341900"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_72_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|865766747", "865766747", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_70.A_is_True", "box_FelonySystemController_72.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Test_if_Nil_63_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPoint is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_77"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1104003483"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1874571046", "1874571046", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_63.Is_nil", "box_TextToScreen_v2_77.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_63_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_101
  l0.MapPoint = self.MapPoint
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|719428963", "719428963", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_63.Is_not_nil", "box_MapPointController_v3_101.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_OnceOnly_v2_3_Out_0()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_84"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1550875611"
  l0.Is_nil = self.f_box_Test_if_Nil_84_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_84_Is_not_nil
  l0 = self.box_OnceOnly_v2_3
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1596511044", "1596511044", "MainMission_CopFelonyMonitor", "box_OnceOnly_v2_3.Out", "box_Test_if_Nil_84.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_68_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPointRadius is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_56"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|677694229"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|365721596", "365721596", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_68.Is_nil", "box_TextToScreen_v2_56.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_68_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_73()
  l0 = self.box_Proximity_Monitor_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1761983386", "1761983386", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_68.Is_not_nil", "box_Proximity_Monitor_73.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Test_if_Nil_87_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "DisableFelony is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_85"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1096507622"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|93037158", "93037158", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_87.Is_nil", "box_TextToScreen_v2_85.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_87_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|388684360"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_11_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_11_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2055365557", "2055365557", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_87.Is_not_nil", "box_Compare_Boolean_v2_11.In", clone, l0)
  l0:In()
end
function export:f_box_FelonySystemController_98_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1400351730", "1400351730", "MainMission_CopFelonyMonitor", "box_FelonySystemController_98.Disabled", "EvadedWithinRadius_FelonyDisabled", clone, self)
  self:EvadedWithinRadius_FelonyDisabled()
end
function export:f_box_OnceOnly_v2_49_Out_0()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_61"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1871615980"
  l0.Is_nil = self.f_box_Test_if_Nil_61_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_61_Is_not_nil
  l0 = self.box_OnceOnly_v2_49
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|27735147", "27735147", "MainMission_CopFelonyMonitor", "box_OnceOnly_v2_49.Out", "box_Test_if_Nil_61.In", l0, l1)
  l1:In()
  self:OnEnter_box_FelonyChaseMonitor_44()
  l0 = self.box_OnceOnly_v2_49
  l1 = self.box_FelonyChaseMonitor_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1465641578", "1465641578", "MainMission_CopFelonyMonitor", "box_OnceOnly_v2_49.Out", "box_FelonyChaseMonitor_44.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Test_if_Nil_57_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MainObjective is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_45"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1537911989"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|623286159", "623286159", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_57.Is_nil", "box_TextToScreen_v2_45.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_57_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionModuleBox_v2_76
  l0.MessageType = "MissionUpdate"
  l0.OasisID_1 = self.MainObjective
  l0.OasisID_2 = {
    section = "MISSIONS.MAIN.OBJECTIVES.Act_01.Driving_Mission_0.Objective_018_EscapePolice",
    item = "Description",
    id = "177104"
  }
  l0.Duration = -1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1479342994", "1479342994", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_57.Is_not_nil", "box_MissionModuleBox_v2_76.Display", clone, l0)
  l0:Display()
end
function export:f_box_MapPointController_v3_101_Hidden()
  local l0
  self = self._graph
  l0 = self.box_MapPointController_v3_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|942807256", "942807256", "MainMission_CopFelonyMonitor", "box_MapPointController_v3_101.Hidden", "BeingChased", l0, self)
  self:BeingChased()
end
function export:f_box_OnceOnly_v2_39_Out_0()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_83"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1658555201"
  l0.Is_nil = self.f_box_Test_if_Nil_83_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_83_Is_not_nil
  l0 = self.box_OnceOnly_v2_39
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1558138084", "1558138084", "MainMission_CopFelonyMonitor", "box_OnceOnly_v2_39.Out", "box_Test_if_Nil_83.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_99_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPoint is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_43"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2129210970"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1160223990", "1160223990", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_99.Is_nil", "box_TextToScreen_v2_43.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_99_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_60
  l0.MapPoint = self.MapPoint
  l0.LocText = self.MapPointLocText
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|554188770", "554188770", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_99.Is_not_nil", "box_MapPointController_v3_60.Show", clone, l0)
  l0:Show()
end
function export:f_box_MissionModuleBox_v2_8_DisplayRequested()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_90"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1953102292"
  l0.Is_nil = self.f_box_Test_if_Nil_90_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_90_Is_not_nil
  l0 = self.box_MissionModuleBox_v2_8
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|619483161", "619483161", "MainMission_CopFelonyMonitor", "box_MissionModuleBox_v2_8.DisplayRequested", "box_Test_if_Nil_90.In", l0, l1)
  l1:In()
  self:OnEnter_box_OnceOnly_v2_9()
  l0 = self.box_MissionModuleBox_v2_8
  l1 = self.box_OnceOnly_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1828137155", "1828137155", "MainMission_CopFelonyMonitor", "box_MissionModuleBox_v2_8.DisplayRequested", "box_OnceOnly_v2_9.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_Ordered_Output_22_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_3()
  l0 = self.box_OnceOnly_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|160578100", "160578100", "MainMission_CopFelonyMonitor", "box_Ordered_Output_22.Out", "box_OnceOnly_v2_3.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Ordered_Output_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|289551209"
  l0.Out = self.f_box_Simple_Node_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1511237018", "1511237018", "MainMission_CopFelonyMonitor", "box_Ordered_Output_22.Out", "box_Simple_Node_10.In", clone, l0)
  l0:In()
end
function export:f_box_MapPointController_v3_60_Shown()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_74"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1283433298"
  l0.Is_nil = self.f_box_Test_if_Nil_74_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_74_Is_not_nil
  l0 = self.box_MapPointController_v3_60
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|641682966", "641682966", "MainMission_CopFelonyMonitor", "box_MapPointController_v3_60.Shown", "box_Test_if_Nil_74.In", l0, l1)
  l1:In()
end
function export:f_box_FelonySystemController_51_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|797345649", "797345649", "MainMission_CopFelonyMonitor", "box_FelonySystemController_51.Disabled", "NoCopFelony_FelonyDisabled", clone, self)
  self:NoCopFelony_FelonyDisabled()
end
function export:f_box_Compare_Boolean_v2_4_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1298802811", "1298802811", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_4.A_is_False", "NoCopFelony_FelonyEnabled", clone, self)
  self:NoCopFelony_FelonyEnabled()
end
function export:f_box_Compare_Boolean_v2_4_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_FelonySystemController_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|384874243"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_5_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|166113573", "166113573", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_4.A_is_True", "box_FelonySystemController_5.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|781405445"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1794874338", "1794874338", "MainMission_CopFelonyMonitor", "box_Simple_Node_12.Out", "box_Ordered_Output_22.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_81_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPoint is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_79"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1886048995"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1154133034", "1154133034", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_81.Is_nil", "box_TextToScreen_v2_79.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_81_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_99"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|717203564"
  l0.Is_nil = self.f_box_Test_if_Nil_99_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_99_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|115479661", "115479661", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_81.Is_not_nil", "box_Test_if_Nil_99.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_88_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MainObjective is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_89"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1180090238"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1907246219", "1907246219", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_88.Is_nil", "box_TextToScreen_v2_89.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_88_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionModuleBox_v2_8
  l0.MessageType = "MissionUpdate"
  l0.OasisID_1 = {
    section = "MISSIONS.MAIN.OBJECTIVES.Act_01.Driving_Mission_0.Objective_018_EscapePolice",
    item = "Description",
    id = "177104"
  }
  l0.OasisID_2 = self.MainObjective
  l0.Duration = -1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1794058554", "1794058554", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_88.Is_not_nil", "box_MissionModuleBox_v2_8.Display", clone, l0)
  l0:Display()
end
function export:f_box_FelonySystemController_35_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|42283377", "42283377", "MainMission_CopFelonyMonitor", "box_FelonySystemController_35.Disabled", "NoDistanceCheck_NoCopFelony_FelonyDisabled", clone, self)
  self:NoDistanceCheck_NoCopFelony_FelonyDisabled()
end
function export:f_box_OnceOnly_v2_16_Out_0()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_92"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1627084521"
  l0.Is_nil = self.f_box_Test_if_Nil_92_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_92_Is_not_nil
  l0 = self.box_OnceOnly_v2_16
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1773563485", "1773563485", "MainMission_CopFelonyMonitor", "box_OnceOnly_v2_16.Out", "box_Test_if_Nil_92.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FelonyType_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|654066212", "654066212", "MainMission_CopFelonyMonitor", "box_Get_Player_ID_69.Out", "box_FelonyType_46.GetFelonyType", clone, l0)
  l0:GetFelonyType()
end
function export:f_box_Compare_Boolean_v2_38_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|538447051", "538447051", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_38.A_is_False", "EvadedWithinRadius_FelonyEnabled", clone, self)
  self:EvadedWithinRadius_FelonyEnabled()
end
function export:f_box_Compare_Boolean_v2_38_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_FelonySystemController_37"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1737766620"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_37_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1025267447", "1025267447", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_38.A_is_True", "box_FelonySystemController_37.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Boolean_v2_53_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|85569236", "85569236", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_53.A_is_False", "EvadedOutsideRadius_FelonyEnabled", clone, self)
  self:EvadedOutsideRadius_FelonyEnabled()
end
function export:f_box_Compare_Boolean_v2_53_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_FelonySystemController_67"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|49269279"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_67_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1588676163", "1588676163", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_53.A_is_True", "box_FelonySystemController_67.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_FelonySystemController_54_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1820088011", "1820088011", "MainMission_CopFelonyMonitor", "box_FelonySystemController_54.Disabled", "NoCopFelony_FelonyDisabled", clone, self)
  self:NoCopFelony_FelonyDisabled()
end
function export:f_box_FelonyChaseMonitor_44_Chasing()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_49()
  l0 = self.box_FelonyChaseMonitor_44
  l1 = self.box_OnceOnly_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|31025436", "31025436", "MainMission_CopFelonyMonitor", "box_FelonyChaseMonitor_44.Chasing", "box_OnceOnly_v2_49.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyChaseMonitor_44_Evaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_48()
  l0 = self.box_FelonyChaseMonitor_44
  l1 = self.box_OnceOnly_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|693148800", "693148800", "MainMission_CopFelonyMonitor", "box_FelonyChaseMonitor_44.Evaded", "box_OnceOnly_v2_48.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyChaseMonitor_44_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_48()
  l0 = self.box_FelonyChaseMonitor_44
  l1 = self.box_OnceOnly_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1970163829", "1970163829", "MainMission_CopFelonyMonitor", "box_FelonyChaseMonitor_44.None", "box_OnceOnly_v2_48.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyChaseMonitor_44_ScanFailure()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_48()
  l0 = self.box_FelonyChaseMonitor_44
  l1 = self.box_OnceOnly_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1675501499", "1675501499", "MainMission_CopFelonyMonitor", "box_FelonyChaseMonitor_44.ScanFailure", "box_OnceOnly_v2_48.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyChaseMonitor_44_ScanSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_49()
  l0 = self.box_FelonyChaseMonitor_44
  l1 = self.box_OnceOnly_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|598224357", "598224357", "MainMission_CopFelonyMonitor", "box_FelonyChaseMonitor_44.ScanSuccess", "box_OnceOnly_v2_49.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyChaseMonitor_44_Searching()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_49()
  l0 = self.box_FelonyChaseMonitor_44
  l1 = self.box_OnceOnly_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1050120348", "1050120348", "MainMission_CopFelonyMonitor", "box_FelonyChaseMonitor_44.Searching", "box_OnceOnly_v2_49.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_19_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_9()
  l0 = self.box_OnceOnly_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|765630800", "765630800", "MainMission_CopFelonyMonitor", "box_Ordered_Output_19.Out", "box_OnceOnly_v2_9.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Ordered_Output_19_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_16()
  l0 = self.box_OnceOnly_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1786190626", "1786190626", "MainMission_CopFelonyMonitor", "box_Ordered_Output_19.Out", "box_OnceOnly_v2_16.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Ordered_Output_19_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|229103661", "229103661", "MainMission_CopFelonyMonitor", "box_Ordered_Output_19.Out", "ConstantCheckDisabled", clone, self)
  self:ConstantCheckDisabled()
end
function export:f_box_Test_if_Nil_74_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "DistanceCheck is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_42"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1123939476"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1015509260", "1015509260", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_74.Is_nil", "box_TextToScreen_v2_42.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_74_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DistanceCheck
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_97"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2063904866"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_97_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_97_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|550625272", "550625272", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_74.Is_not_nil", "box_Compare_Boolean_v2_97.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v2_41_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FelonyChaseMonitor_44()
  l0 = self.box_OnceOnly_v2_41
  l1 = self.box_FelonyChaseMonitor_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|820526429", "820526429", "MainMission_CopFelonyMonitor", "box_OnceOnly_v2_41.Out", "box_FelonyChaseMonitor_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyChaseMonitor_7()
  l0 = self.box_FelonyChaseMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|350707775", "350707775", "MainMission_CopFelonyMonitor", "box_Ordered_Output_21.Out", "box_FelonyChaseMonitor_7.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_17()
  l0 = self.box_OnceOnly_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2082613123", "2082613123", "MainMission_CopFelonyMonitor", "box_Ordered_Output_21.Out", "box_OnceOnly_v2_17.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Ordered_Output_21_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_24()
  l0 = self.box_OnceOnly_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1360139746", "1360139746", "MainMission_CopFelonyMonitor", "box_Ordered_Output_21.Out", "box_OnceOnly_v2_24.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Ordered_Output_21_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1861611030"
  l0.Out = self.f_box_Simple_Node_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1678697205", "1678697205", "MainMission_CopFelonyMonitor", "box_Ordered_Output_21.Out", "box_Simple_Node_14.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v2_48_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FelonyChaseMonitor_44()
  l0 = self.box_OnceOnly_v2_48
  l1 = self.box_FelonyChaseMonitor_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|617904377", "617904377", "MainMission_CopFelonyMonitor", "box_OnceOnly_v2_48.Out", "box_FelonyChaseMonitor_44.Stop", l0, l1)
  l1:Stop()
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
  l0._name = "box_Test_if_Nil_57"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|667255772"
  l0.Is_nil = self.f_box_Test_if_Nil_57_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_57_Is_not_nil
  l0 = self.box_OnceOnly_v2_48
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1516029288", "1516029288", "MainMission_CopFelonyMonitor", "box_OnceOnly_v2_48.Out", "box_Test_if_Nil_57.In", l0, l1)
  l1:In()
end
function export:f_box_FelonySystemController_72_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1099361374", "1099361374", "MainMission_CopFelonyMonitor", "box_FelonySystemController_72.Disabled", "EvadedOutsideRadius_FelonyDisabled", clone, self)
  self:EvadedOutsideRadius_FelonyDisabled()
end
function export:f_box_FelonySystemController_78_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1033884571", "1033884571", "MainMission_CopFelonyMonitor", "box_FelonySystemController_78.Disabled", "NoDistanceCheck_NoCopFelony_FelonyDisabled", clone, self)
  self:NoDistanceCheck_NoCopFelony_FelonyDisabled()
end
function export:f_box_Proximity_Monitor_30_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_38"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|988033446"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_38_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_38_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Proximity_Monitor_30
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1609238308", "1609238308", "MainMission_CopFelonyMonitor", "box_Proximity_Monitor_30.EnterRadius", "box_Compare_Boolean_v2_38.In", l0, l1)
  l1:In()
  self:OnEnter_box_Proximity_Monitor_30()
  l0 = self.box_Proximity_Monitor_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2013154226", "2013154226", "MainMission_CopFelonyMonitor", "box_Proximity_Monitor_30.EnterRadius", "box_Proximity_Monitor_30.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Proximity_Monitor_30_ExitRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_70"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|425202958"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_70_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_70_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Proximity_Monitor_30
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1321296803", "1321296803", "MainMission_CopFelonyMonitor", "box_Proximity_Monitor_30.ExitRadius", "box_Compare_Boolean_v2_70.In", l0, l1)
  l1:In()
  self:OnEnter_box_Proximity_Monitor_30()
  l0 = self.box_Proximity_Monitor_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1933696900", "1933696900", "MainMission_CopFelonyMonitor", "box_Proximity_Monitor_30.ExitRadius", "box_Proximity_Monitor_30.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_FelonyChaseMonitor_7_Chasing()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_9()
  l0 = self.box_FelonyChaseMonitor_7
  l1 = self.box_OnceOnly_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2086021291", "2086021291", "MainMission_CopFelonyMonitor", "box_FelonyChaseMonitor_7.Chasing", "box_OnceOnly_v2_9.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyChaseMonitor_7_Evaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_16()
  l0 = self.box_FelonyChaseMonitor_7
  l1 = self.box_OnceOnly_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1465525752", "1465525752", "MainMission_CopFelonyMonitor", "box_FelonyChaseMonitor_7.Evaded", "box_OnceOnly_v2_16.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyChaseMonitor_7_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_16()
  l0 = self.box_FelonyChaseMonitor_7
  l1 = self.box_OnceOnly_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|10569770", "10569770", "MainMission_CopFelonyMonitor", "box_FelonyChaseMonitor_7.None", "box_OnceOnly_v2_16.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyChaseMonitor_7_ScanFailure()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_16()
  l0 = self.box_FelonyChaseMonitor_7
  l1 = self.box_OnceOnly_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|727277730", "727277730", "MainMission_CopFelonyMonitor", "box_FelonyChaseMonitor_7.ScanFailure", "box_OnceOnly_v2_16.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyChaseMonitor_7_ScanSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_9()
  l0 = self.box_FelonyChaseMonitor_7
  l1 = self.box_OnceOnly_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|772883969", "772883969", "MainMission_CopFelonyMonitor", "box_FelonyChaseMonitor_7.ScanSuccess", "box_OnceOnly_v2_9.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyChaseMonitor_7_Searching()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_9()
  l0 = self.box_FelonyChaseMonitor_7
  l1 = self.box_OnceOnly_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2112268517", "2112268517", "MainMission_CopFelonyMonitor", "box_FelonyChaseMonitor_7.Searching", "box_OnceOnly_v2_9.In", l0, l1)
  l1:In(0)
end
function export:f_box_Compare_Boolean_v2_59_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|235244760", "235244760", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_59.A_is_False", "NoCopFelony_FelonyEnabled", clone, self)
  self:NoCopFelony_FelonyEnabled()
end
function export:f_box_Compare_Boolean_v2_59_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_FelonySystemController_54"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1241625763"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_54_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|621391472", "621391472", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_59.A_is_True", "box_FelonySystemController_54.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Test_if_Nil_84_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "DisableFelony is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_82"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|705755436"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|571767781", "571767781", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_84.Is_nil", "box_TextToScreen_v2_82.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_84_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|838487066"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_4_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_4_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|852230342", "852230342", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_84.Is_not_nil", "box_Compare_Boolean_v2_4.In", clone, l0)
  l0:In()
end
function export:f_box_MissionModuleBox_v2_27_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_16()
  l0 = self.box_MissionModuleBox_v2_27
  l1 = self.box_OnceOnly_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1733047530", "1733047530", "MainMission_CopFelonyMonitor", "box_MissionModuleBox_v2_27.DisplayRequested", "box_OnceOnly_v2_16.Reset", l0, l1)
  l1:Reset()
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
  l0._name = "box_Test_if_Nil_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1976137440"
  l0.Is_nil = self.f_box_Test_if_Nil_40_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_40_Is_not_nil
  l0 = self.box_MissionModuleBox_v2_27
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1883955311", "1883955311", "MainMission_CopFelonyMonitor", "box_MissionModuleBox_v2_27.DisplayRequested", "box_Test_if_Nil_40.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyChaseMonitor_18()
  l0 = self.box_FelonyChaseMonitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|275362426", "275362426", "MainMission_CopFelonyMonitor", "box_Get_Player_ID_1.Out", "box_FelonyChaseMonitor_18.Start", clone, l0)
  l0:Start()
end
function export:f_box_Test_if_Nil_92_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MainObjective is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_93"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|970457545"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1044625463", "1044625463", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_92.Is_nil", "box_TextToScreen_v2_93.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_92_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionModuleBox_v2_27
  l0.MessageType = "MissionUpdate"
  l0.OasisID_1 = self.MainObjective
  l0.OasisID_2 = {
    section = "MISSIONS.MAIN.OBJECTIVES.Act_01.Driving_Mission_0.Objective_018_EscapePolice",
    item = "Description",
    id = "177104"
  }
  l0.Duration = -1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1702654155", "1702654155", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_92.Is_not_nil", "box_MissionModuleBox_v2_27.Display", clone, l0)
  l0:Display()
end
function export:f_box_OnceOnly_v2_24_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FelonyChaseMonitor_7()
  l0 = self.box_OnceOnly_v2_24
  l1 = self.box_FelonyChaseMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1391421773", "1391421773", "MainMission_CopFelonyMonitor", "box_OnceOnly_v2_24.Out", "box_FelonyChaseMonitor_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v2_17_Out_0()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_87"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|572819083"
  l0.Is_nil = self.f_box_Test_if_Nil_87_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_87_Is_not_nil
  l0 = self.box_OnceOnly_v2_17
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1822155758", "1822155758", "MainMission_CopFelonyMonitor", "box_OnceOnly_v2_17.Out", "box_Test_if_Nil_87.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_83_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "DisableFelony is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_86"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|355085047"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1715987853", "1715987853", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_83.Is_nil", "box_TextToScreen_v2_86.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_83_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_59"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1540665170"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_59_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_59_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1180469392", "1180469392", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_83.Is_not_nil", "box_Compare_Boolean_v2_59.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_75_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|919603615", "919603615", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_75.A_is_False", "EvadedWithinRadius_FelonyEnabled", clone, self)
  self:EvadedWithinRadius_FelonyEnabled()
end
function export:f_box_Compare_Boolean_v2_75_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_FelonySystemController_98"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|613273700"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_98_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|551510382", "551510382", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_75.A_is_True", "box_FelonySystemController_98.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_FelonySystemController_37_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1305593331", "1305593331", "MainMission_CopFelonyMonitor", "box_FelonySystemController_37.Disabled", "EvadedWithinRadius_FelonyDisabled", clone, self)
  self:EvadedWithinRadius_FelonyDisabled()
end
function export:f_box_MissionModuleBox_v2_100_DisplayRequested()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_63"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|428513980"
  l0.Is_nil = self.f_box_Test_if_Nil_63_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_63_Is_not_nil
  l0 = self.box_MissionModuleBox_v2_100
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|141862214", "141862214", "MainMission_CopFelonyMonitor", "box_MissionModuleBox_v2_100.DisplayRequested", "box_Test_if_Nil_63.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1271738075"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_19_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_19_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_19_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1768092586", "1768092586", "MainMission_CopFelonyMonitor", "box_Simple_Node_14.Out", "box_Ordered_Output_19.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_61_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MainObjective is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_62"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|642928186"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|416725353", "416725353", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_61.Is_nil", "box_TextToScreen_v2_62.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_61_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionModuleBox_v2_100
  l0.MessageType = "MissionUpdate"
  l0.OasisID_1 = {
    section = "MISSIONS.MAIN.OBJECTIVES.Act_01.Driving_Mission_0.Objective_018_EscapePolice",
    item = "Description",
    id = "177104"
  }
  l0.OasisID_2 = self.MainObjective
  l0.Duration = -1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|907239145", "907239145", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_61.Is_not_nil", "box_MissionModuleBox_v2_100.Display", clone, l0)
  l0:Display()
end
function export:f_box_FelonyState_6_BeingScanned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|756144215", "756144215", "MainMission_CopFelonyMonitor", "box_FelonyState_6.BeingScanned", "BeingScanned", clone, self)
  self:BeingScanned()
  self:OnEnter_box_OnceOnly_v2_24()
  l0 = self.box_OnceOnly_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1573202003", "1573202003", "MainMission_CopFelonyMonitor", "box_FelonyState_6.BeingScanned", "box_OnceOnly_v2_24.In", clone, l0)
  l0:In(0)
end
function export:f_box_FelonyState_6_Chased()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_24()
  l0 = self.box_OnceOnly_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|20031212", "20031212", "MainMission_CopFelonyMonitor", "box_FelonyState_6.Chased", "box_OnceOnly_v2_24.In", clone, l0)
  l0:In(0)
end
function export:f_box_FelonyState_6_Evaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_17()
  l0 = self.box_OnceOnly_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1779563046", "1779563046", "MainMission_CopFelonyMonitor", "box_FelonyState_6.Evaded", "box_OnceOnly_v2_17.In", clone, l0)
  l0:In(0)
end
function export:f_box_FelonyState_6_Free()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_17()
  l0 = self.box_OnceOnly_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1492009552", "1492009552", "MainMission_CopFelonyMonitor", "box_FelonyState_6.Free", "box_OnceOnly_v2_17.In", clone, l0)
  l0:In(0)
end
function export:f_box_FelonyState_6_ScannedSuccessfully()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_24()
  l0 = self.box_OnceOnly_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|585980336", "585980336", "MainMission_CopFelonyMonitor", "box_FelonyState_6.ScannedSuccessfully", "box_OnceOnly_v2_24.In", clone, l0)
  l0:In(0)
end
function export:f_box_OnceOnly_v2_9_Out_0()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_88"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|889070162"
  l0.Is_nil = self.f_box_Test_if_Nil_88_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_88_Is_not_nil
  l0 = self.box_OnceOnly_v2_9
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|424243343", "424243343", "MainMission_CopFelonyMonitor", "box_OnceOnly_v2_9.Out", "box_Test_if_Nil_88.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_90_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPoint is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_91"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1969067097"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1213528754", "1213528754", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_90.Is_nil", "box_TextToScreen_v2_91.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_90_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_26
  l0.MapPoint = self.MapPoint
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1420224064", "1420224064", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_90.Is_not_nil", "box_MapPointController_v3_26.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_FelonyType_46_Club()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_46
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_39()
  l1 = self.box_OnceOnly_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1298871609", "1298871609", "MainMission_CopFelonyMonitor", "box_FelonyType_46.Club", "box_OnceOnly_v2_39.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_46_CTOS()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_46
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_39()
  l1 = self.box_OnceOnly_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1007133563", "1007133563", "MainMission_CopFelonyMonitor", "box_FelonyType_46.CTOS", "box_OnceOnly_v2_39.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_46_Fixer()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_46
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_39()
  l1 = self.box_OnceOnly_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1830614728", "1830614728", "MainMission_CopFelonyMonitor", "box_FelonyType_46.Fixer", "box_OnceOnly_v2_39.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_46_MadnessPill()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_46
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_39()
  l1 = self.box_OnceOnly_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1976049689", "1976049689", "MainMission_CopFelonyMonitor", "box_FelonyType_46.MadnessPill", "box_OnceOnly_v2_39.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_46_None()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_46
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_39()
  l1 = self.box_OnceOnly_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|705105969", "705105969", "MainMission_CopFelonyMonitor", "box_FelonyType_46.None", "box_OnceOnly_v2_39.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_46_Pawnee()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_46
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_39()
  l1 = self.box_OnceOnly_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1165991287", "1165991287", "MainMission_CopFelonyMonitor", "box_FelonyType_46.Pawnee", "box_OnceOnly_v2_39.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_46_Police()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_46
  self.IsCopFelony = l0.IsCopFelony
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  l0.player = self.Player
  l0._graph = self
  l0._name = "box_FelonyState_50"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|179502572"
  l0.Free = self.f_box_FelonyState_50_Free
  l0.BeingScanned = self.f_box_FelonyState_50_BeingScanned
  l0.ScannedSuccessfully = self.f_box_FelonyState_50_ScannedSuccessfully
  l0.Chased = self.f_box_FelonyState_50_Chased
  l0.Evaded = self.f_box_FelonyState_50_Evaded
  l0.InvalidPlayer = DummyFunction
  l0 = self.box_FelonyType_46
  l1 = Boxes[PathID("Domino/System/FelonyState.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|708058171", "708058171", "MainMission_CopFelonyMonitor", "box_FelonyType_46.Police", "box_FelonyState_50.GetFelonyState", l0, l1)
  l1:GetFelonyState()
end
function export:f_box_FelonyType_46_SpiderPill()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_46
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_39()
  l1 = self.box_OnceOnly_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1927978067", "1927978067", "MainMission_CopFelonyMonitor", "box_FelonyType_46.SpiderPill", "box_OnceOnly_v2_39.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyType_46_Viceroy()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyType_46
  self.IsCopFelony = l0.IsCopFelony
  self:OnEnter_box_OnceOnly_v2_39()
  l1 = self.box_OnceOnly_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|151170646", "151170646", "MainMission_CopFelonyMonitor", "box_FelonyType_46.Viceroy", "box_OnceOnly_v2_39.In", l0, l1)
  l1:In(0)
end
function export:f_box_Proximity_Monitor_73_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_75"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1658555763"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_75_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_75_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Proximity_Monitor_73
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|59675293", "59675293", "MainMission_CopFelonyMonitor", "box_Proximity_Monitor_73.EnterRadius", "box_Compare_Boolean_v2_75.In", l0, l1)
  l1:In()
  self:OnEnter_box_Proximity_Monitor_73()
  l0 = self.box_Proximity_Monitor_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1774902573", "1774902573", "MainMission_CopFelonyMonitor", "box_Proximity_Monitor_73.EnterRadius", "box_Proximity_Monitor_73.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Proximity_Monitor_73_ExitRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_53"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1180154502"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_53_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_53_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Proximity_Monitor_73
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|619970077", "619970077", "MainMission_CopFelonyMonitor", "box_Proximity_Monitor_73.ExitRadius", "box_Compare_Boolean_v2_53.In", l0, l1)
  l1:In()
  self:OnEnter_box_Proximity_Monitor_73()
  l0 = self.box_Proximity_Monitor_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2142965056", "2142965056", "MainMission_CopFelonyMonitor", "box_Proximity_Monitor_73.ExitRadius", "box_Proximity_Monitor_73.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Test_if_Nil_40_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPoint is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_95"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2074809304"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|248107109", "248107109", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_40.Is_nil", "box_TextToScreen_v2_95.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_40_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_96"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|2031647451"
  l0.Is_nil = self.f_box_Test_if_Nil_96_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_96_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1780955535", "1780955535", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_40.Is_not_nil", "box_Test_if_Nil_96.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_96_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPoint is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_94"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|660785007"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|622849454", "622849454", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_96.Is_nil", "box_TextToScreen_v2_94.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_96_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_28
  l0.MapPoint = self.MapPoint
  l0.LocText = self.MapPointLocText
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|399025389", "399025389", "MainMission_CopFelonyMonitor", "box_Test_if_Nil_96.Is_not_nil", "box_MapPointController_v3_28.Show", clone, l0)
  l0:Show()
end
function export:f_box_Compare_Boolean_v2_97_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_64"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|332069801"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_64_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_64_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|693976048", "693976048", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_97.A_is_False", "box_Compare_Boolean_v2_64.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_97_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_68"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|494602372"
  l0.Is_nil = self.f_box_Test_if_Nil_68_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_68_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|367078742", "367078742", "MainMission_CopFelonyMonitor", "box_Compare_Boolean_v2_97.A_is_True", "box_Test_if_Nil_68.In", clone, l0)
  l0:In()
end
function export:f_box_FelonyChaseMonitor_18_ScanSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyChaseMonitor_18
  l1 = self.box_FelonyType_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CopFelonyMonitor.domino|@MainMission_CopFelonyMonitor|1949079078", "1949079078", "MainMission_CopFelonyMonitor", "box_FelonyChaseMonitor_18.ScanSuccess", "box_FelonyType_2.GetFelonyType", l0, l1)
  l1:GetFelonyType()
end
function export:OnEnter_box_OnceOnly_v2_66()
end
function export:OnEnter_box_OnceOnly_v2_3()
end
function export:OnEnter_box_OnceOnly_v2_49()
end
function export:OnEnter_box_OnceOnly_v2_39()
end
function export:OnEnter_box_OnceOnly_v2_16()
end
function export:OnEnter_box_FelonyChaseMonitor_44()
  local l0
  l0 = self.box_FelonyChaseMonitor_44
  l0.CheckNow = 1
end
function export:OnEnter_box_OnceOnly_v2_41()
end
function export:OnEnter_box_OnceOnly_v2_48()
end
function export:OnEnter_box_Proximity_Monitor_30()
  local l0
  l0 = self.box_Proximity_Monitor_30
  l0.Entity1 = self.Player
  l0.Entity2 = self.MapPoint
  l0.Radius = self.MapPointRadius
  l0.CheckNow = 1
end
function export:OnEnter_box_FelonyChaseMonitor_7()
end
function export:OnEnter_box_OnceOnly_v2_24()
end
function export:OnEnter_box_OnceOnly_v2_17()
end
function export:OnEnter_box_OnceOnly_v2_9()
end
function export:OnEnter_box_Proximity_Monitor_73()
  local l0
  l0 = self.box_Proximity_Monitor_73
  l0.Entity1 = self.Player
  l0.Entity2 = self.MapPoint
  l0.Radius = self.MapPointRadius
  l0.CheckNow = 1
end
function export:OnEnter_box_FelonyChaseMonitor_18()
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
