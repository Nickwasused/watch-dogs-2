export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L12M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main"
  self.PlayerEntity = nil
  self.Hackable_Tablet_5 = "9223372048624596306"
  self.DebugAnnotationTextEntity_322 = "9223372048624596307"
  self.L12_StoryIcon_2 = "9223372048624732013"
  self.L12M020_CityLifeObject_Prime8_Informant = "9223372052734217263"
  self.L12M020_CityLifeObject_Prime8_Computer = "9223372055295128198"
  self.box_PhoneCommunicationController_3 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_3
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|319454075"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Mission_End_7 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_7
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|381061629"
  self.box_MissionMessageController_v3_2 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_2
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|395871305"
  l0.Out = self.f_box_MissionMessageController_v3_2_Out
  l0.MessageCompleted = DummyFunction
  self.box_Hackable_Monitor_4 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_4
  l0._graph = self
  l0._name = "box_Hackable_Monitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|752613672"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_4_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_4_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_FreeRoam_Beat_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_1
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|991142486"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_1_NewBeatStarted
  self.box_PhoneCommunicationController_8 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_8
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|1138049824"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_9 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_9
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|1152574313"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_13 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_13
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|1480475266"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_13_Hacked
  self.box_RandomOutput_v2_6 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_6
  l0._graph = self
  l0._name = "box_RandomOutput_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|1623087365"
  l0._DynamicAnchors = {Probability = 3, Output = 3}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_6_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_6_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_6_Output_2
  self.box_Reward_Phone_Call_Monitor_10 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_10
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|1750731138"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_10_OnPhoneCallEnded
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|923804754", "923804754", "L12M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_7()
  l0 = self.box_FreeRoam_Mission_End_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|912517461", "912517461", "L12M020_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_7.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|861311873", "861311873", "L12M020_Main", "In", "box_FreeRoam_Beat_1.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MissionMessageController_v3_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|412444623"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_MissionMessageController_v3_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|1129982159", "1129982159", "L12M020_Main", "box_MissionMessageController_v3_2.Out", "box_Ordered_Output_5.In", l0, l1)
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
  self:OnEnter_box_Hackable_Monitor_4()
  l0 = self.box_Hackable_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|1723536967", "1723536967", "L12M020_Main", "box_Ordered_Output_5.Out", "box_Hackable_Monitor_4.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Hack_Gameplay_13
  l0.CLO = self.L12M020_CityLifeObject_Prime8_Informant
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|1221334712", "1221334712", "L12M020_Main", "box_Ordered_Output_5.Out", "box_FreeRoam_Hack_Gameplay_13.Start", clone, l0)
  l0:Start()
end
function export:f_box_Hackable_Monitor_4_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_4
  l1 = self.box_RandomOutput_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|1393388300", "1393388300", "L12M020_Main", "box_Hackable_Monitor_4.Disabled", "box_RandomOutput_v2_6.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_4_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_4()
  l0 = self.box_Hackable_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|2049452622", "2049452622", "L12M020_Main", "box_Hackable_Monitor_4.HackSuccess", "box_Hackable_Monitor_4.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_FreeRoam_Beat_1_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_2
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L12.L12M020.Objectives.Objective010",
    item = "Objective",
    id = "457699"
  }
  l0 = self.box_FreeRoam_Beat_1
  l1 = self.box_MissionMessageController_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|1691681650", "1691681650", "L12M020_Main", "box_FreeRoam_Beat_1.NewBeatStarted", "box_MissionMessageController_v3_2.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_FreeRoam_Hack_Gameplay_13_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_10
  l0.ItemDb = "Items.9223372050357373559"
  l0 = self.box_FreeRoam_Hack_Gameplay_13
  l1 = self.box_Reward_Phone_Call_Monitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|967874756", "967874756", "L12M020_Main", "box_FreeRoam_Hack_Gameplay_13.Hacked", "box_Reward_Phone_Call_Monitor_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_RandomOutput_v2_6_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_9
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373368"
  l0 = self.box_RandomOutput_v2_6
  l1 = self.box_PhoneCommunicationController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|579929224", "579929224", "L12M020_Main", "box_RandomOutput_v2_6.Output", "box_PhoneCommunicationController_9.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_RandomOutput_v2_6_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_8
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373369"
  l0 = self.box_RandomOutput_v2_6
  l1 = self.box_PhoneCommunicationController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|510078147", "510078147", "L12M020_Main", "box_RandomOutput_v2_6.Output", "box_PhoneCommunicationController_8.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_RandomOutput_v2_6_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_3
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373370"
  l0 = self.box_RandomOutput_v2_6
  l1 = self.box_PhoneCommunicationController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|140558641", "140558641", "L12M020_Main", "box_RandomOutput_v2_6.Output", "box_PhoneCommunicationController_3.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Reward_Phone_Call_Monitor_10_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_7()
  l0 = self.box_Reward_Phone_Call_Monitor_10
  l1 = self.box_FreeRoam_Mission_End_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M020.domino|@L12M020_Main|1867888721", "1867888721", "L12M020_Main", "box_Reward_Phone_Call_Monitor_10.OnPhoneCallEnded", "box_FreeRoam_Mission_End_7.End", l0, l1)
  l1:End()
end
function export:OnEnter_box_FreeRoam_Mission_End_7()
  local l0
  l0 = self.box_FreeRoam_Mission_End_7
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357370926"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_Hackable_Monitor_4()
  local l0
  l0 = self.box_Hackable_Monitor_4
  l0.HackableEntity = self.L12M020_CityLifeObject_Prime8_Computer
end
function export:OnEnter_box_FreeRoam_Beat_1()
  local l0
  l0 = self.box_FreeRoam_Beat_1
  l0.ProgressionLayer = "ProgressionLayers.9223372048624506738"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
