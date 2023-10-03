export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LayerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1240006807.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2860539964.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L31M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main"
  self.PlayerEntity = nil
  self.L31M020_Cam = "9223372058410655567"
  self.Sleeping = nil
  self.CLO_9223372058100356712 = "9223372058100356712"
  self.SoundEntity = "9223372071045475312"
  self.box_MissionCheckpointReach_8 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_8
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|12188889"
  l0.Out = self.f_box_MissionCheckpointReach_8_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySound_v2_23 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_23
  l0._graph = self
  l0._name = "box_PlaySound_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|151096905"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_23_Started
  l0.Finished = DummyFunction
  self.box_Timer_v2_24 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_24
  l0._graph = self
  l0._name = "box_Timer_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|223677091"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_24_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_5 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_5
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|290204227"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_Timer_v2_7 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_7
  l0._graph = self
  l0._name = "box_Timer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|468351947"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_20 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_20
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|577733711"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|623640227"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_Security_Camera_Monitor_15 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_15
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|771146956"
  l0.Enabled = self.f_box_Security_Camera_Monitor_15_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = self.f_box_Security_Camera_Monitor_15_OnEndExitCamera
  l0.OnEndExitAll = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|926685667"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_OnceOnly_v3_16 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_16
  l0._graph = self
  l0._name = "box_OnceOnly_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1051541952"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_16_Out
  l0.ResetOut = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_18 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_18
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1093326693"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_18_Hacked
  self.box_LayerMonitor_12 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_12
  l0._graph = self
  l0._name = "box_LayerMonitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1099238904"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_12_Loaded
  l0.Unloaded = DummyFunction
  self.box_FreeRoam_IOP_Interact_Gameplay_14 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_14
  l0._graph = self
  l0._name = "box_FreeRoam_IOP_Interact_Gameplay_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1102875711"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_IOP_Interact_Gameplay_14_Interacted
  self.box_MultipleOR_13 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1108130584"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_PlaySound_v2_22 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_22
  l0._graph = self
  l0._name = "box_PlaySound_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1272383236"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_22_Started
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_21 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_21
  l0._graph = self
  l0._name = "box_PlaySound_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1502200588"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_21_Started
  l0.Finished = DummyFunction
  self.box_MultipleOR_1 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1716425970"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_1_Out
  self.box_FreeRoam_Beat_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_2
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1886457319"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_2_NewBeatStarted
  self.box_AI_IOPController_11 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_11
  l0._graph = self
  l0._name = "box_AI_IOPController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|2001466548"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_11_IOPKickOutComplete
  self.box_FreeRoam_Mission_End_9 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_9
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|2013208499"
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
  self:OnEnter_box_FreeRoam_Beat_2()
  l0 = self.box_FreeRoam_Beat_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|232283268", "232283268", "L31M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_2.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_LayerMonitor_12
  l0.ProgressionLayer = "ProgressionLayers.9223372049634201760"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|596693992", "596693992", "L31M020_Main", "CheckPoint_1", "box_LayerMonitor_12.Enable", self, l0)
  l0:Enable()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_9()
  l0 = self.box_FreeRoam_Mission_End_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|572462362", "572462362", "L31M020_Main", "CheckPoint_2", "box_FreeRoam_Mission_End_9.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_2()
  l0 = self.box_FreeRoam_Beat_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|742563181", "742563181", "L31M020_Main", "In", "box_FreeRoam_Beat_2.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MissionCheckpointReach_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|136469389"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_25_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_25_Out_1
  l0 = self.box_MissionCheckpointReach_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1554810704", "1554810704", "L31M020_Main", "box_MissionCheckpointReach_8.Out", "box_Ordered_Output_25.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_5
  l0.Text = {
    section = "MISSIONS.WORLD MISSIONS.IOP.CHILDS_PLAY.OBJECTS.Hackables",
    item = "Router",
    id = "316615"
  }
  l0.TotalTime = 10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|906997317", "906997317", "L31M020_Main", "box_Ordered_Output_25.Out", "box_DistanceBasedProgressBarController_v2_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_24
  l0.Seconds = 10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|733388244", "733388244", "L31M020_Main", "box_Ordered_Output_25.Out", "box_Timer_v2_24.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_23_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|476259817"
  l0.Out = self.f_box_Get_Player_ID_10_Out
  l0 = self.box_PlaySound_v2_23
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|847259062", "847259062", "L31M020_Main", "box_PlaySound_v2_23.Started", "box_Get_Player_ID_10.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_24_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_7
  l0.Seconds = 2
  l0 = self.box_Timer_v2_24
  l1 = self.box_Timer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1576185252", "1576185252", "L31M020_Main", "box_Timer_v2_24.TimeElapsed", "box_Timer_v2_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_7_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Stop Snore", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySound_v2')-- Comment: Stop Snore")
  l0 = self.box_PlaySound_v2_23
  l0.Entity = self.SoundEntity
  l0.SoundId = "soundbinary/2860539964.bnk"
  l0 = self.box_Timer_v2_7
  l1 = self.box_PlaySound_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1196564022", "1196564022", "L31M020_Main", "box_Timer_v2_7.TimeElapsed", "box_PlaySound_v2_23.Play", l0, l1)
  l1:Play()
