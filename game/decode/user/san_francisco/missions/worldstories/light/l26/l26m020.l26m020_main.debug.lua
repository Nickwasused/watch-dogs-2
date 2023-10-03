export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:LoadResource("soundbinary/1878297042.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L26M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main"
  self.PlayerEntity = nil
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|89822301"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_25 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_25
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|537240835"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_25_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_26 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_26
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1110916749"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_26_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_26_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlayDialog_v2_27 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_27
  l0._graph = self
  l0._name = "box_PlayDialog_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1128121059"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Beat_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_1
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1382808592"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_1_NewBeatStarted
  self.box_FreeRoam_Hack_Gameplay_23 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_23
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1504992114"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_23_Hacked
  self.box_Reward_Phone_Call_Monitor_22 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_22
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1705641837"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_22_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_22_OnPhoneCallEnded
  self.box_FreeRoam_Reach_Gameplay_7 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Reach_Gameplay_7
  l0._graph = self
  l0._name = "box_FreeRoam_Reach_Gameplay_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1899073217"
  l0.Started = self.f_box_FreeRoam_Reach_Gameplay_7_Started
  l0.Stopped = DummyFunction
  l0.Reached = self.f_box_FreeRoam_Reach_Gameplay_7_Reached
  self.box_FreeRoam_Mission_End_24 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_24
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1913493531"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1404337855", "1404337855", "L26M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_24()
  l0 = self.box_FreeRoam_Mission_End_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1750229873", "1750229873", "L26M020_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_24.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1336552463", "1336552463", "L26M020_Main", "In", "box_FreeRoam_Beat_1.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Reach_Gameplay_7
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372071887326081"
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_FreeRoam_Reach_Gameplay_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|857775118", "857775118", "L26M020_Main", "box_MissionMessageController_v3_3.Out", "box_FreeRoam_Reach_Gameplay_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_25_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Hack_Gameplay_23
  l0.CLO = "9223372056502797993"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_PhoneCommunicationController_25
  l1 = self.box_FreeRoam_Hack_Gameplay_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|685329343", "685329343", "L26M020_Main", "box_PhoneCommunicationController_25.OnCommunicationFinished", "box_FreeRoam_Hack_Gameplay_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_26_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_27
  l0.SoundId = "soundbinary/1878297042.bnk"
  l0 = self.box_TriggerMonitor_v2_26
  l1 = self.box_PlayDialog_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|555904322", "555904322", "L26M020_Main", "box_TriggerMonitor_v2_26.Disabled", "box_PlayDialog_v2_27.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_26_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_26()
  l0 = self.box_TriggerMonitor_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1513242568", "1513242568", "L26M020_Main", "box_TriggerMonitor_v2_26.Enter", "box_TriggerMonitor_v2_26.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_FreeRoam_Beat_1_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L26.L26M020.ActivationObjective",
    item = "ActivationObjective",
    id = "550080"
  }
  l0 = self.box_FreeRoam_Beat_1
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1309246984", "1309246984", "L26M020_Main", "box_FreeRoam_Beat_1.NewBeatStarted", "box_MissionMessageController_v3_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_FreeRoam_Hack_Gameplay_23_Hacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_22()
  l0 = self.box_FreeRoam_Hack_Gameplay_23
  l1 = self.box_Reward_Phone_Call_Monitor_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|453002824", "453002824", "L26M020_Main", "box_FreeRoam_Hack_Gameplay_23.Hacked", "box_Reward_Phone_Call_Monitor_22.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Reward_Phone_Call_Monitor_22_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_24()
  l0 = self.box_Reward_Phone_Call_Monitor_22
  l1 = self.box_FreeRoam_Mission_End_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1929904328", "1929904328", "L26M020_Main", "box_Reward_Phone_Call_Monitor_22.Disabled", "box_FreeRoam_Mission_End_24.End", l0, l1)
  l1:End()
end
function export:f_box_Reward_Phone_Call_Monitor_22_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_22()
  l0 = self.box_Reward_Phone_Call_Monitor_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|164836201", "164836201", "L26M020_Main", "box_Reward_Phone_Call_Monitor_22.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_22.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_FreeRoam_Reach_Gameplay_7_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_25
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051775436203"
  l0 = self.box_FreeRoam_Reach_Gameplay_7
  l1 = self.box_PhoneCommunicationController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|419997314", "419997314", "L26M020_Main", "box_FreeRoam_Reach_Gameplay_7.Reached", "box_PhoneCommunicationController_25.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_FreeRoam_Reach_Gameplay_7_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_26()
  l0 = self.box_FreeRoam_Reach_Gameplay_7
  l1 = self.box_TriggerMonitor_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M020.domino|@L26M020_Main|1477213189", "1477213189", "L26M020_Main", "box_FreeRoam_Reach_Gameplay_7.Started", "box_TriggerMonitor_v2_26.Enable", l0, l1)
  l1:Enable()
end
function export:OnEnter_box_TriggerMonitor_v2_26()
  local l0
  l0 = self.box_TriggerMonitor_v2_26
  l0.Trigger = "9223372052128822067"
  l0.AutoDisable = 1
end
function export:OnEnter_box_FreeRoam_Beat_1()
  local l0
  l0 = self.box_FreeRoam_Beat_1
  l0.ProgressionLayer = "ProgressionLayers.9223372049270893448"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_22()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_22
  l0.ItemDb = "Items.9223372059960720126"
end
function export:OnEnter_box_FreeRoam_Mission_End_24()
  local l0
  l0 = self.box_FreeRoam_Mission_End_24
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
