export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S03_M040_Policebarage"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage"
  self.Out = DummyFunction
  self.PoliceCar4 = nil
  self.PoliceCar3 = nil
  self.Policemen3 = nil
  self.Policeman2 = nil
  self.PoliceCar2 = nil
  self.FlatBed = nil
  self.PoliceSquad = {}
  self.PoliceCar1 = nil
  self.Policeman1 = nil
  self.PoliceCar5 = nil
  self.PoliceCar6 = nil
  self.Barrage2_Police_01 = nil
  self.Barrage2_Police_02 = nil
  self.Barrage2_Police_03 = nil
  self.Barrage2_Police_04 = nil
  self.Barrage2_Police_05 = nil
  self.Barrage2_Police_06 = nil
  self.Barrage2_Police_07 = nil
  self.Barrage2_Police_08 = nil
  self.Barrage2_Police_09 = nil
  self.Barrage2_Police_10 = nil
  self.Policeman5 = nil
  self.Policeman4 = nil
  self.FirstBarrageCarsAndCops = {}
  self.box_ListWriter_44 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_44
  l0._graph = self
  l0._name = "box_ListWriter_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|35874849"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_44_Added
  l0.Removed = self.f_box_ListWriter_44_Removed
  l0.Out = self.f_box_ListWriter_44_Out
  self.box_CLOController_6 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_6
  l0._graph = self
  l0._name = "box_CLOController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|182630611"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_6_OnUserInPlace
  self.box_Timer_v2_36 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_36
  l0._graph = self
  l0._name = "box_Timer_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|345003835"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_36_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_17 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_17
  l0._graph = self
  l0._name = "box_CLOController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|450356349"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_17_OnUserInPlace
  self.box_CLOController_21 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_21
  l0._graph = self
  l0._name = "box_CLOController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|457976399"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_21_OnUserInPlace
  self.box_CLOController_5 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_5
  l0._graph = self
  l0._name = "box_CLOController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|471415456"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_5_OnUserInPlace
  self.box_Multiple_AND_40 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_40
  l0._graph = self
  l0._name = "box_Multiple_AND_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|515734898"
  l0._DynamicAnchors = {Condition = 6}
  l0.Out = self.f_box_Multiple_AND_40_Out
  self.box_CLOController_9 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_9
  l0._graph = self
  l0._name = "box_CLOController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|525559119"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_9_OnUserInPlace
  self.box_CLOController_16 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_16
  l0._graph = self
  l0._name = "box_CLOController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|711929880"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_16_OnUserInPlace
  self.box_TriggerMonitor_v2_34 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_34
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|737076125"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_34_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CLOController_31 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_31
  l0._graph = self
  l0._name = "box_CLOController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|748965285"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_31_OnUserInPlace
  self.box_CLOController_8 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_8
  l0._graph = self
  l0._name = "box_CLOController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|953147740"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_8_OnUserInPlace
  self.box_CLOController_25 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_25
  l0._graph = self
  l0._name = "box_CLOController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1135833325"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_25_OnUserInPlace
  self.box_CLOController_39 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_39
  l0._graph = self
  l0._name = "box_CLOController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1152971074"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_15 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_15
  l0._graph = self
  l0._name = "box_CLOController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1185003605"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_15_OnUserInPlace
  self.box_Multiple_AND_45 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_45
  l0._graph = self
  l0._name = "box_Multiple_AND_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1236822385"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_45_Out
  self.box_CLOController_27 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_27
  l0._graph = self
  l0._name = "box_CLOController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1347713873"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_27_OnUserInPlace
  self.box_CLOController_14 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1438769477"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_14_OnUserInPlace
  self.box_CLOController_1 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_1
  l0._graph = self
  l0._name = "box_CLOController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1504679871"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_1_OnUserInPlace
  self.box_TriggerMonitor_v2_32 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_32
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1667046601"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_32_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CLOController_29 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_29
  l0._graph = self
  l0._name = "box_CLOController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1738980330"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_29_OnUserInPlace
  self.box_CLOController_13 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_13
  l0._graph = self
  l0._name = "box_CLOController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1746324831"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_13_OnUserInPlace
  self.box_CLOController_11 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_11
  l0._graph = self
  l0._name = "box_CLOController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1772790133"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_11_OnUserInPlace
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|891227408"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_33_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_33_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_33_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|959011554", "959011554", "S03_M040_Policebarage", "In", "box_Ordered_Output_33.In", self, l0)
  l0:In()
