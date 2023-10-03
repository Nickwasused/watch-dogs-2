export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ComposeString.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v2.lua")
  cbox:RegisterBox("Domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TriggerController.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Placeholder Objective"
  self._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective"
  self.Succeeded = DummyFunction
  self.Started = DummyFunction
  self.tempString = ""
  self.DetectInteract = 0
  self.DetectLeave = 0
  self.box_SetBoolean_v2_17 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_17
  l0._graph = self
  l0._name = "box_SetBoolean_v2_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|140771973"
  l0.Out = self.f_box_SetBoolean_v2_17_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_17_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_17_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_17_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_17_SetFromBool
  self.box_MissionModuleBox_v2_7 = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self.box_MissionModuleBox_v2_7
  l0._graph = self
  l0._name = "box_MissionModuleBox_v2_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|143518397"
  l0.DisplayRequested = DummyFunction
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = self.f_box_MissionModuleBox_v2_7_Out
  self.box_TriggerMonitor_v2_9 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_9
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|284903346"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = self.f_box_TriggerMonitor_v2_9_Use
  self.box_MapPointController_v3_4 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_4
  l0._graph = self
  l0._name = "box_MapPointController_v3_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|375140375"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_4_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_SetBoolean_v2_18 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_18
  l0._graph = self
  l0._name = "box_SetBoolean_v2_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|486349075"
  l0.Out = self.f_box_SetBoolean_v2_18_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_18_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_18_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_18_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_18_SetFromBool
  self.box_MissionModuleBox_v2_3 = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self.box_MissionModuleBox_v2_3
  l0._graph = self
  l0._name = "box_MissionModuleBox_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1034204095"
  l0.DisplayRequested = DummyFunction
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = self.f_box_MissionModuleBox_v2_3_Out
  self.box_TriggerMonitor_v2_5 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_5
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1424648796"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_5_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Timer_v2_6 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_6
  l0._graph = self
  l0._name = "box_Timer_v2_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1606286184"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TriggerMonitor_v2_14 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_14
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1674006280"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = self.f_box_TriggerMonitor_v2_14_Leave
  l0.Use = DummyFunction
  self.box_MapPointController_v3_1 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_1
  l0._graph = self
  l0._name = "box_MapPointController_v3_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|2056799406"
  l0.Shown = self.f_box_MapPointController_v3_1_Shown
  l0.Hidden = DummyFunction
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
function export:ForceSuccess()
  local l0
  self:OnEnter_box_TriggerMonitor_v2_5()
  l0 = self.box_TriggerMonitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|2072483309", "2072483309", "Placeholder Objective", "ForceSuccess", "box_TriggerMonitor_v2_5.Disable", self, l0)
  l0:Disable()
  self:OnEnter_box_Trigger_Controller_8()
  l0 = Boxes[PathID("Domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1375989895", "1375989895", "Placeholder Objective", "ForceSuccess", "box_Trigger_Controller_8.SetAsUnusable", self, l0)
  l0:SetAsUnusable()
  self:OnEnter_box_TriggerMonitor_v2_14()
  l0 = self.box_TriggerMonitor_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|834221066", "834221066", "Placeholder Objective", "ForceSuccess", "box_TriggerMonitor_v2_14.Disable", self, l0)
  l0:Disable()
  self:OnEnter_box_Test_if_Nil_20()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|924881589", "924881589", "Placeholder Objective", "ForceSuccess", "box_Test_if_Nil_20.In", self, l0)
  l0:In()
  self:OnEnter_box_TriggerMonitor_v2_9()
  l0 = self.box_TriggerMonitor_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1982684949", "1982684949", "Placeholder Objective", "ForceSuccess", "box_TriggerMonitor_v2_9.Disable", self, l0)
  l0:Disable()
end
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.Interact
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|663783319"
  l0.Is_nil = self.f_box_Test_if_Nil_15_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_15_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|338990460", "338990460", "Placeholder Objective", "Start", "box_Test_if_Nil_15.In", self, l0)
  l0:In()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1791697921", "1791697921", "Placeholder Objective", "Start", "Started", self, self)
  self:Started()
end
function export:f_box_ParticleFXController_v2_2_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_24()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1210798174", "1210798174", "Placeholder Objective", "box_ParticleFXController_v2_2.Stopped", "box_Test_if_Nil_24.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_25_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DetectInteract
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1169170465"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_10_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_10_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|445569120", "445569120", "Placeholder Objective", "box_Test_if_Nil_25.Is_not_nil", "box_Compare_Boolean_v2_10.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.DetectInteract = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.LeaveArea
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1730023160"
  l0.Is_nil = self.f_box_Test_if_Nil_13_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_13_Is_not_nil
  l0 = self.box_SetBoolean_v2_17
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|242566421", "242566421", "Placeholder Objective", "box_SetBoolean_v2_17.Out", "box_Test_if_Nil_13.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_17_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.DetectInteract = l0.Target
end
function export:f_box_SetBoolean_v2_17_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.DetectInteract = l0.Target
end
function export:f_box_SetBoolean_v2_17_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.DetectInteract = l0.Target
end
function export:f_box_SetBoolean_v2_17_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.DetectInteract = l0.Target
end
function export:f_box_MissionModuleBox_v2_7_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Trigger
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_25"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|43530537"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_25_Is_not_nil
  l0 = self.box_MissionModuleBox_v2_7
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1476791724", "1476791724", "Placeholder Objective", "box_MissionModuleBox_v2_7.Out", "box_Test_if_Nil_25.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_9_Use()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Test_if_Nil_20()
  l0 = self.box_TriggerMonitor_v2_9
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1150001224", "1150001224", "Placeholder Objective", "box_TriggerMonitor_v2_9.Use", "box_Test_if_Nil_20.In", l0, l1)
  l1:In()
  self:OnEnter_box_Trigger_Controller_8()
  l0 = self.box_TriggerMonitor_v2_9
  l1 = Boxes[PathID("Domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|2006958812", "2006958812", "Placeholder Objective", "box_TriggerMonitor_v2_9.Use", "box_Trigger_Controller_8.SetAsUnusable", l0, l1)
  l1:SetAsUnusable()
end
function export:f_box_MapPointController_v3_4_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Test_if_Nil_23()
  l0 = self.box_MapPointController_v3_4
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|392543529", "392543529", "Placeholder Objective", "box_MapPointController_v3_4.Hidden", "box_Test_if_Nil_23.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_23_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_24()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1603657410", "1603657410", "Placeholder Objective", "box_Test_if_Nil_23.Is_nil", "box_Test_if_Nil_24.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_23_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.FX
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|24159602"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_2_Stopped
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1942271821", "1942271821", "Placeholder Objective", "box_Test_if_Nil_23.Is_not_nil", "box_ParticleFXController_v2_2.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_SetBoolean_v2_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_18
  self.DetectLeave = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.FX
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|730405780"
  l0.Is_nil = self.f_box_Test_if_Nil_21_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_21_Is_not_nil
  l0 = self.box_SetBoolean_v2_18
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1405894113", "1405894113", "Placeholder Objective", "box_SetBoolean_v2_18.Out", "box_Test_if_Nil_21.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_18_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_18
  self.DetectLeave = l0.Target
end
function export:f_box_SetBoolean_v2_18_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_18
  self.DetectLeave = l0.Target
end
function export:f_box_SetBoolean_v2_18_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_18
  self.DetectLeave = l0.Target
end
function export:f_box_SetBoolean_v2_18_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_18
  self.DetectLeave = l0.Target
end
function export:f_box_Test_if_Nil_15_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_17()
  l0 = self.box_SetBoolean_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1276699724", "1276699724", "Placeholder Objective", "box_Test_if_Nil_15.Is_nil", "box_SetBoolean_v2_17.False", clone, l0)
  l0:False()
end
function export:f_box_Test_if_Nil_15_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_17()
  l0 = self.box_SetBoolean_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1383351138", "1383351138", "Placeholder Objective", "box_Test_if_Nil_15.Is_not_nil", "box_SetBoolean_v2_17.FromBool", clone, l0)
  l0:FromBool()
end
function export:f_box_Test_if_Nil_21_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_19()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|2079995646", "2079995646", "Placeholder Objective", "box_Test_if_Nil_21.Is_nil", "box_Test_if_Nil_19.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_21_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.FX
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1609146946"
  l0.Started = self.f_box_ParticleFXController_v2_22_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|97463500", "97463500", "Placeholder Objective", "box_Test_if_Nil_21.Is_not_nil", "box_ParticleFXController_v2_22.Start", clone, l0)
  l0:Start()
end
function export:f_box_Test_if_Nil_24_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1332876440", "1332876440", "Placeholder Objective", "box_Test_if_Nil_24.Is_nil", "Succeeded", clone, self)
  self:Succeeded()
end
function export:f_box_Test_if_Nil_24_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ComposeString.lua")]
  l0.String[0] = "Objective Complete: "
  l0.String[1] = self.Success_Text
  l0.Separator = nil
  l0._graph = self
  l0._name = "box_Compose_String_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1129042722"
  l0._DynamicAnchors = {String = 2}
  l0.Out = self.f_box_Compose_String_12_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|605161373", "605161373", "Placeholder Objective", "box_Test_if_Nil_24.Is_not_nil", "box_Compose_String_12.Compose", clone, l0)
  l0:Compose()
end
function export:f_box_Compare_Boolean_v2_16_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_5()
  l0 = self.box_TriggerMonitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|262172622", "262172622", "Placeholder Objective", "box_Compare_Boolean_v2_16.A_is_False", "box_TriggerMonitor_v2_5.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_16_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_14()
  l0 = self.box_TriggerMonitor_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1725658646", "1725658646", "Placeholder Objective", "box_Compare_Boolean_v2_16.A_is_True", "box_TriggerMonitor_v2_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionModuleBox_v2_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_6
  l0.Seconds = 5
  l0 = self.box_MissionModuleBox_v2_3
  l1 = self.box_Timer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|969710609", "969710609", "Placeholder Objective", "box_MissionModuleBox_v2_3.Out", "box_Timer_v2_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compose_String_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ComposeString.lua")]
  self.tempString = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionModuleBox_v2_3
  l0.Duration = 5
  l0.DebugText = self.tempString
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|738344912", "738344912", "Placeholder Objective", "box_Compose_String_12.Out", "box_MissionModuleBox_v2_3.Display", clone, l0)
  l0:Display()
end
function export:f_box_Compare_Boolean_v2_10_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DetectLeave
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|803218210"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_16_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_16_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|215751768", "215751768", "Placeholder Objective", "box_Compare_Boolean_v2_10.A_is_False", "box_Compare_Boolean_v2_16.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_10_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Trigger_Controller_8()
  l0 = Boxes[PathID("Domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|562234531", "562234531", "Placeholder Objective", "box_Compare_Boolean_v2_10.A_is_True", "box_Trigger_Controller_8.SetAsUsable", clone, l0)
  l0:SetAsUsable()
end
function export:f_box_TriggerMonitor_v2_5_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Test_if_Nil_20()
  l0 = self.box_TriggerMonitor_v2_5
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|348993058", "348993058", "Placeholder Objective", "box_TriggerMonitor_v2_5.Enter", "box_Test_if_Nil_20.In", l0, l1)
  l1:In()
  self:OnEnter_box_TriggerMonitor_v2_5()
  l0 = self.box_TriggerMonitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1528032099", "1528032099", "Placeholder Objective", "box_TriggerMonitor_v2_5.Enter", "box_TriggerMonitor_v2_5.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_6_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|520335253", "520335253", "Placeholder Objective", "box_Timer_v2_6.TimeElapsed", "Succeeded", l0, self)
  self:Succeeded()
end
function export:f_box_ParticleFXController_v2_22_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_19()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|776065763", "776065763", "Placeholder Objective", "box_ParticleFXController_v2_22.Started", "box_Test_if_Nil_19.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_20_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_23()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1749312453", "1749312453", "Placeholder Objective", "box_Test_if_Nil_20.Is_nil", "box_Test_if_Nil_23.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_20_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_4
  l0.MapPoint = self.Map_Point
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1663796195", "1663796195", "Placeholder Objective", "box_Test_if_Nil_20.Is_not_nil", "box_MapPointController_v3_4.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_TriggerMonitor_v2_14_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Test_if_Nil_20()
  l0 = self.box_TriggerMonitor_v2_14
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|747934549", "747934549", "Placeholder Objective", "box_TriggerMonitor_v2_14.Leave", "box_Test_if_Nil_20.In", l0, l1)
  l1:In()
  self:OnEnter_box_TriggerMonitor_v2_14()
  l0 = self.box_TriggerMonitor_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|989360538", "989360538", "Placeholder Objective", "box_TriggerMonitor_v2_14.Leave", "box_TriggerMonitor_v2_14.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Test_if_Nil_13_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_18()
  l0 = self.box_SetBoolean_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1405833292", "1405833292", "Placeholder Objective", "box_Test_if_Nil_13.Is_nil", "box_SetBoolean_v2_18.False", clone, l0)
  l0:False()
end
function export:f_box_Test_if_Nil_13_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_18()
  l0 = self.box_SetBoolean_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1466325828", "1466325828", "Placeholder Objective", "box_Test_if_Nil_13.Is_not_nil", "box_SetBoolean_v2_18.FromBool", clone, l0)
  l0:FromBool()
end
function export:f_box_Compose_String_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ComposeString.lua")]
  self.tempString = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionModuleBox_v2_7
  l0.MessageType = "MissionDebug"
  l0.Duration = 5
  l0.DebugText = self.tempString
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|432376540", "432376540", "Placeholder Objective", "box_Compose_String_11.Out", "box_MissionModuleBox_v2_7.Display", clone, l0)
  l0:Display()
end
function export:f_box_Trigger_Controller_8_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_9()
  l0 = self.box_TriggerMonitor_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|992431666", "992431666", "Placeholder Objective", "box_Trigger_Controller_8.Unusable", "box_TriggerMonitor_v2_9.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Trigger_Controller_8_Usable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_9()
  l0 = self.box_TriggerMonitor_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1219341522", "1219341522", "Placeholder Objective", "box_Trigger_Controller_8.Usable", "box_TriggerMonitor_v2_9.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Test_if_Nil_19_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Compose_String_11()
  l0 = Boxes[PathID("Domino/System/ComposeString.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|774889703", "774889703", "Placeholder Objective", "box_Test_if_Nil_19.Is_nil", "box_Compose_String_11.Compose", clone, l0)
  l0:Compose()
end
function export:f_box_Test_if_Nil_19_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_1
  l0.MapPoint = self.Map_Point
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1891764304", "1891764304", "Placeholder Objective", "box_Test_if_Nil_19.Is_not_nil", "box_MapPointController_v3_1.Show", clone, l0)
  l0:Show()
end
function export:f_box_MapPointController_v3_1_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Compose_String_11()
  l0 = self.box_MapPointController_v3_1
  l1 = Boxes[PathID("Domino/System/ComposeString.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|524168258", "524168258", "Placeholder Objective", "box_MapPointController_v3_1.Shown", "box_Compose_String_11.Compose", l0, l1)
  l1:Compose()
end
function export:OnEnter_box_SetBoolean_v2_17()
  local l0
  l0 = self.box_SetBoolean_v2_17
  l0.Bool = self.Interact
end
function export:OnEnter_box_TriggerMonitor_v2_9()
  local l0
  l0 = self.box_TriggerMonitor_v2_9
  l0.Trigger = self.Trigger
end
function export:OnEnter_box_Test_if_Nil_23()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.FX
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|468396131"
  l0.Is_nil = self.f_box_Test_if_Nil_23_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_23_Is_not_nil
end
function export:OnEnter_box_SetBoolean_v2_18()
  local l0
  l0 = self.box_SetBoolean_v2_18
  l0.Bool = self.LeaveArea
end
function export:OnEnter_box_Test_if_Nil_24()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = self.Success_Text
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|754338229"
  l0.Is_nil = self.f_box_Test_if_Nil_24_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_24_Is_not_nil
end
function export:OnEnter_box_TriggerMonitor_v2_5()
  local l0
  l0 = self.box_TriggerMonitor_v2_5
  l0.Trigger = self.Trigger
  l0.CheckNow = 1
end
function export:OnEnter_box_Test_if_Nil_20()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Map_Point
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1621177561"
  l0.Is_nil = self.f_box_Test_if_Nil_20_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_20_Is_not_nil
end
function export:OnEnter_box_TriggerMonitor_v2_14()
  local l0
  l0 = self.box_TriggerMonitor_v2_14
  l0.Trigger = self.Trigger
  l0.CheckNow = 1
end
function export:OnEnter_box_Compose_String_11()
  local l0
  l0 = Boxes[PathID("Domino/System/ComposeString.lua")]
  l0.String[0] = "Objective Started: "
  l0.String[1] = self.Start_Text
  l0.Separator = nil
  l0._graph = self
  l0._name = "box_Compose_String_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1802117618"
  l0._DynamicAnchors = {String = 2}
  l0.Out = self.f_box_Compose_String_11_Out
end
function export:OnEnter_box_Trigger_Controller_8()
  local l0
  l0 = Boxes[PathID("Domino/System/TriggerController.lua")]
  l0.Trigger = self.Trigger
  l0.CheckLookAt = 0
  l0.CheckAngle = 0
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|1921343889"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = self.f_box_Trigger_Controller_8_Usable
  l0.Unusable = self.f_box_Trigger_Controller_8_Unusable
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
end
function export:OnEnter_box_Test_if_Nil_19()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Map_Point
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\Common\\PlaceholderObjective.domino|@Placeholder Objective|2036089787"
  l0.Is_nil = self.f_box_Test_if_Nil_19_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_19_Is_not_nil
end
function export:Succeeded()
end
function export:Started()
end
_compilerVersion = 4
