export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HelicopterBhvController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/Lists/SetList.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TestIfNil.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S14M060_CallCopsFelony"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony"
  self.Out_CarReadyToAdopt = DummyFunction
  self.Out_FirstWaveSpawned = DummyFunction
  self.Out_SecondWaveSpawned = DummyFunction
  self.Chopper = nil
  self.Chopper_Pilot = nil
  self.Chopper_Sniper = nil
  self.PoliceCar_C = nil
  self.Policeman_A01 = nil
  self.PoliceCar_B = nil
  self.Policeman_B01 = nil
  self.Policeman_B02 = nil
  self.Policeman_C01 = nil
  self.Policeman_A02 = nil
  self.PoliceCar_A = nil
  self.Policeman_C02 = nil
  self.PlayerEntity = nil
  self.AI_spawned = {}
  self.Vehicle_Spawned = {}
  self.chopper_and_AIs = {}
  self.AgentListWave2 = {}
  self.AgentList = {}
  self.Is_Scripted_Chopper = 0
  self.PoliceCar_D = nil
  self.Policeman_D01 = nil
  self.PoliceCar_E = nil
  self.Policeman_E01 = nil
  self.PoliceCar_F = nil
  self.Policeman_F01 = nil
  self.PoliceCar_G = nil
  self.Policeman_G01 = nil
  self.PoliceCar_H = nil
  self.Policeman_H01 = nil
  self.Fake_Target = nil
  self.UsersToUnspawn = {}
  self.box_CLOController_125 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_125
  l0._graph = self
  l0._name = "box_CLOController_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|7289053"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_125_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_VehicleSeatingController_24 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_24
  l0._graph = self
  l0._name = "box_VehicleSeatingController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|24300534"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_24_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_2 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_2
  l0._graph = self
  l0._name = "box_CLOController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|128392261"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_2_OnUserInPlace
  self.box_Timer_v2_61 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_61
  l0._graph = self
  l0._name = "box_Timer_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|152788642"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_61_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_43 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_43
  l0._graph = self
  l0._name = "box_MultipleOR_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|193375801"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_43_Out
  self.box_VehicleBhvController_113 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_113
  l0._graph = self
  l0._name = "box_VehicleBhvController_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|328250860"
  l0.StartCompleted = self.f_box_VehicleBhvController_113_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_VehicleSeatingController_70 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_70
  l0._graph = self
  l0._name = "box_VehicleSeatingController_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|410569939"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_70_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_10 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_10
  l0._graph = self
  l0._name = "box_CLOController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|464319410"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_10_OnUserInPlace
  self.box_Timer_v2_68 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_68
  l0._graph = self
  l0._name = "box_Timer_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|508974370"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_68_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_81 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_81
  l0._graph = self
  l0._name = "box_CLOController_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|513027050"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_81_OnUserInPlace
  self.box_VehicleBhvController_108 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_108
  l0._graph = self
  l0._name = "box_VehicleBhvController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|537344736"
  l0.StartCompleted = self.f_box_VehicleBhvController_108_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_Multiple_AND_28 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_28
  l0._graph = self
  l0._name = "box_Multiple_AND_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|537408454"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_28_Out
  self.box_Multiple_AND_26 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_26
  l0._graph = self
  l0._name = "box_Multiple_AND_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|542839837"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_26_Out
  self.box_CLOController_7 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_7
  l0._graph = self
  l0._name = "box_CLOController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|604868005"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_7_OnUserInPlace
  self.box_HelicopterBhvController_76 = cbox:CreateBox("domino/System/HelicopterBhvController.lua")
  l0 = self.box_HelicopterBhvController_76
  l0._graph = self
  l0._name = "box_HelicopterBhvController_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|654042334"
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  self.box_CLOController_27 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_27
  l0._graph = self
  l0._name = "box_CLOController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|657523545"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_27_OnUserInPlace
  self.box_ConsoleCommand_v2_115 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_115
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|678894863"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_115_Executed
  self.box_VehicleBhvController_79 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_79
  l0._graph = self
  l0._name = "box_VehicleBhvController_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|679805885"
  l0.StartCompleted = self.f_box_VehicleBhvController_79_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_CLOController_96 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_96
  l0._graph = self
  l0._name = "box_CLOController_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|744852059"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_96_OnUserInPlace
  self.box_VehicleSeatingController_84 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_84
  l0._graph = self
  l0._name = "box_VehicleSeatingController_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|824153266"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_84_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_57 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_57
  l0._graph = self
  l0._name = "box_CLOController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|830766332"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_57_OnUserInPlace
  self.box_VehicleSeatingController_47 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_47
  l0._graph = self
  l0._name = "box_VehicleSeatingController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|846650372"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_47_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriter_126 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_126
  l0._graph = self
  l0._name = "box_ListWriter_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|858141906"
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_box_ListWriter_126_Added
  l0.Removed = self.f_box_ListWriter_126_Removed
  l0.Out = self.f_box_ListWriter_126_Out
  self.box_VehicleSeatingController_82 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_82
  l0._graph = self
  l0._name = "box_VehicleSeatingController_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|912074163"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_82_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_VehicleSeatingController_46 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_46
  l0._graph = self
  l0._name = "box_VehicleSeatingController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|966940311"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_46_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriter_34 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_34
  l0._graph = self
  l0._name = "box_ListWriter_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1027672949"
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_box_ListWriter_34_Added
  l0.Removed = self.f_box_ListWriter_34_Removed
  l0.Out = self.f_box_ListWriter_34_Out
  self.box_VehicleSeatingController_48 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_48
  l0._graph = self
  l0._name = "box_VehicleSeatingController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1111545695"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_48_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_VehicleBhvController_77 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_77
  l0._graph = self
  l0._name = "box_VehicleBhvController_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1112495623"
  l0.StartCompleted = self.f_box_VehicleBhvController_77_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_Multiple_AND_91 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_91
  l0._graph = self
  l0._name = "box_Multiple_AND_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1151189811"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_91_Out
  self.box_CLOController_99 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_99
  l0._graph = self
  l0._name = "box_CLOController_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1169146856"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_99_OnUserInPlace
  self.box_CLOController_71 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_71
  l0._graph = self
  l0._name = "box_CLOController_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1239557748"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_71_OnUserInPlace
  self.box_Multiple_AND_85 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_85
  l0._graph = self
  l0._name = "box_Multiple_AND_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1239701268"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_85_Out
  self.box_VehicleBhvController_80 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_80
  l0._graph = self
  l0._name = "box_VehicleBhvController_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1263676254"
  l0.StartCompleted = self.f_box_VehicleBhvController_80_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_Timer_v2_73 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_73
  l0._graph = self
  l0._name = "box_Timer_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1266539574"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_73_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_VehicleBhvController_78 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_78
  l0._graph = self
  l0._name = "box_VehicleBhvController_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1299508936"
  l0.StartCompleted = self.f_box_VehicleBhvController_78_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_CLOController_95 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_95
  l0._graph = self
  l0._name = "box_CLOController_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1325574649"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_95_OnUserInPlace
  self.box_CLOController_118 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_118
  l0._graph = self
  l0._name = "box_CLOController_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1418219651"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_118_OnUserInPlace
  self.box_ListWriter_100 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_100
  l0._graph = self
  l0._name = "box_ListWriter_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1441799944"
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_box_ListWriter_100_Added
  l0.Removed = self.f_box_ListWriter_100_Removed
  l0.Out = self.f_box_ListWriter_100_Out
  self.box_HelicopterBhvController_114 = cbox:CreateBox("domino/System/HelicopterBhvController.lua")
  l0 = self.box_HelicopterBhvController_114
  l0._graph = self
  l0._name = "box_HelicopterBhvController_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1488591396"
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  self.box_Multiple_AND_6 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_6
  l0._graph = self
  l0._name = "box_Multiple_AND_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1663195370"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_6_Out
  self.box_HelicopterBhvController_117 = cbox:CreateBox("domino/System/HelicopterBhvController.lua")
  l0 = self.box_HelicopterBhvController_117
  l0._graph = self
  l0._name = "box_HelicopterBhvController_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1666495450"
  l0.StartCompleted = self.f_box_HelicopterBhvController_117_StartCompleted
  l0.StopCompleted = DummyFunction
  self.box_SetBoolean_v2_40 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_40
  l0._graph = self
  l0._name = "box_SetBoolean_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1670477544"
  l0.Out = self.f_box_SetBoolean_v2_40_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_40_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_40_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_40_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_40_SetFromBool
  self.box_Multiple_AND_12 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_12
  l0._graph = self
  l0._name = "box_Multiple_AND_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1673261324"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_12_Out
  self.box_MultipleOR_38 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_38
  l0._graph = self
  l0._name = "box_MultipleOR_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1685521573"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_38_Out
  self.box_CLOController_22 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_22
  l0._graph = self
  l0._name = "box_CLOController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1794726260"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_22_OnUserInPlace
  self.box_Multiple_AND_69 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_69
  l0._graph = self
  l0._name = "box_Multiple_AND_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1839500606"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_69_Out
  self.box_SetBoolean_v2_42 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_42
  l0._graph = self
  l0._name = "box_SetBoolean_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1850172661"
  l0.Out = self.f_box_SetBoolean_v2_42_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_42_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_42_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_42_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_42_SetFromBool
  self.box_Timer_v2_67 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_67
  l0._graph = self
  l0._name = "box_Timer_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1859417431"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_67_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriter_39 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_39
  l0._graph = self
  l0._name = "box_ListWriter_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1927527243"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_39_Added
  l0.Removed = self.f_box_ListWriter_39_Removed
  l0.Out = self.f_box_ListWriter_39_Out
  self.box_CLOController_11 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_11
  l0._graph = self
  l0._name = "box_CLOController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1960464394"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_11_OnUserInPlace
  self.box_CLOController_14 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|2000906894"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_14_OnUserInPlace
  self.box_Multiple_AND_13 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_13
  l0._graph = self
  l0._name = "box_Multiple_AND_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|2003966291"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_13_Out
  self.box_Multiple_AND_101 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_101
  l0._graph = self
  l0._name = "box_Multiple_AND_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|2095863348"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_101_Out
  self.box_Multiple_AND_36 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_36
  l0._graph = self
  l0._name = "box_Multiple_AND_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|2142516044"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_36_Out
  self.box_CLOController_21 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_21
  l0._graph = self
  l0._name = "box_CLOController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|2145437578"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_21_OnUserInPlace
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In_StartCars()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1101073138"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_50_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_50_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_50_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_50_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_50_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|255819119", "255819119", "S14M060_CallCopsFelony", "In_StartCars", "box_Ordered_Output_50.In", self, l0)
  l0:In()
