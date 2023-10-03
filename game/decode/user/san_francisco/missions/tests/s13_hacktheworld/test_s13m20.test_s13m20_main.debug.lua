export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetPosition.lua")
  cbox:RegisterBox("domino/System/HackableController.lua")
  cbox:RegisterBox("domino/System/InputListenerMonitor.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetString.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Test_S13M20_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main"
  self.PlayerEntity = nil
  self.TagPoint_HackerSpace = "9223372046425876193"
  self.TagPoint_StanfordDish = "9223372046425876192"
  self.RatioA = 0
  self.PlayerVehicle = nil
  self.DistanceToTagB = 0
  self.DistanceToTagA = 0
  self.MaxDistance = 3500
  self.MinDistance = 2000
  self.RatioB = 0
  self.ZPos = 0
  self.RatioC = 0
  self.Total = 0
  self.InFOV = 0
  self.DishRotation = 0
  self.box_Hackable_Controller_45 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_45
  l0._graph = self
  l0._name = "box_Hackable_Controller_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|77042383"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_Hackable_Controller_45_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v2_102 = cbox:CreateBox("domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_102
  l0._graph = self
  l0._name = "box_OnceOnly_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|104269212"
  l0._DynamicAnchors = {In = 2, Out = 2}
  l0.Out[0] = self.f_box_OnceOnly_v2_102_Out_0
  l0.Out[1] = DummyFunction
  l0.ResetOut = DummyFunction
  self.box_MapPointController_v3_55 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_55
  l0._graph = self
  l0._name = "box_MapPointController_v3_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|115324128"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_55_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_62 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_62
  l0._graph = self
  l0._name = "box_MissionMessageController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|398674974"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_62_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_MissionMessageController_57 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_57
  l0._graph = self
  l0._name = "box_MissionMessageController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|471410953"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_57_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_MapPointController_v3_53 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_53
  l0._graph = self
  l0._name = "box_MapPointController_v3_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|552546216"
  l0.Shown = self.f_box_MapPointController_v3_53_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_29 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_29
  l0._graph = self
  l0._name = "box_MapPointController_v3_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|580007040"
  l0.Shown = self.f_box_MapPointController_v3_29_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Hackable_Controller_87 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_87
  l0._graph = self
  l0._name = "box_Hackable_Controller_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|581523494"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Controller_87_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MapPointController_v3_52 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_52
  l0._graph = self
  l0._name = "box_MapPointController_v3_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|593850494"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_52_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_TriggerMonitor_v2_46 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_46
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|760244683"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = self.f_box_TriggerMonitor_v2_46_Use
  self.box_Hackable_Controller_88 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_88
  l0._graph = self
  l0._name = "box_Hackable_Controller_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|788226734"
  l0.Enabled = self.f_box_Hackable_Controller_88_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_77 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_77
  l0._graph = self
  l0._name = "box_MissionMessageController_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1194340869"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_Timer_v2_89 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_89
  l0._graph = self
  l0._name = "box_Timer_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1385583114"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_89_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TriggerMonitor_v2_32 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_32
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1536776702"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_32_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_80 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_80
  l0._graph = self
  l0._name = "box_MultipleOR_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1817083657"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_80_Out
  self.box_InputListener_Monitor_56 = cbox:CreateBox("domino/System/InputListenerMonitor.lua")
  l0 = self.box_InputListener_Monitor_56
  l0._graph = self
  l0._name = "box_InputListener_Monitor_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1911984589"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InputReceived = self.f_box_InputListener_Monitor_56_InputReceived
  self.box_Hackable_Controller_86 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_86
  l0._graph = self
  l0._name = "box_Hackable_Controller_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|2029407584"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_48 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_48
  l0._graph = self
  l0._name = "box_Timer_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|2102120127"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_48_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "Test_S13M20_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1104553538", "1104553538", "Test_S13M20_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_83_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_57
  l0.MissionName = "MissionList.9223372046425794693"
  l0.DebugObjective = "Find a way to reach the base of the Dish"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1219661962", "1219661962", "Test_S13M20_Main", "box_Ordered_Output_83.Out", "box_MissionMessageController_57.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_83_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372046621209731"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1033765299"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_82_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1985945607", "1985945607", "Test_S13M20_Main", "box_Ordered_Output_83.Out", "box_VisibilityController_v2_82.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Hackable_Controller_45_HackForced()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1493622944"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_54_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_54_Out_1
  l0 = self.box_Hackable_Controller_45
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1019552325", "1019552325", "Test_S13M20_Main", "box_Hackable_Controller_45.HackForced", "box_Ordered_Output_54.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v2_102_Out_0()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_48
  l0.Loop = 1
  l0 = self.box_OnceOnly_v2_102
  l1 = self.box_Timer_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1585472420", "1585472420", "Test_S13M20_Main", "box_OnceOnly_v2_102.Out", "box_Timer_v2_48.Start", l0, l1)
  l1:Start()
end
function export:f_box_MapPointController_v3_55_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372046621209731"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|581396565"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_84_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MapPointController_v3_55
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1632518056", "1632518056", "Test_S13M20_Main", "box_MapPointController_v3_55.Hidden", "box_VisibilityController_v2_84.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|586373987", "586373987", "Test_S13M20_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_62_MessageRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_80()
  l0 = self.box_MissionMessageController_62
  l1 = self.box_MultipleOR_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|88756047", "88756047", "Test_S13M20_Main", "box_MissionMessageController_62.MessageRequested", "box_MultipleOR_80.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_57_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_29
  l0.MapPoint = "9223372046493796708"
  l0 = self.box_MissionMessageController_57
  l1 = self.box_MapPointController_v3_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|635676251", "635676251", "Test_S13M20_Main", "box_MissionMessageController_57.MessageRequested", "box_MapPointController_v3_29.Show", l0, l1)
  l1:Show()
end
function export:f_box_MapPointController_v3_53_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_55
  l0.MapPoint = "9223372046493796708"
  l0 = self.box_MapPointController_v3_53
  l1 = self.box_MapPointController_v3_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1895946083", "1895946083", "Test_S13M20_Main", "box_MapPointController_v3_53.Shown", "box_MapPointController_v3_55.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MapPointController_v3_29_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_32
  l0.Trigger = "9223372046621210107"
  l0 = self.box_MapPointController_v3_29
  l1 = self.box_TriggerMonitor_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1309866846", "1309866846", "Test_S13M20_Main", "box_MapPointController_v3_29.Shown", "box_TriggerMonitor_v2_32.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VisibilityController_v2_84_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_InputListener_Monitor_56
  l0.Input = "rctc_disconnect"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|364833828", "364833828", "Test_S13M20_Main", "box_VisibilityController_v2_84.Shown", "box_InputListener_Monitor_56.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Hackable_Controller_87_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372046621255629"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|788233250"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = self.f_box_Trigger_Controller_91_Usable
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0 = self.box_Hackable_Controller_87
  l1 = Boxes[PathID("domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|816594947", "816594947", "Test_S13M20_Main", "box_Hackable_Controller_87.Disabled", "box_Trigger_Controller_91.SetAsUsable", l0, l1)
  l1:SetAsUsable()
end
function export:f_box_MapPointController_v3_52_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372046621255629"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1647609187"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Trigger_Controller_79_Unusable
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0 = self.box_MapPointController_v3_52
  l1 = Boxes[PathID("domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|438234403", "438234403", "Test_S13M20_Main", "box_MapPointController_v3_52.Hidden", "box_Trigger_Controller_79.SetAsUnusable", l0, l1)
  l1:SetAsUnusable()
end
function export:f_box_TriggerMonitor_v2_46_Use()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Controller_88
  l0.HackableEntity = "9223372046621209733"
  l0 = self.box_TriggerMonitor_v2_46
  l1 = self.box_Hackable_Controller_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1404870954", "1404870954", "Test_S13M20_Main", "box_TriggerMonitor_v2_46.Use", "box_Hackable_Controller_88.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_GetPosition_61_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self.DishRotation = l0.zRot
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.DishRotation
  l0.B = 280
  l0.Tolerance = 10
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|993281086"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Floats_v2_63_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = self.f_box_Compare_Floats_v2_63_A_ne_B
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1327345927", "1327345927", "Test_S13M20_Main", "box_GetPosition_61.Out", "box_Compare_Floats_v2_63.In", clone, l0)
  l0:In()
end
function export:f_box_Hackable_Controller_88_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372046621255629"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1514413877"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Trigger_Controller_90_Unusable
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0 = self.box_Hackable_Controller_88
  l1 = Boxes[PathID("domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1231834810", "1231834810", "Test_S13M20_Main", "box_Hackable_Controller_88.Enabled", "box_Trigger_Controller_90.SetAsUnusable", l0, l1)
  l1:SetAsUnusable()
end
function export:f_box_Trigger_Controller_91_Usable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_80()
  l0 = self.box_MultipleOR_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|770924165", "770924165", "Test_S13M20_Main", "box_Trigger_Controller_91.Usable", "box_MultipleOR_80.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|29977997"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_83_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_83_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|12471194", "12471194", "Test_S13M20_Main", "box_Get_Player_ID_1.Out", "box_Ordered_Output_83.In", clone, l0)
  l0:In()
end
function export:f_box_VisibilityController_v2_85_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Controller_87
  l0.HackableEntity = "9223372046621209733"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1355501686", "1355501686", "Test_S13M20_Main", "box_VisibilityController_v2_85.Hidden", "box_Hackable_Controller_87.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_GetPosition_49_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self.DishRotation = l0.zRot
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  l0.String = nil
  l0.Integer = nil
  l0.Float = self.DishRotation
  l0.Boolean = nil
  l0.Entity = nil
  l0.Player = nil
  l0._graph = self
  l0._name = "box_Set_String_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1078118279"
  l0.Out = self.f_box_Set_String_50_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|908994140", "908994140", "Test_S13M20_Main", "box_GetPosition_49.Out", "box_Set_String_50.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Compare_Floats_v2_63_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_52
  l0.MapPoint = "9223372046493797477"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1054878311", "1054878311", "Test_S13M20_Main", "box_Compare_Floats_v2_63.A_eq_B", "box_MapPointController_v3_52.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Compare_Floats_v2_63_A_ne_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372046621209731"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|936548369"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_85_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|978826704", "978826704", "Test_S13M20_Main", "box_Compare_Floats_v2_63.A_ne_B", "box_VisibilityController_v2_85.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_82_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Controller_86
  l0.HackableEntity = "9223372046621209733"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|561851716", "561851716", "Test_S13M20_Main", "box_VisibilityController_v2_82.Hidden", "box_Hackable_Controller_86.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Set_String_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  self._sld_Target_box_Set_String_50 = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = self._sld_Target_box_Set_String_50
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|2067139614"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|483538160", "483538160", "Test_S13M20_Main", "box_Set_String_50.Out", "box_TextToScreen_v2_51.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_89_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Controller_45
  l0.HackableEntity = "9223372046621209733"
  l0 = self.box_Timer_v2_89
  l1 = self.box_Hackable_Controller_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1292342732", "1292342732", "Test_S13M20_Main", "box_Timer_v2_89.TimeElapsed", "box_Hackable_Controller_45.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_Ordered_Output_54_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v2_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|600367259", "600367259", "Test_S13M20_Main", "box_Ordered_Output_54.Out", "box_OnceOnly_v2_102.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_54_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_53
  l0.MapPoint = "9223372046493797477"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|87797599", "87797599", "Test_S13M20_Main", "box_Ordered_Output_54.Out", "box_MapPointController_v3_53.Show", clone, l0)
  l0:Show()
end
function export:f_box_Trigger_Controller_90_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_89
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|770133175", "770133175", "Test_S13M20_Main", "box_Trigger_Controller_90.Unusable", "box_Timer_v2_89.Start", clone, l0)
  l0:Start()
end
function export:f_box_TriggerMonitor_v2_32_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_62
  l0.MissionName = "MissionList.9223372046425794693"
  l0.ShowPreviousObjectiveComplete = 0
  l0.DebugObjective = "Align the Dish"
  l0 = self.box_TriggerMonitor_v2_32
  l1 = self.box_MissionMessageController_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|515949613", "515949613", "Test_S13M20_Main", "box_TriggerMonitor_v2_32.Enter", "box_MissionMessageController_62.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Trigger_Controller_79_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_77
  l0.MissionName = "MissionList.9223372046425794693"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|551956594", "551956594", "Test_S13M20_Main", "box_Trigger_Controller_79.Unusable", "box_MissionMessageController_77.ShowMissionComplete", clone, l0)
  l0:ShowMissionComplete()
end
function export:f_box_MultipleOR_80_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_46
  l0.Trigger = "9223372046621255629"
  l0 = self.box_MultipleOR_80
  l1 = self.box_TriggerMonitor_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|1481136080", "1481136080", "Test_S13M20_Main", "box_MultipleOR_80.Out", "box_TriggerMonitor_v2_46.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_InputListener_Monitor_56_InputReceived()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = "9223372046621209731"
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0._name = "box_GetPosition_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|774167364"
  l0.Out = self.f_box_GetPosition_61_Out
  l0 = self.box_InputListener_Monitor_56
  l1 = Boxes[PathID("domino/System/GetPosition.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|172325637", "172325637", "Test_S13M20_Main", "box_InputListener_Monitor_56.InputReceived", "box_GetPosition_61.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_48_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = "9223372046621209731"
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0._name = "box_GetPosition_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|987261666"
  l0.Out = self.f_box_GetPosition_49_Out
  l0 = self.box_Timer_v2_48
  l1 = Boxes[PathID("domino/System/GetPosition.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M20.domino|@Test_S13M20_Main|923443269", "923443269", "Test_S13M20_Main", "box_Timer_v2_48.TimeElapsed", "box_GetPosition_49.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_80()
end
_compilerVersion = 4