end
function export:Unspawn_FirstBarrage()
  local l0
  self:OnEnter_box_Multiple_AND_45()
  l0 = self.box_Multiple_AND_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1276193224", "1276193224", "S03_M040_Policebarage", "Unspawn_FirstBarrage", "box_Multiple_AND_45.Condition", self, l0)
  l0:Condition(0)
end
function export:f_box_ListWriter_44_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_44
  self.FirstBarrageCarsAndCops = l0.Target
  self:OnEnter_box_Multiple_AND_45()
  l1 = self.box_Multiple_AND_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1885746199", "1885746199", "S03_M040_Policebarage", "box_ListWriter_44.Added", "box_Multiple_AND_45.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_ListWriter_44_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_44
  self.FirstBarrageCarsAndCops = l0.Target
end
function export:f_box_ListWriter_44_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_44
  self.FirstBarrageCarsAndCops = l0.Target
end
function export:f_box_Simple_Node_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_40()
  l0 = self.box_Multiple_AND_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1778918851", "1778918851", "S03_M040_Policebarage", "box_Simple_Node_42.Out", "box_Multiple_AND_40.Condition", clone, l0)
  l0:Condition(5)
end
function export:f_box_SetVehicleLightAndSiren_v2_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_27
  l0.CLO = "9223372066998467346"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1508688826", "1508688826", "S03_M040_Policebarage", "box_SetVehicleLightAndSiren_v2_26.Out", "box_CLOController_27.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_6_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_6
  self.Barrage2_Police_02 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_02
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1810337698"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_7_Out
  l0 = self.box_CLOController_6
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|2013345668", "2013345668", "S03_M040_Policebarage", "box_CLOController_6.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_7.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_SetVehicleLightAndSiren_v2_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_29
  l0.CLO = "9223372066998467348"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|351808494", "351808494", "S03_M040_Policebarage", "box_SetVehicleLightAndSiren_v2_28.Out", "box_CLOController_29.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Timer_v2_36_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372066998467521"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1413294619"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_36
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1256024907", "1256024907", "S03_M040_Policebarage", "box_Timer_v2_36.TimeElapsed", "box_LightController_35.Toggle", l0, l1)
  l1:Toggle()
end
function export:f_box_CLOController_17_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_17
  self.Policeman5 = l0.UserID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|106673268"
  l0.Out = self.f_box_Simple_Node_42_Out
  l0 = self.box_CLOController_17
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|2048374305", "2048374305", "S03_M040_Policebarage", "box_CLOController_17.OnUserInPlace", "box_Simple_Node_42.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_21_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_21
  self.Barrage2_Police_06 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_06
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|2060937129"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_24_Out
  l0 = self.box_CLOController_21
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|553807439", "553807439", "S03_M040_Policebarage", "box_CLOController_21.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_24.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_CLOController_5_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_5
  self.PoliceCar1 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar1
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1117024407"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_18_Out
  l0 = self.box_CLOController_5
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|257963261", "257963261", "S03_M040_Policebarage", "box_CLOController_5.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_18.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Multiple_AND_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_44
  l0.Input = self.FirstBarrageCarsAndCops
  l0.Data[0] = self.PoliceCar1
  l0.Data[1] = self.Policeman1
  l0.Data[2] = self.PoliceCar5
  l0.Data[3] = self.PoliceCar6
  l0.Data[4] = self.Policeman4
  l0.Data[5] = self.Policeman5
  l0 = self.box_Multiple_AND_40
  l1 = self.box_ListWriter_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|2133721965", "2133721965", "S03_M040_Policebarage", "box_Multiple_AND_40.Out", "box_ListWriter_44.Add", l0, l1)
  l1:Add()
