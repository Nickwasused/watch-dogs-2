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
  cbox:RegisterBox("domino/user/san_francisco/missions/tests/s12_hackerwar/s1_sabotage_01c.S1_Sabotage_1C_AI.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
end
function export:Init(cbox)
  local l0
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
  self[34] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[34]
  l0._graph = self
  l0.Shown = self.f_34_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[50] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[50]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_50_MessageRequested
  l0.MessageCompleted = self.f_50_MessageCompleted
  self[2] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[54] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[54]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_54_Killed
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[23] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[23]
  l0._graph = self
  l0.Attached = self.f_23_Attached
  self[41] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[41]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_41_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[47] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[47]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_47_MessageRequested
  l0.MessageCompleted = self.f_47_MessageCompleted
  self[31] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[31]
  l0._graph = self
  l0.Shown = self.f_31_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[42] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[42]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_42_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[56] = cbox:CreateBox("domino/user/san_francisco/missions/tests/s12_hackerwar/s1_sabotage_01c.S1_Sabotage_1C_AI.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = self.f_56_Out
  self[17] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[17]
  l0._graph = self
  l0.Attached = self.f_17_Attached
  self[40] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[40]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_40_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_19_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_19_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[16] = cbox:CreateBox("Domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_16_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_16_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[10] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 5}
  l0.Out = self.f_10_Out
  self[32] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[32]
  l0._graph = self
  l0.Shown = self.f_32_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[51] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[51]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 5}
  l0.Out = self.f_51_Out
  self[48] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[48]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_48_MessageRequested
  l0.MessageCompleted = self.f_48_MessageCompleted
  self[22] = cbox:CreateBox("Domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_22_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_22_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[55] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[55]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_55_OnUserInPlace
  self[20] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[20]
  l0._graph = self
  l0.Attached = self.f_20_Attached
  self[33] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[33]
  l0._graph = self
  l0.Shown = self.f_33_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[3] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_3_MessageCompleted
  self[38] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[38]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_38_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[52] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[52]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[14] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[14]
  l0._graph = self
  l0.Attached = self.f_14_Attached
  self[35] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[35]
  l0._graph = self
  l0.Shown = self.f_35_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[49] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[49]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_49_MessageRequested
  l0.MessageCompleted = self.f_49_MessageCompleted
  self[39] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[39]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_39_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[59] = cbox:CreateBox("Domino/System/PickupMonitor.lua")
  l0 = self[59]
  l0._graph = self
  l0.PickedUp = self.f_59_PickedUp
  self[13] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[13]
  l0._graph = self
  l0.Attached = self.f_13_Attached
  self[46] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[46]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_46_MessageRequested
  l0.MessageCompleted = self.f_46_MessageCompleted
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
  l0 = self[2]
  l0.LayerName = "S12_Sabotage_01C_Main"
  l0:Load()
end
function export:f_34_Shown()
  local l0
  self = self._graph
  l0 = self[22]
  l0.InteractionScriptEntity = self.InteractObj2C
  l0:Enable()
end
function export:f_50_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[51]
  l0:Condition(4)
end
function export:f_50_MessageRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372046620962431"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Disable()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.IconObj2A = l0.Target
  l0 = self[10]
  l0:Condition(1)
end
function export:f_60_Out_0()
  local l0
  self = self._graph
  l0 = self[59]
  l0.Pickup = self.PickupObj1
  l0:Enable()
end
function export:f_60_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.InteractObj2A
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = self.f_15_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_21_Enabled()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Parent = self.InteractObj2C
  l0.Child = self.IconObj2C
  l0.zPosOffset = 0.64
  l0:Attach()
end
function export:f_54_Killed()
  local l0
  self = self._graph
  l0 = self[38]
  l0.MapPoint = self.IconObj3
  l0:Hide()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.InteractObj2A = l0.Target
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028418"
  l0._graph = self
  l0.Out = self.f_36_Out
  l0:FromEntity()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.InteractObj1 = l0.Target
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046737841950"
  l0._graph = self
  l0.Out = self.f_57_Out
  l0:FromEntity()
end
function export:f_23_Attached()
  local l0
  self = self._graph
  l0 = self[35]
  l0.MapPoint = self.IconObj3
  l0:Show()
end
function export:f_41_Hidden()
  local l0
  self = self._graph
  l0 = self[48]
  l0.MissionName = "MissionList.9223372046425794690"
  l0.ObjectiveSub2 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0:IncrementObjective()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.InteractObj2B = l0.Target
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028420"
  l0._graph = self
  l0.Out = self.f_37_Out
  l0:FromEntity()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Parent = self.PickupObj1
  l0.Child = self.IconObj1
  l0:Attach()
end
function export:f_47_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[51]
  l0:Condition(1)
end
function export:f_47_MessageRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372046620962435"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Disable()
end
function export:f_31_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_60_Out_0
  l0.Out[1] = self.f_60_Out_1
  l0:In()
end
function export:f_42_Hidden()
  local l0
  self = self._graph
  l0 = self[46]
  l0.MissionName = "MissionList.9223372046425794690"
  l0.ObjectiveSub1 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0:IncrementObjective()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0.Out[2] = self.f_9_Out_2
  l0.Out[3] = self.f_9_Out_3
  l0.Out[4] = self.f_9_Out_4
  l0:In()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621027857"
  l0._graph = self
  l0.Out = self.f_4_Out
  l0:FromEntity()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028416"
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:FromEntity()
end
function export:f_9_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028422"
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:FromEntity()
end
function export:f_9_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028426"
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:FromEntity()
end
function export:f_9_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621076701"
  l0._graph = self
  l0.Out = self.f_53_Out
  l0:FromEntity()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.InteractObj2C = l0.Target
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028424"
  l0._graph = self
  l0.Out = self.f_43_Out
  l0:FromEntity()
end
function export:f_56_Out()
  local l0
  self = self._graph
  l0 = self[3]
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
  l0:ShowNewObjective()
end
function export:f_17_Attached()
  local l0
  self = self._graph
  l0 = self[33]
  l0.MapPoint = self.IconObj2B
  l0:Show()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.PickupObj1 = l0.Target
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621027859"
  l0._graph = self
  l0.Out = self.f_45_Out
  l0:FromEntity()
end
function export:f_40_Hidden()
  local l0
  self = self._graph
  l0 = self[49]
  l0.MissionName = "MissionList.9223372046425794690"
  l0.ObjectiveSub2 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0:IncrementObjective()
end
function export:f_19_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.InteractObj2C
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = self.f_21_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_19_InteractionFinished()
  local l0
  self = self._graph
  l0 = self[41]
  l0.MapPoint = self.IconObj2B
  l0:Hide()
end
function export:f_16_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.InteractObj2B
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = self.f_18_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_16_InteractionFinished()
  local l0
  self = self._graph
  l0 = self[39]
  l0.MapPoint = self.IconObj2A
  l0:Hide()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[56]
  l0:In()
end
function export:f_32_Shown()
  local l0
  self = self._graph
  l0 = self[16]
  l0.InteractionScriptEntity = self.InteractObj2A
  l0:Enable()
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = self[52]
  l0.MissionName = "MissionList.9223372046425794690"
  l0:ShowMissionComplete()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.IconObj3 = l0.Target
  l0 = self[10]
  l0:Condition(4)
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.IconObj2C = l0.Target
  l0 = self[10]
  l0:Condition(3)
end
function export:f_48_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[51]
  l0:Condition(2)
end
function export:f_48_MessageRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372046620962437"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Disable()
end
function export:f_22_Enabled()
  local l0
  self = self._graph
  l0 = self[55]
  l0.CLO = self.CLOHacker
  l0:Activate()
end
function export:f_22_InteractionFinished()
  local l0
  self = self._graph
  l0 = self[40]
  l0.MapPoint = self.IconObj2C
  l0:Hide()
end
function export:f_55_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[55]
  self.PawnHacker = l0.UserID
  l0 = self[23]
  l0.Parent = self.PawnHacker
  l0.Child = self.IconObj3
  l0.NpcIcon = 1
  l0:Attach()
end
function export:f_20_Attached()
  local l0
  self = self._graph
  l0 = self[34]
  l0.MapPoint = self.IconObj2C
  l0:Show()
end
function export:f_33_Shown()
  local l0
  self = self._graph
  l0 = self[19]
  l0.InteractionScriptEntity = self.InteractObj2B
  l0:Enable()
end
function export:f_3_MessageCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PickupController.lua")]
  l0.Pickup = self.PickupObj1
  l0._graph = self
  l0.Out = self.f_58_Out
  l0:SetAsPickable()
end
function export:f_38_Hidden()
  local l0
  self = self._graph
  l0 = self[50]
  l0.MissionName = "MissionList.9223372046425794690"
  l0.ObjectiveSub3 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0:IncrementObjective()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.IconObj2B = l0.Target
  l0 = self[10]
  l0:Condition(2)
end
function export:f_14_Attached()
  local l0
  self = self._graph
  l0 = self[32]
  l0.MapPoint = self.IconObj2A
  l0:Show()
end
function export:f_18_Enabled()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Parent = self.InteractObj2B
  l0.Child = self.IconObj2B
  l0.zPosOffset = 0.64
  l0:Attach()
end
function export:f_35_Shown()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Pawn = self.PawnHacker
  l0:Enable()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.IconObj1 = l0.Target
  l0 = self[10]
  l0:Condition(0)
end
function export:f_49_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[51]
  l0:Condition(3)
end
function export:f_49_MessageRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372046620962433"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Disable()
end
function export:f_39_Hidden()
  local l0
  self = self._graph
  l0 = self[47]
  l0.MissionName = "MissionList.9223372046425794690"
  l0.ObjectiveSub2 = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0:IncrementObjective()
end
function export:f_59_PickedUp()
  local l0
  self = self._graph
  l0 = self[42]
  l0.MapPoint = self.IconObj1
  l0:Hide()
end
function export:f_13_Attached()
  local l0
  self = self._graph
  l0 = self[31]
  l0.MapPoint = self.IconObj1
  l0:Show()
end
function export:f_15_Enabled()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Parent = self.InteractObj2A
  l0.Child = self.IconObj2A
  l0.zPosOffset = 0.64
  l0:Attach()
end
function export:f_46_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[51]
  l0:Condition(0)
end
function export:f_46_MessageRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372046620962439"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Disable()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.CLOHacker = l0.Target
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = "9223372046621028428"
  l0._graph = self
  l0.Out = self.f_44_Out
  l0:FromEntity()
end
_compilerVersion = 4
