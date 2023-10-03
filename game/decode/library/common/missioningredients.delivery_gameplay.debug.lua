export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("Domino/System/DeliveryGameplayController.lua")
  cbox:RegisterBox("Domino/System/ForcePawnsVehicleStop_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("Domino/System/PlayerConflictMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/VehicleSeatingMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Delivery Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay"
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.AllDeliveryCompleted = DummyFunction
  self.NewDeliveryCompleted = DummyFunction
  self.SpecificVehicleReliabilityFailure = DummyFunction
  self.VehicleForceStopped = DummyFunction
  self.Evaded = DummyFunction
  self.InConflict = DummyFunction
  self.TeamSpeakFinished = DummyFunction
  self.TempVehicle = nil
  self.Player = nil
  self.IsInConflict = 0
  self.IsInCar = 0
  self.TSisPlaying = 0
  self.ColliderVehicle = nil
  self.Collider = nil
  self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_49
  l0._graph = self
  l0._name = "box_MultipleOR_49"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|137742482"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_49_Out
  self.box_MissionMessageController_v3_28 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_28
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|259454673"
  l0.Out = self.f_box_MissionMessageController_v3_28_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_81 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_81
  l0._graph = self
  l0._name = "box_MultipleOR_81"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|278708010"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = DummyFunction
  self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_65
  l0._graph = self
  l0._name = "box_MultipleOR_65"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|285407957"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_65_Out
  self.box_SetBoolean_v2_66 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_66
  l0._graph = self
  l0._name = "box_SetBoolean_v2_66"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|375474284"
  l0.Out = self.f_box_SetBoolean_v2_66_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_66_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_66_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_66_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_66_SetFromBool
  self.box_VehicleMonitor_v3_53 = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_53
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_53"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|381862490"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_53_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v3_53_Leave
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
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
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_23
  l0._graph = self
  l0._name = "box_MultipleOR_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|387069524"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_23_Out
  self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|467603292"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
  self.box_SwitchOutput_v3_64 = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_64
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_64"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|526243215"
  l0._DynamicAnchors = {Output = 1}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_64_Output_0
  l0.None = self.f_box_SwitchOutput_v3_64_None
  l0.WasReset = DummyFunction
  self.box_MultipleOR_74 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_74
  l0._graph = self
  l0._name = "box_MultipleOR_74"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|630680868"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_74_Out
  self.box_TriggerMonitor_v2_84 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_84
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_84"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|645736466"
  l0.Enabled = self.f_box_TriggerMonitor_v2_84_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_84_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_84_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_84_Use
  self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_24
  l0._graph = self
  l0._name = "box_MultipleOR_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|706605994"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_24_Out
  self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|799998947"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_VehicleMonitor_v3_14 = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_14
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|966726224"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_14_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
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
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_MissionMessageController_v3_35 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_35
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|987635969"
  l0.Out = self.f_box_MissionMessageController_v3_35_Out
  l0.MessageCompleted = DummyFunction
  self.box_SetBoolean_v2_68 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_68
  l0._graph = self
  l0._name = "box_SetBoolean_v2_68"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1041189341"
  l0.Out = self.f_box_SetBoolean_v2_68_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_68_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_68_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_68_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_68_SetFromBool
  self.box_DeliveryGameplayController_1 = cbox:CreateBox("Domino/System/DeliveryGameplayController.lua")
  l0 = self.box_DeliveryGameplayController_1
  l0._graph = self
  l0._name = "box_DeliveryGameplayController_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1098323198"
  l0.Started = self.f_box_DeliveryGameplayController_1_Started
  l0.Stopped = self.f_box_DeliveryGameplayController_1_Stopped
  l0.ADeliveryHasCompleted = self.f_box_DeliveryGameplayController_1_ADeliveryHasCompleted
  l0.AllDeliveryCompleted = self.f_box_DeliveryGameplayController_1_AllDeliveryCompleted
  l0.SpecificVehicleDamagedFailure = self.f_box_DeliveryGameplayController_1_SpecificVehicleDamagedFailure
  self.box_TriggerMonitor_v2_5 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_5
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1099030179"
  l0.Enabled = self.f_box_TriggerMonitor_v2_5_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_5_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_5_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_5_Use
  self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_46
  l0._graph = self
  l0._name = "box_MultipleOR_46"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1116957309"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_46_Out
  self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_25
  l0._graph = self
  l0._name = "box_MultipleOR_25"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1123069493"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_25_Out
  self.box_PhoneCommunicationController_63 = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_63
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_63"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1127440115"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_63_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_91 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_91
  l0._graph = self
  l0._name = "box_MultipleOR_91"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1166412742"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_91_Out
  self.box_SetBoolean_v2_73 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_73
  l0._graph = self
  l0._name = "box_SetBoolean_v2_73"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1172570445"
  l0.Out = self.f_box_SetBoolean_v2_73_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_73_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_73_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_73_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_73_SetFromBool
  self.box_TriggerMonitor_v2_77 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_77
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_77"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1178892431"
  l0.Enabled = self.f_box_TriggerMonitor_v2_77_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_77_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_77_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_77_Use
  self.box_MissionMessageController_v3_41 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_41
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1259180053"
  l0.Out = self.f_box_MissionMessageController_v3_41_Out
  l0.MessageCompleted = DummyFunction
  self.box_VehicleMonitor_v3_10 = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_10
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1370196699"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = self.f_box_VehicleMonitor_v3_10_NoMoveTimer
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_MultipleOR_96 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_96
  l0._graph = self
  l0._name = "box_MultipleOR_96"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1408892037"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_96_Out
  self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_48
  l0._graph = self
  l0._name = "box_MultipleOR_48"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1459975586"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_48_Out
  self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1475574031"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1497421080"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_OnceOnly_v3_79 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_79
  l0._graph = self
  l0._name = "box_OnceOnly_v3_79"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1647984200"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_79_Out
  l0.ResetOut = self.f_box_OnceOnly_v3_79_ResetOut
  self.box_MissionMessageController_v3_52 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_52
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_52"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1697173312"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_52_MessageCompleted
  self.box_MultipleOR_78 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_78
  l0._graph = self
  l0._name = "box_MultipleOR_78"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1946330665"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_78_Out
  self.box_MultipleOR_54 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_54
  l0._graph = self
  l0._name = "box_MultipleOR_54"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1950673876"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_54_Out
  self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_56
  l0._graph = self
  l0._name = "box_MultipleOR_56"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1982929534"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_56_Out
  self.box_VehicleMonitor_v3_34 = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_34
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2023239824"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_34_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v3_34_Leave
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
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
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_SetBoolean_v2_72 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_72
  l0._graph = self
  l0._name = "box_SetBoolean_v2_72"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2048561209"
  l0.Out = self.f_box_SetBoolean_v2_72_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_72_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_72_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_72_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_72_SetFromBool
  self.box_Player_Conflict_Monitor_75 = cbox:CreateBox("Domino/System/PlayerConflictMonitor.lua")
  l0 = self.box_Player_Conflict_Monitor_75
  l0._graph = self
  l0._name = "box_Player_Conflict_Monitor_75"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2097366902"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InConflict = self.f_box_Player_Conflict_Monitor_75_InConflict
  l0.NOTInConflict = self.f_box_Player_Conflict_Monitor_75_NOTInConflict
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_60"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1713658090"
  l0.Out = self.f_box_Get_Player_ID_60_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1823938259", "1823938259", "Delivery Gameplay", "Start", "box_Get_Player_ID_60.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|295509134"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|602172952", "602172952", "Delivery Gameplay", "Stop", "box_Ordered_Output_6.In", self, l0)
  l0:In()
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1599013256", "1599013256", "Delivery Gameplay", "Stop", "box_MultipleOR_36.Input", self, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_8_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ForceStopAtDestination
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1684648524"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_9_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|144601346", "144601346", "Delivery Gameplay", "box_Test_if_Nil_8.Is_not_nil", "box_Compare_Boolean_v2_9.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_33_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_38"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1527533957"
  l0.Out = self.f_box_Simple_Node_38_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|643551101", "643551101", "Delivery Gameplay", "box_Test_if_Nil_33.Is_nil", "box_Simple_Node_38.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_33_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VehicleEntity
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_31"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|363336023"
  l0.Is_nil = self.f_box_Test_if_Nil_31_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_31_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1237995504", "1237995504", "Delivery Gameplay", "box_Test_if_Nil_33.Is_not_nil", "box_Test_if_Nil_31.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_59_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.ForceStopAtDestination
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_58"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|681289393"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_58_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|797746638", "797746638", "Delivery Gameplay", "box_Test_if_Nil_59.Is_not_nil", "box_Test_if_Nil_58.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_78()
  l0 = self.box_MultipleOR_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|454804126", "454804126", "Delivery Gameplay", "box_Ordered_Output_37.Out", "box_MultipleOR_78.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_52
  l0.Objective = self.PostEscape_OutOfVehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|459371276", "459371276", "Delivery Gameplay", "box_Ordered_Output_37.Out", "box_MissionMessageController_v3_52.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_Simple_Node_87_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|135611490", "135611490", "Delivery Gameplay", "box_Simple_Node_87.Out", "box_MultipleOR_24.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_49_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ForcePawnsVehicleStop_v2_7()
  l0 = self.box_MultipleOR_49
  l1 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1015231324", "1015231324", "Delivery Gameplay", "box_MultipleOR_49.Out", "box_ForcePawnsVehicleStop_v2_7.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_Ordered_Output_26_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|992566709", "992566709", "Delivery Gameplay", "box_Ordered_Output_26.Out", "box_MultipleOR_49.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_26_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1901788113", "1901788113", "Delivery Gameplay", "box_Ordered_Output_26.Out", "AllDeliveryCompleted", clone, self)
  self:AllDeliveryCompleted()
