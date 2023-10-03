export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("Domino/System/AISquadRelationshipController.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("Domino/System/ConvoyController.lua")
  cbox:RegisterBox("Domino/System/ConvoyMonitor.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/Lists/SetList.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("Domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Prepare Convoy"
  self._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy"
  self.ConvoyStopped = DummyFunction
  self.VIPDied = DummyFunction
  self.Out = DummyFunction
  self.NPCsUnassigned = DummyFunction
  self.DestinationReached = DummyFunction
  self.VipVehicleDestroyed = DummyFunction
  self.ConvoyStuck = DummyFunction
  self.ConvoyAggroNotPlayer = DummyFunction
  self.ConvoyStarted = DummyFunction
  self.Started = DummyFunction
  self.ConvoyAggro = DummyFunction
  self.Prepped = DummyFunction
  self.convoyID = 0
  self.EscortVehicleID = nil
  self.NoEscortVehicle = 1
  self.Player = nil
  self.All_NPCs = {}
  self.Escort_RearLeftPassengerID = nil
  self.tempListVehicles = {}
  self.Escort_RearRightPassengerID = nil
  self.Instigator = nil
  self.tempListNPCs = {}
  self.Vip = nil
  self.Escort_DriverID = nil
  self.vipVehicle = nil
  self.Escort_FrontPassengerID = nil
  self.Updated = 0
  self.VehicleVIPDestroyed = 0
  self.VehicleEscortDestroyed = 0
  self.box_Multiple_AND_33 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_33
  l0._graph = self
  l0._name = "box_Multiple_AND_33"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|4985810"
  l0._DynamicAnchors = {Condition = 5}
  l0.Out = self.f_box_Multiple_AND_33_Out
  self.box_MultipleOR_101 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_101
  l0._graph = self
  l0._name = "box_MultipleOR_101"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|29705747"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_101_Out
  self.box_MultipleOR_97 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_97
  l0._graph = self
  l0._name = "box_MultipleOR_97"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|129606536"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_97_Out
  self.box_VehicleSeatingController_66 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_66
  l0._graph = self
  l0._name = "box_VehicleSeatingController_66"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|142857463"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_66_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_128 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_128
  l0._graph = self
  l0._name = "box_SetBoolean_v2_128"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|160960979"
  l0.Out = self.f_box_SetBoolean_v2_128_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_128_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_128_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_128_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_128_SetFromBool
  self.box_VehicleSeatingController_82 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_82
  l0._graph = self
  l0._name = "box_VehicleSeatingController_82"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|227187723"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_82_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_1 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_1
  l0._graph = self
  l0._name = "box_OnceOnly_v3_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|298604986"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_1_Out
  l0.ResetOut = DummyFunction
  self.box_VehicleSeatingController_52 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_52
  l0._graph = self
  l0._name = "box_VehicleSeatingController_52"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|318968976"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_52_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_108 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_108
  l0._graph = self
  l0._name = "box_MultipleOR_108"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|405102023"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_108_Out
  self.box_ListWriter_80 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_80
  l0._graph = self
  l0._name = "box_ListWriter_80"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|425430042"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_80_Added
  l0.Removed = self.f_box_ListWriter_80_Removed
  l0.Out = self.f_box_ListWriter_80_Out
  self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_79
  l0._graph = self
  l0._name = "box_MultipleOR_79"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|461555368"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_79_Out
  self.box_SetBoolean_v2_21 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_21
  l0._graph = self
  l0._name = "box_SetBoolean_v2_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|526162932"
  l0.Out = self.f_box_SetBoolean_v2_21_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_21_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_21_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_21_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_21_SetFromBool
  self.box_SetBoolean_v2_126 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_126
  l0._graph = self
  l0._name = "box_SetBoolean_v2_126"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|541150824"
  l0.Out = self.f_box_SetBoolean_v2_126_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_126_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_126_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_126_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_126_SetFromBool
  self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_38
  l0._graph = self
  l0._name = "box_MultipleOR_38"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|544136399"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_38_Out
  self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_46
  l0._graph = self
  l0._name = "box_MultipleOR_46"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|556114331"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_46_Out
  self.box_VehicleSeatingController_30 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_30
  l0._graph = self
  l0._name = "box_VehicleSeatingController_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|634518682"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_box_VehicleSeatingController_30_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_VehicleSeatingController_72 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_72
  l0._graph = self
  l0._name = "box_VehicleSeatingController_72"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|660910816"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_72_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_105 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_105
  l0._graph = self
  l0._name = "box_MultipleOR_105"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|709887393"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_105_Out
  self.box_AISquadRelationshipController_123 = cbox:CreateBox("Domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_123
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_123"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|729736460"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_123_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_VehicleSeatingController_74 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_74
  l0._graph = self
  l0._name = "box_VehicleSeatingController_74"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|749256040"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_box_VehicleSeatingController_74_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_92 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_92
  l0._graph = self
  l0._name = "box_OnceOnly_v3_92"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|824559855"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_92_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_22 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_22
  l0._graph = self
  l0._name = "box_Timer_v2_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|839268115"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_22_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_24
  l0._graph = self
  l0._name = "box_MultipleOR_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|887837226"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_24_Out
  self.box_MultipleOR_125 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_125
  l0._graph = self
  l0._name = "box_MultipleOR_125"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|898251461"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_125_Out
  self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|992046448"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_ListWriter_31 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_31
  l0._graph = self
  l0._name = "box_ListWriter_31"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1001058850"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_31_Added
  l0.Removed = self.f_box_ListWriter_31_Removed
  l0.Out = self.f_box_ListWriter_31_Out
  self.box_VehicleSeatingController_60 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_60
  l0._graph = self
  l0._name = "box_VehicleSeatingController_60"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1031131227"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_60_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriter_34 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_34
  l0._graph = self
  l0._name = "box_ListWriter_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1050684548"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_34_Added
  l0.Removed = self.f_box_ListWriter_34_Removed
  l0.Out = self.f_box_ListWriter_34_Out
  self.box_CLOController_64 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_64
  l0._graph = self
  l0._name = "box_CLOController_64"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1074291169"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_64_OnUserInPlace
  self.box_SwitchOutput_v3_63 = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_63
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_63"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1083302380"
  l0._DynamicAnchors = {Output = 2}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_63_Output_0
  l0.Output[1] = self.f_box_SwitchOutput_v3_63_Output_1
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self.box_VehicleSeatingController_14 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_14
  l0._graph = self
  l0._name = "box_VehicleSeatingController_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1155654661"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_14_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriter_7 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_7
  l0._graph = self
  l0._name = "box_ListWriter_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1163176293"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_7_Added
  l0.Removed = self.f_box_ListWriter_7_Removed
  l0.Out = self.f_box_ListWriter_7_Out
  self.box_CLOController_48 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_48
  l0._graph = self
  l0._name = "box_CLOController_48"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1223279141"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_48_OnUserInPlace
  self.box_AISquadRelationshipController_49 = cbox:CreateBox("Domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_49
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_49"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1263441430"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_49_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_ListWriter_57 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_57
  l0._graph = self
  l0._name = "box_ListWriter_57"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1277295498"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_57_Added
  l0.Removed = self.f_box_ListWriter_57_Removed
  l0.Out = self.f_box_ListWriter_57_Out
  self.box_ListWriter_32 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_32
  l0._graph = self
  l0._name = "box_ListWriter_32"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1282785891"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_32_Added
  l0.Removed = self.f_box_ListWriter_32_Removed
  l0.Out = self.f_box_ListWriter_32_Out
  self.box_CLOController_36 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_36
  l0._graph = self
  l0._name = "box_CLOController_36"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1325236026"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_36_OnUserInPlace
  self.box_CLOController_10 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_10
  l0._graph = self
  l0._name = "box_CLOController_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1408415030"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_10_OnUserInPlace
  self.box_CLOController_42 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_42
  l0._graph = self
  l0._name = "box_CLOController_42"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1446658344"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_42_OnUserInPlace
  self.box_Multiple_AND_28 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_28
  l0._graph = self
  l0._name = "box_Multiple_AND_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1464021637"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_28_Out
  self.box_CLOController_56 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_56
  l0._graph = self
  l0._name = "box_CLOController_56"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1480735736"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_56_OnUserInPlace
  self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1489250512"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_Multiple_AND_26 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_26
  l0._graph = self
  l0._name = "box_Multiple_AND_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1495443136"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_26_Out
  self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_104
  l0._graph = self
  l0._name = "box_MultipleOR_104"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1503363934"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_104_Out
  self.box_MultipleOR_93 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_93
  l0._graph = self
  l0._name = "box_MultipleOR_93"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1515583235"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_93_Out
  self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_53
  l0._graph = self
  l0._name = "box_MultipleOR_53"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1598914257"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_53_Out
  self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_122
  l0._graph = self
  l0._name = "box_MultipleOR_122"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1638795414"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_122_Out
  self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1641203658"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_OnceOnly_v3_120 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_120
  l0._graph = self
  l0._name = "box_OnceOnly_v3_120"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1710099625"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_120_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1769259793"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_VehicleSeatingController_58 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_58
  l0._graph = self
  l0._name = "box_VehicleSeatingController_58"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1920356504"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_58_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_91 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_91
  l0._graph = self
  l0._name = "box_Multiple_AND_91"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1935530160"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_91_Out
  self.box_SetBoolean_v2_90 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_90
  l0._graph = self
  l0._name = "box_SetBoolean_v2_90"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1939690190"
  l0.Out = self.f_box_SetBoolean_v2_90_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_90_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_90_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_90_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_90_SetFromBool
  self.box_ConvoyMonitor_20 = cbox:CreateBox("Domino/System/ConvoyMonitor.lua")
  l0 = self.box_ConvoyMonitor_20
  l0._graph = self
  l0._name = "box_ConvoyMonitor_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2006816007"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.StartMoving = self.f_box_ConvoyMonitor_20_StartMoving
  l0.DestinationReached = self.f_box_ConvoyMonitor_20_DestinationReached
  l0.VIPDied = self.f_box_ConvoyMonitor_20_VIPDied
  l0.VIPVehicleDestroyed = self.f_box_ConvoyMonitor_20_VIPVehicleDestroyed
  l0.VIPHijacked = self.f_box_ConvoyMonitor_20_VIPHijacked
  l0.EscortDied = self.f_box_ConvoyMonitor_20_EscortDied
  l0.EscortVehicleDestroyed = self.f_box_ConvoyMonitor_20_EscortVehicleDestroyed
  l0.EscortHijacked = self.f_box_ConvoyMonitor_20_EscortHijacked
  l0.ConvoyStuck = self.f_box_ConvoyMonitor_20_ConvoyStuck
  l0.ConvoyStopped = self.f_box_ConvoyMonitor_20_ConvoyStopped
  l0.HardDisturbance = self.f_box_ConvoyMonitor_20_HardDisturbance
  l0.SoftDisturbance = self.f_box_ConvoyMonitor_20_SoftDisturbance
  self.box_CLOController_4 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2008337637"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_4_OnUserInPlace
  self.box_VehicleSeatingController_65 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_65
  l0._graph = self
  l0._name = "box_VehicleSeatingController_65"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2026923028"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_65_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_59
  l0._graph = self
  l0._name = "box_MultipleOR_59"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2033341781"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_59_Out
  self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_70
  l0._graph = self
  l0._name = "box_MultipleOR_70"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2044412306"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_70_Out
  self.box_MultipleOR_67 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_67
  l0._graph = self
  l0._name = "box_MultipleOR_67"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2087070354"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_67_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Prep()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_76"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1658947856"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_76_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_76_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_76_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_76_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|447993440", "447993440", "Prepare Convoy", "Prep", "box_Ordered_Output_76.In", self, l0)
  l0:In()
end
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_50"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1152598709"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_50_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_50_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|932268958", "932268958", "Prepare Convoy", "Start", "box_Ordered_Output_50.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1691262576", "1691262576", "Prepare Convoy", "Stop", "box_MultipleOR_67.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Multiple_AND_33_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.tempListNPCs
  l0._graph = self
  l0._name = "box_Set_List_84"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2048571047"
  l0.Out = self.f_box_Set_List_84_Out
  l0 = self.box_Multiple_AND_33
  l1 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1262633441", "1262633441", "Prepare Convoy", "box_Multiple_AND_33.Out", "box_Set_List_84.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_MultipleOR_101_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortFrontPassenger_WanderZone
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_106"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|349728529"
  l0.Is_nil = self.f_box_Test_if_Nil_106_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_106_Is_not_nil
  l0 = self.box_MultipleOR_101
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1458142027", "1458142027", "Prepare Convoy", "box_MultipleOR_101.Out", "box_Test_if_Nil_106.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Agent_Zone_114_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_105()
  l0 = self.box_MultipleOR_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|729273874", "729273874", "Prepare Convoy", "box_AI_Agent_Zone_114.Out", "box_MultipleOR_105.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_118_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.EscortRearRightPassenger_WanderZone
  l0.NPC = self.Escort_RearRightPassengerID
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_107"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|87147815"
  l0.Out = self.f_box_AI_Agent_Zone_107_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|800646557", "800646557", "Prepare Convoy", "box_Compare_Boolean_v2_118.A_is_False", "box_AI_Agent_Zone_107.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Compare_Boolean_v2_118_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.UpdatedWanderZone
  l0.NPC = self.Escort_RearRightPassengerID
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_119"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1906014093"
  l0.Out = self.f_box_AI_Agent_Zone_119_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|13477787", "13477787", "Prepare Convoy", "box_Compare_Boolean_v2_118.A_is_True", "box_AI_Agent_Zone_119.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_AI_Agent_Zone_107_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_108()
  l0 = self.box_MultipleOR_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1168049557", "1168049557", "Prepare Convoy", "box_AI_Agent_Zone_107.Out", "box_MultipleOR_108.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Test_if_Nil_9_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_59()
  l0 = self.box_MultipleOR_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1184291792", "1184291792", "Prepare Convoy", "box_Test_if_Nil_9.Is_nil", "box_MultipleOR_59.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_9_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_74
  l0.Vehicle = self.EscortVehicleID
  l0.UseAnimation = 1
  l0.WalkType = "Walk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|376415230", "376415230", "Prepare Convoy", "box_Test_if_Nil_9.Is_not_nil", "box_VehicleSeatingController_74.Unassign", clone, l0)
  l0:Unassign()
end
function export:f_box_ListLength_43_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.ConvoyConfig
  l0.ObjectiveText = nil
  l0.InConvoyId = nil
  l0._graph = self
  l0._name = "box_ConvoyController_87"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|246296184"
  l0.Started = self.f_box_ConvoyController_87_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2002598608", "2002598608", "Prepare Convoy", "box_ListLength_43.Empty", "box_ConvoyController_87.Start", clone, l0)
  l0:Start()
end
function export:f_box_ListLength_43_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.ConvoyConfig
  l0.ObjectiveText = nil
  l0.InConvoyId = nil
  l0._graph = self
  l0._name = "box_ConvoyController_25"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1049531639"
  l0.Started = self.f_box_ConvoyController_25_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|321626407", "321626407", "Prepare Convoy", "box_ListLength_43.NotEmpty", "box_ConvoyController_25.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_58
  l0.Vehicle = self.vipVehicle
  l0.Pawn = self.Vip
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1042277983", "1042277983", "Prepare Convoy", "box_Ordered_Output_2.Out", "box_VehicleSeatingController_58.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_91()
  l0 = self.box_Multiple_AND_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|734211893", "734211893", "Prepare Convoy", "box_Ordered_Output_2.Out", "box_Multiple_AND_91.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Test_if_Nil_19_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.tempListNPCs
  l0._graph = self
  l0._name = "box_ListLength_43"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|96730663"
  l0.Out = DummyFunction
  l0.Empty = self.f_box_ListLength_43_Empty
  l0.NotEmpty = self.f_box_ListLength_43_NotEmpty
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|27276457", "27276457", "Prepare Convoy", "box_Test_if_Nil_19.Is_nil", "box_ListLength_43.GetLength", clone, l0)
  l0:GetLength()
end
function export:f_box_Test_if_Nil_19_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = self.tempListVehicles
  l0.ConvoyConfig = self.ConvoyConfig
  l0.ObjectiveText = nil
  l0.InConvoyId = nil
  l0._graph = self
  l0._name = "box_ConvoyController_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1445679365"
  l0.Started = self.f_box_ConvoyController_27_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|648815163", "648815163", "Prepare Convoy", "box_Test_if_Nil_19.Is_not_nil", "box_ConvoyController_27.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_97_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortDriver_WanderZone
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_99"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1963064303"
  l0.Is_nil = self.f_box_Test_if_Nil_99_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_99_Is_not_nil
  l0 = self.box_MultipleOR_97
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|539239032", "539239032", "Prepare Convoy", "box_MultipleOR_97.Out", "box_Test_if_Nil_99.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingController_66_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_VehicleSeatingController_66
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1305665523", "1305665523", "Prepare Convoy", "box_VehicleSeatingController_66.AssignCompleted", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_128_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_128
  self.VehicleEscortDestroyed = l0.Target
end
function export:f_box_SetBoolean_v2_128_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_128
  self.VehicleEscortDestroyed = l0.Target
end
function export:f_box_SetBoolean_v2_128_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_128
  self.VehicleEscortDestroyed = l0.Target
end
function export:f_box_SetBoolean_v2_128_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_128
  self.VehicleEscortDestroyed = l0.Target
  self:OnEnter_box_MultipleOR_122()
  l1 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|483882204", "483882204", "Prepare Convoy", "box_SetBoolean_v2_128.SetTrue", "box_MultipleOR_122.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_128_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_128
  self.VehicleEscortDestroyed = l0.Target
end
function export:f_box_Test_if_Nil_109_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_108()
  l0 = self.box_MultipleOR_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2070568996", "2070568996", "Prepare Convoy", "box_Test_if_Nil_109.Is_nil", "box_MultipleOR_108.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_109_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Updated
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_118"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|71839662"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_118_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_118_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1445654197", "1445654197", "Prepare Convoy", "box_Test_if_Nil_109.Is_not_nil", "box_Compare_Boolean_v2_118.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_115_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.EscortFrontPassenger_WanderZone
  l0.NPC = self.Escort_FrontPassengerID
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_103"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|257751856"
  l0.Out = self.f_box_AI_Agent_Zone_103_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1946263318", "1946263318", "Prepare Convoy", "box_Compare_Boolean_v2_115.A_is_False", "box_AI_Agent_Zone_103.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Compare_Boolean_v2_115_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.UpdatedWanderZone
  l0.NPC = self.Escort_FrontPassengerID
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_114"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|60898599"
  l0.Out = self.f_box_AI_Agent_Zone_114_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|142051951", "142051951", "Prepare Convoy", "box_Compare_Boolean_v2_115.A_is_True", "box_AI_Agent_Zone_114.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_VehicleSeatingController_82_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_31
  l0.Input = self.tempListNPCs
  l0.Data[0] = self.Escort_DriverID
  l0 = self.box_VehicleSeatingController_82
  l1 = self.box_ListWriter_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1075616142", "1075616142", "Prepare Convoy", "box_VehicleSeatingController_82.AssignCompleted", "box_ListWriter_31.Add", l0, l1)
  l1:Add()
end
function export:f_box_ConvoyController_87_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|762168275", "762168275", "Prepare Convoy", "box_ConvoyController_87.Started", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_121_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_125()
  l0 = self.box_MultipleOR_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1948962131", "1948962131", "Prepare Convoy", "box_Compare_Boolean_v2_121.A_is_False", "box_MultipleOR_125.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Compare_Boolean_v2_86_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_66
  l0.Vehicle = self.EscortVehicleID
  l0.Pawn = self.Escort_RearRightPassengerID
  l0.Seat = "RearPassengerRight"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|879386896", "879386896", "Prepare Convoy", "box_Compare_Boolean_v2_86.A_is_False", "box_VehicleSeatingController_66.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Compare_Boolean_v2_86_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_14
  l0.Vehicle = self.vipVehicle
  l0.Pawn = self.Escort_RearRightPassengerID
  l0.Seat = "RearPassengerRight"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1195894740", "1195894740", "Prepare Convoy", "box_Compare_Boolean_v2_86.A_is_True", "box_VehicleSeatingController_14.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_AI_Agent_Zone_103_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_105()
  l0 = self.box_MultipleOR_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1225371921", "1225371921", "Prepare Convoy", "box_AI_Agent_Zone_103.Out", "box_MultipleOR_105.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Test_if_Nil_18_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|634510081", "634510081", "Prepare Convoy", "box_Test_if_Nil_18.Is_nil", "box_MultipleOR_24.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_18_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_10
  l0.CLO = self.EscortCLO_RearRightPassenger
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|231688997", "231688997", "Prepare Convoy", "box_Test_if_Nil_18.Is_not_nil", "box_CLOController_10.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_OnceOnly_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_1
  l1 = self.box_SetBoolean_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|695302811", "695302811", "Prepare Convoy", "box_OnceOnly_v3_1.Out", "box_SetBoolean_v2_21.True", l0, l1)
  l1:True()
end
function export:f_box_Ordered_Output_47_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_92()
  l0 = self.box_OnceOnly_v3_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|544723278", "544723278", "Prepare Convoy", "box_Ordered_Output_47.Out", "box_OnceOnly_v3_92.In", clone, l0)
  l0:In(1)
end
function export:f_box_Ordered_Output_47_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|557954667", "557954667", "Prepare Convoy", "box_Ordered_Output_47.Out", "ConvoyStopped", clone, self)
  self:ConvoyStopped()
end
function export:f_box_VehicleSeatingController_52_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_VehicleSeatingController_52
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|756926037", "756926037", "Prepare Convoy", "box_VehicleSeatingController_52.AssignCompleted", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Set_Entity_62_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Escort_RearLeftPassenger = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.NoEscortVehicle
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1800140268"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_35_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_35_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|35632760", "35632760", "Prepare Convoy", "box_Set_Entity_62.Out", "box_Compare_Boolean_v2_35.In", clone, l0)
  l0:In()
end
function export:f_box_ListLength_88_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Updated_Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.Updated_ConvoyConfig
  l0.ObjectiveText = nil
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0._name = "box_ConvoyController_83"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|346191080"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|8366515", "8366515", "Prepare Convoy", "box_ListLength_88.Empty", "box_ConvoyController_83.Update", clone, l0)
  l0:Update()
