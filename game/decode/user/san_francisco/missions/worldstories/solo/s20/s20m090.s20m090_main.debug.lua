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
  self._name = "S20M090_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M090.domino|@S20M090_Main"
  self.PlayerEntity = nil
  self.ObjectiveMain = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S20.S20M090.Objectives.Objective010",
    item = "Objective",
    id = "493336"
  }
  self.box_FreeRoam_Interact_Gameplay_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Interact_Gameplay_2
  l0._graph = self
  l0._name = "box_FreeRoam_Interact_Gameplay_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M090.domino|@S20M090_Main|295067907"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_Interact_Gameplay_2_Interacted
  self.box_MissionMessageController_v3_6 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_6
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M090.domino|@S20M090_Main|394489580"
  l0.Out = self.f_box_MissionMessageController_v3_6_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M090.domino|@S20M090_Main|451590559"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = DummyFunction
  self.box_LayerMonitor_4 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_4
  l0._graph = self
  l0._name = "box_LayerMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M090.domino|@S20M090_Main|607648531"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_4_Loaded
  l0.Unloaded = DummyFunction
  self.box_MissionController_v4_3 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_3
  l0._graph = self
  l0._name = "box_MissionController_v4_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M090.domino|@S20M090_Main|1409887226"
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
  l0 = self.box_LayerMonitor_4
  l0.ProgressionLayer = "ProgressionLayers.9223372048282633691"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M090.domino|@S20M090_Main|413928206", "413928206", "S20M090_Main", "In", "box_LayerMonitor_4.Enable", self, l0)
  l0:Enable()
end
function export:f_box_FreeRoam_Interact_Gameplay_2_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Interact_Gameplay_2
  l1 = self.box_MissionMessageController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M090.domino|@S20M090_Main|1239149076", "1239149076", "S20M090_Main", "box_FreeRoam_Interact_Gameplay_2.Interacted", "box_MissionMessageController_v3_1.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_MissionMessageController_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Interact_Gameplay_2
  l0.CLO = "9223372060991251380"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372048282633699"
  l0 = self.box_MissionMessageController_v3_6
  l1 = self.box_FreeRoam_Interact_Gameplay_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M090.domino|@S20M090_Main|2132339371", "2132339371", "S20M090_Main", "box_MissionMessageController_v3_6.Out", "box_FreeRoam_Interact_Gameplay_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_1
  l1 = self.box_MissionController_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M090.domino|@S20M090_Main|19056659", "19056659", "S20M090_Main", "box_MissionMessageController_v3_1.Out", "box_MissionController_v4_3.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_LayerMonitor_4_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_6
  l0.Objective = self.ObjectiveMain
  l0 = self.box_LayerMonitor_4
  l1 = self.box_MissionMessageController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M090.domino|@S20M090_Main|462506484", "462506484", "S20M090_Main", "box_LayerMonitor_4.Loaded", "box_MissionMessageController_v3_6.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
_compilerVersion = 4