end
function export:f_box_Ordered_Output_82_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1150681259", "1150681259", "Delivery Gameplay", "box_Ordered_Output_82.Out", "box_MultipleOR_49.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_82_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_14()
  l0 = self.box_VehicleMonitor_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1893442837", "1893442837", "Delivery Gameplay", "box_Ordered_Output_82.Out", "box_VehicleMonitor_v3_14.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_82_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_87"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|64516649"
  l0.Out = self.f_box_Simple_Node_87_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2111668981", "2111668981", "Delivery Gameplay", "box_Ordered_Output_82.Out", "box_Simple_Node_87.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_15_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.GetOutToComplete
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1597235298"
  l0.Is_nil = self.f_box_Test_if_Nil_21_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_21_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|204742530", "204742530", "Delivery Gameplay", "box_Test_if_Nil_15.Is_not_nil", "box_Test_if_Nil_21.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_29_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_67"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|638629091"
  l0.Out = self.f_box_Simple_Node_67_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1035726212", "1035726212", "Delivery Gameplay", "box_Compare_Boolean_v2_29.A_is_False", "box_Simple_Node_67.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleSeatingMonitor_89_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1566481167"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|731869760", "731869760", "Delivery Gameplay", "box_VehicleSeatingMonitor_89.EntityIsInVehicle", "box_Ordered_Output_16.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_28_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_79()
  l0 = self.box_MissionMessageController_v3_28
  l1 = self.box_OnceOnly_v3_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1574958364", "1574958364", "Delivery Gameplay", "box_MissionMessageController_v3_28.Out", "box_OnceOnly_v3_79.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1038230312", "1038230312", "Delivery Gameplay", "box_Ordered_Output_4.Out", "AllDeliveryCompleted", clone, self)
  self:AllDeliveryCompleted()
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_46()
  l0 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1490506420", "1490506420", "Delivery Gameplay", "box_Ordered_Output_4.Out", "box_MultipleOR_46.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_MultipleOR_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_35
  l0.Objective = self.PostEscape_InVehicle
  l0 = self.box_MultipleOR_65
  l1 = self.box_MissionMessageController_v3_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|589848093", "589848093", "Delivery Gameplay", "box_MultipleOR_65.Out", "box_MissionMessageController_v3_35.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_Ordered_Output_6_Out_0()
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
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = self.PostEscape_InVehicle
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_43"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|875097974"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_43_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|299379339", "299379339", "Delivery Gameplay", "box_Ordered_Output_6.Out", "box_Test_if_Nil_43.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|483476334", "483476334", "Delivery Gameplay", "box_Ordered_Output_6.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_Test_if_Nil_31_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Escape will only be checked if a \"VehicleEntity\" is set. Either remove \"DeliveryObjectivePostEscape\" or set a \"VehicleEntity\""
  l0.Duration = 10
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_39"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|344673662"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|93583511", "93583511", "Delivery Gameplay", "box_Test_if_Nil_31.Is_nil", "box_TextToScreen_v2_39.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_31_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_34()
  l0 = self.box_VehicleMonitor_v3_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1573860013", "1573860013", "Delivery Gameplay", "box_Test_if_Nil_31.Is_not_nil", "box_VehicleMonitor_v3_34.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetBoolean_v2_66_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.IsInConflict = l0.Target
