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
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:LoadResource("soundbinary/1320896416.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2959190879.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3821701940.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L24M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main"
  self.PlayerEntity = nil
  self.L24M010_Target_A = "9223372052890982262"
  self.L24M010_Target_B = "9223372052890982264"
  self.L24M010_Target_C = "9223372052890982266"
  self.box_PlayDialog_v2_16 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_16
  l0._graph = self
  l0._name = "box_PlayDialog_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|170514043"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_19 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_19
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|185091660"
  l0.Out = self.f_box_MissionMessageController_v3_19_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Locate_Gameplay_4 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Locate_Gameplay_4
  l0._graph = self
  l0._name = "box_FreeRoam_Locate_Gameplay_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|194467672"
  l0.Started = self.f_box_FreeRoam_Locate_Gameplay_4_Started
  l0.Stopped = DummyFunction
  l0.Located = self.f_box_FreeRoam_Locate_Gameplay_4_Located
  self.box_RewardController_v3_24 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_24
  l0._graph = self
  l0._name = "box_RewardController_v3_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|204930695"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_24_RewardsExecuted
  self.box_FreeRoam_Mission_End_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_1
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|292768546"
  self.box_RewardController_v3_21 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_21
  l0._graph = self
  l0._name = "box_RewardController_v3_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|607940849"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_21_RewardsExecuted
  self.box_MissionMessageController_v3_7 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_7
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|720914410"
  l0.Out = self.f_box_MissionMessageController_v3_7_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_5 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_5
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|781885685"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_5_Hacked
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|830720427"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_MissionMessageController_v3_20 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_20
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|865019439"
  l0.Out = self.f_box_MissionMessageController_v3_20_Out
  l0.MessageCompleted = DummyFunction
  self.box_Progression_Tag_Monitor_25 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_25
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|984445724"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_25_HasNOT
  self.box_PlayDialog_v2_13 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_13
  l0._graph = self
  l0._name = "box_PlayDialog_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1249258396"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_8 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_8
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1329697724"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_8_Hacked
  self.box_PlayDialog_v2_17 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_17
  l0._graph = self
  l0._name = "box_PlayDialog_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1497565968"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_11 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_11
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1526707648"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_11_Hacked
  self.box_Progression_Tag_Monitor_14 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_14
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1545525985"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_14_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_14_HasNOT
  self.box_MissionMessageController_v3_2 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_2
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1559696467"
  l0.Out = self.f_box_MissionMessageController_v3_2_Out
  l0.MessageCompleted = DummyFunction
  self.box_RewardController_v3_22 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_22
  l0._graph = self
  l0._name = "box_RewardController_v3_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1577746883"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_22_RewardsExecuted
  self.box_ObjectiveMonitor_v2_12 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_12
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1699844545"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_12_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_FreeRoam_Locate_Gameplay_10 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Locate_Gameplay_10
  l0._graph = self
  l0._name = "box_FreeRoam_Locate_Gameplay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1798548362"
  l0.Started = self.f_box_FreeRoam_Locate_Gameplay_10_Started
  l0.Stopped = DummyFunction
  l0.Located = self.f_box_FreeRoam_Locate_Gameplay_10_Located
  self.box_FreeRoam_Locate_Gameplay_9 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Locate_Gameplay_9
  l0._graph = self
  l0._name = "box_FreeRoam_Locate_Gameplay_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1949323469"
  l0.Started = self.f_box_FreeRoam_Locate_Gameplay_9_Started
  l0.Stopped = DummyFunction
  l0.Located = self.f_box_FreeRoam_Locate_Gameplay_9_Located
  self.box_FreeRoam_Beat_15 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_15
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|2086906142"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_15_NewBeatStarted
  self.box_Progression_Tag_Monitor_23 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_23
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|2113052167"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_23_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_23_HasNOT
  self.box_MissionMessageController_v3_18 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_18
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|2139963786"
  l0.Out = self.f_box_MissionMessageController_v3_18_Out
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
  self:OnEnter_box_FreeRoam_Beat_15()
  l0 = self.box_FreeRoam_Beat_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1480920106", "1480920106", "L24M010_Main", "CheckPoint_0", "box_FreeRoam_Beat_15.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_1()
  l0 = self.box_FreeRoam_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|363606703", "363606703", "L24M010_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_15()
  l0 = self.box_FreeRoam_Beat_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1396898031", "1396898031", "L24M010_Main", "In", "box_FreeRoam_Beat_15.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MissionMessageController_v3_19_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MissionMessageController_v3_19
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|553285650", "553285650", "L24M010_Main", "box_MissionMessageController_v3_19.Out", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_FreeRoam_Locate_Gameplay_4_Located()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_5()
  l0 = self.box_FreeRoam_Locate_Gameplay_4
  l1 = self.box_FreeRoam_Hack_Gameplay_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1464054236", "1464054236", "L24M010_Main", "box_FreeRoam_Locate_Gameplay_4.Located", "box_FreeRoam_Hack_Gameplay_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Locate_Gameplay_4_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_5()
  l0 = self.box_FreeRoam_Locate_Gameplay_4
  l1 = self.box_FreeRoam_Hack_Gameplay_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1683916886", "1683916886", "L24M010_Main", "box_FreeRoam_Locate_Gameplay_4.Started", "box_FreeRoam_Hack_Gameplay_5.PreStart", l0, l1)
  l1:PreStart()
end
function export:f_box_RewardController_v3_24_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_17
  l0.SoundId = "soundbinary/2959190879.bnk"
  l0 = self.box_RewardController_v3_24
  l1 = self.box_PlayDialog_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|2108151374", "2108151374", "L24M010_Main", "box_RewardController_v3_24.RewardsExecuted", "box_PlayDialog_v2_17.Start", l0, l1)
  l1:Start()
end
function export:f_box_RewardController_v3_21_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_13
  l0.SoundId = "soundbinary/3821701940.bnk"
  l0 = self.box_RewardController_v3_21
  l1 = self.box_PlayDialog_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1562951322", "1562951322", "L24M010_Main", "box_RewardController_v3_21.RewardsExecuted", "box_PlayDialog_v2_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_14
  l0.ProgressionTag = "ProgressionTag.9223372065543405249"
  l0 = self.box_MissionMessageController_v3_7
  l1 = self.box_Progression_Tag_Monitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|375116600", "375116600", "L24M010_Main", "box_MissionMessageController_v3_7.Out", "box_Progression_Tag_Monitor_14.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_FreeRoam_Hack_Gameplay_5_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_18
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "SubObjective3",
    id = "673999"
  }
  l0 = self.box_FreeRoam_Hack_Gameplay_5
  l1 = self.box_MissionMessageController_v3_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|493176538", "493176538", "L24M010_Main", "box_FreeRoam_Hack_Gameplay_5.Hacked", "box_MissionMessageController_v3_18.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_7
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "Objective",
    id = "550045"
  }
  l0 = self.box_MultipleOR_6
  l1 = self.box_MissionMessageController_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1727292370", "1727292370", "L24M010_Main", "box_MultipleOR_6.Out", "box_MissionMessageController_v3_7.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_MissionMessageController_v3_20_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MissionMessageController_v3_20
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1488487017", "1488487017", "L24M010_Main", "box_MissionMessageController_v3_20.Out", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Progression_Tag_Monitor_25_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_24
  l0.ItemDB = "Items.9223372065543405253"
  l0 = self.box_Progression_Tag_Monitor_25
  l1 = self.box_RewardController_v3_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1813506947", "1813506947", "L24M010_Main", "box_Progression_Tag_Monitor_25.HasNOT", "box_RewardController_v3_24.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Locate_Gameplay_4
  l0.CLO = "9223372054699987797"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.ProgressionTag = "ProgressionTag.9223372052771530885"
  l0.DistrictsDB = "Districts.9223372048308079997"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1669586987", "1669586987", "L24M010_Main", "box_Ordered_Output_3.Out", "box_FreeRoam_Locate_Gameplay_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Locate_Gameplay_9
  l0.CLO = "9223372054699987798"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.ProgressionTag = "ProgressionTag.9223372052771530886"
  l0.DistrictsDB = "Districts.9223372048308079996"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|346906165", "346906165", "L24M010_Main", "box_Ordered_Output_3.Out", "box_FreeRoam_Locate_Gameplay_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_3_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Locate_Gameplay_10
  l0.CLO = "9223372054699987799"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.ProgressionTag = "ProgressionTag.9223372052771530887"
  l0.DistrictsDB = "Districts.9223372048308079990"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|802503638", "802503638", "L24M010_Main", "box_Ordered_Output_3.Out", "box_FreeRoam_Locate_Gameplay_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_3_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ObjectiveMonitor_v2_12
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "Objective",
    id = "550045"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1973216173", "1973216173", "L24M010_Main", "box_Ordered_Output_3.Out", "box_ObjectiveMonitor_v2_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_FreeRoam_Hack_Gameplay_8_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_19
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "SubObjective2",
    id = "673998"
  }
  l0 = self.box_FreeRoam_Hack_Gameplay_8
  l1 = self.box_MissionMessageController_v3_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1567812796", "1567812796", "L24M010_Main", "box_FreeRoam_Hack_Gameplay_8.Hacked", "box_MissionMessageController_v3_19.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_FreeRoam_Hack_Gameplay_11_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_20
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "SubObjective1",
    id = "673997"
  }
  l0 = self.box_FreeRoam_Hack_Gameplay_11
  l1 = self.box_MissionMessageController_v3_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|2062585327", "2062585327", "L24M010_Main", "box_FreeRoam_Hack_Gameplay_11.Hacked", "box_MissionMessageController_v3_20.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Progression_Tag_Monitor_14_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_23
  l0.ProgressionTag = "ProgressionTag.9223372065543405250"
  l0 = self.box_Progression_Tag_Monitor_14
  l1 = self.box_Progression_Tag_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|350936305", "350936305", "L24M010_Main", "box_Progression_Tag_Monitor_14.Has", "box_Progression_Tag_Monitor_23.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Progression_Tag_Monitor_14_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_21
  l0.ItemDB = "Items.9223372065543405248"
  l0 = self.box_Progression_Tag_Monitor_14
  l1 = self.box_RewardController_v3_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|884605523", "884605523", "L24M010_Main", "box_Progression_Tag_Monitor_14.HasNOT", "box_RewardController_v3_21.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MissionMessageController_v3_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1154651123"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_3_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_3_Out_3
  l0 = self.box_MissionMessageController_v3_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|694798731", "694798731", "L24M010_Main", "box_MissionMessageController_v3_2.Out", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_22_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_16
  l0.SoundId = "soundbinary/1320896416.bnk"
  l0 = self.box_RewardController_v3_22
  l1 = self.box_PlayDialog_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|160272104", "160272104", "L24M010_Main", "box_RewardController_v3_22.RewardsExecuted", "box_PlayDialog_v2_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_ObjectiveMonitor_v2_12_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_1()
  l0 = self.box_ObjectiveMonitor_v2_12
  l1 = self.box_FreeRoam_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1298284343", "1298284343", "L24M010_Main", "box_ObjectiveMonitor_v2_12.ObjectiveCompleted", "box_FreeRoam_Mission_End_1.End", l0, l1)
  l1:End()
