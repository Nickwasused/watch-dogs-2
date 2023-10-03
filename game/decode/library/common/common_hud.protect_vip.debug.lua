export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("Domino/System/HealthBarController.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v3.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/TargetTagController.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Protect_VIP"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP"
  self.CurrentHealthPercentage = 0
  self.HealthWarningThreshold = 0.1
  self.box_OnceOnly_v2_8 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_8
  l0._graph = self
  l0._name = "box_OnceOnly_v2_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|41152574"
  l0._DynamicAnchors = {In = 2, Out = 2}
  l0.Out[0] = self.f_box_OnceOnly_v2_8_Out_0
  l0.Out[1] = DummyFunction
  l0.ResetOut = self.f_box_OnceOnly_v2_8_ResetOut
  self.box_PawnHealthMonitor_v3_4 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_4
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|694256484"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_4_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_4_Disabled
  l0.Damaged = self.f_box_PawnHealthMonitor_v3_4_Damaged
  l0.Killed = self.f_box_PawnHealthMonitor_v3_4_Killed
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = self.f_box_PawnHealthMonitor_v3_4_HealthChecked
  self.box_Target_Tag_Controller_2 = cbox:CreateBox("Domino/System/TargetTagController.lua")
  l0 = self.box_Target_Tag_Controller_2
  l0._graph = self
  l0._name = "box_Target_Tag_Controller_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|707773722"
  l0.Out = DummyFunction
  l0.TagAdded = DummyFunction
  l0.ErrorAdding = DummyFunction
  l0.TagRemoved = self.f_box_Target_Tag_Controller_2_TagRemoved
  l0.ErrorRemoving = self.f_box_Target_Tag_Controller_2_ErrorRemoving
  l0.TaggingEnabled = DummyFunction
  l0.TaggingDisabled = DummyFunction
  l0.ProfilerlessTaggingEnabled = DummyFunction
  l0.ProfilerlessTaggingDisabled = DummyFunction
  l0.TaggerComponentEnabled = DummyFunction
  l0.TaggerComponentDisabled = DummyFunction
  self.box_Timer_v2_6 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_6
  l0._graph = self
  l0._name = "box_Timer_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|786938301"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_6_Started
  l0.Stopped = self.f_box_Timer_v2_6_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionModuleBox_v3_3 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_3
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|1278217527"
  l0.DisplayRequested = DummyFunction
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
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
function export:Start()
  local l0
  self:OnEnter_box_PawnHealthMonitor_v3_4()
  l0 = self.box_PawnHealthMonitor_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|1209558144", "1209558144", "Protect_VIP", "Start", "box_PawnHealthMonitor_v3_4.Enable", self, l0)
  l0:Enable()
end
function export:Stop()
  local l0
  self:OnEnter_box_PawnHealthMonitor_v3_4()
  l0 = self.box_PawnHealthMonitor_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|1868122439", "1868122439", "Protect_VIP", "Stop", "box_PawnHealthMonitor_v3_4.Disable", self, l0)
  l0:Disable()
end
function export:f_box_OnceOnly_v2_8_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v3_3()
  l0 = self.box_OnceOnly_v2_8
  l1 = self.box_MissionModuleBox_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|1153093444", "1153093444", "Protect_VIP", "box_OnceOnly_v2_8.Out", "box_MissionModuleBox_v3_3.Display", l0, l1)
  l1:Display()
end
function export:f_box_OnceOnly_v2_8_ResetOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v3_3()
  l0 = self.box_OnceOnly_v2_8
  l1 = self.box_MissionModuleBox_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|793603114", "793603114", "Protect_VIP", "box_OnceOnly_v2_8.ResetOut", "box_MissionModuleBox_v3_3.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Compare_Floats_v2_7_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_6()
  l0 = self.box_Timer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|849424552", "849424552", "Protect_VIP", "box_Compare_Floats_v2_7.A_ge_B", "box_Timer_v2_6.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Health_Bar_Controller_1_Displayed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Target_Tag_Controller_2()
  l0 = self.box_Target_Tag_Controller_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|1665363046", "1665363046", "Protect_VIP", "box_Health_Bar_Controller_1.Displayed", "box_Target_Tag_Controller_2.AddTagEntity", clone, l0)
  l0:AddTagEntity()
end
function export:f_box_Health_Bar_Controller_1_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Target_Tag_Controller_2()
  l0 = self.box_Target_Tag_Controller_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|319678555", "319678555", "Protect_VIP", "box_Health_Bar_Controller_1.Hidden", "box_Target_Tag_Controller_2.RemoveTagEntity", clone, l0)
  l0:RemoveTagEntity()
end
function export:f_box_PawnHealthMonitor_v3_4_Damaged()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_4
  self.CurrentHealthPercentage = l0.Health
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self.CurrentHealthPercentage
  l0.B = self.HealthWarningThreshold
  l0.Tolerance = nil
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|1573165532"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Floats_v2_5_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0 = self.box_PawnHealthMonitor_v3_4
  l1 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|789635494", "789635494", "Protect_VIP", "box_PawnHealthMonitor_v3_4.Damaged", "box_Compare_Floats_v2_5.In", l0, l1)
  l1:In()
end
function export:f_box_PawnHealthMonitor_v3_4_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Health_Bar_Controller_1()
  l0 = self.box_PawnHealthMonitor_v3_4
  l1 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|1932283964", "1932283964", "Protect_VIP", "box_PawnHealthMonitor_v3_4.Disabled", "box_Health_Bar_Controller_1.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_PawnHealthMonitor_v3_4_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Health_Bar_Controller_1()
  l0 = self.box_PawnHealthMonitor_v3_4
  l1 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|1302655843", "1302655843", "Protect_VIP", "box_PawnHealthMonitor_v3_4.Enabled", "box_Health_Bar_Controller_1.Display", l0, l1)
  l1:Display()
end
function export:f_box_PawnHealthMonitor_v3_4_HealthChecked()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_4
  self.CurrentHealthPercentage = l0.Health
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self.CurrentHealthPercentage
  l0.B = self.HealthWarningThreshold
  l0.Tolerance = nil
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|173435463"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Floats_v2_7_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0 = self.box_PawnHealthMonitor_v3_4
  l1 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|848846935", "848846935", "Protect_VIP", "box_PawnHealthMonitor_v3_4.HealthChecked", "box_Compare_Floats_v2_7.In", l0, l1)
  l1:In()
end
function export:f_box_PawnHealthMonitor_v3_4_Killed()
  local l0
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_4()
  l0 = self.box_PawnHealthMonitor_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|1538609029", "1538609029", "Protect_VIP", "box_PawnHealthMonitor_v3_4.Killed", "box_PawnHealthMonitor_v3_4.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Target_Tag_Controller_2_ErrorRemoving()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_6()
  l0 = self.box_Target_Tag_Controller_2
  l1 = self.box_Timer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|1149086351", "1149086351", "Protect_VIP", "box_Target_Tag_Controller_2.ErrorRemoving", "box_Timer_v2_6.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Target_Tag_Controller_2_TagRemoved()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_6()
  l0 = self.box_Target_Tag_Controller_2
  l1 = self.box_Timer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|1333920592", "1333920592", "Protect_VIP", "box_Target_Tag_Controller_2.TagRemoved", "box_Timer_v2_6.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Timer_v2_6_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_8()
  l0 = self.box_Timer_v2_6
  l1 = self.box_OnceOnly_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|815646251", "815646251", "Protect_VIP", "box_Timer_v2_6.Started", "box_OnceOnly_v2_8.In", l0, l1)
  l1:In(0)
end
function export:f_box_Timer_v2_6_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_8()
  l0 = self.box_Timer_v2_6
  l1 = self.box_OnceOnly_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|385215844", "385215844", "Protect_VIP", "box_Timer_v2_6.Stopped", "box_OnceOnly_v2_8.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_Timer_v2_6_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_4()
  l0 = self.box_Timer_v2_6
  l1 = self.box_PawnHealthMonitor_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|1366921417", "1366921417", "Protect_VIP", "box_Timer_v2_6.TimeElapsed", "box_PawnHealthMonitor_v3_4.CheckHealth", l0, l1)
  l1:CheckHealth()
end
function export:f_box_Compare_Floats_v2_5_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_6()
  l0 = self.box_Timer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|547695822", "547695822", "Protect_VIP", "box_Compare_Floats_v2_5.A_lt_B", "box_Timer_v2_6.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_OnceOnly_v2_8()
end
function export:OnEnter_box_Health_Bar_Controller_1()
  local l0
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  l0.NPC_ID = self.VIP
  l0.NPC_Name = self.VIP_Name
  l0._graph = self
  l0._name = "box_Health_Bar_Controller_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Protect_VIP|627355818"
  l0.Displayed = self.f_box_Health_Bar_Controller_1_Displayed
  l0.Hidden = self.f_box_Health_Bar_Controller_1_Hidden
end
function export:OnEnter_box_PawnHealthMonitor_v3_4()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_4
  l0.Pawn = self.VIP
end
function export:OnEnter_box_Target_Tag_Controller_2()
  local l0
  l0 = self.box_Target_Tag_Controller_2
  l0.TaggingColorType = "ObjectiveTarget"
  l0.TargetEntity = self.VIP
end
function export:OnEnter_box_Timer_v2_6()
  local l0
  l0 = self.box_Timer_v2_6
  l0.Loop = 1
end
function export:OnEnter_box_MissionModuleBox_v3_3()
  local l0
  l0 = self.box_MissionModuleBox_v3_3
  l0.MessageType = "MissionWarning"
  l0.MessageIcon = "iconWarning"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "AllySituationCritical",
    id = "195577"
  }
  l0.Duration = -1
end
_compilerVersion = 4