end
function export:f_box_SetBoolean_v2_66_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.IsInConflict = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_61"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|659562962"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_61_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_61_Out_1
  l0 = self.box_SetBoolean_v2_66
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1897630311", "1897630311", "Delivery Gameplay", "box_SetBoolean_v2_66.SetFalse", "box_Ordered_Output_61.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_66_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.IsInConflict = l0.Target
end
function export:f_box_SetBoolean_v2_66_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.IsInConflict = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1019817870"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_30_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_30_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_30_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_30_Out_3
  l0 = self.box_SetBoolean_v2_66
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1599020135", "1599020135", "Delivery Gameplay", "box_SetBoolean_v2_66.SetTrue", "box_Ordered_Output_30.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_66_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.IsInConflict = l0.Target
end
function export:f_box_VehicleMonitor_v3_53_Entered()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_68()
  l0 = self.box_VehicleMonitor_v3_53
  l1 = self.box_SetBoolean_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1080056510", "1080056510", "Delivery Gameplay", "box_VehicleMonitor_v3_53.Entered", "box_SetBoolean_v2_68.True", l0, l1)
  l1:True()
end
function export:f_box_VehicleMonitor_v3_53_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_68()
  l0 = self.box_VehicleMonitor_v3_53
  l1 = self.box_SetBoolean_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1261246009", "1261246009", "Delivery Gameplay", "box_VehicleMonitor_v3_53.Leave", "box_SetBoolean_v2_68.False", l0, l1)
  l1:False()
end
function export:f_box_MultipleOR_23_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.ForceStopAtDestination
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|5166455"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_8_Is_not_nil
  l0 = self.box_MultipleOR_23
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2040346952", "2040346952", "Delivery Gameplay", "box_MultipleOR_23.Out", "box_Test_if_Nil_8.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_44_Out_0()
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
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = self.PostEscape_InVehicle
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_33"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|33873209"
  l0.Is_nil = self.f_box_Test_if_Nil_33_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_33_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|815691932", "815691932", "Delivery Gameplay", "box_Ordered_Output_44.Out", "box_Test_if_Nil_33.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_44_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1822069892", "1822069892", "Delivery Gameplay", "box_Ordered_Output_44.Out", "Started", clone, self)
  self:Started()
end
function export:f_box_Ordered_Output_44_Out_2()
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
  l0.Entity = self.VehicleEntity
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_59"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|57715463"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_59_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1364754015", "1364754015", "Delivery Gameplay", "box_Ordered_Output_44.Out", "box_Test_if_Nil_59.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_95_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GetOutToComplete
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_94"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1453168591"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_94_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|164151190", "164151190", "Delivery Gameplay", "box_Compare_Boolean_v2_95.A_is_True", "box_Compare_Boolean_v2_94.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_3_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DeliveryGameplayController_1()
  l0 = self.box_MultipleOR_3
  l1 = self.box_DeliveryGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|782595322", "782595322", "Delivery Gameplay", "box_MultipleOR_3.Out", "box_DeliveryGameplayController_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Test_if_Nil_51_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_54()
  l0 = self.box_MultipleOR_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1319848102", "1319848102", "Delivery Gameplay", "box_Test_if_Nil_51.Is_nil", "box_MultipleOR_54.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_51_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_53()
  l0 = self.box_VehicleMonitor_v3_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|652509410", "652509410", "Delivery Gameplay", "box_Test_if_Nil_51.Is_not_nil", "box_VehicleMonitor_v3_53.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SwitchOutput_v3_64_None()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TSisPlaying
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|231069135"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_29_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SwitchOutput_v3_64
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1572570189", "1572570189", "Delivery Gameplay", "box_SwitchOutput_v3_64.None", "box_Compare_Boolean_v2_29.In", l0, l1)
  l1:In()
end
function export:f_box_SwitchOutput_v3_64_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_SwitchOutput_v3_64
  l1 = self.box_SetBoolean_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|600855904", "600855904", "Delivery Gameplay", "box_SwitchOutput_v3_64.Output", "box_SetBoolean_v2_72.True", l0, l1)
  l1:True()
end
function export:f_box_Ordered_Output_76_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1369632961", "1369632961", "Delivery Gameplay", "box_Ordered_Output_76.Out", "box_SetBoolean_v2_73.False", clone, l0)
  l0:False()
end
function export:f_box_Ordered_Output_76_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2035062297", "2035062297", "Delivery Gameplay", "box_Ordered_Output_76.Out", "TeamSpeakFinished", clone, self)
  self:TeamSpeakFinished()
end
function export:f_box_MultipleOR_74_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_77()
  l0 = self.box_MultipleOR_74
  l1 = self.box_TriggerMonitor_v2_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|149954724", "149954724", "Delivery Gameplay", "box_MultipleOR_74.Out", "box_TriggerMonitor_v2_77.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|623126582", "623126582", "Delivery Gameplay", "box_Simple_Node_67.Out", "box_MultipleOR_65.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_TriggerMonitor_v2_84_Enabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_84
  self.ColliderVehicle = l0.Collider