end
function export:f_box_Get_Player_ID_10_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self.box_AI_IOPController_11
  l1.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|643895317", "643895317", "L31M020_Main", "box_Get_Player_ID_10.Out", "box_AI_IOPController_11.TriggerIOPDisconnectScreenAndKickOut", clone, l0)
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1502372464", "1502372464", "L31M020_Main", "box_MissionMessageController_v3_3.Out", "box_MultipleOR_13.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Security_Camera_Monitor_15_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_18()
  l0 = self.box_Security_Camera_Monitor_15
  l1 = self.box_FreeRoam_Hack_Gameplay_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1469865717", "1469865717", "L31M020_Main", "box_Security_Camera_Monitor_15.Enabled", "box_FreeRoam_Hack_Gameplay_18.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_15_OnEndExitCamera()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Stop Snore", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySound_v2')-- Comment: Stop Snore")
  l0 = self.box_PlaySound_v2_22
  l0.Entity = self.SoundEntity
  l0.SoundId = "soundbinary/2860539964.bnk"
  l0 = self.box_Security_Camera_Monitor_15
  l1 = self.box_PlaySound_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1608372662", "1608372662", "L31M020_Main", "box_Security_Camera_Monitor_15.OnEndExitCamera", "box_PlaySound_v2_22.Play", l0, l1)
  l1:Play()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_15()
  l0 = self.box_MultipleOR_4
  l1 = self.box_Security_Camera_Monitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1893068235", "1893068235", "L31M020_Main", "box_MultipleOR_4.Out", "box_Security_Camera_Monitor_15.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_15()
  l0 = self.box_Security_Camera_Monitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1530416771", "1530416771", "L31M020_Main", "box_Ordered_Output_6.Out", "box_Security_Camera_Monitor_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1956068942", "1956068942", "L31M020_Main", "box_Ordered_Output_6.Out", "box_OnceOnly_v3_16.In", clone, l0)
  l0:In(0)
end
function export:f_box_OnceOnly_v3_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_20
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373738"
  l0 = self.box_OnceOnly_v3_16
  l1 = self.box_PhoneCommunicationController_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1171867741", "1171867741", "L31M020_Main", "box_OnceOnly_v3_16.Out", "box_PhoneCommunicationController_20.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_FreeRoam_Hack_Gameplay_18_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1407908254"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1304810876", "1304810876", "L31M020_Main", "box_FreeRoam_Hack_Gameplay_18.Hacked", "box_Ordered_Output_17.In", l0, l1)
  l1:In()
