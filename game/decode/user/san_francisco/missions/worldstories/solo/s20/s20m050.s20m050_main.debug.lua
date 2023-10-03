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
  self._name = "S20M050_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main"
  self.PlayerEntity = nil
  self.ObjectiveMain = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S20.S20M050.Objectives.Objective010",
    item = "Objective",
    id = "492952"
  }
  self.box_MissionMessageController_v3_2 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_2
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|192248671"
  l0.Out = self.f_box_MissionMessageController_v3_2_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Mission_End_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_1
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|695053396"
  self.box_FreeRoam_Beat_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_3
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|766226359"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_3_NewBeatStarted
  self.box_MapPointController_v4_5 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_5
  l0._graph = self
  l0._name = "box_MapPointController_v4_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|1271188758"
  l0.Shown = self.f_box_MapPointController_v4_5_Shown
  l0.Hidden = self.f_box_MapPointController_v4_5_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Pickup_Monitor_4 = cbox:CreateBox("domino/System/PickupMonitor.lua")
  l0 = self.box_Pickup_Monitor_4
  l0._graph = self
  l0._name = "box_Pickup_Monitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|1960676281"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Pickup_Monitor_4_Disabled
  l0.PickedUp = self.f_box_Pickup_Monitor_4_PickedUp
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|2131062031", "2131062031", "S20M050_Main", "CheckPoint_0", "box_FreeRoam_Beat_3.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_1()
  l0 = self.box_FreeRoam_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|1306760888", "1306760888", "S20M050_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_3()
  l0 = self.box_FreeRoam_Beat_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|1485456953", "1485456953", "S20M050_Main", "In", "box_FreeRoam_Beat_3.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MissionMessageController_v3_2_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_5()
  l0 = self.box_MissionMessageController_v3_2
  l1 = self.box_MapPointController_v4_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|1175599755", "1175599755", "S20M050_Main", "box_MissionMessageController_v3_2.Out", "box_MapPointController_v4_5.Show", l0, l1)
  l1:Show()
end
function export:f_box_FreeRoam_Beat_3_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_2
  l0.Objective = self.ObjectiveMain
  l0 = self.box_FreeRoam_Beat_3
  l1 = self.box_MissionMessageController_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|2102592621", "2102592621", "S20M050_Main", "box_FreeRoam_Beat_3.NewBeatStarted", "box_MissionMessageController_v3_2.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MapPointController_v4_5_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Pickup_Monitor_4()
  l0 = self.box_MapPointController_v4_5
  l1 = self.box_Pickup_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|1680591746", "1680591746", "S20M050_Main", "box_MapPointController_v4_5.Hidden", "box_Pickup_Monitor_4.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_5_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Pickup_Monitor_4()
  l0 = self.box_MapPointController_v4_5
  l1 = self.box_Pickup_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|1782619706", "1782619706", "S20M050_Main", "box_MapPointController_v4_5.Shown", "box_Pickup_Monitor_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Pickup_Monitor_4_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_1()
  l0 = self.box_Pickup_Monitor_4
  l1 = self.box_FreeRoam_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|1511962634", "1511962634", "S20M050_Main", "box_Pickup_Monitor_4.Disabled", "box_FreeRoam_Mission_End_1.End", l0, l1)
  l1:End()
end
function export:f_box_Pickup_Monitor_4_PickedUp()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_5()
  l0 = self.box_Pickup_Monitor_4
  l1 = self.box_MapPointController_v4_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M050.domino|@S20M050_Main|2125021666", "2125021666", "S20M050_Main", "box_Pickup_Monitor_4.PickedUp", "box_MapPointController_v4_5.Hide", l0, l1)
  l1:Hide()
end
function export:OnEnter_box_FreeRoam_Mission_End_1()
  local l0
  l0 = self.box_FreeRoam_Mission_End_1
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_FreeRoam_Beat_3()
  local l0
  l0 = self.box_FreeRoam_Beat_3
  l0.ProgressionLayer = "ProgressionLayers.9223372048282633687"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_MapPointController_v4_5()
  local l0
  l0 = self.box_MapPointController_v4_5
  l0.MapPoint = "9223372073484571639"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
end
function export:OnEnter_box_Pickup_Monitor_4()
  local l0
  l0 = self.box_Pickup_Monitor_4
  l0.Pickup = "9223372073488556930"
end
_compilerVersion = 4