end
function export:f_box_TriggerMonitor_v2_84_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_84
  self.ColliderVehicle = l0.Collider
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.ColliderVehicle
  l0.Entity2 = self.VehicleEntity
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_86"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1943159632"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_86_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_TriggerMonitor_v2_84
  l1 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|153080556", "153080556", "Delivery Gameplay", "box_TriggerMonitor_v2_84.Enter", "box_Compare_Entity_v2_86.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_84_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_84
  self.ColliderVehicle = l0.Collider
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_83"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2035922753"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_83_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_83_Out_1
  l0 = self.box_TriggerMonitor_v2_84
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|443332196", "443332196", "Delivery Gameplay", "box_TriggerMonitor_v2_84.Leave", "box_Ordered_Output_83.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_84_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_84
  self.ColliderVehicle = l0.Collider
end
function export:f_box_Ordered_Output_61_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1364155987", "1364155987", "Delivery Gameplay", "box_Ordered_Output_61.Out", "Evaded", clone, self)
  self:Evaded()
end
function export:f_box_Ordered_Output_61_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1321610389", "1321610389", "Delivery Gameplay", "box_Ordered_Output_61.Out", "box_MultipleOR_48.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_58_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ForceStopAtDestination
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_57"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|689069715"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_57_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|563302575", "563302575", "Delivery Gameplay", "box_Test_if_Nil_58.Is_not_nil", "box_Compare_Boolean_v2_57.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_57_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0._name = "box_ForcePawnsVehicleStop_v2_47"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|617501274"
  l0.Stopped = DummyFunction
  l0.ResetOut = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2014600366", "2014600366", "Delivery Gameplay", "box_Compare_Boolean_v2_57.A_is_True", "box_ForcePawnsVehicleStop_v2_47.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_MultipleOR_24_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_5()
  l0 = self.box_MultipleOR_24
  l1 = self.box_TriggerMonitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1043993104", "1043993104", "Delivery Gameplay", "box_MultipleOR_24.Out", "box_TriggerMonitor_v2_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Entity_v2_90_NotEqual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_91()
  l0 = self.box_MultipleOR_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1640179737", "1640179737", "Delivery Gameplay", "box_Compare_Entity_v2_90.NotEqual", "box_MultipleOR_91.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_62_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1055935885", "1055935885", "Delivery Gameplay", "box_Test_if_Nil_62.Is_nil", "box_MultipleOR_65.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_62_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SwitchOutput_v3_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1345131733", "1345131733", "Delivery Gameplay", "box_Test_if_Nil_62.Is_not_nil", "box_SwitchOutput_v3_64.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_12_A_is_False()
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
  l0.Boolean = self.ForceStopAtDestination
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1541893777"
  l0.Is_nil = self.f_box_Test_if_Nil_17_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_17_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2082045715", "2082045715", "Delivery Gameplay", "box_Compare_Boolean_v2_12.A_is_False", "box_Test_if_Nil_17.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_12_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|642329852", "642329852", "Delivery Gameplay", "box_Compare_Boolean_v2_12.A_is_True", "box_MultipleOR_25.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_55"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2016071792"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_55_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_55_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_55_Out_2
  l0 = self.box_MultipleOR_2
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|892504478", "892504478", "Delivery Gameplay", "box_MultipleOR_2.Out", "box_Ordered_Output_55.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1805067424", "1805067424", "Delivery Gameplay", "box_Simple_Node_40.Out", "box_MultipleOR_3.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_43_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1286774041", "1286774041", "Delivery Gameplay", "box_Test_if_Nil_43.Is_not_nil", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_ForcePawnsVehicleStop_v2_7_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_10()
  l0 = self.box_VehicleMonitor_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|311057024", "311057024", "Delivery Gameplay", "box_ForcePawnsVehicleStop_v2_7.Stopped", "box_VehicleMonitor_v3_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_VehicleMonitor_v3_14_Entered()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_82"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|195862024"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_82_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_82_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_82_Out_2
  l0 = self.box_VehicleMonitor_v3_14
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|441024353", "441024353", "Delivery Gameplay", "box_VehicleMonitor_v3_14.Entered", "box_Ordered_Output_82.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_35_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_79()
  l0 = self.box_MissionMessageController_v3_35
  l1 = self.box_OnceOnly_v3_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|470365595", "470365595", "Delivery Gameplay", "box_MissionMessageController_v3_35.Out", "box_OnceOnly_v3_79.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_30_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_28
  l0.Objective = {
    section = "MISSIONS.COMMON.MESSAGES.OBJECTIVE",
    item = "Objective_Escape",
    id = "693233"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|758306863", "758306863", "Delivery Gameplay", "box_Ordered_Output_30.Out", "box_MissionMessageController_v3_28.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_Ordered_Output_30_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_56()
  l0 = self.box_MultipleOR_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1730686517", "1730686517", "Delivery Gameplay", "box_Ordered_Output_30.Out", "box_MultipleOR_56.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_30_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_50"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1053787556"
  l0.Out = self.f_box_Simple_Node_50_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1772173862", "1772173862", "Delivery Gameplay", "box_Ordered_Output_30.Out", "box_Simple_Node_50.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_30_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|415432689", "415432689", "Delivery Gameplay", "box_Ordered_Output_30.Out", "InConflict", clone, self)
  self:InConflict()
end
function export:f_box_SetBoolean_v2_68_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_68
  self.IsInCar = l0.Target
end
function export:f_box_SetBoolean_v2_68_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_68
  self.IsInCar = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TSisPlaying
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_70"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1691997423"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_70_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_68
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|305955250", "305955250", "Delivery Gameplay", "box_SetBoolean_v2_68.SetFalse", "box_Compare_Boolean_v2_70.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_68_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_68
  self.IsInCar = l0.Target
end
function export:f_box_SetBoolean_v2_68_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_68
  self.IsInCar = l0.Target
  self:OnEnter_box_MultipleOR_54()
  l1 = self.box_MultipleOR_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2002401527", "2002401527", "Delivery Gameplay", "box_SetBoolean_v2_68.SetTrue", "box_MultipleOR_54.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_68_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_68
  self.IsInCar = l0.Target
end
function export:f_box_Simple_Node_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1689239", "1689239", "Delivery Gameplay", "box_Simple_Node_50.Out", "box_MultipleOR_49.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_DeliveryGameplayController_1_ADeliveryHasCompleted()
  local l0
  self = self._graph
  l0 = self.box_DeliveryGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1524455969", "1524455969", "Delivery Gameplay", "box_DeliveryGameplayController_1.ADeliveryHasCompleted", "NewDeliveryCompleted", l0, self)
  self:NewDeliveryCompleted()
end
function export:f_box_DeliveryGameplayController_1_AllDeliveryCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_32"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1236729297"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_32_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_32_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_32_Out_2
  l0 = self.box_DeliveryGameplayController_1
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|338307128", "338307128", "Delivery Gameplay", "box_DeliveryGameplayController_1.AllDeliveryCompleted", "box_Ordered_Output_32.In", l0, l1)
  l1:In()
end
function export:f_box_DeliveryGameplayController_1_SpecificVehicleDamagedFailure()
  local l0
  self = self._graph
  l0 = self.box_DeliveryGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|284806197", "284806197", "Delivery Gameplay", "box_DeliveryGameplayController_1.SpecificVehicleDamagedFailure", "SpecificVehicleReliabilityFailure", l0, self)
  self:SpecificVehicleReliabilityFailure()
end
function export:f_box_DeliveryGameplayController_1_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VehicleEntity
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|223402140"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_15_Is_not_nil
  l0 = self.box_DeliveryGameplayController_1
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1728178392", "1728178392", "Delivery Gameplay", "box_DeliveryGameplayController_1.Started", "box_Test_if_Nil_15.In", l0, l1)
  l1:In()
end
function export:f_box_DeliveryGameplayController_1_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_46()
  l0 = self.box_DeliveryGameplayController_1
  l1 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1019893162", "1019893162", "Delivery Gameplay", "box_DeliveryGameplayController_1.Stopped", "box_MultipleOR_46.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TriggerMonitor_v2_5_Enabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_5
  self.ColliderVehicle = l0.Collider
end
function export:f_box_TriggerMonitor_v2_5_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_5
  self.ColliderVehicle = l0.Collider
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.ColliderVehicle
  l0.Entity2 = self.VehicleEntity
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_88"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1472508142"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_88_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_TriggerMonitor_v2_5
  l1 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|739092240", "739092240", "Delivery Gameplay", "box_TriggerMonitor_v2_5.Enter", "box_Compare_Entity_v2_88.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_5_Leave()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_5
  self.ColliderVehicle = l0.Collider
end
function export:f_box_TriggerMonitor_v2_5_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_5
  self.ColliderVehicle = l0.Collider
end
function export:f_box_MultipleOR_46_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_5()
  l0 = self.box_MultipleOR_46
  l1 = self.box_TriggerMonitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|648614566", "648614566", "Delivery Gameplay", "box_MultipleOR_46.Out", "box_TriggerMonitor_v2_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_25_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|267702384"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0 = self.box_MultipleOR_25
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|726427994", "726427994", "Delivery Gameplay", "box_MultipleOR_25.Out", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_63_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_76"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|599105033"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_76_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_76_Out_1
  l0 = self.box_PhoneCommunicationController_63
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1300542321", "1300542321", "Delivery Gameplay", "box_PhoneCommunicationController_63.OnCommunicationFinished", "box_Ordered_Output_76.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_91_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_37"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|57752705"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_37_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_37_Out_1
  l0 = self.box_MultipleOR_91
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|243804239", "243804239", "Delivery Gameplay", "box_MultipleOR_91.Out", "box_Ordered_Output_37.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_73_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.TSisPlaying = l0.Target
end
function export:f_box_SetBoolean_v2_73_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.TSisPlaying = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsInConflict
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_69"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1237589441"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_69_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_73
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1541031698", "1541031698", "Delivery Gameplay", "box_SetBoolean_v2_73.SetFalse", "box_Compare_Boolean_v2_69.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_73_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.TSisPlaying = l0.Target
end
function export:f_box_SetBoolean_v2_73_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.TSisPlaying = l0.Target
end
function export:f_box_SetBoolean_v2_73_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.TSisPlaying = l0.Target
end
function export:f_box_TriggerMonitor_v2_77_Enabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_77
  self.Collider = l0.Collider
end
function export:f_box_TriggerMonitor_v2_77_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_77
  self.Collider = l0.Collider
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Collider
  l0.Entity2 = self.Player
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_90"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|750009712"
  l0.Out = DummyFunction
  l0.Equal = DummyFunction
  l0.NotEqual = self.f_box_Compare_Entity_v2_90_NotEqual
  l0 = self.box_TriggerMonitor_v2_77
  l1 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1900231662", "1900231662", "Delivery Gameplay", "box_TriggerMonitor_v2_77.Enter", "box_Compare_Entity_v2_90.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_77_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_77
  self.Collider = l0.Collider
  self:OnEnter_box_MultipleOR_91()
  l1 = self.box_MultipleOR_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|477801251", "477801251", "Delivery Gameplay", "box_TriggerMonitor_v2_77.Leave", "box_MultipleOR_91.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TriggerMonitor_v2_77_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_77
  self.Collider = l0.Collider
end
function export:f_box_Simple_Node_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|611613800", "611613800", "Delivery Gameplay", "box_Simple_Node_42.Out", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_80_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|797932590", "797932590", "Delivery Gameplay", "box_Ordered_Output_80.Out", "VehicleForceStopped", clone, self)
  self:VehicleForceStopped()