end
function export:f_box_CLOController_9_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_9
  self.Policeman1 = l0.UserID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1933768526"
  l0.Out = self.f_box_Simple_Node_43_Out
  l0 = self.box_CLOController_9
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1044903841", "1044903841", "S03_M040_Policebarage", "box_CLOController_9.OnUserInPlace", "box_Simple_Node_43.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_5
  l0.CLO = "9223372049960074761"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1882175091", "1882175091", "S03_M040_Policebarage", "box_Ordered_Output_4.Out", "box_CLOController_5.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_9
  l0.CLO = "9223372049960074780"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1256889120", "1256889120", "S03_M040_Policebarage", "box_Ordered_Output_4.Out", "box_CLOController_9.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_4_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_14
  l0.CLO = "9223372057037026612"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|2017426545", "2017426545", "S03_M040_Policebarage", "box_Ordered_Output_4.Out", "box_CLOController_14.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_4_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_15
  l0.CLO = "9223372057037026611"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1070633970", "1070633970", "S03_M040_Policebarage", "box_Ordered_Output_4.Out", "box_CLOController_15.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_4_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_16
  l0.CLO = "9223372057037026614"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1919685888", "1919685888", "S03_M040_Policebarage", "box_Ordered_Output_4.Out", "box_CLOController_16.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_4_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_17
  l0.CLO = "9223372057037026613"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|2000593647", "2000593647", "S03_M040_Policebarage", "box_Ordered_Output_4.Out", "box_CLOController_17.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_16_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_16
  self.Policeman4 = l0.UserID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|818261248"
  l0.Out = self.f_box_Simple_Node_41_Out
  l0 = self.box_CLOController_16
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|103402531", "103402531", "S03_M040_Policebarage", "box_CLOController_16.OnUserInPlace", "box_Simple_Node_41.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_34_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_36
  l0.Loop = 1
  l0.nbLoop = 20
  l0 = self.box_TriggerMonitor_v2_34
  l1 = self.box_Timer_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1901032547", "1901032547", "S03_M040_Policebarage", "box_TriggerMonitor_v2_34.Enter", "box_Timer_v2_36.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_31_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_31
  self.Barrage2_Police_10 = l0.UserID
  l0 = self.box_TriggerMonitor_v2_34
  l0.Trigger = "9223372066998467524"
  l0 = self.box_CLOController_31
  l1 = self.box_TriggerMonitor_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|574191555", "574191555", "S03_M040_Policebarage", "box_CLOController_31.OnUserInPlace", "box_TriggerMonitor_v2_34.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_40()
  l0 = self.box_Multiple_AND_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1332457335", "1332457335", "S03_M040_Policebarage", "box_Simple_Node_41.Out", "box_Multiple_AND_40.Condition", clone, l0)
  l0:Condition(4)
