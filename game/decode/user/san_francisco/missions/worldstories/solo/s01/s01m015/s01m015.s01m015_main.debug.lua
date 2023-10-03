export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/ClothController.lua")
  cbox:RegisterBox("domino/System/EnvironmentWeatherOverride.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M015/S01_M015_CIN_MarcusApartement.S01_M015_CIN_MarcusApartement_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S01M015_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main"
  self.PlayerEntity = nil
  self.box_S01_M015_CIN_MarcusApartement_Main_2 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M015/S01_M015_CIN_MarcusApartement.S01_M015_CIN_MarcusApartement_Main.debug.lua")
  l0 = self.box_S01_M015_CIN_MarcusApartement_Main_2
  l0._graph = self
  l0._name = "box_S01_M015_CIN_MarcusApartement_Main_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|205334452"
  l0.Out = self.f_box_S01_M015_CIN_MarcusApartement_Main_2_Out
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|233430921"
  l0.Loaded = self.f_box_MissionLayer_v2_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Multiple_AND_24 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_24
  l0._graph = self
  l0._name = "box_Multiple_AND_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|437349982"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_24_Out
  self.box_CLOController_9 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_9
  l0._graph = self
  l0._name = "box_CLOController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|437740872"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Multiple_AND_21 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_21
  l0._graph = self
  l0._name = "box_Multiple_AND_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|505859336"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_21_Out
  self.box_MissionController_v4_6 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_6
  l0._graph = self
  l0._name = "box_MissionController_v4_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|720328111"
  self.box_LMA_Layer_Controller_11 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_11
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|894905406"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_11_Unloaded
  self.box_CLOController_16 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_16
  l0._graph = self
  l0._name = "box_CLOController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|914526356"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_22 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_22
  l0._graph = self
  l0._name = "box_MultipleOR_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|940451582"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_22_Out
  self.box_MissionLayer_v2_12 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_12
  l0._graph = self
  l0._name = "box_MissionLayer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|941761679"
  l0.Loaded = self.f_box_MissionLayer_v2_12_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_10 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_10
  l0._graph = self
  l0._name = "box_CLOController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1140212967"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionLayer_v2_20 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_20
  l0._graph = self
  l0._name = "box_MissionLayer_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1269312096"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_20_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_13 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_13
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1406265575"
  l0.Out = self.f_box_MissionCheckpointReach_13_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_ClothController_23 = cbox:CreateBox("domino/System/ClothController.lua")
  l0 = self.box_ClothController_23
  l0._graph = self
  l0._name = "box_ClothController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1478429807"
  l0.Equipped = self.f_box_ClothController_23_Equipped
  l0.Added = DummyFunction
  self.box_LMA_Layer_Controller_8 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_8
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1683061117"
  l0.Loaded = self.f_box_LMA_Layer_Controller_8_Loaded
  l0.Unloaded = DummyFunction
  self.box_CLOController_5 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_5
  l0._graph = self
  l0._name = "box_CLOController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1949201216"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
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
  l0 = self.box_MissionLayer_v2_12
  l0.LayerName = "S01M015_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|37323232", "37323232", "S01M015_Main", "CheckPoint_0", "box_MissionLayer_v2_12.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|341709624"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_18_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|2010508213", "2010508213", "S01M015_Main", "In", "box_Ordered_Output_18.In", self, l0)
  l0:In()
end
function export:f_box_S01_M015_CIN_MarcusApartement_Main_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|664529089"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_26_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_S01_M015_CIN_MarcusApartement_Main_2
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|2082972153", "2082972153", "S01M015_Main", "box_S01_M015_CIN_MarcusApartement_Main_2.Out", "box_SetActionMap_v2_26.Push", l0, l1)
  l1:Push()
end
function export:f_box_MissionLayer_v2_4_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_21()
  l0 = self.box_MissionLayer_v2_4
  l1 = self.box_Multiple_AND_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|535805048", "535805048", "S01M015_Main", "box_MissionLayer_v2_4.Loaded", "box_Multiple_AND_21.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_21()
  l0 = self.box_Multiple_AND_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|954940921", "954940921", "S01M015_Main", "box_Ordered_Output_18.Out", "box_Multiple_AND_21.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_8
  l0.LMALayerName = "MAR_02_MarcusApartment_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|2137821380", "2137821380", "S01M015_Main", "box_Ordered_Output_18.Out", "box_LMA_Layer_Controller_8.Load", clone, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_18_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = "S01M015_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1188961874", "1188961874", "S01M015_Main", "box_Ordered_Output_18.Out", "box_MissionLayer_v2_4.Load", clone, l0)
  l0:Load()
end
function export:f_box_Multiple_AND_24_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Multiple_AND_24
  l1 = self.box_MissionController_v4_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|435609449", "435609449", "S01M015_Main", "box_Multiple_AND_24.Out", "box_MissionController_v4_6.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Multiple_AND_21_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_Multiple_AND_21
  l1 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|292787922", "292787922", "S01M015_Main", "box_Multiple_AND_21.Out", "box_MultipleOR_22.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_19_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_11
  l0.LMALayerName = "MAR_02_MarcusApartment_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|214689650", "214689650", "S01M015_Main", "box_Ordered_Output_19.Out", "box_LMA_Layer_Controller_11.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_Ordered_Output_19_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_20
  l0.LayerName = "S01M015_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1545393562", "1545393562", "S01M015_Main", "box_Ordered_Output_19.Out", "box_MissionLayer_v2_20.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_SetActionMap_v2_26_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|624206719"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_19_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_19_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1500724657", "1500724657", "S01M015_Main", "box_SetActionMap_v2_26.Pushed", "box_Ordered_Output_19.In", clone, l0)
  l0:In()