end
function export:f_box_Ordered_Output_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MultipleOR_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|896545505", "896545505", "Delivery Gameplay", "box_Ordered_Output_80.Out", "box_MultipleOR_81.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_85_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GetOutToComplete
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1223847024"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_20_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_20_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1856473196", "1856473196", "Delivery Gameplay", "box_Ordered_Output_85.Out", "box_Compare_Boolean_v2_20.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_85_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_10()
  l0 = self.box_VehicleMonitor_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1772649808", "1772649808", "Delivery Gameplay", "box_Ordered_Output_85.Out", "box_VehicleMonitor_v3_10.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Boolean_v2_20_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|151741780"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_26_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_26_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1705403378", "1705403378", "Delivery Gameplay", "box_Compare_Boolean_v2_20.A_is_False", "box_Ordered_Output_26.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_20_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_84()
  l0 = self.box_TriggerMonitor_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|233112892", "233112892", "Delivery Gameplay", "box_Compare_Boolean_v2_20.A_is_True", "box_TriggerMonitor_v2_84.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_0()
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
  l0.Entity = self.VehicleEntity
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2024189076"
  l0.Is_nil = self.f_box_Test_if_Nil_27_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_27_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|885357406", "885357406", "Delivery Gameplay", "box_Ordered_Output_32.Out", "box_Test_if_Nil_27.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_32_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_42"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1182854189"
  l0.Out = self.f_box_Simple_Node_42_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1621166519", "1621166519", "Delivery Gameplay", "box_Ordered_Output_32.Out", "box_Simple_Node_42.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_32_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_92"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1931922592"
  l0.Out = self.f_box_Simple_Node_92_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|110936921", "110936921", "Delivery Gameplay", "box_Ordered_Output_32.Out", "box_Simple_Node_92.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_69_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsInCar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_71"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1745218322"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_71_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_71_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1291398610", "1291398610", "Delivery Gameplay", "box_Compare_Boolean_v2_69.A_is_False", "box_Compare_Boolean_v2_71.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_41_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_63
  l0.PhoneCommunicationDb = self.TeamSpeakPostEscape
  l0 = self.box_MissionMessageController_v3_41
  l1 = self.box_PhoneCommunicationController_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1225309858", "1225309858", "Delivery Gameplay", "box_MissionMessageController_v3_41.Out", "box_PhoneCommunicationController_63.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Test_if_Nil_19_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1364279502", "1364279502", "Delivery Gameplay", "box_Test_if_Nil_19.Is_nil", "box_MultipleOR_25.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_19_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GetOutToComplete
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|786459268"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_12_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_12_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|246401776", "246401776", "Delivery Gameplay", "box_Test_if_Nil_19.Is_not_nil", "box_Compare_Boolean_v2_12.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleMonitor_v3_10_NoMoveTimer()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_85"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1222089574"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_85_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_85_Out_1
  l0 = self.box_VehicleMonitor_v3_10
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1488363997", "1488363997", "Delivery Gameplay", "box_VehicleMonitor_v3_10.NoMoveTimer", "box_Ordered_Output_85.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_78()
  l0 = self.box_MultipleOR_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1190731030", "1190731030", "Delivery Gameplay", "box_Simple_Node_11.Out", "box_MultipleOR_78.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_96_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_84()
  l0 = self.box_MultipleOR_96
  l1 = self.box_TriggerMonitor_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|567325599", "567325599", "Delivery Gameplay", "box_MultipleOR_96.Out", "box_TriggerMonitor_v2_84.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Compare_Boolean_v2_94_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_96()
  l0 = self.box_MultipleOR_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1828048074", "1828048074", "Delivery Gameplay", "box_Compare_Boolean_v2_94.A_is_True", "box_MultipleOR_96.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_22_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|712985179", "712985179", "Delivery Gameplay", "box_Compare_Boolean_v2_22.A_is_True", "box_MultipleOR_23.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_48_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = self.PostEscape_OutOfVehicle
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_51"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|500485432"
  l0.Is_nil = self.f_box_Test_if_Nil_51_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_51_Is_not_nil
  l0 = self.box_MultipleOR_48
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|177052373", "177052373", "Delivery Gameplay", "box_MultipleOR_48.Out", "box_Test_if_Nil_51.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Entity_v2_88_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.Player
  l0.Vehicle = self.VehicleEntity
  l0._graph = self
  l0._name = "box_VehicleSeatingMonitor_89"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|245513678"
  l0.EntityIsInVehicle = self.f_box_VehicleSeatingMonitor_89_EntityIsInVehicle
  l0.EntityIsNotInVehicle = DummyFunction
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|898926968", "898926968", "Delivery Gameplay", "box_Compare_Entity_v2_88.Equal", "box_VehicleSeatingMonitor_89.IsInVehicle", clone, l0)
  l0:IsInVehicle()
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DeliveryGameplayController_1()
  l0 = self.box_MultipleOR_36
  l1 = self.box_DeliveryGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|339052654", "339052654", "Delivery Gameplay", "box_MultipleOR_36.Out", "box_DeliveryGameplayController_1.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ForcePawnsVehicleStop_v2_7()
  l0 = self.box_MultipleOR_13
  l1 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1936505747", "1936505747", "Delivery Gameplay", "box_MultipleOR_13.Out", "box_ForcePawnsVehicleStop_v2_7.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Simple_Node_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|825394406"
  l0.Out = self.f_box_Simple_Node_40_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|259789355", "259789355", "Delivery Gameplay", "box_Simple_Node_38.Out", "box_Simple_Node_40.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_17_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|381023584", "381023584", "Delivery Gameplay", "box_Test_if_Nil_17.Is_nil", "box_MultipleOR_25.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Test_if_Nil_17_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ForceStopAtDestination
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1856971568"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_18_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_18_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1236425832", "1236425832", "Delivery Gameplay", "box_Test_if_Nil_17.Is_not_nil", "box_Compare_Boolean_v2_18.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_46()
  l0 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|765585418", "765585418", "Delivery Gameplay", "box_Ordered_Output_16.Out", "box_MultipleOR_46.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|120465361", "120465361", "Delivery Gameplay", "box_Ordered_Output_16.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_21_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1157597452", "1157597452", "Delivery Gameplay", "box_Test_if_Nil_21.Is_nil", "box_MultipleOR_23.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_21_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GetOutToComplete
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1456447381"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_22_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|61570129", "61570129", "Delivery Gameplay", "box_Test_if_Nil_21.Is_not_nil", "box_Compare_Boolean_v2_22.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_45_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Conflict_Monitor_75()
  l0 = self.box_Player_Conflict_Monitor_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|672623895", "672623895", "Delivery Gameplay", "box_Ordered_Output_45.Out", "box_Player_Conflict_Monitor_75.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_45_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_34()
  l0 = self.box_VehicleMonitor_v3_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|742077826", "742077826", "Delivery Gameplay", "box_Ordered_Output_45.Out", "box_VehicleMonitor_v3_34.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_OnceOnly_v3_79_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_OnceOnly_v3_79
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1074676880", "1074676880", "Delivery Gameplay", "box_OnceOnly_v3_79.Out", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_OnceOnly_v3_79_ResetOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_OnceOnly_v3_79
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2007238014", "2007238014", "Delivery Gameplay", "box_OnceOnly_v3_79.ResetOut", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_9_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1477133922", "1477133922", "Delivery Gameplay", "box_Compare_Boolean_v2_9.A_is_True", "box_MultipleOR_24.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_70_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_74()
  l0 = self.box_MultipleOR_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|16944456", "16944456", "Delivery Gameplay", "box_Compare_Boolean_v2_70.A_is_False", "box_MultipleOR_74.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionMessageController_v3_52_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_79()
  l0 = self.box_MissionMessageController_v3_52
  l1 = self.box_OnceOnly_v3_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1212529791", "1212529791", "Delivery Gameplay", "box_MissionMessageController_v3_52.MessageCompleted", "box_OnceOnly_v3_79.In", l0, l1)
  l1:In(1)