end
function export:Launch_SecondWave()
  local l0
  l0 = self.box_CLOController_118
  l0.CLO = "9223372054453232000"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1334977698", "1334977698", "S14M060_CallCopsFelony", "Launch_SecondWave", "box_CLOController_118.Activate", self, l0)
  l0:Activate()
end
function export:Spawn_FirstWave()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|237544224"
  l0.Out = self.f_box_Get_Player_ID_23_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|419398675", "419398675", "S14M060_CallCopsFelony", "Spawn_FirstWave", "box_Get_Player_ID_23.In", self, l0)
  l0:In()
end
function export:Spawn_Second_Wave()
  local l0
  l0 = self.box_ListWriter_126
  l0.Input = self.UsersToUnspawn
  l0.Data[0] = self.Policeman_C01
  l0.Data[1] = self.PoliceCar_C
  l0.Data[2] = self.PoliceCar_D
  l0.Data[3] = self.Policeman_D01
  l0.Data[4] = self.PoliceCar_A
  l0.Data[5] = self.Policeman_A01
  l0.Data[6] = self.PoliceCar_B
  l0.Data[7] = self.Policeman_B01
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1625544650", "1625544650", "S14M060_CallCopsFelony", "Spawn_Second_Wave", "box_ListWriter_126.Add", self, l0)
  l0:Add()