end
function export:f_box_SetTimeOfDay_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372058334097303"
  l0.FadeIn = nil
  l0.FadeOut = nil
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1876441112"
  l0.Started = self.f_box_EnvironmentWeatherOverride_17_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|708504912", "708504912", "S01M015_Main", "box_SetTimeOfDay_3.Out", "box_EnvironmentWeatherOverride_17.Start", clone, l0)
  l0:Start()
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
  l0 = self.box_ClothController_23
  l0.ItemDB = "Items.9223372062362368663"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1444000645", "1444000645", "S01M015_Main", "box_Get_Player_ID_1.Out", "box_ClothController_23.Equip", clone, l0)
  l0:Equip()
end
function export:f_box_LMA_Layer_Controller_11_Unloaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_24()
  l0 = self.box_LMA_Layer_Controller_11
  l1 = self.box_Multiple_AND_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|204783419", "204783419", "S01M015_Main", "box_LMA_Layer_Controller_11.Unloaded", "box_Multiple_AND_24.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MultipleOR_22_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MultipleOR_22
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1397608628", "1397608628", "S01M015_Main", "box_MultipleOR_22.Out", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_12_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MissionLayer_v2_12
  l1 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|56092013", "56092013", "S01M015_Main", "box_MissionLayer_v2_12.Loaded", "box_MultipleOR_22.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionLayer_v2_20_Unloaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_24()
  l0 = self.box_MissionLayer_v2_20
  l1 = self.box_Multiple_AND_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|288816362", "288816362", "S01M015_Main", "box_MissionLayer_v2_20.Unloaded", "box_Multiple_AND_24.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372069651733436"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1470544545"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_25_OverrideActivated
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1617337632", "1617337632", "S01M015_Main", "box_Ordered_Output_7.Out", "box_SmartphoneAppController_25.ActivateOverride", clone, l0)
  l0:ActivateOverride()
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_5
  l0.CLO = "9223372050668064221"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1268528471", "1268528471", "S01M015_Main", "box_Ordered_Output_7.Out", "box_CLOController_5.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_7_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_9
  l0.CLO = "9223372064881740363"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|692949662", "692949662", "S01M015_Main", "box_Ordered_Output_7.Out", "box_CLOController_9.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_7_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_10
  l0.CLO = "9223372064881740364"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1308535317", "1308535317", "S01M015_Main", "box_Ordered_Output_7.Out", "box_CLOController_10.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_7_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_16
  l0.CLO = "9223372064881740365"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|286917238", "286917238", "S01M015_Main", "box_Ordered_Output_7.Out", "box_CLOController_16.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionCheckpointReach_13_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1346739174"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_7_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_7_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_7_Out_4
  l0 = self.box_MissionCheckpointReach_13
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|68463007", "68463007", "S01M015_Main", "box_MissionCheckpointReach_13.Out", "box_Ordered_Output_7.In", l0, l1)
  l1:In()
end
function export:f_box_SmartphoneAppController_25_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S01_M015_CIN_MarcusApartement_Main_2
  l0.Player = self.PlayerEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1769154721", "1769154721", "S01M015_Main", "box_SmartphoneAppController_25.OverrideActivated", "box_S01_M015_CIN_MarcusApartement_Main_2.In", clone, l0)
  l0:In()
end
function export:f_box_ClothController_23_Equipped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 12
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|748036392"
  l0.Out = self.f_box_SetTimeOfDay_3_Out
  l0 = self.box_ClothController_23
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1576611866", "1576611866", "S01M015_Main", "box_ClothController_23.Equipped", "box_SetTimeOfDay_3.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_LMA_Layer_Controller_8_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_21()
  l0 = self.box_LMA_Layer_Controller_8
  l1 = self.box_Multiple_AND_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|377955279", "377955279", "S01M015_Main", "box_LMA_Layer_Controller_8.Loaded", "box_Multiple_AND_21.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_TimeScale_Controller_14_Unlocked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_13
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|865354790", "865354790", "S01M015_Main", "box_TimeScale_Controller_14.Unlocked", "box_MissionCheckpointReach_13.In", clone, l0)
  l0:In()
end
function export:f_box_EnvironmentWeatherOverride_17_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1874476892"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_box_TimeScale_Controller_14_Unlocked
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M015\\S01M015.domino|@S01M015_Main|1780768200", "1780768200", "S01M015_Main", "box_EnvironmentWeatherOverride_17.Started", "box_TimeScale_Controller_14.Unlock", clone, l0)
  l0:Unlock()
end
function export:OnEnter_box_Multiple_AND_24()
end
function export:OnEnter_box_Multiple_AND_21()
end
function export:OnEnter_box_MultipleOR_22()
end
_compilerVersion = 4
