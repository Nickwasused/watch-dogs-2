export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L08M021_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main"
  self.PlayerEntity = nil
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|595611753"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Beat_7 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_7
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|643922768"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_7_NewBeatStarted
  self.box_Reward_Phone_Call_Monitor_8 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_8
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|810783226"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_8_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_8_OnPhoneCallEnded
  self.box_MissionCheckpointReach_9 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_9
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1012772319"
  l0.Out = self.f_box_MissionCheckpointReach_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_FreeRoam_Locate_Gameplay_4 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Locate_Gameplay_4
  l0._graph = self
  l0._name = "box_FreeRoam_Locate_Gameplay_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1020216320"
  l0.Started = self.f_box_FreeRoam_Locate_Gameplay_4_Started
  l0.Stopped = DummyFunction
  l0.Located = self.f_box_FreeRoam_Locate_Gameplay_4_Located
  self.box_MissionMessageController_v3_6 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_6
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1585015522"
  l0.Out = self.f_box_MissionMessageController_v3_6_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_5 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_5
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1634891727"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_5_Hacked
  self.box_FreeRoam_Mission_End_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_3
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1676537155"
  self.box_FreeRoam_Beat_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_2
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1906871639"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_2_NewBeatStarted
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1122243527", "1122243527", "L08M021_Main", "CheckPoint_0", "box_FreeRoam_Beat_2.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Beat_7()
  l0 = self.box_FreeRoam_Beat_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1549081789", "1549081789", "L08M021_Main", "CheckPoint_1", "box_FreeRoam_Beat_7.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_3()
  l0 = self.box_FreeRoam_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|2110236061", "2110236061", "L08M021_Main", "CheckPoint_2", "box_FreeRoam_Mission_End_3.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_2()
  l0 = self.box_FreeRoam_Beat_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1943800755", "1943800755", "L08M021_Main", "In", "box_FreeRoam_Beat_2.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Locate_Gameplay_4
  l0.CLO = "9223372048502957704"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.DistrictsDB = "Districts.9223372048308079973"
  l0 = self.box_MissionMessageController_v3_1
  l1 = self.box_FreeRoam_Locate_Gameplay_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|500429377", "500429377", "L08M021_Main", "box_MissionMessageController_v3_1.Out", "box_FreeRoam_Locate_Gameplay_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Beat_7_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_6
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M021.Objectives.Objective010A",
    item = "Objective",
    id = "637311"
  }
  l0 = self.box_FreeRoam_Beat_7
  l1 = self.box_MissionMessageController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1177380945", "1177380945", "L08M021_Main", "box_FreeRoam_Beat_7.NewBeatStarted", "box_MissionMessageController_v3_6.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Reward_Phone_Call_Monitor_8_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_3()
  l0 = self.box_Reward_Phone_Call_Monitor_8
  l1 = self.box_FreeRoam_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1742920575", "1742920575", "L08M021_Main", "box_Reward_Phone_Call_Monitor_8.Disabled", "box_FreeRoam_Mission_End_3.End", l0, l1)
  l1:End()
end
function export:f_box_Reward_Phone_Call_Monitor_8_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_8()
  l0 = self.box_Reward_Phone_Call_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|579989947", "579989947", "L08M021_Main", "box_Reward_Phone_Call_Monitor_8.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_8.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_9_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_8()
  l0 = self.box_MissionCheckpointReach_9
  l1 = self.box_Reward_Phone_Call_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|218855086", "218855086", "L08M021_Main", "box_MissionCheckpointReach_9.Out", "box_Reward_Phone_Call_Monitor_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_FreeRoam_Locate_Gameplay_4_Located()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_7()
  l0 = self.box_FreeRoam_Locate_Gameplay_4
  l1 = self.box_FreeRoam_Beat_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1495925682", "1495925682", "L08M021_Main", "box_FreeRoam_Locate_Gameplay_4.Located", "box_FreeRoam_Beat_7.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:f_box_FreeRoam_Locate_Gameplay_4_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_5()
  l0 = self.box_FreeRoam_Locate_Gameplay_4
  l1 = self.box_FreeRoam_Hack_Gameplay_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|639806622", "639806622", "L08M021_Main", "box_FreeRoam_Locate_Gameplay_4.Started", "box_FreeRoam_Hack_Gameplay_5.PreStart", l0, l1)
  l1:PreStart()
end
function export:f_box_MissionMessageController_v3_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_5()
  l0 = self.box_MissionMessageController_v3_6
  l1 = self.box_FreeRoam_Hack_Gameplay_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1689935387", "1689935387", "L08M021_Main", "box_MissionMessageController_v3_6.Out", "box_FreeRoam_Hack_Gameplay_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Hack_Gameplay_5_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_9
  l0.CheckpointList = "CheckPoint_2"
  l0 = self.box_FreeRoam_Hack_Gameplay_5
  l1 = self.box_MissionCheckpointReach_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|926622870", "926622870", "L08M021_Main", "box_FreeRoam_Hack_Gameplay_5.Hacked", "box_MissionCheckpointReach_9.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Beat_2_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_1
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M021.Objectives.Objective010",
    item = "Objective",
    id = "637299"
  }
  l0 = self.box_FreeRoam_Beat_2
  l1 = self.box_MissionMessageController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M021\\L08M021.domino|@L08M021_Main|1799071685", "1799071685", "L08M021_Main", "box_FreeRoam_Beat_2.NewBeatStarted", "box_MissionMessageController_v3_1.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:OnEnter_box_FreeRoam_Beat_7()
  local l0
  l0 = self.box_FreeRoam_Beat_7
  l0.ProgressionLayer = "ProgressionLayers.9223372052701752683"
  l0.Checkpoint = "CheckPoint_1"
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_8()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_8
  l0.ItemDb = "Items.9223372050357367129"
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_5()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_5
  l0.CLO = "9223372048502957704"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372048502957693"
end
function export:OnEnter_box_FreeRoam_Mission_End_3()
  local l0
  l0 = self.box_FreeRoam_Mission_End_3
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367117"
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_FreeRoam_Beat_2()
  local l0
  l0 = self.box_FreeRoam_Beat_2
  l0.ProgressionLayer = "ProgressionLayers.9223372052701752683"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
