export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S13M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main"
  self.PlayerEntity = nil
  self.DishRotation = 0
  self.DishHackable = "9223372048029532637"
  self.DishKinematic = "9223372048043579882"
  self.DishHackTrigger = "9223372046621255629"
  self.InFOV = 0
  self.box_MissionCheckpointReach_5 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_5
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|263152583"
  l0.Out = self.f_box_MissionCheckpointReach_5_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionController_v4_10 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_10
  l0._graph = self
  l0._name = "box_MissionController_v4_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|301150030"
  self.box_MissionMessageController_v3_11 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_11
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|661363821"
  l0.Out = self.f_box_MissionMessageController_v3_11_Out
  l0.MessageCompleted = DummyFunction
  self.box_Proximity_Monitor_9 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_9
  l0._graph = self
  l0._name = "box_Proximity_Monitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|1118961167"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_9_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_9_ExitRadius
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|1263718087"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_MissionMessageController_v3_8 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_8
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|1280132210"
  l0.Out = self.f_box_MissionMessageController_v3_8_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionCheckpointReach_3 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_3
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|1468009663"
  l0.Out = self.f_box_MissionCheckpointReach_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_2 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_2
  l0._graph = self
  l0._name = "box_Timer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|2096191035"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|2121974908"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|1464610848", "1464610848", "S13M030_Main", "CheckPoint_0", "box_MultipleOR_4.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|1152304747"
  l0.Out = self.f_box_Get_Player_ID_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|431347555", "431347555", "S13M030_Main", "CheckPoint_1", "box_Get_Player_ID_6.In", self, l0)
  l0:In()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|1770603017", "1770603017", "S13M030_Main", "In", "box_MultipleOR_4.Input", self, l0)
  l0:Input(0)
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
  l0 = self.box_MissionMessageController_v3_8
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M030.ActivationObjective",
    item = "ActivationObjective",
    id = "693350"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|420587821", "420587821", "S13M030_Main", "box_Get_Player_ID_1.Out", "box_MissionMessageController_v3_8.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MissionCheckpointReach_5_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|73540807"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionCheckpointReach_5
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|108951725", "108951725", "S13M030_Main", "box_MissionCheckpointReach_5.Out", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MissionMessageController_v3_11
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|1786215426", "1786215426", "S13M030_Main", "box_MissionMessageController_v3_11.Out", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Proximity_Monitor_9_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Proximity_Monitor_9
  l1 = self.box_MissionController_v4_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|394347225", "394347225", "S13M030_Main", "box_Proximity_Monitor_9.Disabled", "box_MissionController_v4_10.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Proximity_Monitor_9_ExitRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_9()
  l0 = self.box_Proximity_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|1648921100", "1648921100", "S13M030_Main", "box_Proximity_Monitor_9.ExitRadius", "box_Proximity_Monitor_9.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Get_Player_ID_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_11
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M030.ActivationObjective",
    item = "ActivationObjective",
    id = "693350"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|276648486", "276648486", "S13M030_Main", "box_Get_Player_ID_6.Out", "box_MissionMessageController_v3_11.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_3
  l0.CheckpointList = "CheckPoint_1"
  l0 = self.box_MultipleOR_7
  l1 = self.box_MissionCheckpointReach_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|976680760", "976680760", "S13M030_Main", "box_MultipleOR_7.Out", "box_MissionCheckpointReach_3.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_2
  l0.Seconds = 360
  l0 = self.box_MissionMessageController_v3_8
  l1 = self.box_Timer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|1052164101", "1052164101", "S13M030_Main", "box_MissionMessageController_v3_8.Out", "box_Timer_v2_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionCheckpointReach_3_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_9()
  l0 = self.box_MissionCheckpointReach_3
  l1 = self.box_Proximity_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|1245272445", "1245272445", "S13M030_Main", "box_MissionCheckpointReach_3.Out", "box_Proximity_Monitor_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_2_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_Timer_v2_2
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|1084041028", "1084041028", "S13M030_Main", "box_Timer_v2_2.TimeElapsed", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_5
  l0.CheckpointList = "CheckPoint_0"
  l0 = self.box_MultipleOR_4
  l1 = self.box_MissionCheckpointReach_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\S13M030\\S13M030.domino|@S13M030_Main|287226716", "287226716", "S13M030_Main", "box_MultipleOR_4.Out", "box_MissionCheckpointReach_5.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_Proximity_Monitor_9()
  local l0
  l0 = self.box_Proximity_Monitor_9
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372065378422368"
  l0.Radius = 100
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_MultipleOR_4()
end
_compilerVersion = 4
