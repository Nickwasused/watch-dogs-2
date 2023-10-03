export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugAnnotationTextController.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L12M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main"
  self.PlayerEntity = nil
  self.DebugAnnotationTextEntity_323 = "9223372048624640997"
  self.Hackable_Tablet_6 = "9223372048624640996"
  self.Hackable_Tablet_7 = "9223372048740236436"
  self.L12M030_DebugAnnotationTextEntity_324 = "9223372048740236438"
  self.NotActivatedByDefault_0 = "9223372048740236440"
  self.L12M030_WomansVehicle = "9223372052734217800"
  self.L12_StoryIcon_2 = "9223372048624732010"
  self.L12M030_CodeBreaker = "9223372052734291488"
  self.VehicleID = nil
  self.box_Timer_v2_11 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_11
  l0._graph = self
  l0._name = "box_Timer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|101161723"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MapPointController_v3_14 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_14
  l0._graph = self
  l0._name = "box_MapPointController_v3_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|269065985"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_14_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_v3_13 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_13
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|296409487"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_13_MessageCompleted
  self.box_MissionMessageController_v3_12 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_12
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|353508537"
  l0.Out = self.f_box_MissionMessageController_v3_12_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|657748414"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_7 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_7
  l0._graph = self
  l0._name = "box_Timer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|840530692"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionController_v4_2 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|902756310"
  self.box_VehicleMonitor_v2_6 = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_6
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|1292430692"
  l0.Enabled = self.f_box_VehicleMonitor_v2_6_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = self.f_box_VehicleMonitor_v2_6_IsPawnHiding
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  self.box_MapPointController_v3_5 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_5
  l0._graph = self
  l0._name = "box_MapPointController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|1812366034"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_FreeRoam_Locate_Gameplay_15 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Locate_Gameplay_15
  l0._graph = self
  l0._name = "box_FreeRoam_Locate_Gameplay_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|1893946138"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_box_FreeRoam_Locate_Gameplay_15_Located
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
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|353105558", "353105558", "L12M030_Main", "In", "box_Get_Player_ID_1.In", self, l0)
  l0:In()
end
function export:f_box_Timer_v2_11_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Display_a_debug_annotation_text_entity_10()
  l0 = self.box_Timer_v2_11
  l1 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|693399169", "693399169", "L12M030_Main", "box_Timer_v2_11.TimeElapsed", "box_Display_a_debug_annotation_text_entity_10.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Display_a_debug_annotation_text_entity_10_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|1951010875", "1951010875", "L12M030_Main", "box_Display_a_debug_annotation_text_entity_10.Disabled", "box_MissionMessageController_v3_13.ShowLastObjectiveComplete", clone, l0)
  l0:ShowLastObjectiveComplete()
end
function export:f_box_Display_a_debug_annotation_text_entity_10_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_11
  l0.Seconds = 8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|381141653", "381141653", "L12M030_Main", "box_Display_a_debug_annotation_text_entity_10.Enabled", "box_Timer_v2_11.Start", clone, l0)
  l0:Start()
end
function export:f_box_MapPointController_v3_14_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Display_a_debug_annotation_text_entity_4()
  l0 = self.box_MapPointController_v3_14
  l1 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|1259346536", "1259346536", "L12M030_Main", "box_MapPointController_v3_14.Hidden", "box_Display_a_debug_annotation_text_entity_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_13_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_13
  l1 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|1773850094", "1773850094", "L12M030_Main", "box_MissionMessageController_v3_13.MessageCompleted", "box_MissionController_v4_2.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionMessageController_v3_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_5
  l0.MapPoint = self.L12_StoryIcon_2
  l0 = self.box_MissionMessageController_v3_12
  l1 = self.box_MapPointController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|1730124063", "1730124063", "L12M030_Main", "box_MissionMessageController_v3_12.Out", "box_MapPointController_v3_5.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Locate_Gameplay_15
  l0.CLO = self.L12M030_CodeBreaker
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.DistrictsDB = "Districts.9223372048308080052"
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_FreeRoam_Locate_Gameplay_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|1215401747", "1215401747", "L12M030_Main", "box_MissionMessageController_v3_3.Out", "box_FreeRoam_Locate_Gameplay_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleMonitor_v2_6
  l0.Vehicle = self.L12M030_WomansVehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|1728669461", "1728669461", "L12M030_Main", "box_Get_Player_ID_1.Out", "box_VehicleMonitor_v2_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_7_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Display_a_debug_annotation_text_entity_4()
  l0 = self.box_Timer_v2_7
  l1 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|707652208", "707652208", "L12M030_Main", "box_Timer_v2_7.TimeElapsed", "box_Display_a_debug_annotation_text_entity_4.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_VehicleMonitor_v2_6_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_12
  l0.Objective = {
    section = "",
    item = "",
    id = "457702"
  }
  l0 = self.box_VehicleMonitor_v2_6
  l1 = self.box_MissionMessageController_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|964381102", "964381102", "L12M030_Main", "box_VehicleMonitor_v2_6.Enabled", "box_MissionMessageController_v3_12.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_VehicleMonitor_v2_6_IsPawnHiding()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_14
  l0.MapPoint = self.L12_StoryIcon_2
  l0 = self.box_VehicleMonitor_v2_6
  l1 = self.box_MapPointController_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|495122732", "495122732", "L12M030_Main", "box_VehicleMonitor_v2_6.IsPawnHiding", "box_MapPointController_v3_14.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_FreeRoam_Locate_Gameplay_15_Located()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Display_a_debug_annotation_text_entity_10()
  l0 = self.box_FreeRoam_Locate_Gameplay_15
  l1 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|1898282518", "1898282518", "L12M030_Main", "box_FreeRoam_Locate_Gameplay_15.Located", "box_Display_a_debug_annotation_text_entity_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Display_a_debug_annotation_text_entity_4_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "",
    item = "",
    id = "457703"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|418508347", "418508347", "L12M030_Main", "box_Display_a_debug_annotation_text_entity_4.Disabled", "box_MissionMessageController_v3_3.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Display_a_debug_annotation_text_entity_4_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_7
  l0.Seconds = 8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|473918682", "473918682", "L12M030_Main", "box_Display_a_debug_annotation_text_entity_4.Enabled", "box_Timer_v2_7.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_Display_a_debug_annotation_text_entity_10()
  local l0
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = self.L12M030_DebugAnnotationTextEntity_324
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|167622673"
  l0.Enabled = self.f_box_Display_a_debug_annotation_text_entity_10_Enabled
  l0.Disabled = self.f_box_Display_a_debug_annotation_text_entity_10_Disabled
  l0.TextSet = DummyFunction
end
function export:OnEnter_box_Display_a_debug_annotation_text_entity_4()
  local l0
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = self.DebugAnnotationTextEntity_323
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M030.domino|@L12M030_Main|2109810160"
  l0.Enabled = self.f_box_Display_a_debug_annotation_text_entity_4_Enabled
  l0.Disabled = self.f_box_Display_a_debug_annotation_text_entity_4_Disabled
  l0.TextSet = DummyFunction
end
_compilerVersion = 4
