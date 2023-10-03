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
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L27M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main"
  self.PlayerEntity = nil
  self.Generic_Small_Camera_5 = "9223372049956778625"
  self._30DG_0 = "9223372049956778627"
  self.L27_StoryIcon_IoP = "9223372049956778566"
  self.MissionStartTrigger_28 = "9223372049956778562"
  self.L27_StoryIcon_Outside = "9223372049956778564"
  self.Laptop_HackableEntity_4 = "9223372049956778560"
  self.ctOS_IOP_Box_L27M020 = "9223372052538954580"
  self.Monitors = {
    "9223372060518489029",
    "9223372060518489030",
    "9223372060518489034",
    "9223372060518489032",
    "9223372060518489036",
    "9223372060518489038",
    "9223372060518489042",
    "9223372060518489040",
    "9223372060518489044",
    "9223372060518489046",
    "9223372060518489050",
    "9223372060518489048",
    "9223372064399253881",
    "9223372067346578384"
  }
  self.DeadratLights = {
    "9223372060518489118",
    "9223372060518489119",
    "9223372060518489120",
    "9223372060518489121",
    "9223372060518489123",
    "9223372060518489125",
    "9223372060518489127",
    "9223372060518489129"
  }
  self.AllCamsL27M020 = {
    "9223372058278490206",
    "9223372058278490208",
    "9223372064330944648"
  }
  self.box_MissionCheckpointReach_18 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_18
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|61889619"
  l0.Out = self.f_box_MissionCheckpointReach_18_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_8 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_8
  l0._graph = self
  l0._name = "box_Timer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|452542092"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_35 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_35
  l0._graph = self
  l0._name = "box_Timer_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|460779881"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_35_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_37 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_37
  l0._graph = self
  l0._name = "box_MultipleOR_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|482132314"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_37_Out
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|581364224"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_Security_Camera_Monitor_42 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_42
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|663157236"
  l0.Enabled = self.f_box_Security_Camera_Monitor_42_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_box_Security_Camera_Monitor_42_OnEndExitAll
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|729061253"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_FreeRoam_Hack_Gameplay_47 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_47
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|769086529"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_47_Hacked
  self.box_Timer_v2_43 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_43
  l0._graph = self
  l0._name = "box_Timer_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|799797028"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_43_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_19 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_19
  l0._graph = self
  l0._name = "box_Timer_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|945589946"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_19_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_10 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_10
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1198325212"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_Timer_v2_20 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_20
  l0._graph = self
  l0._name = "box_Timer_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1231076509"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_20_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_9 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1272129156"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_15 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_15
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1301714825"
  l0.Out = self.f_box_MissionMessageController_v3_15_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_17 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_17
  l0._graph = self
  l0._name = "box_Timer_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1393109715"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_17_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_FreeRoam_Beat_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_1
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1429327560"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_1_NewBeatStarted
  self.box_DistanceBasedProgressBarController_v2_11 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_11
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1463185359"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_FreeRoam_IOP_Interact_Gameplay_6 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_6
  l0._graph = self
  l0._name = "box_FreeRoam_IOP_Interact_Gameplay_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1592893421"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_IOP_Interact_Gameplay_6_Interacted
  self.box_Timer_v2_7 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_7
  l0._graph = self
  l0._name = "box_Timer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1664405726"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_14 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_14
  l0._graph = self
  l0._name = "box_Timer_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1708876737"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_45 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_45
  l0._graph = self
  l0._name = "box_OnceOnly_v3_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1727240952"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_45_Out
  l0.ResetOut = DummyFunction
  self.box_ListForEach_21 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_21
  l0._graph = self
  l0._name = "box_ListForEach_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1780420891"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.ForEach = self.f_box_ListForEach_21_ForEach
  l0.GotNext = DummyFunction
  l0.EndOfList = DummyFunction
  l0.GotFirst = DummyFunction
  self.box_AI_IOPController_5 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_5
  l0._graph = self
  l0._name = "box_AI_IOPController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1801096953"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_5_IOPKickOutComplete
  self.box_PhoneCommunicationController_49 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_49
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1805786827"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_36 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_36
  l0._graph = self
  l0._name = "box_Timer_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1838494062"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_36_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_LayerMonitor_39 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_39
  l0._graph = self
  l0._name = "box_LayerMonitor_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1875763865"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_39_Loaded
  l0.Unloaded = DummyFunction
  self.box_FreeRoam_Mission_End_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_2
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|2081426133"
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
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|42897139", "42897139", "L27M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_LayerMonitor_39
  l0.ProgressionLayer = "ProgressionLayers.9223372049270893458"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1207778828", "1207778828", "L27M020_Main", "CheckPoint_1", "box_LayerMonitor_39.Enable", self, l0)
  l0:Enable()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1047351449", "1047351449", "L27M020_Main", "CheckPoint_2", "box_FreeRoam_Mission_End_2.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|2106347843", "2106347843", "L27M020_Main", "In", "box_FreeRoam_Beat_1.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MissionCheckpointReach_18_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067346578384"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|67506304"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_13_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionCheckpointReach_18
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1260276202", "1260276202", "L27M020_Main", "box_MissionCheckpointReach_18.Out", "box_VisibilityController_v2_13.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_13_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|883688276"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1687831305", "1687831305", "L27M020_Main", "box_VisibilityController_v2_13.Shown", "box_Ordered_Output_16.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_42()
  l0 = self.box_Security_Camera_Monitor_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|516281599", "516281599", "L27M020_Main", "box_Ordered_Output_3.Out", "box_Security_Camera_Monitor_42.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|4138783", "4138783", "L27M020_Main", "box_Ordered_Output_3.Out", "box_OnceOnly_v3_45.In", clone, l0)
  l0:In(0)