end
function export:f_box_FreeRoam_Locate_Gameplay_10_Located()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_11()
  l0 = self.box_FreeRoam_Locate_Gameplay_10
  l1 = self.box_FreeRoam_Hack_Gameplay_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1716146975", "1716146975", "L24M010_Main", "box_FreeRoam_Locate_Gameplay_10.Located", "box_FreeRoam_Hack_Gameplay_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Locate_Gameplay_10_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_11()
  l0 = self.box_FreeRoam_Locate_Gameplay_10
  l1 = self.box_FreeRoam_Hack_Gameplay_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|201183753", "201183753", "L24M010_Main", "box_FreeRoam_Locate_Gameplay_10.Started", "box_FreeRoam_Hack_Gameplay_11.PreStart", l0, l1)
  l1:PreStart()
end
function export:f_box_FreeRoam_Locate_Gameplay_9_Located()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_8()
  l0 = self.box_FreeRoam_Locate_Gameplay_9
  l1 = self.box_FreeRoam_Hack_Gameplay_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|289880339", "289880339", "L24M010_Main", "box_FreeRoam_Locate_Gameplay_9.Located", "box_FreeRoam_Hack_Gameplay_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Locate_Gameplay_9_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_8()
  l0 = self.box_FreeRoam_Locate_Gameplay_9
  l1 = self.box_FreeRoam_Hack_Gameplay_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1928581126", "1928581126", "L24M010_Main", "box_FreeRoam_Locate_Gameplay_9.Started", "box_FreeRoam_Hack_Gameplay_8.PreStart", l0, l1)
  l1:PreStart()
