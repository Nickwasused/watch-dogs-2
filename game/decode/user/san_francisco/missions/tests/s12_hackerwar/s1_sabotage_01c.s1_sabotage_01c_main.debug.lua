export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/DebugAnnotationTextController.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("Domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/PickupController.lua")
  cbox:RegisterBox("Domino/System/PickupMonitor.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/tests/s12_hackerwar/s1_sabotage_01c.S1_Sabotage_1C_AI.debug.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S1_Sabotage_01C_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main"
  self.PlayerEntity = nil
  self.InteractObj3 = nil
  self.InteractObj1 = nil
  self.InteractObj2C = nil
  self.InteractObj2A = nil
  self.InteractObj2B = nil
  self.IconObj1 = nil
  self.IconObj2A = nil
  self.IconObj2B = nil
  self.IconObj2C = nil
  self.IconObj3 = nil
  self.PawnHacker = nil
  self.CLOHacker = nil
  self.PickupObj1 = nil
  self.box_MapPointController_v3_34 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_34
  l0._graph = self
  l0._name = "box_MapPointController_v3_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|12893984"
  l0.Shown = self.f_box_MapPointController_v3_34_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_50 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_50
  l0._graph = self
  l0._name = "box_MissionMessageController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|58157173"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_50_MessageRequested
  l0.MessageCompleted = self.f_box_MissionMessageController_50_MessageCompleted
  self.box_MissionLayer_v2_2 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PawnHealthMonitor_v3_54 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_54
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|352352423"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_54_Killed
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_SnapAndBind_23 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_23
  l0._graph = self
  l0._name = "box_SnapAndBind_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|555605556"
  l0.Attached = self.f_box_SnapAndBind_23_Attached
  self.box_MapPointController_v3_41 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_41
  l0._graph = self
  l0._name = "box_MapPointController_v3_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|605097199"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_41_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_47 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_47
  l0._graph = self
  l0._name = "box_MissionMessageController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|678799793"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_47_MessageRequested
  l0.MessageCompleted = self.f_box_MissionMessageController_47_MessageCompleted
  self.box_MapPointController_v3_31 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_31
  l0._graph = self
  l0._name = "box_MapPointController_v3_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|779646835"
  l0.Shown = self.f_box_MapPointController_v3_31_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_42 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_42
  l0._graph = self
  l0._name = "box_MapPointController_v3_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|804893861"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_42_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_S1_Sabotage_1C_AI_56 = cbox:CreateBox("domino/user/san_francisco/missions/tests/s12_hackerwar/s1_sabotage_01c.S1_Sabotage_1C_AI.debug.lua")
  l0 = self.box_S1_Sabotage_1C_AI_56
  l0._graph = self
  l0._name = "box_S1_Sabotage_1C_AI_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|884023422"
  l0.Out = self.f_box_S1_Sabotage_1C_AI_56_Out
  self.box_SnapAndBind_17 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_17
  l0._graph = self
  l0._name = "box_SnapAndBind_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|956527018"
  l0.Attached = self.f_box_SnapAndBind_17_Attached
  self.box_MapPointController_v3_40 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_40
  l0._graph = self
  l0._name = "box_MapPointController_v3_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1108549086"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_40_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_InteractionScriptMonitor_v2_19 = cbox:CreateBox("Domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_19
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1272682797"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InteractionScriptMonitor_v2_19_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_19_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_InteractionScriptMonitor_v2_16 = cbox:CreateBox("Domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_16
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1277661110"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InteractionScriptMonitor_v2_16_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_16_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_Multiple_AND_10 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_10
  l0._graph = self
  l0._name = "box_Multiple_AND_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1293337377"
  l0._DynamicAnchors = {Condition = 5}
  l0.Out = self.f_box_Multiple_AND_10_Out
  self.box_MapPointController_v3_32 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_32
  l0._graph = self
  l0._name = "box_MapPointController_v3_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1295079683"
  l0.Shown = self.f_box_MapPointController_v3_32_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Multiple_AND_51 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_51
  l0._graph = self
  l0._name = "box_Multiple_AND_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1324305731"
  l0._DynamicAnchors = {Condition = 5}
  l0.Out = self.f_box_Multiple_AND_51_Out
  self.box_MissionMessageController_48 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_48
  l0._graph = self
  l0._name = "box_MissionMessageController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1371708441"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_48_MessageRequested
  l0.MessageCompleted = self.f_box_MissionMessageController_48_MessageCompleted
  self.box_InteractionScriptMonitor_v2_22 = cbox:CreateBox("Domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_22
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1438366506"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InteractionScriptMonitor_v2_22_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_22_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_CLOController_55 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_55
  l0._graph = self
  l0._name = "box_CLOController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1491352554"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_55_OnUserInPlace
  self.box_SnapAndBind_20 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_20
  l0._graph = self
  l0._name = "box_SnapAndBind_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1496065898"
  l0.Attached = self.f_box_SnapAndBind_20_Attached
  self.box_MapPointController_v3_33 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_33
  l0._graph = self
  l0._name = "box_MapPointController_v3_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1497075862"
  l0.Shown = self.f_box_MapPointController_v3_33_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_3 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_3
  l0._graph = self
  l0._name = "box_MissionMessageController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1509506696"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_3_MessageCompleted
  self.box_MapPointController_v3_38 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_38
  l0._graph = self
  l0._name = "box_MapPointController_v3_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1682327246"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_38_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_52 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_52
  l0._graph = self
  l0._name = "box_MissionMessageController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1699334190"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_SnapAndBind_14 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_14
  l0._graph = self
  l0._name = "box_SnapAndBind_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1728181267"
  l0.Attached = self.f_box_SnapAndBind_14_Attached
  self.box_MapPointController_v3_35 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_35
  l0._graph = self
  l0._name = "box_MapPointController_v3_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1749972319"
  l0.Shown = self.f_box_MapPointController_v3_35_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_49 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_49
  l0._graph = self
  l0._name = "box_MissionMessageController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1876909108"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_49_MessageRequested
  l0.MessageCompleted = self.f_box_MissionMessageController_49_MessageCompleted
  self.box_MapPointController_v3_39 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_39
  l0._graph = self
  l0._name = "box_MapPointController_v3_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1884560768"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_39_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Pickup_Monitor_59 = cbox:CreateBox("Domino/System/PickupMonitor.lua")
  l0 = self.box_Pickup_Monitor_59
  l0._graph = self
  l0._name = "box_Pickup_Monitor_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1956009165"
  l0.PickedUp = self.f_box_Pickup_Monitor_59_PickedUp
  self.box_SnapAndBind_13 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_13
  l0._graph = self
  l0._name = "box_SnapAndBind_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1983338927"
  l0.Attached = self.f_box_SnapAndBind_13_Attached
  self.box_MissionMessageController_46 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_46
  l0._graph = self
  l0._name = "box_MissionMessageController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|2114355092"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_46_MessageRequested
  l0.MessageCompleted = self.f_box_MissionMessageController_46_MessageCompleted
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
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S12_Sabotage_01C_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1104553538", "1104553538", "S1_Sabotage_01C_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_MapPointController_v3_34_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_22
  l0.InteractionScriptEntity = self.InteractObj2C
  l0 = self.box_MapPointController_v3_34
  l1 = self.box_InteractionScriptMonitor_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1292239344", "1292239344", "S1_Sabotage_01C_Main", "box_MapPointController_v3_34.Shown", "box_InteractionScriptMonitor_v2_22.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_50_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_MissionMessageController_50
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|640401404", "640401404", "S1_Sabotage_01C_Main", "box_MissionMessageController_50.MessageCompleted", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(4)
end
function export:f_box_MissionMessageController_50_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372046620962431"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1871466031"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0 = self.box_MissionMessageController_50
  l1 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1950488884", "1950488884", "S1_Sabotage_01C_Main", "box_MissionMessageController_50.MessageRequested", "box_Display_a_debug_annotation_text_entity_30.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Set_Entity_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.IconObj2A = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1213998338", "1213998338", "S1_Sabotage_01C_Main", "box_Set_Entity_36.Out", "box_Multiple_AND_10.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_60_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Pickup Monitor Enabled", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Pickup Monitor')-- Comment: Pickup Monitor Enabled")
  l0 = self.box_Pickup_Monitor_59
  l0.Pickup = self.PickupObj1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1976796976", "1976796976", "S1_Sabotage_01C_Main", "box_Ordered_Output_60.Out", "box_Pickup_Monitor_59.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_60_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.InteractObj2A
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|2080874205"
  l0.Enabled = self.f_box_InteractionScriptController_15_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1103461188", "1103461188", "S1_Sabotage_01C_Main", "box_Ordered_Output_60.Out", "box_InteractionScriptController_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|794668992", "794668992", "S1_Sabotage_01C_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_21_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_20
  l0.Parent = self.InteractObj2C
  l0.Child = self.IconObj2C
  l0.zPosOffset = 0.64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1467233223", "1467233223", "S1_Sabotage_01C_Main", "box_InteractionScriptController_21.Enabled", "box_SnapAndBind_20.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_PawnHealthMonitor_v3_54_Killed()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_38
  l0.MapPoint = self.IconObj3
  l0 = self.box_PawnHealthMonitor_v3_54
  l1 = self.box_MapPointController_v3_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1243148150", "1243148150", "S1_Sabotage_01C_Main", "box_PawnHealthMonitor_v3_54.Killed", "box_MapPointController_v3_38.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Set_Entity_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.InteractObj2A = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028418"
  l0._graph = self
  l0._name = "box_Set_Entity_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|146523097"
  l0.Out = self.f_box_Set_Entity_36_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1694065276", "1694065276", "S1_Sabotage_01C_Main", "box_Set_Entity_5.Out", "box_Set_Entity_36.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Set_Entity_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.InteractObj1 = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046737841950"
  l0._graph = self
  l0._name = "box_Set_Entity_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|979340426"
  l0.Out = self.f_box_Set_Entity_57_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|193305737", "193305737", "S1_Sabotage_01C_Main", "box_Set_Entity_4.Out", "box_Set_Entity_57.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_SnapAndBind_23_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_35
  l0.MapPoint = self.IconObj3
  l0 = self.box_SnapAndBind_23
  l1 = self.box_MapPointController_v3_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|611777039", "611777039", "S1_Sabotage_01C_Main", "box_SnapAndBind_23.Attached", "box_MapPointController_v3_35.Show", l0, l1)
  l1:Show()
end
function export:f_box_MapPointController_v3_41_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_48
  l0.MissionName = "MissionList.9223372046425794690"
  l0.ObjectiveSub2 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_MapPointController_v3_41
  l1 = self.box_MissionMessageController_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|2132476003", "2132476003", "S1_Sabotage_01C_Main", "box_MapPointController_v3_41.Hidden", "box_MissionMessageController_48.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Set_Entity_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.InteractObj2B = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028420"
  l0._graph = self
  l0._name = "box_Set_Entity_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1697240035"
  l0.Out = self.f_box_Set_Entity_37_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|2063584782", "2063584782", "S1_Sabotage_01C_Main", "box_Set_Entity_6.Out", "box_Set_Entity_37.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Pickup_Controller_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PickupController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_13
  l0.Parent = self.PickupObj1
  l0.Child = self.IconObj1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1739425338", "1739425338", "S1_Sabotage_01C_Main", "box_Pickup_Controller_58.Out", "box_SnapAndBind_13.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_MissionMessageController_47_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_MissionMessageController_47
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1816170766", "1816170766", "S1_Sabotage_01C_Main", "box_MissionMessageController_47.MessageCompleted", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MissionMessageController_47_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372046620962435"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1440279631"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0 = self.box_MissionMessageController_47
  l1 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|285188681", "285188681", "S1_Sabotage_01C_Main", "box_MissionMessageController_47.MessageRequested", "box_Display_a_debug_annotation_text_entity_27.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v3_31_Shown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|180685220"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_60_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_60_Out_1
  l0 = self.box_MapPointController_v3_31
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|435881291", "435881291", "S1_Sabotage_01C_Main", "box_MapPointController_v3_31.Shown", "box_Ordered_Output_60.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v3_42_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_46
  l0.MissionName = "MissionList.9223372046425794690"
  l0.ObjectiveSub1 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0 = self.box_MapPointController_v3_42
  l1 = self.box_MissionMessageController_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1308673432", "1308673432", "S1_Sabotage_01C_Main", "box_MapPointController_v3_42.Hidden", "box_MissionMessageController_46.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|822962829"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_9_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_9_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_9_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|43032826", "43032826", "S1_Sabotage_01C_Main", "box_Get_Player_ID_1.Out", "box_Ordered_Output_9.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621027857"
  l0._graph = self
  l0._name = "box_Set_Entity_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|436403536"
  l0.Out = self.f_box_Set_Entity_4_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1425535300", "1425535300", "S1_Sabotage_01C_Main", "box_Ordered_Output_9.Out", "box_Set_Entity_4.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028416"
  l0._graph = self
  l0._name = "box_Set_Entity_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|369745158"
  l0.Out = self.f_box_Set_Entity_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|182117113", "182117113", "S1_Sabotage_01C_Main", "box_Ordered_Output_9.Out", "box_Set_Entity_5.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Ordered_Output_9_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028422"
  l0._graph = self
  l0._name = "box_Set_Entity_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|652274410"
  l0.Out = self.f_box_Set_Entity_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|364168690", "364168690", "S1_Sabotage_01C_Main", "box_Ordered_Output_9.Out", "box_Set_Entity_6.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Ordered_Output_9_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028426"
  l0._graph = self
  l0._name = "box_Set_Entity_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|877907340"
  l0.Out = self.f_box_Set_Entity_7_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|61375077", "61375077", "S1_Sabotage_01C_Main", "box_Ordered_Output_9.Out", "box_Set_Entity_7.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Ordered_Output_9_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621076701"
  l0._graph = self
  l0._name = "box_Set_Entity_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|2125113695"
  l0.Out = self.f_box_Set_Entity_53_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1648775134", "1648775134", "S1_Sabotage_01C_Main", "box_Ordered_Output_9.Out", "box_Set_Entity_53.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Set_Entity_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.InteractObj2C = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028424"
  l0._graph = self
  l0._name = "box_Set_Entity_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1341652937"
  l0.Out = self.f_box_Set_Entity_43_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1063239502", "1063239502", "S1_Sabotage_01C_Main", "box_Set_Entity_7.Out", "box_Set_Entity_43.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_S1_Sabotage_1C_AI_56_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_3
  l0.MissionName = "MissionList.9223372046425794690"
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.SABOTAGE.SabotageActivationObjective",
    item = "Title",
    id = "312245"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0.IncrementalObjectiveTotalSub2 = 3
  l0.ObjectiveSub3 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0 = self.box_S1_Sabotage_1C_AI_56
  l1 = self.box_MissionMessageController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|994303591", "994303591", "S1_Sabotage_01C_Main", "box_S1_Sabotage_1C_AI_56.Out", "box_MissionMessageController_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_SnapAndBind_17_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_33
  l0.MapPoint = self.IconObj2B
  l0 = self.box_SnapAndBind_17
  l1 = self.box_MapPointController_v3_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|776985004", "776985004", "S1_Sabotage_01C_Main", "box_SnapAndBind_17.Attached", "box_MapPointController_v3_33.Show", l0, l1)
  l1:Show()
end
function export:f_box_Set_Entity_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.PickupObj1 = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621027859"
  l0._graph = self
  l0._name = "box_Set_Entity_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1831351114"
  l0.Out = self.f_box_Set_Entity_45_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1334188110", "1334188110", "S1_Sabotage_01C_Main", "box_Set_Entity_57.Out", "box_Set_Entity_45.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_MapPointController_v3_40_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_49
  l0.MissionName = "MissionList.9223372046425794690"
  l0.ObjectiveSub2 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_MapPointController_v3_40
  l1 = self.box_MissionMessageController_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1595681601", "1595681601", "S1_Sabotage_01C_Main", "box_MapPointController_v3_40.Hidden", "box_MissionMessageController_49.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_InteractionScriptMonitor_v2_19_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.InteractObj2C
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|270534253"
  l0.Enabled = self.f_box_InteractionScriptController_21_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_InteractionScriptMonitor_v2_19
  l1 = Boxes[PathID("Domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|439582464", "439582464", "S1_Sabotage_01C_Main", "box_InteractionScriptMonitor_v2_19.Enabled", "box_InteractionScriptController_21.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_InteractionScriptMonitor_v2_19_InteractionFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_41
  l0.MapPoint = self.IconObj2B
  l0 = self.box_InteractionScriptMonitor_v2_19
  l1 = self.box_MapPointController_v3_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1808413760", "1808413760", "S1_Sabotage_01C_Main", "box_InteractionScriptMonitor_v2_19.InteractionFinished", "box_MapPointController_v3_41.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_InteractionScriptMonitor_v2_16_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.InteractObj2B
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1736352476"
  l0.Enabled = self.f_box_InteractionScriptController_18_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_InteractionScriptMonitor_v2_16
  l1 = Boxes[PathID("Domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|602673923", "602673923", "S1_Sabotage_01C_Main", "box_InteractionScriptMonitor_v2_16.Enabled", "box_InteractionScriptController_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_InteractionScriptMonitor_v2_16_InteractionFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_39
  l0.MapPoint = self.IconObj2A
  l0 = self.box_InteractionScriptMonitor_v2_16
  l1 = self.box_MapPointController_v3_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|555969651", "555969651", "S1_Sabotage_01C_Main", "box_InteractionScriptMonitor_v2_16.InteractionFinished", "box_MapPointController_v3_39.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Multiple_AND_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Multiple_AND_10
  l1 = self.box_S1_Sabotage_1C_AI_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|48618844", "48618844", "S1_Sabotage_01C_Main", "box_Multiple_AND_10.Out", "box_S1_Sabotage_1C_AI_56.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v3_32_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_16
  l0.InteractionScriptEntity = self.InteractObj2A
  l0 = self.box_MapPointController_v3_32
  l1 = self.box_InteractionScriptMonitor_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|316341622", "316341622", "S1_Sabotage_01C_Main", "box_MapPointController_v3_32.Shown", "box_InteractionScriptMonitor_v2_16.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Multiple_AND_51_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_52
  l0.MissionName = "MissionList.9223372046425794690"
  l0 = self.box_Multiple_AND_51
  l1 = self.box_MissionMessageController_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|2121080885", "2121080885", "S1_Sabotage_01C_Main", "box_Multiple_AND_51.Out", "box_MissionMessageController_52.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Set_Entity_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.IconObj3 = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|2006801829", "2006801829", "S1_Sabotage_01C_Main", "box_Set_Entity_44.Out", "box_Multiple_AND_10.Condition", clone, l0)
  l0:Condition(4)
end
function export:f_box_Set_Entity_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.IconObj2C = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|856544192", "856544192", "S1_Sabotage_01C_Main", "box_Set_Entity_43.Out", "box_Multiple_AND_10.Condition", clone, l0)
  l0:Condition(3)
end
function export:f_box_MissionMessageController_48_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_MissionMessageController_48
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1470831555", "1470831555", "S1_Sabotage_01C_Main", "box_MissionMessageController_48.MessageCompleted", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_MissionMessageController_48_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372046620962437"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|847548346"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0 = self.box_MissionMessageController_48
  l1 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1100111450", "1100111450", "S1_Sabotage_01C_Main", "box_MissionMessageController_48.MessageRequested", "box_Display_a_debug_annotation_text_entity_28.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_InteractionScriptMonitor_v2_22_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_55
  l0.CLO = self.CLOHacker
  l0 = self.box_InteractionScriptMonitor_v2_22
  l1 = self.box_CLOController_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|878663445", "878663445", "S1_Sabotage_01C_Main", "box_InteractionScriptMonitor_v2_22.Enabled", "box_CLOController_55.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_InteractionScriptMonitor_v2_22_InteractionFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_40
  l0.MapPoint = self.IconObj2C
  l0 = self.box_InteractionScriptMonitor_v2_22
  l1 = self.box_MapPointController_v3_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|308845249", "308845249", "S1_Sabotage_01C_Main", "box_InteractionScriptMonitor_v2_22.InteractionFinished", "box_MapPointController_v3_40.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_CLOController_55_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_55
  self.PawnHacker = l0.UserID
  l0 = self.box_SnapAndBind_23
  l0.Parent = self.PawnHacker
  l0.Child = self.IconObj3
  l0.NpcIcon = 1
  l0 = self.box_CLOController_55
  l1 = self.box_SnapAndBind_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1330792685", "1330792685", "S1_Sabotage_01C_Main", "box_CLOController_55.OnUserInPlace", "box_SnapAndBind_23.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_SnapAndBind_20_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_34
  l0.MapPoint = self.IconObj2C
  l0 = self.box_SnapAndBind_20
  l1 = self.box_MapPointController_v3_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1566669225", "1566669225", "S1_Sabotage_01C_Main", "box_SnapAndBind_20.Attached", "box_MapPointController_v3_34.Show", l0, l1)
  l1:Show()
end
function export:f_box_MapPointController_v3_33_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_19
  l0.InteractionScriptEntity = self.InteractObj2B
  l0 = self.box_MapPointController_v3_33
  l1 = self.box_InteractionScriptMonitor_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1504967334", "1504967334", "S1_Sabotage_01C_Main", "box_MapPointController_v3_33.Shown", "box_InteractionScriptMonitor_v2_19.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_3_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PickupController.lua")]
  l0.Pickup = self.PickupObj1
  l0._graph = self
  l0._name = "box_Pickup_Controller_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|677317830"
  l0.Out = self.f_box_Pickup_Controller_58_Out
  l0 = self.box_MissionMessageController_3
  l1 = Boxes[PathID("Domino/System/PickupController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|131643589", "131643589", "S1_Sabotage_01C_Main", "box_MissionMessageController_3.MessageCompleted", "box_Pickup_Controller_58.SetAsPickable", l0, l1)
  l1:SetAsPickable()
end
function export:f_box_MapPointController_v3_38_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_50
  l0.MissionName = "MissionList.9223372046425794690"
  l0.ObjectiveSub3 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0 = self.box_MapPointController_v3_38
  l1 = self.box_MissionMessageController_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|976921187", "976921187", "S1_Sabotage_01C_Main", "box_MapPointController_v3_38.Hidden", "box_MissionMessageController_50.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Set_Entity_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.IconObj2B = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1093452477", "1093452477", "S1_Sabotage_01C_Main", "box_Set_Entity_37.Out", "box_Multiple_AND_10.Condition", clone, l0)
  l0:Condition(2)
end
function export:f_box_SnapAndBind_14_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_32
  l0.MapPoint = self.IconObj2A
  l0 = self.box_SnapAndBind_14
  l1 = self.box_MapPointController_v3_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|113890123", "113890123", "S1_Sabotage_01C_Main", "box_SnapAndBind_14.Attached", "box_MapPointController_v3_32.Show", l0, l1)
  l1:Show()
end
function export:f_box_InteractionScriptController_18_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_17
  l0.Parent = self.InteractObj2B
  l0.Child = self.IconObj2B
  l0.zPosOffset = 0.64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1286043724", "1286043724", "S1_Sabotage_01C_Main", "box_InteractionScriptController_18.Enabled", "box_SnapAndBind_17.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_MapPointController_v3_35_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_54
  l0.Pawn = self.PawnHacker
  l0 = self.box_MapPointController_v3_35
  l1 = self.box_PawnHealthMonitor_v3_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1440636021", "1440636021", "S1_Sabotage_01C_Main", "box_MapPointController_v3_35.Shown", "box_PawnHealthMonitor_v3_54.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Set_Entity_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.IconObj1 = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1795187581", "1795187581", "S1_Sabotage_01C_Main", "box_Set_Entity_45.Out", "box_Multiple_AND_10.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_MissionMessageController_49_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_MissionMessageController_49
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1881838406", "1881838406", "S1_Sabotage_01C_Main", "box_MissionMessageController_49.MessageCompleted", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_MissionMessageController_49_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372046620962433"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|606701998"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0 = self.box_MissionMessageController_49
  l1 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|806475701", "806475701", "S1_Sabotage_01C_Main", "box_MissionMessageController_49.MessageRequested", "box_Display_a_debug_annotation_text_entity_29.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v3_39_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_47
  l0.MissionName = "MissionList.9223372046425794690"
  l0.ObjectiveSub2 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_MapPointController_v3_39
  l1 = self.box_MissionMessageController_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1623788869", "1623788869", "S1_Sabotage_01C_Main", "box_MapPointController_v3_39.Hidden", "box_MissionMessageController_47.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Pickup_Monitor_59_PickedUp()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: PICKED UP WEAPON", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MapPointController_v3')-- Comment: PICKED UP WEAPON")
  l0 = self.box_MapPointController_v3_42
  l0.MapPoint = self.IconObj1
  l0 = self.box_Pickup_Monitor_59
  l1 = self.box_MapPointController_v3_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|495593768", "495593768", "S1_Sabotage_01C_Main", "box_Pickup_Monitor_59.PickedUp", "box_MapPointController_v3_42.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_SnapAndBind_13_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_31
  l0.MapPoint = self.IconObj1
  l0 = self.box_SnapAndBind_13
  l1 = self.box_MapPointController_v3_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|362072778", "362072778", "S1_Sabotage_01C_Main", "box_SnapAndBind_13.Attached", "box_MapPointController_v3_31.Show", l0, l1)
  l1:Show()
end
function export:f_box_InteractionScriptController_15_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_14
  l0.Parent = self.InteractObj2A
  l0.Child = self.IconObj2A
  l0.zPosOffset = 0.64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1156557687", "1156557687", "S1_Sabotage_01C_Main", "box_InteractionScriptController_15.Enabled", "box_SnapAndBind_14.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_MissionMessageController_46_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_MissionMessageController_46
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|11959399", "11959399", "S1_Sabotage_01C_Main", "box_MissionMessageController_46.MessageCompleted", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MissionMessageController_46_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372046620962439"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|2060940380"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0 = self.box_MissionMessageController_46
  l1 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|689104599", "689104599", "S1_Sabotage_01C_Main", "box_MissionMessageController_46.MessageRequested", "box_Display_a_debug_annotation_text_entity_26.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Set_Entity_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.CLOHacker = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028428"
  l0._graph = self
  l0._name = "box_Set_Entity_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|1336109075"
  l0.Out = self.f_box_Set_Entity_44_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s1_sabotage_01c.domino|@S1_Sabotage_01C_Main|15318708", "15318708", "S1_Sabotage_01C_Main", "box_Set_Entity_53.Out", "box_Set_Entity_44.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:OnEnter_box_Multiple_AND_10()
end
function export:OnEnter_box_Multiple_AND_51()
end
_compilerVersion = 4