end
function export:f_box_ListLength_88_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Updated_Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = nil
  l0.ConvoyConfig = self.Updated_ConvoyConfig
  l0.ObjectiveText = nil
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0._name = "box_ConvoyController_77"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|670151130"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2086526474", "2086526474", "Prepare Convoy", "box_ListLength_88.NotEmpty", "box_ConvoyController_77.Update", clone, l0)
  l0:Update()
end
function export:f_box_Test_if_Nil_106_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_105()
  l0 = self.box_MultipleOR_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1398409128", "1398409128", "Prepare Convoy", "box_Test_if_Nil_106.Is_nil", "box_MultipleOR_105.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_106_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Updated
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_115"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|195051915"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_115_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_115_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|61935182", "61935182", "Prepare Convoy", "box_Test_if_Nil_106.Is_not_nil", "box_Compare_Boolean_v2_115.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_108_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1350114080", "1350114080", "Prepare Convoy", "box_MultipleOR_108.Out", "NPCsUnassigned", l0, self)
  self:NPCsUnassigned()
end
function export:f_box_ListWriter_80_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_80
  self.tempListNPCs = l0.Target
  self:OnEnter_box_MultipleOR_53()
  l1 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1502955873", "1502955873", "Prepare Convoy", "box_ListWriter_80.Added", "box_MultipleOR_53.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListWriter_80_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_80
  self.tempListNPCs = l0.Target
