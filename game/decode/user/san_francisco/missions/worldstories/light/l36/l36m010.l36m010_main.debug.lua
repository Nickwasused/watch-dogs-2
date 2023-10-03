export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L36M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main"
  self.PlayerEntity = nil
  self.L36M010_Target_NPC = "9223372050352061733"
  self.L36M010_Mission_Area = "9223372050352118362"
  self.box_MissionMessageController_v3_6 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_6
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main|425012399"
  l0.Out = self.f_box_MissionMessageController_v3_6_Out
  l0.MessageCompleted = DummyFunction
  self.box_Reward_Phone_Call_Monitor_3 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main|722019658"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_3_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_3_OnPhoneCallEnded
  self.box_FreeRoam_Hack_Gameplay_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_2
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main|776117756"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_2_Hacked
  self.box_FreeRoam_Mission_End_4 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_4
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main|918264047"
  self.box_FreeRoam_Beat_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_1
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main|1037495197"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_1_NewBeatStarted
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main|402324", "402324", "L36M010_Main", "CheckPoint_0", "box_FreeRoam_Beat_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_4()
  l0 = self.box_FreeRoam_Mission_End_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main|2011674903", "2011674903", "L36M010_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_4.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main|947000300", "947000300", "L36M010_Main", "In", "box_FreeRoam_Beat_1.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MissionMessageController_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Hack_Gameplay_2
  l0.CLO = self.L36M010_Target_NPC
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_MissionMessageController_v3_6
  l1 = self.box_FreeRoam_Hack_Gameplay_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main|62507949", "62507949", "L36M010_Main", "box_MissionMessageController_v3_6.Out", "box_FreeRoam_Hack_Gameplay_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_Reward_Phone_Call_Monitor_3_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_4()
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l1 = self.box_FreeRoam_Mission_End_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main|1593413427", "1593413427", "L36M010_Main", "box_Reward_Phone_Call_Monitor_3.Disabled", "box_FreeRoam_Mission_End_4.End", l0, l1)
  l1:End()
end
function export:f_box_Reward_Phone_Call_Monitor_3_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_3()
  l0 = self.box_Reward_Phone_Call_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main|1311892613", "1311892613", "L36M010_Main", "box_Reward_Phone_Call_Monitor_3.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_3.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_FreeRoam_Hack_Gameplay_2_Hacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_3()
  l0 = self.box_FreeRoam_Hack_Gameplay_2
  l1 = self.box_Reward_Phone_Call_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main|30026519", "30026519", "L36M010_Main", "box_FreeRoam_Hack_Gameplay_2.Hacked", "box_Reward_Phone_Call_Monitor_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_FreeRoam_Beat_1_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_6
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L36.L36M010.Objectives.Objective010",
    item = "Objective",
    id = "552693"
  }
  l0 = self.box_FreeRoam_Beat_1
  l1 = self.box_MissionMessageController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L36\\L36M010.domino|@L36M010_Main|21429284", "21429284", "L36M010_Main", "box_FreeRoam_Beat_1.NewBeatStarted", "box_MissionMessageController_v3_6.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_3()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l0.ItemDb = "Items.9223372059404075835"
end
function export:OnEnter_box_FreeRoam_Mission_End_4()
  local l0
  l0 = self.box_FreeRoam_Mission_End_4
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050495846438"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_FreeRoam_Beat_1()
  local l0
  l0 = self.box_FreeRoam_Beat_1
  l0.ProgressionLayer = "ProgressionLayers.9223372049593485562"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