end
function export:f_box_CLOController_125_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|674736887"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_CLOController_125
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|2037816643", "2037816643", "S14M060_CallCopsFelony", "box_CLOController_125.UnspawnedUser", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingController_24_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_HelicopterBhvController_117
  l0.Helicopter = self.Chopper
  l0.Target = self.PlayerEntity
  l0.PathOrPos = "9223372053779917560"
  l0.Config = "HelicopterBhvSetup.9223372048779322177"
  l0 = self.box_VehicleSeatingController_24
  l1 = self.box_HelicopterBhvController_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|894909269", "894909269", "S14M060_CallCopsFelony", "box_VehicleSeatingController_24.AssignCompleted", "box_HelicopterBhvController_117.Start", l0, l1)
  l1:Start()
end
function export:f_box_Lanes_Restrictions_Control_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372052446995766"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|992686865"
  l0.Out = self.f_box_Lanes_Restrictions_Control_65_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1005810478", "1005810478", "S14M060_CallCopsFelony", "box_Lanes_Restrictions_Control_64.Out", "box_Lanes_Restrictions_Control_65.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|475687605"
  l0.Out = self.f_box_Simple_Node_45_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|187075858", "187075858", "S14M060_CallCopsFelony", "box_Simple_Node_44.Out", "box_Simple_Node_45.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_2
  l0.CLO = "9223372051315719623"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|213800190", "213800190", "S14M060_CallCopsFelony", "box_Ordered_Output_16.Out", "box_CLOController_2.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_22
  l0.CLO = "9223372051315719625"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1707209518", "1707209518", "S14M060_CallCopsFelony", "box_Ordered_Output_16.Out", "box_CLOController_22.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_7
  l0.CLO = "9223372051315719626"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1249178947", "1249178947", "S14M060_CallCopsFelony", "box_Ordered_Output_8.Out", "box_CLOController_7.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_27
  l0.CLO = "9223372051315719627"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|538952659", "538952659", "S14M060_CallCopsFelony", "box_Ordered_Output_8.Out", "box_CLOController_27.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_2_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_2
  self.PoliceCar_C = l0.UserID
  self:OnEnter_box_Multiple_AND_28()
  l1 = self.box_Multiple_AND_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1695926415", "1695926415", "S14M060_CallCopsFelony", "box_CLOController_2.OnUserInPlace", "box_Multiple_AND_28.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Timer_v2_61_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_79
  l0.VehicleMaster = self.PoliceCar_A
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372052446994768"
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0 = self.box_Timer_v2_61
  l1 = self.box_VehicleBhvController_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1850857284", "1850857284", "S14M060_CallCopsFelony", "box_Timer_v2_61.TimeElapsed", "box_VehicleBhvController_79.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_43_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053677910354"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1842870760"
  l0.Out = self.f_box_Lanes_Restrictions_Control_106_Out
  l0 = self.box_MultipleOR_43
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1286426962", "1286426962", "S14M060_CallCopsFelony", "box_MultipleOR_43.Out", "box_Lanes_Restrictions_Control_106.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.IN_ScriptedChopper
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|620495733"
  l0.Is_nil = self.f_box_Test_if_Nil_41_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_41_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1060586133", "1060586133", "S14M060_CallCopsFelony", "box_Get_Player_ID_23.Out", "box_Test_if_Nil_41.In", clone, l0)
  l0:In()
end
function export:f_box_Lanes_Restrictions_Control_112_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372052446995764"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|98972843"
  l0.Out = self.f_box_Lanes_Restrictions_Control_64_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1708305204", "1708305204", "S14M060_CallCopsFelony", "box_Lanes_Restrictions_Control_112.Out", "box_Lanes_Restrictions_Control_64.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleBhvController_113_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_G
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|534678941"
  l0.Out = DummyFunction
  l0 = self.box_VehicleBhvController_113
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|972672660", "972672660", "S14M060_CallCopsFelony", "box_VehicleBhvController_113.StartCompleted", "box_SetVehicleLightAndSiren_v2_103.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Set_List_102_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.AgentListWave2_OUT = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|483053073", "483053073", "S14M060_CallCopsFelony", "box_Set_List_102.Out", "Out_SecondWaveSpawned", clone, self)
  self:Out_SecondWaveSpawned()