end
function export:f_box_ListWriter_80_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_80
  self.tempListNPCs = l0.Target
end
function export:f_box_Ordered_Output_51_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|663273381", "663273381", "Prepare Convoy", "box_Ordered_Output_51.Out", "box_MultipleOR_67.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_51_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1322462887", "1322462887", "Prepare Convoy", "box_Ordered_Output_51.Out", "ConvoyStuck", clone, self)
  self:ConvoyStuck()
end
function export:f_box_MultipleOR_79_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_33()
  l0 = self.box_MultipleOR_79
  l1 = self.box_Multiple_AND_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1594483100", "1594483100", "Prepare Convoy", "box_MultipleOR_79.Out", "box_Multiple_AND_33.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_SetBoolean_v2_21_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.Updated = l0.Target
end
function export:f_box_SetBoolean_v2_21_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.Updated = l0.Target
end
function export:f_box_SetBoolean_v2_21_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.Updated = l0.Target
end
function export:f_box_SetBoolean_v2_21_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.Updated = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortVehicleID
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|661024435"
  l0.Is_nil = self.f_box_Test_if_Nil_15_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_15_Is_not_nil
  l0 = self.box_SetBoolean_v2_21
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1892852959", "1892852959", "Prepare Convoy", "box_SetBoolean_v2_21.SetTrue", "box_Test_if_Nil_15.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_21_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.Updated = l0.Target
end
function export:f_box_SetBoolean_v2_126_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_126
  self.VehicleVIPDestroyed = l0.Target