end
function export:f_box_Get_Player_ID_60_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_44"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|450502973"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_44_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_44_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_44_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|912649924", "912649924", "Delivery Gameplay", "box_Get_Player_ID_60.Out", "box_Ordered_Output_44.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_71_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_74()
  l0 = self.box_MultipleOR_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|964745709", "964745709", "Delivery Gameplay", "box_Compare_Boolean_v2_71.A_is_False", "box_MultipleOR_74.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_71_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1742959470", "1742959470", "Delivery Gameplay", "box_Compare_Boolean_v2_71.A_is_True", "box_MultipleOR_65.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_18_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2048390718", "2048390718", "Delivery Gameplay", "box_Compare_Boolean_v2_18.A_is_False", "box_MultipleOR_25.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_Compare_Boolean_v2_18_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1920494313", "1920494313", "Delivery Gameplay", "box_Compare_Boolean_v2_18.A_is_True", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Simple_Node_93_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ForceStopAtDestination
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_95"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|452898975"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_95_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2115205219", "2115205219", "Delivery Gameplay", "box_Simple_Node_93.Out", "box_Compare_Boolean_v2_95.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_92_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_93"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1912023104"
  l0.Out = self.f_box_Simple_Node_93_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|897495958", "897495958", "Delivery Gameplay", "box_Simple_Node_92.Out", "box_Simple_Node_93.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Entity_v2_86_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_80"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1205421373"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_80_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_80_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1248515461", "1248515461", "Delivery Gameplay", "box_Compare_Entity_v2_86.Equal", "box_Ordered_Output_80.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_78_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_77()
  l0 = self.box_MultipleOR_78
  l1 = self.box_TriggerMonitor_v2_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1302699135", "1302699135", "Delivery Gameplay", "box_MultipleOR_78.Out", "box_TriggerMonitor_v2_77.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_54_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.TeamSpeakPostEscape
  l0._graph = self
  l0._name = "box_Test_if_Nil_62"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|775277234"
  l0.Is_nil = self.f_box_Test_if_Nil_62_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_62_Is_not_nil
  l0 = self.box_MultipleOR_54
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|608868670", "608868670", "Delivery Gameplay", "box_MultipleOR_54.Out", "box_Test_if_Nil_62.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_56_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_53()
  l0 = self.box_MultipleOR_56
  l1 = self.box_VehicleMonitor_v3_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|578228086", "578228086", "Delivery Gameplay", "box_MultipleOR_56.Out", "box_VehicleMonitor_v3_53.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_55_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Conflict_Monitor_75()
  l0 = self.box_Player_Conflict_Monitor_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1597035843", "1597035843", "Delivery Gameplay", "box_Ordered_Output_55.Out", "box_Player_Conflict_Monitor_75.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_55_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_56()
  l0 = self.box_MultipleOR_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|442996413", "442996413", "Delivery Gameplay", "box_Ordered_Output_55.Out", "box_MultipleOR_56.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_55_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1383961740"
  l0.Out = self.f_box_Simple_Node_11_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|516227681", "516227681", "Delivery Gameplay", "box_Ordered_Output_55.Out", "box_Simple_Node_11.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleMonitor_v3_34_Entered()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_45"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1642490601"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_45_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_45_Out_1
  l0 = self.box_VehicleMonitor_v3_34
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1313335117", "1313335117", "Delivery Gameplay", "box_VehicleMonitor_v3_34.Entered", "box_Ordered_Output_45.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_34_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_VehicleMonitor_v3_34
  l1 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1040688002", "1040688002", "Delivery Gameplay", "box_VehicleMonitor_v3_34.Leave", "box_MultipleOR_48.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Test_if_Nil_27_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1526312708", "1526312708", "Delivery Gameplay", "box_Test_if_Nil_27.Is_nil", "box_MultipleOR_25.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_27_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.GetOutToComplete
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1355769118"
  l0.Is_nil = self.f_box_Test_if_Nil_19_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_19_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|306415768", "306415768", "Delivery Gameplay", "box_Test_if_Nil_27.Is_not_nil", "box_Test_if_Nil_19.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_83_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_96()
  l0 = self.box_MultipleOR_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|1530418096", "1530418096", "Delivery Gameplay", "box_Ordered_Output_83.Out", "box_MultipleOR_96.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_83_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_14()
  l0 = self.box_VehicleMonitor_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|833054745", "833054745", "Delivery Gameplay", "box_Ordered_Output_83.Out", "box_VehicleMonitor_v3_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetBoolean_v2_72_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_72
  self.TSisPlaying = l0.Target