end
function export:f_box_Lanes_Restrictions_Control_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|924573579"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_20_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_20_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_20_Out_4
  l0.Out[5] = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1293793483", "1293793483", "S14M060_CallCopsFelony", "box_Lanes_Restrictions_Control_58.Out", "box_Ordered_Output_20.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleSeatingController_70_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_VehicleSeatingController_70
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1701614776", "1701614776", "S14M060_CallCopsFelony", "box_VehicleSeatingController_70.AssignCompleted", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_CLOController_10_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_10
  self.Policeman_A01 = l0.UserID
  self:OnEnter_box_Multiple_AND_26()
  l1 = self.box_Multiple_AND_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1790404646", "1790404646", "S14M060_CallCopsFelony", "box_CLOController_10.OnUserInPlace", "box_Multiple_AND_26.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Simple_Node_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|984909265", "984909265", "S14M060_CallCopsFelony", "box_Simple_Node_45.Out", "box_MultipleOR_38.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Timer_v2_68_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_77
  l0.VehicleMaster = self.PoliceCar_C
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372052446994770"
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0 = self.box_Timer_v2_68
  l1 = self.box_VehicleBhvController_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|80458228", "80458228", "S14M060_CallCopsFelony", "box_Timer_v2_68.TimeElapsed", "box_VehicleBhvController_77.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_81_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_81
  self.Policeman_F01 = l0.UserID
  self:OnEnter_box_Multiple_AND_91()
  l1 = self.box_Multiple_AND_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|896858590", "896858590", "S14M060_CallCopsFelony", "box_CLOController_81.OnUserInPlace", "box_Multiple_AND_91.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_VehicleBhvController_108_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_F
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|905947815"
  l0.Out = DummyFunction
  l0 = self.box_VehicleBhvController_108
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|98943871", "98943871", "S14M060_CallCopsFelony", "box_VehicleBhvController_108.StartCompleted", "box_SetVehicleLightAndSiren_v2_110.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Multiple_AND_28_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_48
  l0.Vehicle = self.PoliceCar_C
  l0.Pawn = self.Policeman_C01
  l0 = self.box_Multiple_AND_28
  l1 = self.box_VehicleSeatingController_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|449825929", "449825929", "S14M060_CallCopsFelony", "box_Multiple_AND_28.Out", "box_VehicleSeatingController_48.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Multiple_AND_26_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_46
  l0.Vehicle = self.PoliceCar_A
  l0.Pawn = self.Policeman_A01
  l0 = self.box_Multiple_AND_26
  l1 = self.box_VehicleSeatingController_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1773713894", "1773713894", "S14M060_CallCopsFelony", "box_Multiple_AND_26.Out", "box_VehicleSeatingController_46.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_CLOController_7_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_7
  self.PoliceCar_B = l0.UserID
  self:OnEnter_box_Multiple_AND_6()
  l1 = self.box_Multiple_AND_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|566654665", "566654665", "S14M060_CallCopsFelony", "box_CLOController_7.OnUserInPlace", "box_Multiple_AND_6.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Test_if_Nil_41_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1425872627", "1425872627", "S14M060_CallCopsFelony", "box_Test_if_Nil_41.Is_nil", "box_SetBoolean_v2_40.False", clone, l0)
  l0:False()
end
function export:f_box_Test_if_Nil_41_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_42
  l0.Bool = self.IN_ScriptedChopper
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|2008022430", "2008022430", "S14M060_CallCopsFelony", "box_Test_if_Nil_41.Is_not_nil", "box_SetBoolean_v2_42.FromBool", clone, l0)
  l0:FromBool()
end
function export:f_box_CLOController_27_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_27
  self.Policeman_B01 = l0.UserID
  self:OnEnter_box_Multiple_AND_6()
  l1 = self.box_Multiple_AND_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|660308449", "660308449", "S14M060_CallCopsFelony", "box_CLOController_27.OnUserInPlace", "box_Multiple_AND_6.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1391654198"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_15_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_15_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|385372790", "385372790", "S14M060_CallCopsFelony", "box_Ordered_Output_5.Out", "box_Ordered_Output_15.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1243817057"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_83_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_83_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1487898628", "1487898628", "S14M060_CallCopsFelony", "box_Ordered_Output_5.Out", "box_Ordered_Output_83.In", clone, l0)
  l0:In()