end
function export:f_box_SetBoolean_v2_126_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_126
  self.VehicleVIPDestroyed = l0.Target
end
function export:f_box_SetBoolean_v2_126_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_126
  self.VehicleVIPDestroyed = l0.Target
end
function export:f_box_SetBoolean_v2_126_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_126
  self.VehicleVIPDestroyed = l0.Target
  self:OnEnter_box_MultipleOR_6()
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|127279422", "127279422", "Prepare Convoy", "box_SetBoolean_v2_126.SetTrue", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_126_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_126
  self.VehicleVIPDestroyed = l0.Target
end
function export:f_box_MultipleOR_38_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_57
  l0.Input = self.tempListNPCs
  l0.Data[0] = self.Escort_FrontPassengerID
  l0 = self.box_MultipleOR_38
  l1 = self.box_ListWriter_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1381317251", "1381317251", "Prepare Convoy", "box_MultipleOR_38.Out", "box_ListWriter_57.Add", l0, l1)
  l1:Add()
end
function export:f_box_MultipleOR_46_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_91()
  l0 = self.box_MultipleOR_46
  l1 = self.box_Multiple_AND_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|546537904", "546537904", "Prepare Convoy", "box_MultipleOR_46.Out", "box_Multiple_AND_91.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_VehicleSeatingController_30_UnassignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_VehicleSeatingController_30
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|128811827", "128811827", "Prepare Convoy", "box_VehicleSeatingController_30.UnassignCompleted", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_VehicleSeatingController_72_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_VehicleSeatingController_72
  l1 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1162016435", "1162016435", "Prepare Convoy", "box_VehicleSeatingController_72.AssignCompleted", "box_MultipleOR_17.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Test_if_Nil_15_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.tempListNPCs
  l0._graph = self
  l0._name = "box_ListLength_88"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|338132898"
  l0.Out = DummyFunction
  l0.Empty = self.f_box_ListLength_88_Empty
  l0.NotEmpty = self.f_box_ListLength_88_NotEmpty
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|182969785", "182969785", "Prepare Convoy", "box_Test_if_Nil_15.Is_nil", "box_ListLength_88.GetLength", clone, l0)
  l0:GetLength()
end
function export:f_box_Test_if_Nil_15_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = self.Updated_Destination
  l0.VIPCharacter = self.Vip
  l0.VIPVehicle = self.vipVehicle
  l0.EscortCharacters = self.tempListNPCs
  l0.EscortVehicles = self.tempListVehicles
  l0.ConvoyConfig = self.Updated_ConvoyConfig
  l0.ObjectiveText = nil
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0._name = "box_ConvoyController_69"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|423362730"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|310629264", "310629264", "Prepare Convoy", "box_Test_if_Nil_15.Is_not_nil", "box_ConvoyController_69.Update", clone, l0)
  l0:Update()
end
function export:f_box_Ordered_Output_89_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|800429845", "800429845", "Prepare Convoy", "box_Ordered_Output_89.Out", "VipVehicleDestroyed", clone, self)
  self:VipVehicleDestroyed()
end
function export:f_box_Ordered_Output_89_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1905243563", "1905243563", "Prepare Convoy", "box_Ordered_Output_89.Out", "box_SetBoolean_v2_126.True", clone, l0)
  l0:True()
end
function export:f_box_MultipleOR_105_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortRearLeftPassenger_WanderZone
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_102"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1150007700"
  l0.Is_nil = self.f_box_Test_if_Nil_102_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_102_Is_not_nil
  l0 = self.box_MultipleOR_105
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1791604043", "1791604043", "Prepare Convoy", "box_MultipleOR_105.Out", "box_Test_if_Nil_102.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadRelationshipController_123_RelationshipSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IgnorePlayer
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_121"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|251465751"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_121_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_AISquadRelationshipController_123
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1632533734", "1632533734", "Prepare Convoy", "box_AISquadRelationshipController_123.RelationshipSet", "box_Compare_Boolean_v2_121.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingController_74_UnassignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_59()
  l0 = self.box_VehicleSeatingController_74
  l1 = self.box_MultipleOR_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|120963758", "120963758", "Prepare Convoy", "box_VehicleSeatingController_74.UnassignCompleted", "box_MultipleOR_59.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_AI_Agent_Zone_95_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_97()
  l0 = self.box_MultipleOR_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|683090164", "683090164", "Prepare Convoy", "box_AI_Agent_Zone_95.Out", "box_MultipleOR_97.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_55_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1787218533", "1787218533", "Prepare Convoy", "box_Ordered_Output_55.Out", "ConvoyAggroNotPlayer", clone, self)
  self:ConvoyAggroNotPlayer()
end
function export:f_box_Ordered_Output_55_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_1()
  l0 = self.box_OnceOnly_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|30527191", "30527191", "Prepare Convoy", "box_Ordered_Output_55.Out", "box_OnceOnly_v3_1.In", clone, l0)
  l0:In(0)
end
function export:f_box_Test_if_Nil_41_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_90()
  l0 = self.box_SetBoolean_v2_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2050404504", "2050404504", "Prepare Convoy", "box_Test_if_Nil_41.Is_nil", "box_SetBoolean_v2_90.True", clone, l0)
  l0:True()
end
function export:f_box_Test_if_Nil_41_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_4
  l0.CLO = self.EscortVehicleCLO
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1704635", "1704635", "Prepare Convoy", "box_Test_if_Nil_41.Is_not_nil", "box_CLOController_4.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_AI_Agent_Zone_117_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1763955192", "1763955192", "Prepare Convoy", "box_AI_Agent_Zone_117.Out", "box_MultipleOR_104.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_OnceOnly_v3_92_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1585049089"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  l0.Out[2] = DummyFunction
  l0 = self.box_OnceOnly_v3_92
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1733858789", "1733858789", "Prepare Convoy", "box_OnceOnly_v3_92.Out", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_22_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_75"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|909663755"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_75_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_75_Out_1
  l0 = self.box_Timer_v2_22
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|261252427", "261252427", "Prepare Convoy", "box_Timer_v2_22.TimeElapsed", "box_Ordered_Output_75.In", l0, l1)
  l1:In()
end
function export:f_box_SetInteger_v2_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.ConvoyID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1798748183", "1798748183", "Prepare Convoy", "box_SetInteger_v2_45.Out", "ConvoyStarted", clone, self)
  self:ConvoyStarted()
end
function export:f_box_MultipleOR_24_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_33()
  l0 = self.box_MultipleOR_24
  l1 = self.box_Multiple_AND_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|654903385", "654903385", "Prepare Convoy", "box_MultipleOR_24.Out", "box_Multiple_AND_33.Condition", l0, l1)
  l1:Condition(4)
end
function export:f_box_MultipleOR_125_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2022107911"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0 = self.box_MultipleOR_125
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1036800445", "1036800445", "Prepare Convoy", "box_MultipleOR_125.Out", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_75_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.VehicleVIPDestroyed
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_127"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1026235134"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_127_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_127_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|118862973", "118862973", "Prepare Convoy", "box_Ordered_Output_75.Out", "box_Compare_Boolean_v2_127.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_75_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.VehicleEscortDestroyed
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_129"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1703595175"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_129_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_129_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|844985261", "844985261", "Prepare Convoy", "box_Ordered_Output_75.Out", "box_Compare_Boolean_v2_129.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Instigator
  l0.Entity2 = self.Player
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_85"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1789873611"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_85_Equal
  l0.NotEqual = self.f_box_Compare_Entity_v2_85_NotEqual
  l0 = self.box_MultipleOR_6
  l1 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1667115437", "1667115437", "Prepare Convoy", "box_MultipleOR_6.Out", "box_Compare_Entity_v2_85.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_31_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_31
  self.tempListNPCs = l0.Target
  self:OnEnter_box_MultipleOR_79()
  l1 = self.box_MultipleOR_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2092694824", "2092694824", "Prepare Convoy", "box_ListWriter_31.Added", "box_MultipleOR_79.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListWriter_31_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_31
  self.tempListNPCs = l0.Target
