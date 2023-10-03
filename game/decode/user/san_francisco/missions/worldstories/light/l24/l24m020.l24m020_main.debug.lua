export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L24M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M020.domino|@L24M020_Main"
  self.PlayerEntity = nil
  self.box_FreeRoam_Hack_Gameplay_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M020.domino|@L24M020_Main|405682318"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_1_Hacked
  self.box_MissionMessageController_v3_2 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_2
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M020.domino|@L24M020_Main|841304665"
  l0.Out = self.f_box_MissionMessageController_v3_2_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Beat_8 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_8
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M020.domino|@L24M020_Main|1542615367"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_8_NewBeatStarted
  self.box_FreeRoam_Mission_End_7 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_7
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M020.domino|@L24M020_Main|1768466970"
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
  self:OnEnter_box_FreeRoam_Beat_8()
  l0 = self.box_FreeRoam_Beat_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M020.domino|@L24M020_Main|1300465392", "1300465392", "L24M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_8.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_7()
  l0 = self.box_FreeRoam_Mission_End_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M020.domino|@L24M020_Main|661348086", "661348086", "L24M020_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_7.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_8()
  l0 = self.box_FreeRoam_Beat_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M020.domino|@L24M020_Main|1002913469", "1002913469", "L24M020_Main", "In", "box_FreeRoam_Beat_8.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_Hack_Gameplay_1_Hacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_7()
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l1 = self.box_FreeRoam_Mission_End_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M020.domino|@L24M020_Main|831797741", "831797741", "L24M020_Main", "box_FreeRoam_Hack_Gameplay_1.Hacked", "box_FreeRoam_Mission_End_7.End", l0, l1)
  l1:End()
end
function export:f_box_MissionMessageController_v3_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l0.CLO = "9223372055178019528"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_MissionMessageController_v3_2
  l1 = self.box_FreeRoam_Hack_Gameplay_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M020.domino|@L24M020_Main|79635116", "79635116", "L24M020_Main", "box_MissionMessageController_v3_2.Out", "box_FreeRoam_Hack_Gameplay_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Beat_8_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_2
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M020.Objectives.Objective010",
    item = "Objective",
    id = "550049"
  }
  l0 = self.box_FreeRoam_Beat_8
  l1 = self.box_MissionMessageController_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M020.domino|@L24M020_Main|1386080315", "1386080315", "L24M020_Main", "box_FreeRoam_Beat_8.NewBeatStarted", "box_MissionMessageController_v3_2.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:OnEnter_box_FreeRoam_Beat_8()
  local l0
  l0 = self.box_FreeRoam_Beat_8
  l0.ProgressionLayer = "ProgressionLayers.9223372052771457739"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Mission_End_7()
  local l0
  l0 = self.box_FreeRoam_Mission_End_7
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367697"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