end
function export:f_box_LayerMonitor_12_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_LayerMonitor_12
  l1 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1365054079", "1365054079", "L31M020_Main", "box_LayerMonitor_12.Loaded", "box_MultipleOR_1.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_14_Interacted()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Play Snore", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlaySound_v2')-- Comment: Play Snore")
  l0 = self.box_PlaySound_v2_21
  l0.Entity = self.SoundEntity
  l0.SoundId = "soundbinary/1240006807.bnk"
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_14
  l1 = self.box_PlaySound_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1575896666", "1575896666", "L31M020_Main", "box_FreeRoam_IOP_Interact_Gameplay_14.Interacted", "box_PlaySound_v2_21.Play", l0, l1)
  l1:Play()
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_14
  l0.IOPBoxEntity = "9223372049726250275"
  l0.MapPoint = "9223372049784607343"
  l0 = self.box_MultipleOR_13
  l1 = self.box_FreeRoam_IOP_Interact_Gameplay_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|2007289035", "2007289035", "L31M020_Main", "box_MultipleOR_13.Out", "box_FreeRoam_IOP_Interact_Gameplay_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_22_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|2060516836"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_19_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_19_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_19_Out_2
  l0 = self.box_PlaySound_v2_22
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|2097379776", "2097379776", "L31M020_Main", "box_PlaySound_v2_22.Started", "box_Ordered_Output_19.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|370278126", "370278126", "L31M020_Main", "box_Ordered_Output_17.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_8
  l0.CheckpointList = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1987032001", "1987032001", "L31M020_Main", "box_Ordered_Output_17.Out", "box_MissionCheckpointReach_8.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_21_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|986257170"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0 = self.box_PlaySound_v2_21
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|36907741", "36907741", "L31M020_Main", "box_PlaySound_v2_21.Started", "box_Ordered_Output_6.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_1_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_9()
  l0 = self.box_MultipleOR_1
  l1 = self.box_FreeRoam_Mission_End_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1036343212", "1036343212", "L31M020_Main", "box_MultipleOR_1.Out", "box_FreeRoam_Mission_End_9.End", l0, l1)
  l1:End()
end
function export:f_box_FreeRoam_Beat_2_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M020.ActivationObjective",
    item = "ActivationObjective",
    id = "550173"
  }
  l0 = self.box_FreeRoam_Beat_2
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|530300846", "530300846", "L31M020_Main", "box_FreeRoam_Beat_2.NewBeatStarted", "box_MissionMessageController_v3_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_AI_IOPController_11_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_AI_IOPController_11
  l1 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1885723911", "1885723911", "L31M020_Main", "box_AI_IOPController_11.IOPKickOutComplete", "box_MultipleOR_1.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_19_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1586637818", "1586637818", "L31M020_Main", "box_Ordered_Output_19.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_19_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1388052261", "1388052261", "L31M020_Main", "box_Ordered_Output_19.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_19_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_18()
  l0 = self.box_FreeRoam_Hack_Gameplay_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M020.domino|@L31M020_Main|1827654653", "1827654653", "L31M020_Main", "box_Ordered_Output_19.Out", "box_FreeRoam_Hack_Gameplay_18.Stop", clone, l0)
  l0:Stop()
end
function export:OnEnter_box_Security_Camera_Monitor_15()
  local l0
  l0 = self.box_Security_Camera_Monitor_15
  l0.CameraEntity = "9223372058410655567"
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_18()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_18
  l0.CLO = "9223372058100356713"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_MultipleOR_13()
end
function export:OnEnter_box_MultipleOR_1()
end
function export:OnEnter_box_FreeRoam_Beat_2()
  local l0
  l0 = self.box_FreeRoam_Beat_2
  l0.ProgressionLayer = "ProgressionLayers.9223372049634201760"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Mission_End_9()
  local l0
  l0 = self.box_FreeRoam_Mission_End_9
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