end
function export:f_box_ListWriter_31_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_31
  self.tempListNPCs = l0.Target
end
function export:f_box_Test_if_Nil_78_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1597949675", "1597949675", "Prepare Convoy", "box_Test_if_Nil_78.Is_nil", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_78_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_30
  l0.Vehicle = self.vipVehicle
  l0.UseAnimation = 1
  l0.WalkType = "Walk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1049715914", "1049715914", "Prepare Convoy", "box_Test_if_Nil_78.Is_not_nil", "box_VehicleSeatingController_30.Unassign", clone, l0)
  l0:Unassign()
end
function export:f_box_Compare_Boolean_v2_127_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VipVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_78"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1005496369"
  l0.Is_nil = self.f_box_Test_if_Nil_78_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_78_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1695373494", "1695373494", "Prepare Convoy", "box_Compare_Boolean_v2_127.A_is_False", "box_Test_if_Nil_78.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_127_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1933072769", "1933072769", "Prepare Convoy", "box_Compare_Boolean_v2_127.A_is_True", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_VehicleSeatingController_60_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_VehicleSeatingController_60
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|743360272", "743360272", "Prepare Convoy", "box_VehicleSeatingController_60.AssignCompleted", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ConvoyController_68_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_47"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|312391865"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_47_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_47_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1252889872", "1252889872", "Prepare Convoy", "box_ConvoyController_68.Stopped", "box_Ordered_Output_47.In", clone, l0)
  l0:In()
end
function export:f_box_ConvoyController_25_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1946624384", "1946624384", "Prepare Convoy", "box_ConvoyController_25.Started", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ListWriter_34_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_34
  self.All_NPCs = l0.Target
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.All_NPCs
  l0._graph = self
  l0._name = "box_Set_List_39"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1564188899"
  l0.Out = self.f_box_Set_List_39_Out
  l0 = self.box_ListWriter_34
  l1 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|383619448", "383619448", "Prepare Convoy", "box_ListWriter_34.Added", "box_Set_List_39.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_ListWriter_34_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_34
  self.All_NPCs = l0.Target
end
function export:f_box_ListWriter_34_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_34
  self.All_NPCs = l0.Target
end
function export:f_box_CLOController_64_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_64
  self.Vip = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Vip
  l0._graph = self
  l0._name = "box_Set_Entity_37"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1895669182"
  l0.Out = self.f_box_Set_Entity_37_Out
  l0 = self.box_CLOController_64
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|817992563", "817992563", "Prepare Convoy", "box_CLOController_64.OnUserInPlace", "box_Set_Entity_37.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_SwitchOutput_v3_63_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_1()
  l0 = self.box_SwitchOutput_v3_63
  l1 = self.box_OnceOnly_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1193020512", "1193020512", "Prepare Convoy", "box_SwitchOutput_v3_63.Output", "box_OnceOnly_v3_1.In", l0, l1)
  l1:In(1)
end
function export:f_box_SwitchOutput_v3_63_Output_1()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_51"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|448567764"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_51_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_51_Out_1
  l0 = self.box_SwitchOutput_v3_63
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|847248986", "847248986", "Prepare Convoy", "box_SwitchOutput_v3_63.Output", "box_Ordered_Output_51.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_102_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|216995455", "216995455", "Prepare Convoy", "box_Test_if_Nil_102.Is_nil", "box_MultipleOR_104.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_102_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Updated
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_116"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1714155815"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_116_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_116_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1206155254", "1206155254", "Prepare Convoy", "box_Test_if_Nil_102.Is_not_nil", "box_Compare_Boolean_v2_116.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_50_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1221768370", "1221768370", "Prepare Convoy", "box_Ordered_Output_50.Out", "Started", clone, self)
  self:Started()
end
function export:f_box_Ordered_Output_50_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortVehicleID
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|128260529"
  l0.Is_nil = self.f_box_Test_if_Nil_19_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_19_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|669182197", "669182197", "Prepare Convoy", "box_Ordered_Output_50.Out", "box_Test_if_Nil_19.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleSeatingController_14_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_VehicleSeatingController_14
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1155163797", "1155163797", "Prepare Convoy", "box_VehicleSeatingController_14.AssignCompleted", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_7_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_7
  self.tempListNPCs = l0.Target
  self:OnEnter_box_MultipleOR_24()
  l1 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1508071147", "1508071147", "Prepare Convoy", "box_ListWriter_7.Added", "box_MultipleOR_24.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListWriter_7_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_7
  self.tempListNPCs = l0.Target
end
function export:f_box_ListWriter_7_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_7
  self.tempListNPCs = l0.Target
end
function export:f_box_CLOController_48_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_48
  self.Escort_DriverID = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Escort_DriverID
  l0._graph = self
  l0._name = "box_Set_Entity_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2063710891"
  l0.Out = self.f_box_Set_Entity_13_Out
  l0 = self.box_CLOController_48
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|194340086", "194340086", "Prepare Convoy", "box_CLOController_48.OnUserInPlace", "box_Set_Entity_13.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_AISquadRelationshipController_49_RelationshipSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_125()
  l0 = self.box_AISquadRelationshipController_49
  l1 = self.box_MultipleOR_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1317407498", "1317407498", "Prepare Convoy", "box_AISquadRelationshipController_49.RelationshipSet", "box_MultipleOR_125.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_57_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_57
  self.tempListNPCs = l0.Target
  self:OnEnter_box_MultipleOR_70()
  l1 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1614287082", "1614287082", "Prepare Convoy", "box_ListWriter_57.Added", "box_MultipleOR_70.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListWriter_57_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_57
  self.tempListNPCs = l0.Target
end
function export:f_box_ListWriter_57_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_57
  self.tempListNPCs = l0.Target
end
function export:f_box_ListWriter_32_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_32
  self.tempListVehicles = l0.Target
  self:OnEnter_box_SetBoolean_v2_90()
  l1 = self.box_SetBoolean_v2_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2077816875", "2077816875", "Prepare Convoy", "box_ListWriter_32.Added", "box_SetBoolean_v2_90.False", l0, l1)
  l1:False()
end
function export:f_box_ListWriter_32_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_32
  self.tempListVehicles = l0.Target
end
function export:f_box_ListWriter_32_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_32
  self.tempListVehicles = l0.Target
end
function export:f_box_Ordered_Output_71_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|300247640", "300247640", "Prepare Convoy", "box_Ordered_Output_71.Out", "DestinationReached", clone, self)
  self:DestinationReached()
end
function export:f_box_Ordered_Output_71_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_92()
  l0 = self.box_OnceOnly_v3_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1479912765", "1479912765", "Prepare Convoy", "box_Ordered_Output_71.Out", "box_OnceOnly_v3_92.In", clone, l0)
  l0:In(0)