end
function export:f_box_Ordered_Output_33_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|657485684"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_4_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_4_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_4_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_4_Out_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|76905471", "76905471", "S03_M040_Policebarage", "box_Ordered_Output_33.Out", "box_Ordered_Output_4.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_33_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1966835872", "1966835872", "S03_M040_Policebarage", "box_Ordered_Output_33.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_Ordered_Output_33_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_32
  l0.Trigger = "9223372066998467522"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1119365934", "1119365934", "S03_M040_Policebarage", "box_Ordered_Output_33.Out", "box_TriggerMonitor_v2_32.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOController_8_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_8
  self.Barrage2_Police_03 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_03
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1571324470"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_10_Out
  l0 = self.box_CLOController_8
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|405820383", "405820383", "S03_M040_Policebarage", "box_CLOController_8.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_10.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_SetVehicleLightAndSiren_v2_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_21
  l0.CLO = "9223372066998467341"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|949567541", "949567541", "S03_M040_Policebarage", "box_SetVehicleLightAndSiren_v2_20.Out", "box_CLOController_21.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_SetVehicleLightAndSiren_v2_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_40()
  l0 = self.box_Multiple_AND_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|2024243585", "2024243585", "S03_M040_Policebarage", "box_SetVehicleLightAndSiren_v2_18.Out", "box_Multiple_AND_40.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_CLOController_25_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_25
  self.Barrage2_Police_07 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_07
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|161085562"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_26_Out
  l0 = self.box_CLOController_25
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|727371479", "727371479", "S03_M040_Policebarage", "box_CLOController_25.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_26.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_CLOController_15_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_15
  self.PoliceCar6 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar6
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|2093116276"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_23_Out
  l0 = self.box_CLOController_15
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|237670912", "237670912", "S03_M040_Policebarage", "box_CLOController_15.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_23.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Multiple_AND_45_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_39
  l0.UserList = self.FirstBarrageCarsAndCops
  l0 = self.box_Multiple_AND_45
  l1 = self.box_CLOController_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|49996341", "49996341", "S03_M040_Policebarage", "box_Multiple_AND_45.Out", "box_CLOController_39.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_SetVehicleLightAndSiren_v2_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_31
  l0.CLO = "9223372066998467349"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|707210677", "707210677", "S03_M040_Policebarage", "box_SetVehicleLightAndSiren_v2_30.Out", "box_CLOController_31.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_27_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_27
  self.Barrage2_Police_08 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_08
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|189994087"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_28_Out
  l0 = self.box_CLOController_27
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|265926308", "265926308", "S03_M040_Policebarage", "box_CLOController_27.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_28.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_CLOController_14_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  self.PoliceCar5 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar5
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|2143454170"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_22_Out
  l0 = self.box_CLOController_14
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1467516706", "1467516706", "S03_M040_Policebarage", "box_CLOController_14.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_22.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_SetVehicleLightAndSiren_v2_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_6
  l0.CLO = "9223372066998467336"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|900396824", "900396824", "S03_M040_Policebarage", "box_SetVehicleLightAndSiren_v2_3.Out", "box_CLOController_6.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_1_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_1
  self.Barrage2_Police_01 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1468634122"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_3_Out
  l0 = self.box_CLOController_1
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|361033362", "361033362", "S03_M040_Policebarage", "box_CLOController_1.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_3.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_SetVehicleLightAndSiren_v2_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_11
  l0.CLO = "9223372066998467338"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1748853842", "1748853842", "S03_M040_Policebarage", "box_SetVehicleLightAndSiren_v2_10.Out", "box_CLOController_11.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_SetVehicleLightAndSiren_v2_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_13
  l0.CLO = "9223372066998467340"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1492176935", "1492176935", "S03_M040_Policebarage", "box_SetVehicleLightAndSiren_v2_12.Out", "box_CLOController_13.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_TriggerMonitor_v2_32_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_1
  l0.CLO = "9223372066998467335"
  l0 = self.box_TriggerMonitor_v2_32
  l1 = self.box_CLOController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|522766155", "522766155", "S03_M040_Policebarage", "box_TriggerMonitor_v2_32.Enter", "box_CLOController_1.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_29_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_29
  self.Barrage2_Police_09 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_09
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1253259998"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_30_Out
  l0 = self.box_CLOController_29
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|2037191696", "2037191696", "S03_M040_Policebarage", "box_CLOController_29.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_30.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_CLOController_13_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_13
  self.Barrage2_Police_05 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_05
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.Player_CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1051979904"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_20_Out
  l0 = self.box_CLOController_13
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|792308503", "792308503", "S03_M040_Policebarage", "box_CLOController_13.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_20.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_CLOController_11_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_11
  self.Barrage2_Police_04 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Barrage2_Police_04
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1646393976"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_12_Out
  l0 = self.box_CLOController_11
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1945016197", "1945016197", "S03_M040_Policebarage", "box_CLOController_11.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_12.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_SetVehicleLightAndSiren_v2_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_8
  l0.CLO = "9223372066998467337"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|163413944", "163413944", "S03_M040_Policebarage", "box_SetVehicleLightAndSiren_v2_7.Out", "box_CLOController_8.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Simple_Node_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_40()
  l0 = self.box_Multiple_AND_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|2093351951", "2093351951", "S03_M040_Policebarage", "box_Simple_Node_43.Out", "box_Multiple_AND_40.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_SetVehicleLightAndSiren_v2_24_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_25
  l0.CLO = "9223372066998467347"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|714515129", "714515129", "S03_M040_Policebarage", "box_SetVehicleLightAndSiren_v2_24.Out", "box_CLOController_25.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_SetVehicleLightAndSiren_v2_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_40()
  l0 = self.box_Multiple_AND_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|1441996089", "1441996089", "S03_M040_Policebarage", "box_SetVehicleLightAndSiren_v2_23.Out", "box_Multiple_AND_40.Condition", clone, l0)
  l0:Condition(3)
end
function export:f_box_SetVehicleLightAndSiren_v2_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_40()
  l0 = self.box_Multiple_AND_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03_M040_Policebarage|316130521", "316130521", "S03_M040_Policebarage", "box_SetVehicleLightAndSiren_v2_22.Out", "box_Multiple_AND_40.Condition", clone, l0)
  l0:Condition(2)
end
function export:OnEnter_box_Multiple_AND_40()
end
function export:OnEnter_box_Multiple_AND_45()
end
function export:Out()
end
_compilerVersion = 4
