export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L12M050_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main"
  self.PlayerEntity = nil
  self.Hackable_Tablet_9 = "9223372048740284432"
  self.L12M050_DebugAnnotationTextEntity_326 = "9223372048740284430"
  self.L12_StoryIcon_5 = "9223372048740284428"
  self.L12M050_CityLifeObject_AudioLog = "9223372055528406695"
  self.L12M050_ProximityTrigger_DeadBody_TS = "9223372055528485138"
  self.box_FreeRoam_Hack_Gameplay_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|774626882"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_1_Hacked
  self.box_PhoneCommunicationController_2 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_2
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|1320876027"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_2_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Mission_End_18 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_18
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|1459069200"
  self.box_Reward_Phone_Call_Monitor_5 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|1747951687"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_5_OnPhoneCallEnded
  self.box_TriggerMonitor_v2_4 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_4
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|1896824310"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_4_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_FreeRoam_Beat_17 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_17
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|1995221801"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_17_NewBeatStarted
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|2099047965"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
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
  self:OnEnter_box_FreeRoam_Beat_17()
  l0 = self.box_FreeRoam_Beat_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|594066437", "594066437", "L12M050_Main", "CheckPoint_0", "box_FreeRoam_Beat_17.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_18()
  l0 = self.box_FreeRoam_Mission_End_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|1065625863", "1065625863", "L12M050_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_18.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_17()
  l0 = self.box_FreeRoam_Beat_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|54364539", "54364539", "L12M050_Main", "In", "box_FreeRoam_Beat_17.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_Hack_Gameplay_1_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l0.ItemDb = "Items.9223372059111819659"
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l1 = self.box_Reward_Phone_Call_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|937992546", "937992546", "L12M050_Main", "box_FreeRoam_Hack_Gameplay_1.Hacked", "box_Reward_Phone_Call_Monitor_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PhoneCommunicationController_2_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_4()
  l0 = self.box_PhoneCommunicationController_2
  l1 = self.box_TriggerMonitor_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|976514463", "976514463", "L12M050_Main", "box_PhoneCommunicationController_2.OnCommunicationStarted", "box_TriggerMonitor_v2_4.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Reward_Phone_Call_Monitor_5_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_18()
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l1 = self.box_FreeRoam_Mission_End_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|124919020", "124919020", "L12M050_Main", "box_Reward_Phone_Call_Monitor_5.OnPhoneCallEnded", "box_FreeRoam_Mission_End_18.End", l0, l1)
  l1:End()
end
function export:f_box_TriggerMonitor_v2_4_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_2
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357370927"
  l0 = self.box_TriggerMonitor_v2_4
  l1 = self.box_PhoneCommunicationController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|1159820468", "1159820468", "L12M050_Main", "box_TriggerMonitor_v2_4.Enter", "box_PhoneCommunicationController_2.TryStartCommunication", l0, l1)
  l1:TryStartCommunication()
end
function export:f_box_FreeRoam_Beat_17_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L12.L12M050.Objectives.Objective010",
    item = "Objective",
    id = "603658"
  }
  l0 = self.box_FreeRoam_Beat_17
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|809117822", "809117822", "L12M050_Main", "box_FreeRoam_Beat_17.NewBeatStarted", "box_MissionMessageController_v3_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_4()
  l0 = self.box_TriggerMonitor_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|979579154", "979579154", "L12M050_Main", "box_Ordered_Output_6.Out", "box_TriggerMonitor_v2_4.Enable", clone, l0)
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
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l0.CLO = self.L12M050_CityLifeObject_AudioLog
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|1321668307", "1321668307", "L12M050_Main", "box_Ordered_Output_6.Out", "box_FreeRoam_Hack_Gameplay_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|2004432485"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0 = self.box_MissionMessageController_v3_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M050.domino|@L12M050_Main|1754082099", "1754082099", "L12M050_Main", "box_MissionMessageController_v3_3.Out", "box_Ordered_Output_6.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_FreeRoam_Mission_End_18()
  local l0
  l0 = self.box_FreeRoam_Mission_End_18
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_TriggerMonitor_v2_4()
  local l0
  l0 = self.box_TriggerMonitor_v2_4
  l0.Trigger = self.L12M050_ProximityTrigger_DeadBody_TS
end
function export:OnEnter_box_FreeRoam_Beat_17()
  local l0
  l0 = self.box_FreeRoam_Beat_17
  l0.ProgressionLayer = "ProgressionLayers.9223372048624506741"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