end
function export:f_box_Test_if_Nil_73_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|135017698", "135017698", "Prepare Convoy", "box_Test_if_Nil_73.Is_nil", "box_MultipleOR_53.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_73_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_56
  l0.CLO = self.EscortCLO_RearLeftPassenger
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1841051028", "1841051028", "Prepare Convoy", "box_Test_if_Nil_73.Is_not_nil", "box_CLOController_56.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_36_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_36
  self.vipVehicle = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.vipVehicle
  l0._graph = self
  l0._name = "box_Set_Entity_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1774641580"
  l0.Out = self.f_box_Set_Entity_40_Out
  l0 = self.box_CLOController_36
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|801258198", "801258198", "Prepare Convoy", "box_CLOController_36.OnUserInPlace", "box_Set_Entity_40.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_Test_if_Nil_96_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_97()
  l0 = self.box_MultipleOR_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1633893746", "1633893746", "Prepare Convoy", "box_Test_if_Nil_96.Is_nil", "box_MultipleOR_97.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_96_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Updated
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_110"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2077413307"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_110_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_110_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2070846101", "2070846101", "Prepare Convoy", "box_Test_if_Nil_96.Is_not_nil", "box_Compare_Boolean_v2_110.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_10_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_10
  self.Escort_RearRightPassengerID = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Escort_RearRightPassengerID
  l0._graph = self
  l0._name = "box_Set_Entity_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1678060227"
  l0.Out = self.f_box_Set_Entity_5_Out
  l0 = self.box_CLOController_10
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|80021667", "80021667", "Prepare Convoy", "box_CLOController_10.OnUserInPlace", "box_Set_Entity_5.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_Compare_Boolean_v2_23_A_or_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_52
  l0.Vehicle = self.vipVehicle
  l0.Pawn = self.Escort_FrontPassengerID
  l0.Seat = "FrontPassenger"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|246290264", "246290264", "Prepare Convoy", "box_Compare_Boolean_v2_23.A_or_B", "box_VehicleSeatingController_52.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Compare_Boolean_v2_23_notA_and_notB()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_60
  l0.Vehicle = self.EscortVehicleID
  l0.Pawn = self.Escort_FrontPassengerID
  l0.Seat = "FrontPassenger"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1170374451", "1170374451", "Prepare Convoy", "box_Compare_Boolean_v2_23.notA_and_notB", "box_VehicleSeatingController_60.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_ConvoyController_27_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.convoyID = l0.OutConvoyId
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1492181375", "1492181375", "Prepare Convoy", "box_ConvoyController_27.Started", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_CLOController_42_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_42
  self.Escort_FrontPassengerID = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Escort_FrontPassengerID
  l0._graph = self
  l0._name = "box_Set_Entity_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1643344675"
  l0.Out = self.f_box_Set_Entity_29_Out
  l0 = self.box_CLOController_42
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1805476125", "1805476125", "Prepare Convoy", "box_CLOController_42.OnUserInPlace", "box_Set_Entity_29.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_Multiple_AND_28_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|121747396"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_Multiple_AND_28
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|684631778", "684631778", "Prepare Convoy", "box_Multiple_AND_28.Out", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_56_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_56
  self.Escort_RearLeftPassengerID = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Escort_RearLeftPassengerID
  l0._graph = self
  l0._name = "box_Set_Entity_62"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|323299480"
  l0.Out = self.f_box_Set_Entity_62_Out
  l0 = self.box_CLOController_56
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|287943264", "287943264", "Prepare Convoy", "box_CLOController_56.OnUserInPlace", "box_Set_Entity_62.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_80
  l0.Input = self.tempListNPCs
  l0.Data[0] = self.Escort_RearLeftPassengerID
  l0 = self.box_MultipleOR_17
  l1 = self.box_ListWriter_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1513928472", "1513928472", "Prepare Convoy", "box_MultipleOR_17.Out", "box_ListWriter_80.Add", l0, l1)
  l1:Add()
end
function export:f_box_Multiple_AND_26_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Vip_WanderZone
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_96"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1329578527"
  l0.Is_nil = self.f_box_Test_if_Nil_96_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_96_Is_not_nil
  l0 = self.box_Multiple_AND_26
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1146272522", "1146272522", "Prepare Convoy", "box_Multiple_AND_26.Out", "box_Test_if_Nil_96.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_104_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortRearRightPassenger_WanderZone
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_109"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|173253968"
  l0.Is_nil = self.f_box_Test_if_Nil_109_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_109_Is_not_nil
  l0 = self.box_MultipleOR_104
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|196419306", "196419306", "Prepare Convoy", "box_MultipleOR_104.Out", "box_Test_if_Nil_109.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_93_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_7
  l0.Input = self.tempListNPCs
  l0.Data[0] = self.Escort_RearRightPassengerID
  l0 = self.box_MultipleOR_93
  l1 = self.box_ListWriter_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|502308822", "502308822", "Prepare Convoy", "box_MultipleOR_93.Out", "box_ListWriter_7.Add", l0, l1)
  l1:Add()
end
function export:f_box_Set_List_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.AllNPCs = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1786237884", "1786237884", "Prepare Convoy", "box_Set_List_39.Out", "Prepped", clone, self)
  self:Prepped()
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AutoUnassign
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_54"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1982926094"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_54_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|512440468", "512440468", "Prepare Convoy", "box_Ordered_Output_11.Out", "box_Compare_Boolean_v2_54.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ConvoyMonitor_20()
  l0 = self.box_ConvoyMonitor_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|587197703", "587197703", "Prepare Convoy", "box_Ordered_Output_11.Out", "box_ConvoyMonitor_20.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_53_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_33()
  l0 = self.box_MultipleOR_53
  l1 = self.box_Multiple_AND_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|987655773", "987655773", "Prepare Convoy", "box_MultipleOR_53.Out", "box_Multiple_AND_33.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_AI_Agent_Zone_111_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_97()
  l0 = self.box_MultipleOR_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|382413057", "382413057", "Prepare Convoy", "box_AI_Agent_Zone_111.Out", "box_MultipleOR_97.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_122_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Instigator
  l0.Entity2 = self.Player
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_124"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1943280957"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_124_Equal
  l0.NotEqual = self.f_box_Compare_Entity_v2_124_NotEqual
  l0 = self.box_MultipleOR_122
  l1 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|97646274", "97646274", "Prepare Convoy", "box_MultipleOR_122.Out", "box_Compare_Entity_v2_124.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_26()
  l0 = self.box_MultipleOR_8
  l1 = self.box_Multiple_AND_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|125462339", "125462339", "Prepare Convoy", "box_MultipleOR_8.Out", "box_Multiple_AND_26.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Set_Entity_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Escort_FrontPassenger = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FrontPassenger_WithVIP
  l0.B = self.NoEscortVehicle
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1416258481"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = self.f_box_Compare_Boolean_v2_23_notA_and_notB
  l0.A_or_B = self.f_box_Compare_Boolean_v2_23_A_or_B
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1311466174", "1311466174", "Prepare Convoy", "box_Set_Entity_29.Out", "box_Compare_Boolean_v2_23.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_76_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_36
  l0.CLO = self.VipVehicleCLO
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|752620243", "752620243", "Prepare Convoy", "box_Ordered_Output_76.Out", "box_CLOController_36.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_76_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_64
  l0.CLO = self.VipCLO
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|892580731", "892580731", "Prepare Convoy", "box_Ordered_Output_76.Out", "box_CLOController_64.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_76_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|766655119"
  l0.Is_nil = self.f_box_Test_if_Nil_41_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_41_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|389419774", "389419774", "Prepare Convoy", "box_Ordered_Output_76.Out", "box_Test_if_Nil_41.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_76_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1003124092", "1003124092", "Prepare Convoy", "box_Ordered_Output_76.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_Test_if_Nil_94_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_79()
  l0 = self.box_MultipleOR_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|482546371", "482546371", "Prepare Convoy", "box_Test_if_Nil_94.Is_nil", "box_MultipleOR_79.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_94_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_48
  l0.CLO = self.EscortCLO_Driver
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1230323828", "1230323828", "Prepare Convoy", "box_Test_if_Nil_94.Is_not_nil", "box_CLOController_48.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Set_Entity_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Escort_RearRightPassenger = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.NoEscortVehicle
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_86"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|257255359"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_86_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_86_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|200002554", "200002554", "Prepare Convoy", "box_Set_Entity_5.Out", "box_Compare_Boolean_v2_86.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_44_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1469924792", "1469924792", "Prepare Convoy", "box_Ordered_Output_44.Out", "VIPDied", clone, self)
  self:VIPDied()
end
function export:f_box_Ordered_Output_44_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1617810873", "1617810873", "Prepare Convoy", "box_Ordered_Output_44.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_129_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|93662171"
  l0.Is_nil = self.f_box_Test_if_Nil_9_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_9_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2118702169", "2118702169", "Prepare Convoy", "box_Compare_Boolean_v2_129.A_is_False", "box_Test_if_Nil_9.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_129_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_59()
  l0 = self.box_MultipleOR_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2069065638", "2069065638", "Prepare Convoy", "box_Compare_Boolean_v2_129.A_is_True", "box_MultipleOR_59.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_OnceOnly_v3_120_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = self.convoyID
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_45"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|852750892"
  l0.Out = self.f_box_SetInteger_v2_45_Out
  l0 = self.box_OnceOnly_v3_120
  l1 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1962198454", "1962198454", "Prepare Convoy", "box_OnceOnly_v3_120.Out", "box_SetInteger_v2_45.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Compare_Boolean_v2_116_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.EscortRearLeftPassenger_WanderZone
  l0.NPC = self.Escort_RearLeftPassengerID
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_100"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1885447250"
  l0.Out = self.f_box_AI_Agent_Zone_100_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|793031897", "793031897", "Prepare Convoy", "box_Compare_Boolean_v2_116.A_is_False", "box_AI_Agent_Zone_100.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Compare_Boolean_v2_116_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.UpdatedWanderZone
  l0.NPC = self.Escort_RearLeftPassengerID
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_117"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|768263130"
  l0.Out = self.f_box_AI_Agent_Zone_117_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1930215674", "1930215674", "Prepare Convoy", "box_Compare_Boolean_v2_116.A_is_True", "box_AI_Agent_Zone_117.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Get_Player_ID_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ConvoyMonitor_20()
  l0 = self.box_ConvoyMonitor_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1239810214", "1239810214", "Prepare Convoy", "box_Get_Player_ID_16.Out", "box_ConvoyMonitor_20.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1721676075"
  l0.Out = self.f_box_Get_Player_ID_16_Out
  l0 = self.box_MultipleOR_12
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|85580914", "85580914", "Prepare Convoy", "box_MultipleOR_12.Out", "box_Get_Player_ID_16.In", l0, l1)
  l1:In()
