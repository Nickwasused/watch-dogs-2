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
  self._name = "L24M050_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M050.domino|@L24M050_Main"
  self.PlayerEntity = nil
  self.box_FreeRoam_Beat_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_1
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M050.domino|@L24M050_Main|128287732"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_1_NewBeatStarted
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M050.domino|@L24M050_Main|1700690138"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_2
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M050.domino|@L24M050_Main|1862648022"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_2_Hacked
  self.box_FreeRoam_Mission_End_4 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_4
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M050.domino|@L24M050_Main|2009441109"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M050.domino|@L24M050_Main|1288222075", "1288222075", "L24M050_Main", "CheckPoint_0", "box_FreeRoam_Beat_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_4()
  l0 = self.box_FreeRoam_Mission_End_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M050.domino|@L24M050_Main|1403002519", "1403002519", "L24M050_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_4.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M050.domino|@L24M050_Main|1970800886", "1970800886", "L24M050_Main", "In", "box_FreeRoam_Beat_1.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_Beat_1_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M040.Objectives.Objective010",
    item = "Objective",
    id = "637328"
  }
  l0 = self.box_FreeRoam_Beat_1
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M050.domino|@L24M050_Main|14772430", "14772430", "L24M050_Main", "box_FreeRoam_Beat_1.NewBeatStarted", "box_MissionMessageController_v3_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Hack_Gameplay_2
  l0.CLO = "9223372055089286323"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_FreeRoam_Hack_Gameplay_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M050.domino|@L24M050_Main|1831098732", "1831098732", "L24M050_Main", "box_MissionMessageController_v3_3.Out", "box_FreeRoam_Hack_Gameplay_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Hack_Gameplay_2_Hacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_4()
  l0 = self.box_FreeRoam_Hack_Gameplay_2
  l1 = self.box_FreeRoam_Mission_End_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M050.domino|@L24M050_Main|1754423985", "1754423985", "L24M050_Main", "box_FreeRoam_Hack_Gameplay_2.Hacked", "box_FreeRoam_Mission_End_4.End", l0, l1)
  l1:End()
end
function export:OnEnter_box_FreeRoam_Beat_1()
  local l0
  l0 = self.box_FreeRoam_Beat_1
  l0.ProgressionLayer = "ProgressionLayers.9223372055089286316"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Mission_End_4()
  local l0
  l0 = self.box_FreeRoam_Mission_End_4
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367699"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
