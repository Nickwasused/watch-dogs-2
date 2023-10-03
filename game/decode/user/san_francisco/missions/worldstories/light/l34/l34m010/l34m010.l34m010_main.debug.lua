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
  self._name = "L34M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M010\\L34M010.domino|@L34M010_Main"
  self.PlayerEntity = nil
  self.box_MissionMessageController_v3_5 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_5
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M010\\L34M010.domino|@L34M010_Main|89944470"
  l0.Out = self.f_box_MissionMessageController_v3_5_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_3
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M010\\L34M010.domino|@L34M010_Main|680619214"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_3_Hacked
  self.box_FreeRoam_Beat_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_1
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M010\\L34M010.domino|@L34M010_Main|800547873"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_1_NewBeatStarted
  self.box_FreeRoam_Mission_End_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_2
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M010\\L34M010.domino|@L34M010_Main|2141988553"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M010\\L34M010.domino|@L34M010_Main|1357169101", "1357169101", "L34M010_Main", "CheckPoint_0", "box_FreeRoam_Beat_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M010\\L34M010.domino|@L34M010_Main|1479940332", "1479940332", "L34M010_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_2.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M010\\L34M010.domino|@L34M010_Main|765015984", "765015984", "L34M010_Main", "In", "box_FreeRoam_Beat_1.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MissionMessageController_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Hack_Gameplay_3
  l0.CLO = "9223372049643791961"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_MissionMessageController_v3_5
  l1 = self.box_FreeRoam_Hack_Gameplay_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M010\\L34M010.domino|@L34M010_Main|2104089031", "2104089031", "L34M010_Main", "box_MissionMessageController_v3_5.Out", "box_FreeRoam_Hack_Gameplay_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Hack_Gameplay_3_Hacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_FreeRoam_Hack_Gameplay_3
  l1 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M010\\L34M010.domino|@L34M010_Main|780774010", "780774010", "L34M010_Main", "box_FreeRoam_Hack_Gameplay_3.Hacked", "box_FreeRoam_Mission_End_2.End", l0, l1)
  l1:End()
end
function export:f_box_FreeRoam_Beat_1_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_5
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L34.L34M010.Objectives.Objective010",
    item = "Objective",
    id = "550144"
  }
  l0 = self.box_FreeRoam_Beat_1
  l1 = self.box_MissionMessageController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M010\\L34M010.domino|@L34M010_Main|167263564", "167263564", "L34M010_Main", "box_FreeRoam_Beat_1.NewBeatStarted", "box_MissionMessageController_v3_5.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:OnEnter_box_FreeRoam_Beat_1()
  local l0
  l0 = self.box_FreeRoam_Beat_1
  l0.ProgressionLayer = "ProgressionLayers.9223372049643787628"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Mission_End_2()
  local l0
  l0 = self.box_FreeRoam_Mission_End_2
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050495846425"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