end
function export:f_box_ConsoleCommand_v2_115_Executed()
  local l0, l1
  self = self._graph
  l0 = self.box_HelicopterBhvController_114
  l0.Helicopter = self.Chopper
  l0.Target = self.PlayerEntity
  l0.PathOrPos = "9223372053779917555"
  l0.Config = "HelicopterBhvSetup.9223372048779322177"
  l0 = self.box_ConsoleCommand_v2_115
  l1 = self.box_HelicopterBhvController_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|580412791", "580412791", "S14M060_CallCopsFelony", "box_ConsoleCommand_v2_115.Executed", "box_HelicopterBhvController_114.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleBhvController_79_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_A
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1863285475"
  l0.Out = DummyFunction
  l0 = self.box_VehicleBhvController_79
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1071389180", "1071389180", "S14M060_CallCopsFelony", "box_VehicleBhvController_79.StartCompleted", "box_SetVehicleLightAndSiren_v2_60.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_CLOController_96_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_96
  self.Policeman_G01 = l0.UserID
  self:OnEnter_box_Multiple_AND_85()
  l1 = self.box_Multiple_AND_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1659355966", "1659355966", "S14M060_CallCopsFelony", "box_CLOController_96.OnUserInPlace", "box_Multiple_AND_85.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_14
  l0.CLO = "9223372051248723126"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|5823566", "5823566", "S14M060_CallCopsFelony", "box_Ordered_Output_17.Out", "box_CLOController_14.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_11
  l0.CLO = "9223372051248723127"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1147903863", "1147903863", "S14M060_CallCopsFelony", "box_Ordered_Output_17.Out", "box_CLOController_11.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_VehicleSeatingController_84_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_101()
  l0 = self.box_VehicleSeatingController_84
  l1 = self.box_Multiple_AND_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1528988920", "1528988920", "S14M060_CallCopsFelony", "box_VehicleSeatingController_84.AssignCompleted", "box_Multiple_AND_101.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CLOController_57_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_57
  self.PoliceCar_D = l0.UserID
  self:OnEnter_box_Multiple_AND_69()
  l1 = self.box_Multiple_AND_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1605605819", "1605605819", "S14M060_CallCopsFelony", "box_CLOController_57.OnUserInPlace", "box_Multiple_AND_69.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_VehicleSeatingController_47_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_VehicleSeatingController_47
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|597944532", "597944532", "S14M060_CallCopsFelony", "box_VehicleSeatingController_47.AssignCompleted", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_ListWriter_126_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_126
  self.UsersToUnspawn = l0.Target
  l0 = self.box_CLOController_125
  l0.UserList = self.UsersToUnspawn
  l0 = self.box_ListWriter_126
  l1 = self.box_CLOController_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|341294787", "341294787", "S14M060_CallCopsFelony", "box_ListWriter_126.Added", "box_CLOController_125.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_ListWriter_126_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_126
  self.UsersToUnspawn = l0.Target
end
function export:f_box_ListWriter_126_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_126
  self.UsersToUnspawn = l0.Target
end
function export:f_box_VehicleSeatingController_82_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_101()
  l0 = self.box_VehicleSeatingController_82
  l1 = self.box_Multiple_AND_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1922639146", "1922639146", "S14M060_CallCopsFelony", "box_VehicleSeatingController_82.AssignCompleted", "box_Multiple_AND_101.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_Scripted_Chopper
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1527732178"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_37_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|954424858", "954424858", "S14M060_CallCopsFelony", "box_Ordered_Output_20.Out", "box_Compare_Boolean_v2_37.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1930645001"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_25_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_25_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|790880845", "790880845", "S14M060_CallCopsFelony", "box_Ordered_Output_20.Out", "box_Ordered_Output_25.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_20_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|123760694"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|311872160", "311872160", "S14M060_CallCopsFelony", "box_Ordered_Output_20.Out", "box_Ordered_Output_8.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_20_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|115787950"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1856893765", "1856893765", "S14M060_CallCopsFelony", "box_Ordered_Output_20.Out", "box_Ordered_Output_16.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_20_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1409837797"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|492518054", "492518054", "S14M060_CallCopsFelony", "box_Ordered_Output_20.Out", "box_Ordered_Output_59.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleSeatingController_46_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_VehicleSeatingController_46
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1073037043", "1073037043", "S14M060_CallCopsFelony", "box_VehicleSeatingController_46.AssignCompleted", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Lanes_Restrictions_Control_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372052446995768"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1189116483"
  l0.Out = self.f_box_Lanes_Restrictions_Control_66_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|192736952", "192736952", "S14M060_CallCopsFelony", "box_Lanes_Restrictions_Control_65.Out", "box_Lanes_Restrictions_Control_66.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriter_34_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_34
  self.AgentList = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_Scripted_Chopper
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1623563218"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_4_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_4_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_ListWriter_34
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|217722912", "217722912", "S14M060_CallCopsFelony", "box_ListWriter_34.Added", "box_Compare_Boolean_v2_4.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_34_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_34
  self.AgentList = l0.Target
end
function export:f_box_ListWriter_34_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_34
  self.AgentList = l0.Target
end
function export:f_box_Ordered_Output_50_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_61
  l0.Seconds = 2.6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1561865508", "1561865508", "S14M060_CallCopsFelony", "box_Ordered_Output_50.Out", "box_Timer_v2_61.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_50_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_67
  l0.Seconds = 2.8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1685269290", "1685269290", "S14M060_CallCopsFelony", "box_Ordered_Output_50.Out", "box_Timer_v2_67.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_50_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_68
  l0.Seconds = 3.4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1043169146", "1043169146", "S14M060_CallCopsFelony", "box_Ordered_Output_50.Out", "box_Timer_v2_68.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_50_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_73
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1747542022", "1747542022", "S14M060_CallCopsFelony", "box_Ordered_Output_50.Out", "box_Timer_v2_73.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_50_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HelicopterBhvController_76
  l0.Helicopter = self.Chopper
  l0.Target = self.PlayerEntity
  l0.PathOrPos = "9223372053779917555"
  l0.Config = "HelicopterBhvSetup.9223372048779322177"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1207483250", "1207483250", "S14M060_CallCopsFelony", "box_Ordered_Output_50.Out", "box_HelicopterBhvController_76.Start", clone, l0)
  l0:Start()