end
function export:f_box_FreeRoam_Beat_15_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_2
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "Objective",
    id = "550045"
  }
  l0.IncrementalObjectiveTotal = 3
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "SubObjective1",
    id = "673997"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "SubObjective2",
    id = "673998"
  }
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M010.Objectives.Objective010",
    item = "SubObjective3",
    id = "673999"
  }
  l0 = self.box_FreeRoam_Beat_15
  l1 = self.box_MissionMessageController_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|703312113", "703312113", "L24M010_Main", "box_FreeRoam_Beat_15.NewBeatStarted", "box_MissionMessageController_v3_2.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Progression_Tag_Monitor_23_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_25
  l0.ProgressionTag = "ProgressionTag.9223372065543405251"
  l0 = self.box_Progression_Tag_Monitor_23
  l1 = self.box_Progression_Tag_Monitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|1277988486", "1277988486", "L24M010_Main", "box_Progression_Tag_Monitor_23.Has", "box_Progression_Tag_Monitor_25.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Progression_Tag_Monitor_23_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_22
  l0.ItemDB = "Items.9223372065543405252"
  l0 = self.box_Progression_Tag_Monitor_23
  l1 = self.box_RewardController_v3_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|2064814786", "2064814786", "L24M010_Main", "box_Progression_Tag_Monitor_23.HasNOT", "box_RewardController_v3_22.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MissionMessageController_v3_18_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MissionMessageController_v3_18
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M010.domino|@L24M010_Main|763422982", "763422982", "L24M010_Main", "box_MissionMessageController_v3_18.Out", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(0)
end
function export:OnEnter_box_FreeRoam_Mission_End_1()
  local l0
  l0 = self.box_FreeRoam_Mission_End_1
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367696"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 1
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_5()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_5
  l0.CLO = "9223372054699987797"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372052771530885"
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_8()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_8
  l0.CLO = "9223372054699987798"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372052771530886"
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_11()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_11
  l0.CLO = "9223372054699987799"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372052771530887"
end
function export:OnEnter_box_FreeRoam_Beat_15()
  local l0
  l0 = self.box_FreeRoam_Beat_15
  l0.ProgressionLayer = "ProgressionLayers.9223372052771457738"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
