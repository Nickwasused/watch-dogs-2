export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/PickupMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S20M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main"
  self.PlayerEntity = nil
  self.ObjectiveMain = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S20.S20M030.Objectives.Objective010",
    item = "Objective",
    id = "492944"
  }
  self.box_MapPointController_v4_7 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_7
  l0._graph = self
  l0._name = "box_MapPointController_v4_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|49105913"
  l0.Shown = self.f_box_MapPointController_v4_7_Shown
  l0.Hidden = self.f_box_MapPointController_v4_7_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_FreeRoam_Beat_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_1
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|725264033"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_1_NewBeatStarted
  self.box_Pickup_Monitor_6 = cbox:CreateBox("domino/System/PickupMonitor.lua")
  l0 = self.box_Pickup_Monitor_6
  l0._graph = self
  l0._name = "box_Pickup_Monitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|831759575"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Pickup_Monitor_6_Disabled
  l0.PickedUp = self.f_box_Pickup_Monitor_6_PickedUp
  self.box_FreeRoam_Mission_End_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_2
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|1433992208"
  self.box_MissionMessageController_v3_4 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_4
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|1636649182"
  l0.Out = self.f_box_MissionMessageController_v3_4_Out
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
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|1774711318", "1774711318", "S20M030_Main", "CheckPoint_0", "box_FreeRoam_Beat_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|1981154415", "1981154415", "S20M030_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_2.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|174287765", "174287765", "S20M030_Main", "In", "box_FreeRoam_Beat_1.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MapPointController_v4_7_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Pickup_Monitor_6()
  l0 = self.box_MapPointController_v4_7
  l1 = self.box_Pickup_Monitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|456670742", "456670742", "S20M030_Main", "box_MapPointController_v4_7.Hidden", "box_Pickup_Monitor_6.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_7_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Pickup_Monitor_6()
  l0 = self.box_MapPointController_v4_7
  l1 = self.box_Pickup_Monitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|118689727", "118689727", "S20M030_Main", "box_MapPointController_v4_7.Shown", "box_Pickup_Monitor_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_FreeRoam_Beat_1_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_4
  l0.Objective = self.ObjectiveMain
  l0 = self.box_FreeRoam_Beat_1
  l1 = self.box_MissionMessageController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|874964616", "874964616", "S20M030_Main", "box_FreeRoam_Beat_1.NewBeatStarted", "box_MissionMessageController_v3_4.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Pickup_Monitor_6_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_Pickup_Monitor_6
  l1 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|387479108", "387479108", "S20M030_Main", "box_Pickup_Monitor_6.Disabled", "box_FreeRoam_Mission_End_2.End", l0, l1)
  l1:End()
end
function export:f_box_Pickup_Monitor_6_PickedUp()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_7()
  l0 = self.box_Pickup_Monitor_6
  l1 = self.box_MapPointController_v4_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|499216340", "499216340", "S20M030_Main", "box_Pickup_Monitor_6.PickedUp", "box_MapPointController_v4_7.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionMessageController_v3_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_7()
  l0 = self.box_MissionMessageController_v3_4
  l1 = self.box_MapPointController_v4_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M030.domino|@S20M030_Main|847730310", "847730310", "S20M030_Main", "box_MissionMessageController_v3_4.Out", "box_MapPointController_v4_7.Show", l0, l1)
  l1:Show()
end
function export:OnEnter_box_MapPointController_v4_7()
  local l0
  l0 = self.box_MapPointController_v4_7
  l0.MapPoint = "9223372073484571634"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
end
function export:OnEnter_box_FreeRoam_Beat_1()
  local l0
  l0 = self.box_FreeRoam_Beat_1
  l0.ProgressionLayer = "ProgressionLayers.9223372048282633637"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_Pickup_Monitor_6()
  local l0
  l0 = self.box_Pickup_Monitor_6
  l0.Pickup = "9223372073488556927"
end
function export:OnEnter_box_FreeRoam_Mission_End_2()
  local l0
  l0 = self.box_FreeRoam_Mission_End_2
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