end
function export:f_box_VehicleSeatingController_48_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_VehicleSeatingController_48
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1327508842", "1327508842", "S14M060_CallCopsFelony", "box_VehicleSeatingController_48.AssignCompleted", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_VehicleBhvController_77_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_C
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|2105183073"
  l0.Out = DummyFunction
  l0 = self.box_VehicleBhvController_77
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|464159600", "464159600", "S14M060_CallCopsFelony", "box_VehicleBhvController_77.StartCompleted", "box_SetVehicleLightAndSiren_v2_63.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Multiple_AND_91_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_84
  l0.Vehicle = self.PoliceCar_F
  l0.Pawn = self.Policeman_F01
  l0 = self.box_Multiple_AND_91
  l1 = self.box_VehicleSeatingController_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|686253242", "686253242", "S14M060_CallCopsFelony", "box_Multiple_AND_91.Out", "box_VehicleSeatingController_84.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_CLOController_99_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_99
  self.PoliceCar_F = l0.UserID
  self:OnEnter_box_Multiple_AND_91()
  l1 = self.box_Multiple_AND_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|98831050", "98831050", "S14M060_CallCopsFelony", "box_CLOController_99.OnUserInPlace", "box_Multiple_AND_91.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Lanes_Restrictions_Control_66_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372052593107701"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|406605611"
  l0.Out = self.f_box_Lanes_Restrictions_Control_58_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|678207828", "678207828", "S14M060_CallCopsFelony", "box_Lanes_Restrictions_Control_66.Out", "box_Lanes_Restrictions_Control_58.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_71_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_71
  self.Policeman_D01 = l0.UserID
  self:OnEnter_box_Multiple_AND_69()
  l1 = self.box_Multiple_AND_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|374227736", "374227736", "S14M060_CallCopsFelony", "box_CLOController_71.OnUserInPlace", "box_Multiple_AND_69.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Multiple_AND_85_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_82
  l0.Vehicle = self.PoliceCar_G
  l0.Pawn = self.Policeman_G01
  l0 = self.box_Multiple_AND_85
  l1 = self.box_VehicleSeatingController_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|263923206", "263923206", "S14M060_CallCopsFelony", "box_Multiple_AND_85.Out", "box_VehicleSeatingController_82.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Ordered_Output_83_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_95
  l0.CLO = "9223372053677910347"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|244114774", "244114774", "S14M060_CallCopsFelony", "box_Ordered_Output_83.Out", "box_CLOController_95.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_83_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_96
  l0.CLO = "9223372051315719624"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1852578319", "1852578319", "S14M060_CallCopsFelony", "box_Ordered_Output_83.Out", "box_CLOController_96.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_VehicleBhvController_80_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_D
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1538595790"
  l0.Out = DummyFunction
  l0 = self.box_VehicleBhvController_80
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1902549947", "1902549947", "S14M060_CallCopsFelony", "box_VehicleBhvController_80.StartCompleted", "box_SetVehicleLightAndSiren_v2_74.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Timer_v2_73_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_80
  l0.VehicleMaster = self.PoliceCar_D
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372052593107703"
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0 = self.box_Timer_v2_73
  l1 = self.box_VehicleBhvController_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1181658550", "1181658550", "S14M060_CallCopsFelony", "box_Timer_v2_73.TimeElapsed", "box_VehicleBhvController_80.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleBhvController_78_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_B
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|62784523"
  l0.Out = DummyFunction
  l0 = self.box_VehicleBhvController_78
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1378622694", "1378622694", "S14M060_CallCopsFelony", "box_VehicleBhvController_78.StartCompleted", "box_SetVehicleLightAndSiren_v2_62.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_CLOController_95_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_95
  self.PoliceCar_G = l0.UserID
  self:OnEnter_box_Multiple_AND_85()
  l1 = self.box_Multiple_AND_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|650265500", "650265500", "S14M060_CallCopsFelony", "box_CLOController_95.OnUserInPlace", "box_Multiple_AND_85.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_99
  l0.CLO = "9223372053677910344"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1496279846", "1496279846", "S14M060_CallCopsFelony", "box_Ordered_Output_15.Out", "box_CLOController_99.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_15_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_81
  l0.CLO = "9223372053677910345"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1266149709", "1266149709", "S14M060_CallCopsFelony", "box_Ordered_Output_15.Out", "box_CLOController_81.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_57
  l0.CLO = "9223372052528284169"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1447924664", "1447924664", "S14M060_CallCopsFelony", "box_Ordered_Output_59.Out", "box_CLOController_57.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_71
  l0.CLO = "9223372051315719628"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1521306920", "1521306920", "S14M060_CallCopsFelony", "box_Ordered_Output_59.Out", "box_CLOController_71.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_118_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_118
  self.Fake_Target = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|2054563594"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = DummyFunction
  l0.Out[1] = self.f_box_Ordered_Output_109_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_109_Out_2
  l0.Out[3] = DummyFunction
  l0 = self.box_CLOController_118
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1745984549", "1745984549", "S14M060_CallCopsFelony", "box_CLOController_118.OnUserInPlace", "box_Ordered_Output_109.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_100_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_100
  self.AgentListWave2 = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.AgentListWave2
  l0._graph = self
  l0._name = "box_Set_List_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|387241306"
  l0.Out = self.f_box_Set_List_102_Out
  l0 = self.box_ListWriter_100
  l1 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|2128692529", "2128692529", "S14M060_CallCopsFelony", "box_ListWriter_100.Added", "box_Set_List_102.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_ListWriter_100_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_100
  self.AgentListWave2 = l0.Target