end
function export:f_box_SetBoolean_v2_72_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_72
  self.TSisPlaying = l0.Target
end
function export:f_box_SetBoolean_v2_72_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_72
  self.TSisPlaying = l0.Target
end
function export:f_box_SetBoolean_v2_72_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_72
  self.TSisPlaying = l0.Target
  l1 = self.box_MissionMessageController_v3_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|565401239", "565401239", "Delivery Gameplay", "box_SetBoolean_v2_72.SetTrue", "box_MissionMessageController_v3_41.HideObjective", l0, l1)
  l1:HideObjective()
end
function export:f_box_SetBoolean_v2_72_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_72
  self.TSisPlaying = l0.Target
end
function export:f_box_Player_Conflict_Monitor_75_InConflict()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_66()
  l0 = self.box_Player_Conflict_Monitor_75
  l1 = self.box_SetBoolean_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|2095250396", "2095250396", "Delivery Gameplay", "box_Player_Conflict_Monitor_75.InConflict", "box_SetBoolean_v2_66.True", l0, l1)
  l1:True()
end
function export:f_box_Player_Conflict_Monitor_75_NOTInConflict()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_66()
  l0 = self.box_Player_Conflict_Monitor_75
  l1 = self.box_SetBoolean_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|968326575", "968326575", "Delivery Gameplay", "box_Player_Conflict_Monitor_75.NOTInConflict", "box_SetBoolean_v2_66.False", l0, l1)
  l1:False()