end
function export:f_box_VisibilityController_v2_28_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060518489029"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1244944831"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_27_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1590218133", "1590218133", "L27M020_Main", "box_VisibilityController_v2_28.Shown", "box_VisibilityController_v2_27.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_23_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060518489038"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1593086804"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_24_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|805253785", "805253785", "L27M020_Main", "box_VisibilityController_v2_23.Shown", "box_VisibilityController_v2_24.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_25_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1316641857", "1316641857", "L27M020_Main", "box_VisibilityController_v2_25.Shown", "box_Timer_v2_19.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_44_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_35
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1608861027", "1608861027", "L27M020_Main", "box_VisibilityController_v2_44.Shown", "box_Timer_v2_35.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_34_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060518489046"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|715434560"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_30_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1587811217", "1587811217", "L27M020_Main", "box_VisibilityController_v2_34.Shown", "box_VisibilityController_v2_30.Show", clone, l0)
  l0:Show()
end
function export:f_box_Timer_v2_8_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060518489030"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|126011023"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_28_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_8
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|969911179", "969911179", "L27M020_Main", "box_Timer_v2_8.TimeElapsed", "box_VisibilityController_v2_28.Show", l0, l1)
  l1:Show()
end
function export:f_box_Timer_v2_35_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1912462533"
  l0.Out = self.f_box_Get_Player_ID_38_Out
  l0 = self.box_Timer_v2_35
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|259165143", "259165143", "L27M020_Main", "box_Timer_v2_35.TimeElapsed", "box_Get_Player_ID_38.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_37_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_6
  l0.IOPBoxEntity = self.ctOS_IOP_Box_L27M020
  l0.MapPoint = "9223372049956778566"
  l0 = self.box_MultipleOR_37
  l1 = self.box_FreeRoam_IOP_Interact_Gameplay_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|406361162", "406361162", "L27M020_Main", "box_MultipleOR_37.Out", "box_FreeRoam_IOP_Interact_Gameplay_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1879773189", "1879773189", "L27M020_Main", "box_Ordered_Output_46.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_18
  l0.CheckpointList = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1832862573", "1832862573", "L27M020_Main", "box_Ordered_Output_46.Out", "box_MissionCheckpointReach_18.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_42()
  l0 = self.box_MultipleOR_4
  l1 = self.box_Security_Camera_Monitor_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1669976333", "1669976333", "L27M020_Main", "box_MultipleOR_4.Out", "box_Security_Camera_Monitor_42.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Security_Camera_Monitor_42_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_47()
  l0 = self.box_Security_Camera_Monitor_42
  l1 = self.box_FreeRoam_Hack_Gameplay_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|901008991", "901008991", "L27M020_Main", "box_Security_Camera_Monitor_42.Enabled", "box_FreeRoam_Hack_Gameplay_47.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_42_OnEndExitAll()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|863796774"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_48_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_48_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_48_Out_2
  l0 = self.box_Security_Camera_Monitor_42
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1235418230", "1235418230", "L27M020_Main", "box_Security_Camera_Monitor_42.OnEndExitAll", "box_Ordered_Output_48.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_30_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|2103925933", "2103925933", "L27M020_Main", "box_VisibilityController_v2_30.Shown", "box_Timer_v2_8.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_MultipleOR_12
  l1 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|239769204", "239769204", "L27M020_Main", "box_MultipleOR_12.Out", "box_FreeRoam_Mission_End_2.End", l0, l1)
  l1:End()
