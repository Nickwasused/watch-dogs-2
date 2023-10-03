export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "SF_EasterEgg1_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main"
  self.PlayerEntity = nil
  self.box_MissionController_v4_9 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_9
  l0._graph = self
  l0._name = "box_MissionController_v4_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|269042238"
  self.box_Timer_v2_8 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_8
  l0._graph = self
  l0._name = "box_Timer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|345482841"
  l0.Out = self.f_box_Timer_v2_8_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_7 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_7
  l0._graph = self
  l0._name = "box_Timer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|652777394"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionCheckpointReach_5 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_5
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|708881574"
  l0.Out = self.f_box_MissionCheckpointReach_5_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_v3_10 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_10
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|777630944"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|779863605"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|979924407"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|981787577"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_11 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_11
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|1751715738"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_11_MessageCompleted
  self.box_MissionCheckpointReach_4 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_4
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|1955421936"
  l0.Out = self.f_box_MissionCheckpointReach_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_FreeRoam_Beat_6 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_6
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|1959531414"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_6_NewBeatStarted
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
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|1928556222", "1928556222", "SF_EasterEgg1_Main", "CheckPoint_0", "box_MultipleOR_2.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Beat_6()
  l0 = self.box_FreeRoam_Beat_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|167572767", "167572767", "SF_EasterEgg1_Main", "CheckPoint_1", "box_FreeRoam_Beat_6.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionCheckpointReach_4
  l0.CheckpointList = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|1688750444", "1688750444", "SF_EasterEgg1_Main", "In", "box_MissionCheckpointReach_4.In", self, l0)
  l0:In()
end
function export:f_box_Timer_v2_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_5
  l0.CheckpointList = "CheckPoint_1"
  l0 = self.box_Timer_v2_8
  l1 = self.box_MissionCheckpointReach_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|1604084547", "1604084547", "SF_EasterEgg1_Main", "box_Timer_v2_8.Out", "box_MissionCheckpointReach_5.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_8_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_10
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.EGG",
    item = "Message_1",
    id = "698607"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0 = self.box_Timer_v2_8
  l1 = self.box_MissionMessageController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|2127873623", "2127873623", "SF_EasterEgg1_Main", "box_Timer_v2_8.TimeElapsed", "box_MissionMessageController_v3_10.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_Timer_v2_7_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_11
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.EGG",
    item = "Message_2",
    id = "698608"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0 = self.box_Timer_v2_7
  l1 = self.box_MissionMessageController_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|1908155649", "1908155649", "SF_EasterEgg1_Main", "box_Timer_v2_7.TimeElapsed", "box_MissionMessageController_v3_11.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_MissionCheckpointReach_5_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_6()
  l0 = self.box_MissionCheckpointReach_5
  l1 = self.box_FreeRoam_Beat_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|1853170547", "1853170547", "SF_EasterEgg1_Main", "box_MissionCheckpointReach_5.Out", "box_FreeRoam_Beat_6.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_Timer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|623733664", "623733664", "SF_EasterEgg1_Main", "box_MissionMessageController_v3_3.Out", "box_Timer_v2_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_1
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.EGG",
    item = "Message_1",
    id = "698607"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0 = self.box_MultipleOR_2
  l1 = self.box_MissionMessageController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|1380461805", "1380461805", "SF_EasterEgg1_Main", "box_MultipleOR_2.Out", "box_MissionMessageController_v3_1.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_1
  l1 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|351515521", "351515521", "SF_EasterEgg1_Main", "box_MissionMessageController_v3_1.Out", "box_Timer_v2_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_11_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_11
  l1 = self.box_MissionController_v4_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|1756690165", "1756690165", "SF_EasterEgg1_Main", "box_MissionMessageController_v3_11.MessageCompleted", "box_MissionController_v4_9.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionCheckpointReach_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MissionCheckpointReach_4
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|628552516", "628552516", "SF_EasterEgg1_Main", "box_MissionCheckpointReach_4.Out", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_FreeRoam_Beat_6_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.EGG",
    item = "Message_2",
    id = "698608"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0 = self.box_FreeRoam_Beat_6
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\SF_EasterEgg1\\SF_EasterEgg1.domino|@SF_EasterEgg1_Main|1650830387", "1650830387", "SF_EasterEgg1_Main", "box_FreeRoam_Beat_6.NewBeatStarted", "box_MissionMessageController_v3_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_FreeRoam_Beat_6()
  local l0
  l0 = self.box_FreeRoam_Beat_6
  l0.ProgressionLayer = "ProgressionLayers.9223372071755984284"
  l0.Checkpoint = "CheckPoint_1"
end
_compilerVersion = 4
