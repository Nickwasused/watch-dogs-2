export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v3.lua")
  cbox:RegisterBox("Domino/System/MissionZoneController.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/TimerToScreen.lua")
  cbox:RegisterBox("Domino/System/TriggerGameOver.lua")
end
function export:Init(cbox)
  local l0
  self._name = "MissionArea"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea"
  self.Started = DummyFunction
  self.Stopped = DummyFunction
  self.Failed = DummyFunction
  self.Exited = DummyFunction
  self.Reentered = DummyFunction
  self.WarningTime = 15
  self.PlayerID = nil
  self.WasStopped = 0
  self.TimerElapsed = 0
  self.box_Proximity_Monitor_7 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_7
  l0._graph = self
  l0._name = "box_Proximity_Monitor_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|50003145"
  l0.Enabled = self.f_box_Proximity_Monitor_7_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_7_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_7_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_7_ExitRadius
  self.box_TimerToScreen_2 = cbox:CreateBox("Domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_2
  l0._graph = self
  l0._name = "box_TimerToScreen_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|329377802"
  l0.Started = self.f_box_TimerToScreen_2_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = self.f_box_TimerToScreen_2_Stopped
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_2_TimeElapsed
  self.box_SetBoolean_v2_9 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_9
  l0._graph = self
  l0._name = "box_SetBoolean_v2_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|907712087"
  l0.Out = self.f_box_SetBoolean_v2_9_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_9_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_9_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_9_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_9_SetFromBool
  self.box_SetBoolean_v2_10 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_10
  l0._graph = self
  l0._name = "box_SetBoolean_v2_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1157161460"
  l0.Out = self.f_box_SetBoolean_v2_10_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_10_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_10_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_10_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_10_SetFromBool
  self.box_MissionModuleBox_v3_4 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_4
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1416129287"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v3_4_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_13 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_13
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1609604355"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_box_MissionCheckpointReach_13_AllCheckpointsDisabled
  self.box_SetBoolean_v2_5 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_5
  l0._graph = self
  l0._name = "box_SetBoolean_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1700101494"
  l0.Out = self.f_box_SetBoolean_v2_5_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_5_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_5_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_5_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_5_SetFromBool
  self.box_MissionModuleBox_v3_1 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_1
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1953358488"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v3_1_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_box_MissionModuleBox_v3_1_HideRequested
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
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|734878831"
  l0.Out = self.f_box_Get_Player_ID_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|473572563", "473572563", "MissionArea", "Start", "box_Get_Player_ID_6.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = self.box_SetBoolean_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1862687796", "1862687796", "MissionArea", "Stop", "box_SetBoolean_v2_10.True", self, l0)
  l0:True()
end
function export:f_box_Proximity_Monitor_7_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_2()
  l0 = self.box_Proximity_Monitor_7
  l1 = self.box_TimerToScreen_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|405567215", "405567215", "MissionArea", "box_Proximity_Monitor_7.Disabled", "box_TimerToScreen_2.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Proximity_Monitor_7_Enabled()
  local l0
  self = self._graph
  l0 = self.box_Proximity_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1717627447", "1717627447", "MissionArea", "box_Proximity_Monitor_7.Enabled", "Started", l0, self)
  self:Started()
end
function export:f_box_Proximity_Monitor_7_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_2()
  l0 = self.box_Proximity_Monitor_7
  l1 = self.box_TimerToScreen_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|543672421", "543672421", "MissionArea", "box_Proximity_Monitor_7.EnterRadius", "box_TimerToScreen_2.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Proximity_Monitor_7_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_2()
  l0 = self.box_Proximity_Monitor_7
  l1 = self.box_TimerToScreen_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|690465508", "690465508", "MissionArea", "box_Proximity_Monitor_7.ExitRadius", "box_TimerToScreen_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_TimerToScreen_2_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZoneController_v2_8()
  l0 = self.box_TimerToScreen_2
  l1 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1151191921", "1151191921", "MissionArea", "box_TimerToScreen_2.Started", "box_MissionZoneController_v2_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TimerToScreen_2_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZoneController_v2_8()
  l0 = self.box_TimerToScreen_2
  l1 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|274197894", "274197894", "MissionArea", "box_TimerToScreen_2.Stopped", "box_MissionZoneController_v2_8.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TimerToScreen_2_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_TimerToScreen_2
  l1 = self.box_SetBoolean_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|896788503", "896788503", "MissionArea", "box_TimerToScreen_2.TimeElapsed", "box_SetBoolean_v2_9.True", l0, l1)
  l1:True()
end
function export:f_box_TriggerGameOver_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|24896848", "24896848", "MissionArea", "box_TriggerGameOver_3.Out", "Failed", clone, self)
  self:Failed()
end
function export:f_box_Get_Player_ID_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerID = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1434373895", "1434373895", "MissionArea", "box_Get_Player_ID_6.Out", "box_SetBoolean_v2_5.False", clone, l0)
  l0:False()
end
function export:f_box_Compare_Boolean_v2_11_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|253935417", "253935417", "MissionArea", "box_Compare_Boolean_v2_11.A_is_False", "Reentered", clone, self)
  self:Reentered()
end
function export:f_box_Compare_Boolean_v2_11_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionModuleBox_v3_4
  l0.MessageType = "MissionFailed"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "ExitedMissionArea",
    id = "165442"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1521565496", "1521565496", "MissionArea", "box_Compare_Boolean_v2_11.A_is_True", "box_MissionModuleBox_v3_4.Display", clone, l0)
  l0:Display()
end
function export:f_box_SetBoolean_v2_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.TimerElapsed = l0.Target
  self:OnEnter_box_Proximity_Monitor_7()
  l1 = self.box_Proximity_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|174438011", "174438011", "MissionArea", "box_SetBoolean_v2_9.Out", "box_Proximity_Monitor_7.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_9_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.TimerElapsed = l0.Target
end
function export:f_box_SetBoolean_v2_9_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.TimerElapsed = l0.Target
end
function export:f_box_SetBoolean_v2_9_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.TimerElapsed = l0.Target
end
function export:f_box_SetBoolean_v2_9_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.TimerElapsed = l0.Target
end
function export:f_box_SetBoolean_v2_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.WasStopped = l0.Target
  self:OnEnter_box_Proximity_Monitor_7()
  l1 = self.box_Proximity_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|859076748", "859076748", "MissionArea", "box_SetBoolean_v2_10.Out", "box_Proximity_Monitor_7.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_10_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_10_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_10_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_10_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.WasStopped = l0.Target
end
function export:f_box_MissionModuleBox_v3_4_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionModuleBox_v3_4
  l1 = self.box_MissionCheckpointReach_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1560683321", "1560683321", "MissionArea", "box_MissionModuleBox_v3_4.DisplayRequested", "box_MissionCheckpointReach_13.DisableAllCheckpoints", l0, l1)
  l1:DisableAllCheckpoints()
end
function export:f_box_MissionZoneController_v2_8_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionModuleBox_v3_1()
  l0 = self.box_MissionModuleBox_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1913660058", "1913660058", "MissionArea", "box_MissionZoneController_v2_8.Disabled", "box_MissionModuleBox_v3_1.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_MissionZoneController_v2_8_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionModuleBox_v3_1()
  l0 = self.box_MissionModuleBox_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|827979578", "827979578", "MissionArea", "box_MissionZoneController_v2_8.Enabled", "box_MissionModuleBox_v3_1.Display", clone, l0)
  l0:Display()
end
function export:f_box_MissionCheckpointReach_13_AllCheckpointsDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0._name = "box_TriggerGameOver_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|492893553"
  l0.Out = self.f_box_TriggerGameOver_3_Out
  l0 = self.box_MissionCheckpointReach_13
  l1 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|912845453", "912845453", "MissionArea", "box_MissionCheckpointReach_13.AllCheckpointsDisabled", "box_TriggerGameOver_3.GameOver", l0, l1)
  l1:GameOver()
end
function export:f_box_Compare_Boolean_v2_12_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TimerElapsed
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|856444067"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_11_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_11_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1217382933", "1217382933", "MissionArea", "box_Compare_Boolean_v2_12.A_is_False", "box_Compare_Boolean_v2_11.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_12_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1526774692", "1526774692", "MissionArea", "box_Compare_Boolean_v2_12.A_is_True", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_SetBoolean_v2_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.WasStopped = l0.Target
  self:OnEnter_box_Proximity_Monitor_7()
  l1 = self.box_Proximity_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1082965775", "1082965775", "MissionArea", "box_SetBoolean_v2_5.Out", "box_Proximity_Monitor_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_5_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_5_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_5_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.WasStopped = l0.Target
end
function export:f_box_SetBoolean_v2_5_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.WasStopped = l0.Target
end
function export:f_box_MissionModuleBox_v3_1_DisplayRequested()
  local l0
  self = self._graph
  l0 = self.box_MissionModuleBox_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|809692885", "809692885", "MissionArea", "box_MissionModuleBox_v3_1.DisplayRequested", "Exited", l0, self)
  self:Exited()
end
function export:f_box_MissionModuleBox_v3_1_HideRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.WasStopped
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1619535051"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_12_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_12_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MissionModuleBox_v3_1
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|178232956", "178232956", "MissionArea", "box_MissionModuleBox_v3_1.HideRequested", "box_Compare_Boolean_v2_12.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_Proximity_Monitor_7()
  local l0
  l0 = self.box_Proximity_Monitor_7
  l0.Entity1 = self.MissionArea
  l0.Entity2 = self.PlayerID
  l0.Radius = self.Radius
end
function export:OnEnter_box_TimerToScreen_2()
  local l0
  l0 = self.box_TimerToScreen_2
  l0.Seconds = self.WarningTime
end
function export:OnEnter_box_MissionZoneController_v2_8()
  local l0
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.MissionArea
  l0.Red = 0.78
  l0.Green = 0.82
  l0.Blue = 0.24
  l0.Alpha = 1
  l0.Radius = self.Radius
  l0.DrawType = "Outside"
  l0.ShapeType = "CMissionCircleDescriptor"
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0._name = "box_MissionZoneController_v2_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@MissionArea|1428914842"
  l0.Enabled = self.f_box_MissionZoneController_v2_8_Enabled
  l0.Disabled = self.f_box_MissionZoneController_v2_8_Disabled
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MissionModuleBox_v3_1()
  local l0
  l0 = self.box_MissionModuleBox_v3_1
  l0.MessageType = "MissionWarning"
  l0.MessageIcon = "iconWarning"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "ExitingMissionArea",
    id = "165444"
  }
  l0.Duration = self.WarningTime
end
function export:Started()
end
function export:Stopped()
end
function export:Failed()
end
function export:Exited()
end
function export:Reentered()
end
_compilerVersion = 4