end
function export:f_box_FreeRoam_Hack_Gameplay_47_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|508341930"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_47
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1745372817", "1745372817", "L27M020_Main", "box_FreeRoam_Hack_Gameplay_47.Hacked", "box_Ordered_Output_46.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_43_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060518489036"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|259786470"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_23_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_43
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1143057927", "1143057927", "L27M020_Main", "box_Timer_v2_43.TimeElapsed", "box_VisibilityController_v2_23.Show", l0, l1)
  l1:Show()
end
function export:f_box_Ordered_Output_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1371247751", "1371247751", "L27M020_Main", "box_Ordered_Output_48.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|672350457", "672350457", "L27M020_Main", "box_Ordered_Output_48.Out", "box_MultipleOR_37.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_48_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_47()
  l0 = self.box_FreeRoam_Hack_Gameplay_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|306613366", "306613366", "L27M020_Main", "box_Ordered_Output_48.Out", "box_FreeRoam_Hack_Gameplay_47.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_10
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "Downloading",
    id = "550990"
  }
  l0.TotalTime = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|532316385", "532316385", "L27M020_Main", "box_Ordered_Output_16.Out", "box_DistanceBasedProgressBarController_v2_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_14
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1145923931", "1145923931", "L27M020_Main", "box_Ordered_Output_16.Out", "box_Timer_v2_14.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_19_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060518489044"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|446121474"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_34_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_19
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|707088882", "707088882", "L27M020_Main", "box_Timer_v2_19.TimeElapsed", "box_VisibilityController_v2_34.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_32_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060518489048"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1709974914"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_29_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1672323893", "1672323893", "L27M020_Main", "box_VisibilityController_v2_32.Shown", "box_VisibilityController_v2_29.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_50_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_49
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367121"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|793731014", "793731014", "L27M020_Main", "box_Ordered_Output_50.Out", "box_PhoneCommunicationController_49.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_50_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListForEach_21
  l0.List = self.Monitors
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1724013939", "1724013939", "L27M020_Main", "box_Ordered_Output_50.Out", "box_ListForEach_21.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_33_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|106410132", "106410132", "L27M020_Main", "box_VisibilityController_v2_33.Shown", "box_Timer_v2_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_20_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060518489050"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|986242418"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_32_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_20
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1842161889", "1842161889", "L27M020_Main", "box_Timer_v2_20.TimeElapsed", "box_VisibilityController_v2_32.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_27_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1674096003", "1674096003", "L27M020_Main", "box_VisibilityController_v2_27.Shown", "box_Timer_v2_20.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060518489034"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1681263154"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_26_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_9
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|704688737", "704688737", "L27M020_Main", "box_Timer_v2_9.TimeElapsed", "box_VisibilityController_v2_26.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionMessageController_v3_15_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_MissionMessageController_v3_15
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|2143527769", "2143527769", "L27M020_Main", "box_MissionMessageController_v3_15.Out", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_17_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060518489040"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1839073273"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_31_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_17
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|17735976", "17735976", "L27M020_Main", "box_Timer_v2_17.TimeElapsed", "box_VisibilityController_v2_31.Show", l0, l1)
  l1:Show()