end
function export:f_box_ListWriter_100_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_100
  self.AgentListWave2 = l0.Target
end
function export:f_box_Ordered_Output_116_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_36()
  l0 = self.box_Multiple_AND_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|508712471", "508712471", "S14M060_CallCopsFelony", "box_Ordered_Output_116.Out", "box_Multiple_AND_36.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_116_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ConsoleCommand_v2_115
  l0.Command = "testchopper"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|157340580", "157340580", "S14M060_CallCopsFelony", "box_Ordered_Output_116.Out", "box_ConsoleCommand_v2_115.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_37_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|746697845"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1900109605", "1900109605", "S14M060_CallCopsFelony", "box_Compare_Boolean_v2_37.A_is_True", "box_Ordered_Output_17.In", clone, l0)
  l0:In()
end
function export:f_box_Set_List_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.AgentListWave1_OUT = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1005850258", "1005850258", "S14M060_CallCopsFelony", "box_Set_List_35.Out", "Out_FirstWaveSpawned", clone, self)
  self:Out_FirstWaveSpawned()
end
function export:f_box_Compare_Boolean_v2_4_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|114317285"
  l0.Out = self.f_box_Simple_Node_44_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1455818339", "1455818339", "S14M060_CallCopsFelony", "box_Compare_Boolean_v2_4.A_is_False", "box_Simple_Node_44.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_4_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_36()
  l0 = self.box_Multiple_AND_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|525526856", "525526856", "S14M060_CallCopsFelony", "box_Compare_Boolean_v2_4.A_is_True", "box_Multiple_AND_36.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Multiple_AND_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_47
  l0.Vehicle = self.PoliceCar_B
  l0.Pawn = self.Policeman_B01
  l0 = self.box_Multiple_AND_6
  l1 = self.box_VehicleSeatingController_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|893647212", "893647212", "S14M060_CallCopsFelony", "box_Multiple_AND_6.Out", "box_VehicleSeatingController_47.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_HelicopterBhvController_117_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1466512153"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_116_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_116_Out_1
  l0 = self.box_HelicopterBhvController_117
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1062975155", "1062975155", "S14M060_CallCopsFelony", "box_HelicopterBhvController_117.StartCompleted", "box_Ordered_Output_116.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_40_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_box_SetBoolean_v2_40_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self.Is_Scripted_Chopper = l0.Target
  self:OnEnter_box_MultipleOR_43()
  l1 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|612531838", "612531838", "S14M060_CallCopsFelony", "box_SetBoolean_v2_40.SetFalse", "box_MultipleOR_43.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_40_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_box_SetBoolean_v2_40_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_box_SetBoolean_v2_40_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_box_Multiple_AND_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_24
  l0.Vehicle = self.Chopper
  l0.Pawn = self.Chopper_Pilot
  l0 = self.box_Multiple_AND_12
  l1 = self.box_VehicleSeatingController_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|2119825316", "2119825316", "S14M060_CallCopsFelony", "box_Multiple_AND_12.Out", "box_VehicleSeatingController_24.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_MultipleOR_38_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.AgentList
  l0._graph = self
  l0._name = "box_Set_List_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1609356589"
  l0.Out = self.f_box_Set_List_35_Out
  l0 = self.box_MultipleOR_38
  l1 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|329571390", "329571390", "S14M060_CallCopsFelony", "box_MultipleOR_38.Out", "box_Set_List_35.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_CLOController_22_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_22
  self.Policeman_C01 = l0.UserID
  self:OnEnter_box_Multiple_AND_28()
  l1 = self.box_Multiple_AND_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1763340923", "1763340923", "S14M060_CallCopsFelony", "box_CLOController_22.OnUserInPlace", "box_Multiple_AND_28.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Multiple_AND_69_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_70
  l0.Vehicle = self.PoliceCar_D
  l0.Pawn = self.Policeman_D01
  l0 = self.box_Multiple_AND_69
  l1 = self.box_VehicleSeatingController_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|2035641908", "2035641908", "S14M060_CallCopsFelony", "box_Multiple_AND_69.Out", "box_VehicleSeatingController_70.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Lanes_Restrictions_Control_106_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053677910350"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|327674870"
  l0.Out = self.f_box_Lanes_Restrictions_Control_112_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|2028591158", "2028591158", "S14M060_CallCopsFelony", "box_Lanes_Restrictions_Control_106.Out", "box_Lanes_Restrictions_Control_112.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_42_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_42
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_box_SetBoolean_v2_42_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_42
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_box_SetBoolean_v2_42_SetFromBool()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_42
  self.Is_Scripted_Chopper = l0.Target
  self:OnEnter_box_MultipleOR_43()
  l1 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1795294440", "1795294440", "S14M060_CallCopsFelony", "box_SetBoolean_v2_42.SetFromBool", "box_MultipleOR_43.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_42_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_42
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_box_SetBoolean_v2_42_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_42
  self.Is_Scripted_Chopper = l0.Target
end
function export:f_box_Timer_v2_67_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_78
  l0.VehicleMaster = self.PoliceCar_B
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = "9223372052446994766"
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0 = self.box_Timer_v2_67
  l1 = self.box_VehicleBhvController_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1189284009", "1189284009", "S14M060_CallCopsFelony", "box_Timer_v2_67.TimeElapsed", "box_VehicleBhvController_78.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_39_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_39
  self.AgentList = l0.Target
  self:OnEnter_box_MultipleOR_38()
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1606986784", "1606986784", "S14M060_CallCopsFelony", "box_ListWriter_39.Added", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_39_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_39
  self.AgentList = l0.Target
