export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L02M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main"
  self.PlayerEntity = nil
  self.box_FreeRoam_Locate_Gameplay_4 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Locate_Gameplay_4
  l0._graph = self
  l0._name = "box_FreeRoam_Locate_Gameplay_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|183687954"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_box_FreeRoam_Locate_Gameplay_4_Located
  self.box_FreeRoam_Beat_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_3
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|249899548"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_3_NewBeatStarted
  self.box_MissionMessageController_v3_9 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_9
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|623046912"
  l0.Out = self.f_box_MissionMessageController_v3_9_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_7 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_7
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|971362808"
  l0.Out = self.f_box_MissionMessageController_v3_7_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Beat_6 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_6
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|1062951031"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_6_NewBeatStarted
  self.box_FreeRoam_Mission_End_8 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_8
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|1212858948"
  self.box_PhoneCommunicationController_2 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_2
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|1536965489"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_2_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|1883834662"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_1_Hacked
  self.box_Reward_Phone_Call_Monitor_5 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|1922212526"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_5_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_5_OnPhoneCallEnded
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
  self:OnEnter_box_FreeRoam_Beat_3()
  l0 = self.box_FreeRoam_Beat_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|1065195781", "1065195781", "L02M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_3.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Beat_6()
  l0 = self.box_FreeRoam_Beat_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|1848469022", "1848469022", "L02M020_Main", "CheckPoint_1", "box_FreeRoam_Beat_6.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_8()
  l0 = self.box_FreeRoam_Mission_End_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|807385581", "807385581", "L02M020_Main", "CheckPoint_2", "box_FreeRoam_Mission_End_8.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_3()
  l0 = self.box_FreeRoam_Beat_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|185391548", "185391548", "L02M020_Main", "In", "box_FreeRoam_Beat_3.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_Locate_Gameplay_4_Located()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_2
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367270"
  l0 = self.box_FreeRoam_Locate_Gameplay_4
  l1 = self.box_PhoneCommunicationController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|513480738", "513480738", "L02M020_Main", "box_FreeRoam_Locate_Gameplay_4.Located", "box_PhoneCommunicationController_2.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_FreeRoam_Beat_3_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_7
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L02.L01M020.Objectives.Objective010",
    item = "Objective",
    id = "397659"
  }
  l0 = self.box_FreeRoam_Beat_3
  l1 = self.box_MissionMessageController_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|1890195679", "1890195679", "L02M020_Main", "box_FreeRoam_Beat_3.NewBeatStarted", "box_MissionMessageController_v3_7.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l0.CLO = "9223372049416583330"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_MissionMessageController_v3_9
  l1 = self.box_FreeRoam_Hack_Gameplay_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|1822825881", "1822825881", "L02M020_Main", "box_MissionMessageController_v3_9.Out", "box_FreeRoam_Hack_Gameplay_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Locate_Gameplay_4
  l0.CLO = "9223372049416583330"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.DistrictsDB = "Districts.9223372048308079989"
  l0 = self.box_MissionMessageController_v3_7
  l1 = self.box_FreeRoam_Locate_Gameplay_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|100219826", "100219826", "L02M020_Main", "box_MissionMessageController_v3_7.Out", "box_FreeRoam_Locate_Gameplay_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Beat_6_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_9
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L02.L01M020A.Objectives.Objective010",
    item = "Objective",
    id = "637056"
  }
  l0 = self.box_FreeRoam_Beat_6
  l1 = self.box_MissionMessageController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|2018964106", "2018964106", "L02M020_Main", "box_FreeRoam_Beat_6.NewBeatStarted", "box_MissionMessageController_v3_9.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PhoneCommunicationController_2_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_6()
  l0 = self.box_PhoneCommunicationController_2
  l1 = self.box_FreeRoam_Beat_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|1709197383", "1709197383", "L02M020_Main", "box_PhoneCommunicationController_2.OnCommunicationFinished", "box_FreeRoam_Beat_6.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:f_box_FreeRoam_Hack_Gameplay_1_Hacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_5()
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l1 = self.box_Reward_Phone_Call_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|1280112382", "1280112382", "L02M020_Main", "box_FreeRoam_Hack_Gameplay_1.Hacked", "box_Reward_Phone_Call_Monitor_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Reward_Phone_Call_Monitor_5_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_8()
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l1 = self.box_FreeRoam_Mission_End_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|803170628", "803170628", "L02M020_Main", "box_Reward_Phone_Call_Monitor_5.Disabled", "box_FreeRoam_Mission_End_8.End", l0, l1)
  l1:End()
end
function export:f_box_Reward_Phone_Call_Monitor_5_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_5()
  l0 = self.box_Reward_Phone_Call_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M020\\L02M020.domino|@L02M020_Main|1496756546", "1496756546", "L02M020_Main", "box_Reward_Phone_Call_Monitor_5.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_5.Disable", l0, l0)
  l0:Disable()
end
function export:OnEnter_box_FreeRoam_Beat_3()
  local l0
  l0 = self.box_FreeRoam_Beat_3
  l0.ProgressionLayer = "ProgressionLayers.9223372047103152428"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Beat_6()
  local l0
  l0 = self.box_FreeRoam_Beat_6
  l0.ProgressionLayer = "ProgressionLayers.9223372047103152428"
  l0.Checkpoint = "CheckPoint_1"
end
function export:OnEnter_box_FreeRoam_Mission_End_8()
  local l0
  l0 = self.box_FreeRoam_Mission_End_8
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372049814637222"
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_5()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l0.ItemDb = "Items.9223372050160469618"
end
_compilerVersion = 4