end
function export:f_box_FreeRoam_Beat_1_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_15
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M020.Objectives.Objective010",
    item = "Objective",
    id = "550094"
  }
  l0 = self.box_FreeRoam_Beat_1
  l1 = self.box_MissionMessageController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1208529122", "1208529122", "L27M020_Main", "box_FreeRoam_Beat_1.NewBeatStarted", "box_MissionMessageController_v3_15.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_6_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|113617589"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1749752345", "1749752345", "L27M020_Main", "box_FreeRoam_IOP_Interact_Gameplay_6.Interacted", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_24_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|830809502", "830809502", "L27M020_Main", "box_VisibilityController_v2_24.Shown", "box_Timer_v2_17.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_7_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372064399253881"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|431776948"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_44_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_7
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1737556074", "1737556074", "L27M020_Main", "box_Timer_v2_7.TimeElapsed", "box_VisibilityController_v2_44.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_26_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060518489032"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|377948562"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_25_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|243220835", "243220835", "L27M020_Main", "box_VisibilityController_v2_26.Shown", "box_VisibilityController_v2_25.Show", clone, l0)
  l0:Show()
end
function export:f_box_Timer_v2_14_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1875133864"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_40_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_40_Out_1
  l0 = self.box_Timer_v2_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|2017205630", "2017205630", "L27M020_Main", "box_Timer_v2_14.TimeElapsed", "box_Ordered_Output_40.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_29_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1906680213", "1906680213", "L27M020_Main", "box_VisibilityController_v2_29.Shown", "box_Timer_v2_7.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_45_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1145102905"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_50_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_50_Out_1
  l0 = self.box_OnceOnly_v3_45
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1052695492", "1052695492", "L27M020_Main", "box_OnceOnly_v3_45.Out", "box_Ordered_Output_50.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_21_ForEach()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_21
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l1.Entity = l0.Data
  l1.EntityList = nil
  l1.Visible = nil
  l1.AffectChildren = nil
  l1.EntitiesList = nil
  l1._graph = self
  l1._name = "box_VisibilityController_v2_22"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|315248792"
  l1.IsSet = DummyFunction
  l1.Shown = DummyFunction
  l1.Hidden = DummyFunction
  l1.Out = DummyFunction
  l0 = self.box_ListForEach_21
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|689742725", "689742725", "L27M020_Main", "box_ListForEach_21.ForEach", "box_VisibilityController_v2_22.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_AI_IOPController_5_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_AI_IOPController_5
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1132977171", "1132977171", "L27M020_Main", "box_AI_IOPController_5.IOPKickOutComplete", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_36_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_36
  l1 = self.box_Timer_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|974852636", "974852636", "L27M020_Main", "box_Timer_v2_36.TimeElapsed", "box_Timer_v2_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_VisibilityController_v2_31_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060518489042"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1221214712"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_33_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1565377916", "1565377916", "L27M020_Main", "box_VisibilityController_v2_31.Shown", "box_VisibilityController_v2_33.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_40_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_36
  l0.Seconds = 7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1042587207", "1042587207", "L27M020_Main", "box_Ordered_Output_40.Out", "box_Timer_v2_36.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_40_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_11
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "UploadingVirus",
    id = "171882"
  }
  l0.TotalTime = 7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|349001289", "349001289", "L27M020_Main", "box_Ordered_Output_40.Out", "box_DistanceBasedProgressBarController_v2_11.Start", clone, l0)
  l0:Start()
end
function export:f_box_LayerMonitor_39_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_LayerMonitor_39
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|1461009332", "1461009332", "L27M020_Main", "box_LayerMonitor_39.Loaded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Get_Player_ID_38_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self.box_AI_IOPController_5
  l1.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M020.domino|@L27M020_Main|624904146", "624904146", "L27M020_Main", "box_Get_Player_ID_38.Out", "box_AI_IOPController_5.TriggerIOPDisconnectScreenAndKickOut", clone, l0)
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:OnEnter_box_MultipleOR_37()
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_Security_Camera_Monitor_42()
  local l0
  l0 = self.box_Security_Camera_Monitor_42
  l0.CameraEntityList = self.AllCamsL27M020
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_47()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_47
  l0.CLO = "9223372053787575549"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372052538955043"
end
function export:OnEnter_box_FreeRoam_Beat_1()
  local l0
  l0 = self.box_FreeRoam_Beat_1
  l0.ProgressionLayer = "ProgressionLayers.9223372049270893458"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Mission_End_2()
  local l0
  l0 = self.box_FreeRoam_Mission_End_2
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
