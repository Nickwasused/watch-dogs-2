export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:LoadResource("soundbinary/4161231520.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L24M040_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main"
  self.PlayerEntity = nil
  self.box_FreeRoam_Beat_9 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_9
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|447893649"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_9_NewBeatStarted
  self.box_FreeRoam_Interact_Gameplay_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Interact_Gameplay_1
  l0._graph = self
  l0._name = "box_FreeRoam_Interact_Gameplay_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|552888179"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_Interact_Gameplay_1_Interacted
  self.box_PlayDialog_v2_4 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_4
  l0._graph = self
  l0._name = "box_PlayDialog_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|596429207"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Player_Proximity_Monitor_3 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_3
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|1109360152"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Player_Proximity_Monitor_3_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_3_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_FreeRoam_Mission_End_10 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_10
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|1493692023"
  self.box_MissionMessageController_v3_2 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_2
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|1765965051"
  l0.Out = self.f_box_MissionMessageController_v3_2_Out
  l0.MessageCompleted = DummyFunction
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
  self:OnEnter_box_FreeRoam_Beat_9()
  l0 = self.box_FreeRoam_Beat_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|506633296", "506633296", "L24M040_Main", "CheckPoint_0", "box_FreeRoam_Beat_9.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_10()
  l0 = self.box_FreeRoam_Mission_End_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|717605567", "717605567", "L24M040_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_10.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_9()
  l0 = self.box_FreeRoam_Beat_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|1979954581", "1979954581", "L24M040_Main", "In", "box_FreeRoam_Beat_9.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_Beat_9_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_2
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M040.Objectives.Objective010",
    item = "Objective",
    id = "637328"
  }
  l0 = self.box_FreeRoam_Beat_9
  l1 = self.box_MissionMessageController_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|989340467", "989340467", "L24M040_Main", "box_FreeRoam_Beat_9.NewBeatStarted", "box_MissionMessageController_v3_2.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_FreeRoam_Interact_Gameplay_1_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_10()
  l0 = self.box_FreeRoam_Interact_Gameplay_1
  l1 = self.box_FreeRoam_Mission_End_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|758257973", "758257973", "L24M040_Main", "box_FreeRoam_Interact_Gameplay_1.Interacted", "box_FreeRoam_Mission_End_10.End", l0, l1)
  l1:End()
end
function export:f_box_Player_Proximity_Monitor_3_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_4
  l0.SoundId = "soundbinary/4161231520.bnk"
  l0 = self.box_Player_Proximity_Monitor_3
  l1 = self.box_PlayDialog_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|632655963", "632655963", "L24M040_Main", "box_Player_Proximity_Monitor_3.Disabled", "box_PlayDialog_v2_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_Player_Proximity_Monitor_3_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_3()
  l0 = self.box_Player_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|1445729489", "1445729489", "L24M040_Main", "box_Player_Proximity_Monitor_3.EnterRadius", "box_Player_Proximity_Monitor_3.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|2063431650"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_MissionMessageController_v3_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|1943676779", "1943676779", "L24M040_Main", "box_MissionMessageController_v3_2.Out", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Interact_Gameplay_1
  l0.CLO = "9223372055178020979"
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|539199308", "539199308", "L24M040_Main", "box_Ordered_Output_5.Out", "box_FreeRoam_Interact_Gameplay_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_3()
  l0 = self.box_Player_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M040.domino|@L24M040_Main|1355971320", "1355971320", "L24M040_Main", "box_Ordered_Output_5.Out", "box_Player_Proximity_Monitor_3.Enable", clone, l0)
  l0:Enable()
end
function export:OnEnter_box_FreeRoam_Beat_9()
  local l0
  l0 = self.box_FreeRoam_Beat_9
  l0.ProgressionLayer = "ProgressionLayers.9223372052771457741"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_Player_Proximity_Monitor_3()
  local l0
  l0 = self.box_Player_Proximity_Monitor_3
  l0.TargetEntity = "9223372055539552967"
  l0.Radius = 50
  l0.CheckDistance3D = 1
end
function export:OnEnter_box_FreeRoam_Mission_End_10()
  local l0
  l0 = self.box_FreeRoam_Mission_End_10
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