end
function export:OnEnter_box_MultipleOR_49()
end
function export:OnEnter_box_MultipleOR_65()
end
function export:OnEnter_box_SetBoolean_v2_66()
end
function export:OnEnter_box_VehicleMonitor_v3_53()
  local l0
  l0 = self.box_VehicleMonitor_v3_53
  l0.Vehicle = self.VehicleEntity
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_23()
end
function export:OnEnter_box_MultipleOR_3()
end
function export:OnEnter_box_MultipleOR_74()
end
function export:OnEnter_box_TriggerMonitor_v2_84()
  local l0
  l0 = self.box_TriggerMonitor_v2_84
  l0.Trigger = self.DestinationTrigger
  l0.TriggerList = self.DestinationTriggerList
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_24()
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_ForcePawnsVehicleStop_v2_7()
  local l0
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = self.ForceStopBrake
  l0._graph = self
  l0._name = "box_ForcePawnsVehicleStop_v2_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Delivery Gameplay|941960601"
  l0.Stopped = self.f_box_ForcePawnsVehicleStop_v2_7_Stopped
  l0.ResetOut = DummyFunction
end
function export:OnEnter_box_VehicleMonitor_v3_14()
  local l0
  l0 = self.box_VehicleMonitor_v3_14
  l0.Vehicle = self.VehicleEntity
  l0.CheckNow = 1
end
function export:OnEnter_box_SetBoolean_v2_68()
end
function export:OnEnter_box_DeliveryGameplayController_1()
  local l0
  l0 = self.box_DeliveryGameplayController_1
  l0.DestinationMarkerLocId = self.DestinationMarkerLocId
  l0.VehicleMarkerLocId = self.VehicleMarkerLocId
  l0.VehicleFlag = self.VehicleFlag
  l0.AcceptedReliability = self.AcceptedReliability
  l0.NbToDeliver = self.NbToDeliver
  l0.DestinationEntity = self.DestinationTrigger
  l0.DestinationEntityList = self.DestinationTriggerList
  l0.VehicleEntity = self.VehicleEntity
  l0.VehicleEntityList = self.VehicleEntityList
  l0.NeedsToGetOutOfVehicleToComplete = self.GetOutToComplete
end
function export:OnEnter_box_TriggerMonitor_v2_5()
  local l0
  l0 = self.box_TriggerMonitor_v2_5
  l0.Trigger = self.DestinationTrigger
  l0.TriggerList = self.DestinationTriggerList
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_46()
end
function export:OnEnter_box_MultipleOR_25()
end
function export:OnEnter_box_MultipleOR_91()
end
function export:OnEnter_box_TriggerMonitor_v2_77()
  local l0
  l0 = self.box_TriggerMonitor_v2_77
  l0.Trigger = self.DestinationTrigger
  l0.TriggerList = self.DestinationTriggerList
  l0.CheckNow = 1
end
function export:OnEnter_box_VehicleMonitor_v3_10()
  local l0
  l0 = self.box_VehicleMonitor_v3_10
  l0.Vehicle = self.VehicleEntity
  l0.NoMoveTime = 0.5
end
function export:OnEnter_box_MultipleOR_96()
end
function export:OnEnter_box_MultipleOR_48()
end
function export:OnEnter_box_MultipleOR_36()
end
function export:OnEnter_box_MultipleOR_13()
end
function export:OnEnter_box_OnceOnly_v3_79()
end
function export:OnEnter_box_MultipleOR_78()
end
function export:OnEnter_box_MultipleOR_54()
end
function export:OnEnter_box_MultipleOR_56()
end
function export:OnEnter_box_VehicleMonitor_v3_34()
  local l0
  l0 = self.box_VehicleMonitor_v3_34
  l0.Vehicle = self.VehicleEntity
  l0.CheckNow = 1
end
function export:OnEnter_box_Player_Conflict_Monitor_75()
end
function export:Stopped()
end
function export:Started()
end
function export:AllDeliveryCompleted()
end
function export:NewDeliveryCompleted()
end
function export:SpecificVehicleReliabilityFailure()
end
function export:VehicleForceStopped()
end
function export:Evaded()
end
function export:InConflict()
end
function export:TeamSpeakFinished()
end
_compilerVersion = 4