end
function export:f_box_Set_Entity_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.VipVehicleID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_28()
  l0 = self.box_Multiple_AND_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1878311361", "1878311361", "Prepare Convoy", "box_Set_Entity_40.Out", "box_Multiple_AND_28.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Compare_Entity_v2_85_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadRelationshipController_49
  l0.Affiliation = self.Affiliation
  l0.Relationship = "Threat"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1392287222", "1392287222", "Prepare Convoy", "box_Compare_Entity_v2_85.Equal", "box_AISquadRelationshipController_49.SetRelationship", clone, l0)
  l0:SetRelationship()
end
function export:f_box_Compare_Entity_v2_85_NotEqual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_125()
  l0 = self.box_MultipleOR_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|297576531", "297576531", "Prepare Convoy", "box_Compare_Entity_v2_85.NotEqual", "box_MultipleOR_125.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_35_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_72
  l0.Vehicle = self.EscortVehicleID
  l0.Pawn = self.Escort_RearLeftPassengerID
  l0.Seat = "RearPassengerLeft"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1832171488", "1832171488", "Prepare Convoy", "box_Compare_Boolean_v2_35.A_is_False", "box_VehicleSeatingController_72.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Compare_Boolean_v2_35_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_65
  l0.Vehicle = self.vipVehicle
  l0.Pawn = self.Escort_RearLeftPassengerID
  l0.Seat = "RearPassengerLeft"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1047922791", "1047922791", "Prepare Convoy", "box_Compare_Boolean_v2_35.A_is_True", "box_VehicleSeatingController_65.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_AI_Agent_Zone_100_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|426419887", "426419887", "Prepare Convoy", "box_AI_Agent_Zone_100.Out", "box_MultipleOR_104.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_AI_Agent_Zone_112_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_101()
  l0 = self.box_MultipleOR_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1788997650", "1788997650", "Prepare Convoy", "box_AI_Agent_Zone_112.Out", "box_MultipleOR_101.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Set_Entity_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.VipID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_28()
  l0 = self.box_Multiple_AND_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1016554097", "1016554097", "Prepare Convoy", "box_Set_Entity_37.Out", "box_Multiple_AND_28.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_AI_Agent_Zone_119_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_108()
  l0 = self.box_MultipleOR_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|432976294", "432976294", "Prepare Convoy", "box_AI_Agent_Zone_119.Out", "box_MultipleOR_108.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_VehicleSeatingController_58_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_33()
  l0 = self.box_VehicleSeatingController_58
  l1 = self.box_Multiple_AND_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1435137219", "1435137219", "Prepare Convoy", "box_VehicleSeatingController_58.AssignCompleted", "box_Multiple_AND_33.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Multiple_AND_91_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_61"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1941605646"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_61_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_61_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_61_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_61_Out_3
  l0 = self.box_Multiple_AND_91
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|666629048", "666629048", "Prepare Convoy", "box_Multiple_AND_91.Out", "box_Ordered_Output_61.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_90_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_90
  self.NoEscortVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_90_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_90
  self.NoEscortVehicle = l0.Target
  self:OnEnter_box_MultipleOR_46()
  l1 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1588941399", "1588941399", "Prepare Convoy", "box_SetBoolean_v2_90.SetFalse", "box_MultipleOR_46.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_90_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_90
  self.NoEscortVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_90_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_90
  self.NoEscortVehicle = l0.Target
  self:OnEnter_box_MultipleOR_46()
  l1 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|990795567", "990795567", "Prepare Convoy", "box_SetBoolean_v2_90.SetTrue", "box_MultipleOR_46.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_90_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_90
  self.NoEscortVehicle = l0.Target
end
function export:f_box_Ordered_Output_61_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortVehicleCLO
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_94"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1675319530"
  l0.Is_nil = self.f_box_Test_if_Nil_94_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_94_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1752095043", "1752095043", "Prepare Convoy", "box_Ordered_Output_61.Out", "box_Test_if_Nil_94.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_61_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortCLO_FrontPassenger
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_81"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1976463898"
  l0.Is_nil = self.f_box_Test_if_Nil_81_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_81_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1378870061", "1378870061", "Prepare Convoy", "box_Ordered_Output_61.Out", "box_Test_if_Nil_81.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_61_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortCLO_RearLeftPassenger
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_73"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1320963018"
  l0.Is_nil = self.f_box_Test_if_Nil_73_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_73_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1552726615", "1552726615", "Prepare Convoy", "box_Ordered_Output_61.Out", "box_Test_if_Nil_73.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_61_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EscortCLO_RearRightPassenger
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|278326003"
  l0.Is_nil = self.f_box_Test_if_Nil_18_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_18_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1948134283", "1948134283", "Prepare Convoy", "box_Ordered_Output_61.Out", "box_Test_if_Nil_18.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Entity_v2_124_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadRelationshipController_123
  l0.Affiliation = self.Affiliation
  l0.Relationship = "Threat"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|366676876", "366676876", "Prepare Convoy", "box_Compare_Entity_v2_124.Equal", "box_AISquadRelationshipController_123.SetRelationship", clone, l0)
  l0:SetRelationship()
end
function export:f_box_Compare_Entity_v2_124_NotEqual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_55"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|757314223"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_55_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_55_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|208973604", "208973604", "Prepare Convoy", "box_Compare_Entity_v2_124.NotEqual", "box_Ordered_Output_55.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_99_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_101()
  l0 = self.box_MultipleOR_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2099026504", "2099026504", "Prepare Convoy", "box_Test_if_Nil_99.Is_nil", "box_MultipleOR_101.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_99_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Updated
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_113"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1967582973"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_113_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_113_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|216937829", "216937829", "Prepare Convoy", "box_Test_if_Nil_99.Is_not_nil", "box_Compare_Boolean_v2_113.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_113_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.EscortDriver_WanderZone
  l0.NPC = self.Escort_DriverID
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_98"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2108111240"
  l0.Out = self.f_box_AI_Agent_Zone_98_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1151348206", "1151348206", "Prepare Convoy", "box_Compare_Boolean_v2_113.A_is_False", "box_AI_Agent_Zone_98.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Compare_Boolean_v2_113_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.UpdatedWanderZone
  l0.NPC = self.Escort_DriverID
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_112"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1892203413"
  l0.Out = self.f_box_AI_Agent_Zone_112_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|588257003", "588257003", "Prepare Convoy", "box_Compare_Boolean_v2_113.A_is_True", "box_AI_Agent_Zone_112.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Test_if_Nil_81_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1874355594", "1874355594", "Prepare Convoy", "box_Test_if_Nil_81.Is_nil", "box_MultipleOR_70.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_81_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_42
  l0.CLO = self.EscortCLO_FrontPassenger
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1678661074", "1678661074", "Prepare Convoy", "box_Test_if_Nil_81.Is_not_nil", "box_CLOController_42.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Compare_Boolean_v2_54_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_22
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|302147328", "302147328", "Prepare Convoy", "box_Compare_Boolean_v2_54.A_is_True", "box_Timer_v2_22.Start", clone, l0)
  l0:Start()
end
function export:f_box_ConvoyMonitor_20_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_20
  self.Instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_20_ConvoyStuck()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_20
  l1 = self.box_SwitchOutput_v3_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2053824466", "2053824466", "Prepare Convoy", "box_ConvoyMonitor_20.ConvoyStuck", "box_SwitchOutput_v3_63.In", l0, l1)
  l1:In()
end
function export:f_box_ConvoyMonitor_20_DestinationReached()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_71"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1288965636"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_71_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_71_Out_1
  l0 = self.box_ConvoyMonitor_20
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1093018682", "1093018682", "Prepare Convoy", "box_ConvoyMonitor_20.DestinationReached", "box_Ordered_Output_71.In", l0, l1)
  l1:In()