end
function export:f_box_ListWriter_39_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_39
  self.AgentList = l0.Target
end
function export:f_box_Ordered_Output_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_21
  l0.CLO = "9223372051315719621"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1568058734", "1568058734", "S14M060_CallCopsFelony", "box_Ordered_Output_25.Out", "box_CLOController_21.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_10
  l0.CLO = "9223372051315719622"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|311625023", "311625023", "S14M060_CallCopsFelony", "box_Ordered_Output_25.Out", "box_CLOController_10.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_11_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_11
  self.Chopper_Pilot = l0.UserID
  self:OnEnter_box_Multiple_AND_12()
  l1 = self.box_Multiple_AND_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|770890202", "770890202", "S14M060_CallCopsFelony", "box_CLOController_11.OnUserInPlace", "box_Multiple_AND_12.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOController_14_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  self.Chopper = l0.UserID
  self:OnEnter_box_Multiple_AND_12()
  l1 = self.box_Multiple_AND_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|497491220", "497491220", "S14M060_CallCopsFelony", "box_CLOController_14.OnUserInPlace", "box_Multiple_AND_12.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Multiple_AND_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_34
  l0.Input = self.AgentList
  l0.Data[0] = self.PoliceCar_A
  l0.Data[1] = self.Policeman_A01
  l0.Data[2] = self.PoliceCar_B
  l0.Data[3] = self.Policeman_B01
  l0.Data[4] = self.PoliceCar_C
  l0.Data[5] = self.Policeman_C01
  l0.Data[6] = self.PoliceCar_D
  l0.Data[7] = self.Policeman_D01
  l0 = self.box_Multiple_AND_13
  l1 = self.box_ListWriter_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1922636747", "1922636747", "S14M060_CallCopsFelony", "box_Multiple_AND_13.Out", "box_ListWriter_34.Add", l0, l1)
  l1:Add()
end
function export:f_box_Ordered_Output_109_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleBhvController_108
  l0.VehicleMaster = self.PoliceCar_F
  l0.VehicleTarget = self.Fake_Target
  l0.PathOrPos = "9223372054284183192"
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0.StopAtEndPoint = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1450986283", "1450986283", "S14M060_CallCopsFelony", "box_Ordered_Output_109.Out", "box_VehicleBhvController_108.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_109_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleBhvController_113
  l0.VehicleMaster = self.PoliceCar_G
  l0.VehicleTarget = self.Fake_Target
  l0.PathOrPos = "9223372053677910352"
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0.StopAtEndPoint = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1541967813", "1541967813", "S14M060_CallCopsFelony", "box_Ordered_Output_109.Out", "box_VehicleBhvController_113.Start", clone, l0)
  l0:Start()
end
function export:f_box_Multiple_AND_101_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_100
  l0.Input = self.AgentListWave2
  l0.Data[0] = self.PoliceCar_E
  l0.Data[1] = self.Policeman_E01
  l0.Data[2] = self.PoliceCar_F
  l0.Data[3] = self.Policeman_F01
  l0.Data[4] = self.PoliceCar_G
  l0.Data[5] = self.Policeman_G01
  l0.Data[6] = self.PoliceCar_H
  l0.Data[7] = self.Policeman_H01
  l0 = self.box_Multiple_AND_101
  l1 = self.box_ListWriter_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1057151383", "1057151383", "S14M060_CallCopsFelony", "box_Multiple_AND_101.Out", "box_ListWriter_100.Add", l0, l1)
  l1:Add()
end
function export:f_box_Multiple_AND_36_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_39
  l0.Input = self.AgentList
  l0.Data[0] = self.Chopper_Pilot
  l0.Data[1] = self.Chopper
  l0 = self.box_Multiple_AND_36
  l1 = self.box_ListWriter_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1986722407", "1986722407", "S14M060_CallCopsFelony", "box_Multiple_AND_36.Out", "box_ListWriter_39.Add", l0, l1)
  l1:Add()
end
function export:f_box_CLOController_21_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_21
  self.PoliceCar_A = l0.UserID
  self:OnEnter_box_Multiple_AND_26()
  l1 = self.box_Multiple_AND_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_CallCopsFelony|1898475293", "1898475293", "S14M060_CallCopsFelony", "box_CLOController_21.OnUserInPlace", "box_Multiple_AND_26.Condition", l0, l1)
  l1:Condition(0)
end
function export:OnEnter_box_MultipleOR_43()
end
function export:OnEnter_box_Multiple_AND_28()
end
function export:OnEnter_box_Multiple_AND_26()
end
function export:OnEnter_box_Multiple_AND_91()
end
function export:OnEnter_box_Multiple_AND_85()
end
function export:OnEnter_box_Multiple_AND_6()
end
function export:OnEnter_box_Multiple_AND_12()
end
function export:OnEnter_box_MultipleOR_38()
end
function export:OnEnter_box_Multiple_AND_69()
end
function export:OnEnter_box_Multiple_AND_13()
end
function export:OnEnter_box_Multiple_AND_101()
end
function export:OnEnter_box_Multiple_AND_36()
end
function export:Out_CarReadyToAdopt()
end
function export:Out_FirstWaveSpawned()
end
function export:Out_SecondWaveSpawned()
end
_compilerVersion = 4
