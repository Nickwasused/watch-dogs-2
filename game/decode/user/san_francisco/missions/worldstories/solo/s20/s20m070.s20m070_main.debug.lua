export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/LayerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S20M070_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M070.domino|@S20M070_Main"
  self.PlayerEntity = nil
  self.ObjectiveMain = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S20.S20M070.Objectives.Objective010",
    item = "Objective",
    id = "492965"
  }
  self.S20_StoryIcon_1 = "9223372049163313780"
  self.box_FreeRoam_Interact_Gameplay_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Interact_Gameplay_1
  l0._graph = self
  l0._name = "box_FreeRoam_Interact_Gameplay_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M070.domino|@S20M070_Main|97056309"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_Interact_Gameplay_1_Interacted
  self.box_MissionMessageController_v3_7 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_7
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M070.domino|@S20M070_Main|426984485"
  l0.Out = self.f_box_MissionMessageController_v3_7_Out
  l0.MessageCompleted = DummyFunction
  self.box_LayerMonitor_2 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_2
  l0._graph = self
  l0._name = "box_LayerMonitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M070.domino|@S20M070_Main|958010362"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_2_Loaded
  l0.Unloaded = DummyFunction
  self.box_MissionMessageController_v3_8 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_8
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M070.domino|@S20M070_Main|1286398648"
  l0.Out = self.f_box_MissionMessageController_v3_8_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionController_v4_3 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_3
  l0._graph = self
  l0._name = "box_MissionController_v4_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M070.domino|@S20M070_Main|1852494622"
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = self.box_LayerMonitor_2
  l0.ProgressionLayer = "ProgressionLayers.9223372048282633689"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M070.domino|@S20M070_Main|2036426347", "2036426347", "S20M070_Main", "In", "box_LayerMonitor_2.Enable", self, l0)
  l0:Enable()
end
function export:f_box_FreeRoam_Interact_Gameplay_1_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Interact_Gameplay_1
  l1 = self.box_MissionMessageController_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M070.domino|@S20M070_Main|1130668575", "1130668575", "S20M070_Main", "box_FreeRoam_Interact_Gameplay_1.Interacted", "box_MissionMessageController_v3_8.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_MissionMessageController_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Interact_Gameplay_1
  l0.CLO = "9223372060991251376"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372048282633698"
  l0 = self.box_MissionMessageController_v3_7
  l1 = self.box_FreeRoam_Interact_Gameplay_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M070.domino|@S20M070_Main|1403031525", "1403031525", "S20M070_Main", "box_MissionMessageController_v3_7.Out", "box_FreeRoam_Interact_Gameplay_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_LayerMonitor_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_7
  l0.Objective = self.ObjectiveMain
  l0 = self.box_LayerMonitor_2
  l1 = self.box_MissionMessageController_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M070.domino|@S20M070_Main|1553451913", "1553451913", "S20M070_Main", "box_LayerMonitor_2.Loaded", "box_MissionMessageController_v3_7.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_8
  l1 = self.box_MissionController_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M070.domino|@S20M070_Main|1968150850", "1968150850", "S20M070_Main", "box_MissionMessageController_v3_8.Out", "box_MissionController_v4_3.Succeed", l0, l1)
  l1:Succeed()
end
_compilerVersion = 4