end
function export:f_box_ConvoyMonitor_20_EscortDied()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_20
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_122()
  l1 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1261617539", "1261617539", "Prepare Convoy", "box_ConvoyMonitor_20.EscortDied", "box_MultipleOR_122.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ConvoyMonitor_20_EscortHijacked()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_20
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_122()
  l1 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1422642067", "1422642067", "Prepare Convoy", "box_ConvoyMonitor_20.EscortHijacked", "box_MultipleOR_122.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_ConvoyMonitor_20_EscortVehicleDestroyed()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_20
  self.Instigator = l0.Instigator
  l1 = self.box_SetBoolean_v2_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2142358737", "2142358737", "Prepare Convoy", "box_ConvoyMonitor_20.EscortVehicleDestroyed", "box_SetBoolean_v2_128.True", l0, l1)
  l1:True()
end
function export:f_box_ConvoyMonitor_20_HardDisturbance()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_20
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_122()
  l1 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1887468886", "1887468886", "Prepare Convoy", "box_ConvoyMonitor_20.HardDisturbance", "box_MultipleOR_122.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_ConvoyMonitor_20_SoftDisturbance()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_20
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_122()
  l1 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1951287283", "1951287283", "Prepare Convoy", "box_ConvoyMonitor_20.SoftDisturbance", "box_MultipleOR_122.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_ConvoyMonitor_20_StartMoving()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_20
  l1 = self.box_OnceOnly_v3_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|2110049794", "2110049794", "Prepare Convoy", "box_ConvoyMonitor_20.StartMoving", "box_OnceOnly_v3_120.In", l0, l1)
  l1:In(0)
end
function export:f_box_ConvoyMonitor_20_VIPDied()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_20
  self.Instigator = l0.Instigator
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_44"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1694294280"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_44_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_44_Out_1
  l0 = self.box_ConvoyMonitor_20
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|98017853", "98017853", "Prepare Convoy", "box_ConvoyMonitor_20.VIPDied", "box_Ordered_Output_44.In", l0, l1)
  l1:In()
end
function export:f_box_ConvoyMonitor_20_VIPHijacked()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_20
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_6()
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1544616438", "1544616438", "Prepare Convoy", "box_ConvoyMonitor_20.VIPHijacked", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_ConvoyMonitor_20_VIPVehicleDestroyed()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_20
  self.Instigator = l0.Instigator
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_89"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|703019959"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_89_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_89_Out_1
  l0 = self.box_ConvoyMonitor_20
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|223945913", "223945913", "Prepare Convoy", "box_ConvoyMonitor_20.VIPVehicleDestroyed", "box_Ordered_Output_89.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_4_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  self.EscortVehicleID = l0.UserID
  l0 = self.box_ListWriter_32
  l0.Input = self.tempListVehicles
  l0.Data[0] = self.EscortVehicleID
  l0 = self.box_CLOController_4
  l1 = self.box_ListWriter_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1371787114", "1371787114", "Prepare Convoy", "box_CLOController_4.OnUserInPlace", "box_ListWriter_32.Add", l0, l1)
  l1:Add()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1499807385", "1499807385", "Prepare Convoy", "box_Ordered_Output_3.Out", "box_MultipleOR_67.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1588891573", "1588891573", "Prepare Convoy", "box_Ordered_Output_3.Out", "ConvoyAggro", clone, self)
  self:ConvoyAggro()
end
function export:f_box_VehicleSeatingController_65_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_VehicleSeatingController_65
  l1 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|87429960", "87429960", "Prepare Convoy", "box_VehicleSeatingController_65.AssignCompleted", "box_MultipleOR_17.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_59_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_26()
  l0 = self.box_MultipleOR_59
  l1 = self.box_Multiple_AND_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1007956851", "1007956851", "Prepare Convoy", "box_MultipleOR_59.Out", "box_Multiple_AND_26.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MultipleOR_70_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_33()
  l0 = self.box_MultipleOR_70
  l1 = self.box_Multiple_AND_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|953010261", "953010261", "Prepare Convoy", "box_MultipleOR_70.Out", "box_Multiple_AND_33.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_Set_List_84_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.EscortNPCs = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_34
  l0.Input = self.tempListNPCs
  l0.Data[0] = self.Vip
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1386409071", "1386409071", "Prepare Convoy", "box_Set_List_84.Out", "box_ListWriter_34.Add", clone, l0)
  l0:Add()
end
function export:f_box_Set_Entity_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Escort_Driver = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_82
  l0.Vehicle = self.EscortVehicleID
  l0.Pawn = self.Escort_DriverID
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1544408710", "1544408710", "Prepare Convoy", "box_Set_Entity_13.Out", "box_VehicleSeatingController_82.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Compare_Boolean_v2_110_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.Vip_WanderZone
  l0.NPC = self.Vip
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_95"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|749982063"
  l0.Out = self.f_box_AI_Agent_Zone_95_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1027955223", "1027955223", "Prepare Convoy", "box_Compare_Boolean_v2_110.A_is_False", "box_AI_Agent_Zone_95.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Compare_Boolean_v2_110_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = self.UpdatedWanderZone
  l0.NPC = self.Vip
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_111"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1636063801"
  l0.Out = self.f_box_AI_Agent_Zone_111_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1975221950", "1975221950", "Prepare Convoy", "box_Compare_Boolean_v2_110.A_is_True", "box_AI_Agent_Zone_111.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_MultipleOR_67_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = nil
  l0.VIPCharacter = nil
  l0.VIPVehicle = nil
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = nil
  l0.ObjectiveText = nil
  l0.InConvoyId = self.convoyID
  l0._graph = self
  l0._name = "box_ConvoyController_68"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1032551727"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = self.f_box_ConvoyController_68_Stopped
  l0 = self.box_MultipleOR_67
  l1 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1252682983", "1252682983", "Prepare Convoy", "box_MultipleOR_67.Out", "box_ConvoyController_68.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_AI_Agent_Zone_98_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_101()
  l0 = self.box_MultipleOR_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Prepare\\Prepare_Helpers.domino|@Prepare Convoy|1102502665", "1102502665", "Prepare Convoy", "box_AI_Agent_Zone_98.Out", "box_MultipleOR_101.Input", clone, l0)
  l0:Input(2)
end
function export:OnEnter_box_Multiple_AND_33()
end
function export:OnEnter_box_MultipleOR_101()
end
function export:OnEnter_box_MultipleOR_97()
end
function export:OnEnter_box_OnceOnly_v3_1()
end
function export:OnEnter_box_MultipleOR_108()
end
function export:OnEnter_box_MultipleOR_79()
end
function export:OnEnter_box_MultipleOR_38()
end
function export:OnEnter_box_MultipleOR_46()
end
function export:OnEnter_box_MultipleOR_105()
end
function export:OnEnter_box_OnceOnly_v3_92()
end
function export:OnEnter_box_MultipleOR_24()
end
function export:OnEnter_box_MultipleOR_125()
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_Multiple_AND_28()
end
function export:OnEnter_box_MultipleOR_17()
end
function export:OnEnter_box_Multiple_AND_26()
end
function export:OnEnter_box_MultipleOR_104()
end
function export:OnEnter_box_MultipleOR_93()
end
function export:OnEnter_box_MultipleOR_53()
end
function export:OnEnter_box_MultipleOR_122()
end
function export:OnEnter_box_MultipleOR_8()
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_Multiple_AND_91()
end
function export:OnEnter_box_SetBoolean_v2_90()
end
function export:OnEnter_box_ConvoyMonitor_20()
  local l0
  l0 = self.box_ConvoyMonitor_20
  l0.ConvoyId = self.convoyID
end
function export:OnEnter_box_MultipleOR_59()
end
function export:OnEnter_box_MultipleOR_70()
end
function export:OnEnter_box_MultipleOR_67()
end
function export:ConvoyStopped()
end
function export:VIPDied()
end
function export:Out()
end
function export:NPCsUnassigned()
end
function export:DestinationReached()
end
function export:VipVehicleDestroyed()
end
function export:ConvoyStuck()
end
function export:ConvoyAggroNotPlayer()
end
function export:ConvoyStarted()
end
function export:Started()
end
function export:ConvoyAggro()
end
function export:Prepped()
end
_compilerVersion = 4
