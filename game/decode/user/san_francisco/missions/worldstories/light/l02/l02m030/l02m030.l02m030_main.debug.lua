export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/3040051707.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L02M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main"
  self.PlayerEntity = nil
  self.HUB = nil
  self.box_FreeRoam_Mission_End_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_1
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|48983264"
  self.box_FreeRoam_Interact_Gameplay_4 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Interact_Gameplay_4
  l0._graph = self
  l0._name = "box_FreeRoam_Interact_Gameplay_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|72560609"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_Interact_Gameplay_4_Interacted
  self.box_Reward_Phone_Call_Monitor_3 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|582621089"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_3_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_3_OnPhoneCallEnded
  self.box_Timer_v2_14 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_14
  l0._graph = self
  l0._name = "box_Timer_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|658001701"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialog_v2_11 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_11
  l0._graph = self
  l0._name = "box_PlayDialog_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|869324739"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_6 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_6
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|1599866655"
  l0.Out = self.f_box_MissionMessageController_v3_6_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Beat_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_2
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|1607057309"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_2_NewBeatStarted
  self.box_InteractionScriptMonitor_v2_12 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_12
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|1650314674"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_12_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_CLOMonitor_10 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_10
  l0._graph = self
  l0._name = "box_CLOMonitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|1795575356"
  l0.Enabled = self.f_box_CLOMonitor_10_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_10_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_10_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_10_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|1495184361", "1495184361", "L02M030_Main", "CheckPoint_0", "box_FreeRoam_Beat_2.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_1()
  l0 = self.box_FreeRoam_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|1476099241", "1476099241", "L02M030_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_2()
  l0 = self.box_FreeRoam_Beat_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|1130906545", "1130906545", "L02M030_Main", "In", "box_FreeRoam_Beat_2.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_Interact_Gameplay_4_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_3()
  l0 = self.box_FreeRoam_Interact_Gameplay_4
  l1 = self.box_Reward_Phone_Call_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|296076273", "296076273", "L02M030_Main", "box_FreeRoam_Interact_Gameplay_4.Interacted", "box_Reward_Phone_Call_Monitor_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Reward_Phone_Call_Monitor_3_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_1()
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l1 = self.box_FreeRoam_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|1650700940", "1650700940", "L02M030_Main", "box_Reward_Phone_Call_Monitor_3.Disabled", "box_FreeRoam_Mission_End_1.End", l0, l1)
  l1:End()
end
function export:f_box_Reward_Phone_Call_Monitor_3_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_3()
  l0 = self.box_Reward_Phone_Call_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|728355923", "728355923", "L02M030_Main", "box_Reward_Phone_Call_Monitor_3.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_3.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_14_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_11
  l0.SoundId = "soundbinary/3040051707.bnk"
  l0 = self.box_Timer_v2_14
  l1 = self.box_PlayDialog_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|1507241446", "1507241446", "L02M030_Main", "box_Timer_v2_14.TimeElapsed", "box_PlayDialog_v2_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_10
  l0.CLO = "9223372048076545179"
  l0 = self.box_MissionMessageController_v3_6
  l1 = self.box_CLOMonitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|636355559", "636355559", "L02M030_Main", "box_MissionMessageController_v3_6.Out", "box_CLOMonitor_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_FreeRoam_Beat_2_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Beat_2
  self.PlayerEntity = l0.PlayerEntity
  l0 = self.box_MissionMessageController_v3_6
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L02.L02M030.Objectives.Objective010",
    item = "Objective",
    id = "552241"
  }
  l0 = self.box_FreeRoam_Beat_2
  l1 = self.box_MissionMessageController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|968873339", "968873339", "L02M030_Main", "box_FreeRoam_Beat_2.NewBeatStarted", "box_MissionMessageController_v3_6.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_InteractionScriptMonitor_v2_12_InteractionStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_14
  l0.Seconds = 2
  l0 = self.box_InteractionScriptMonitor_v2_12
  l1 = self.box_Timer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|48448726", "48448726", "L02M030_Main", "box_InteractionScriptMonitor_v2_12.InteractionStarted", "box_Timer_v2_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOMonitor_10_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Interact_Gameplay_4
  l0.CLO = "9223372048076545179"
  l0.IsManagingInteraction = 1
  l0 = self.box_CLOMonitor_10
  l1 = self.box_FreeRoam_Interact_Gameplay_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|317440839", "317440839", "L02M030_Main", "box_CLOMonitor_10.Enabled", "box_FreeRoam_Interact_Gameplay_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOMonitor_10_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_10
  self.HUB = l0.UserID
end
function export:f_box_CLOMonitor_10_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_10
  self.HUB = l0.UserID
end
function export:f_box_CLOMonitor_10_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_10
  self.HUB = l0.UserID
  l0 = self.box_InteractionScriptMonitor_v2_12
  l0.InteractionScriptEntity = self.HUB
  l0 = self.box_CLOMonitor_10
  l1 = self.box_InteractionScriptMonitor_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\l02\\L02M030\\L02M030.domino|@L02M030_Main|802176202", "802176202", "L02M030_Main", "box_CLOMonitor_10.OnUserInPlace", "box_InteractionScriptMonitor_v2_12.Enable", l0, l1)
  l1:Enable()
end
function export:OnEnter_box_FreeRoam_Mission_End_1()
  local l0
  l0 = self.box_FreeRoam_Mission_End_1
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372049814637223"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_3()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l0.ItemDb = "Items.9223372049814637213"
end
function export:OnEnter_box_FreeRoam_Beat_2()
  local l0
  l0 = self.box_FreeRoam_Beat_2
  l0.ProgressionLayer = "ProgressionLayers.9223372049416583327"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
