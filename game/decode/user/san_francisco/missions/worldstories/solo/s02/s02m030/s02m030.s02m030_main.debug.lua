export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M030/s02m030_cin_hotelelevator.S02M030_CIN_HotelElevator_Main.debug.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S02M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main"
  self.PlayerEntity = nil
  self.box_MissionCheckpointReach_24 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_24
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|23546077"
  l0.Out = self.f_box_MissionCheckpointReach_24_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_16 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|94341731"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_16_Out
  self.box_PlaySequence_v5_13 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_13
  l0._graph = self
  l0._name = "box_PlaySequence_v5_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|161087776"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_13_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_13_Finished
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_OnceOnly_v3_23 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_23
  l0._graph = self
  l0._name = "box_OnceOnly_v3_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|236109370"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_23_Out
  l0.ResetOut = DummyFunction
  self.box_MissionLayer_v2_26 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_26
  l0._graph = self
  l0._name = "box_MissionLayer_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|479431804"
  l0.Loaded = self.f_box_MissionLayer_v2_26_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_LMA_Layer_Controller_22 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_22
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|694663118"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_22_Unloaded
  self.box_MissionController_v4_3 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_3
  l0._graph = self
  l0._name = "box_MissionController_v4_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|765101293"
  self.box_MissionLayer_v2_7 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_7
  l0._graph = self
  l0._name = "box_MissionLayer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|772727335"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_7_Unloaded
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_28 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_28
  l0._graph = self
  l0._name = "box_CinematicPrep_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|784338594"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_28_PostOut
  self.box_S02M030_CIN_HotelElevator_Main_11 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M030/s02m030_cin_hotelelevator.S02M030_CIN_HotelElevator_Main.debug.lua")
  l0 = self.box_S02M030_CIN_HotelElevator_Main_11
  l0._graph = self
  l0._name = "box_S02M030_CIN_HotelElevator_Main_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1003317189"
  l0.EndCine = self.f_box_S02M030_CIN_HotelElevator_Main_11_EndCine
  self.box_MultipleOR_25 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_25
  l0._graph = self
  l0._name = "box_MultipleOR_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1046696561"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_25_Out
  self.box_MissionCheckpointReach_17 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_17
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1139150564"
  l0.Out = self.f_box_MissionCheckpointReach_17_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_6 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_6
  l0._graph = self
  l0._name = "box_MissionLayer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1198974574"
  l0.Loaded = self.f_box_MissionLayer_v2_6_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_4 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_4
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1287771908"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_4_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_LMA_Layer_Controller_5 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_5
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1363621255"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_5_Unloaded
  self.box_CinematicPrep_19 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_19
  l0._graph = self
  l0._name = "box_CinematicPrep_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1380468111"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_19_PostOut
  self.box_Timer_v2_21 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_21
  l0._graph = self
  l0._name = "box_Timer_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1492713006"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Teleport_To_SpawnPoint_12 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_12
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1700959178"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_12_TeleportDone
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
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S02M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|798158378", "798158378", "S02M030_Main", "CheckPoint_0", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_26
  l0.LayerName = "S02M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|766234000", "766234000", "S02M030_Main", "CheckPoint_1", "box_MissionLayer_v2_26.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_6
  l0.LayerName = "S02M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1101742981", "1101742981", "S02M030_Main", "In", "box_MissionLayer_v2_6.Load", self, l0)
  l0:Load()
end
function export:f_box_Get_Player_ID_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1526100030", "1526100030", "S02M030_Main", "box_Get_Player_ID_18.Out", "box_MultipleOR_16.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionCheckpointReach_24_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_4
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346318"
  l0 = self.box_MissionCheckpointReach_24
  l1 = self.box_PhoneCommunicationController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|493401067", "493401067", "S02M030_Main", "box_MissionCheckpointReach_24.Out", "box_PhoneCommunicationController_4.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_17
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_16
  l1 = self.box_MissionCheckpointReach_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|790800182", "790800182", "S02M030_Main", "box_MultipleOR_16.Out", "box_MissionCheckpointReach_17.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_13_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_23()
  l0 = self.box_PlaySequence_v5_13
  l1 = self.box_OnceOnly_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|101381643", "101381643", "S02M030_Main", "box_PlaySequence_v5_13.Finished", "box_OnceOnly_v3_23.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_13_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_23()
  l0 = self.box_PlaySequence_v5_13
  l1 = self.box_OnceOnly_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1199941732", "1199941732", "S02M030_Main", "box_PlaySequence_v5_13.Skipped", "box_OnceOnly_v3_23.In", l0, l1)
  l1:In(0)
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|794668992", "794668992", "S02M030_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_12
  l0.SpawnPoint = "9223372048893249649"
  l0.UseFadeToBlack = 1
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_OnceOnly_v3_23
  l1 = self.box_Teleport_To_SpawnPoint_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1892469397", "1892469397", "S02M030_Main", "box_OnceOnly_v3_23.Out", "box_Teleport_To_SpawnPoint_12.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_26_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1965911194"
  l0.Out = self.f_box_Get_Player_ID_27_Out
  l0 = self.box_MissionLayer_v2_26
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1866354696", "1866354696", "S02M030_Main", "box_MissionLayer_v2_26.Loaded", "box_Get_Player_ID_27.In", l0, l1)
  l1:In()
end
function export:f_box_LMA_Layer_Controller_22_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_22
  l1 = self.box_MissionController_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1018366795", "1018366795", "S02M030_Main", "box_LMA_Layer_Controller_22.Unloaded", "box_MissionController_v4_3.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionLayer_v2_7_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_22
  l0.LMALayerName = "SF_03_HotelElevator_LMA"
  l0 = self.box_MissionLayer_v2_7
  l1 = self.box_LMA_Layer_Controller_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|923277170", "923277170", "S02M030_Main", "box_MissionLayer_v2_7.Unloaded", "box_LMA_Layer_Controller_22.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_CinematicPrep_28_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_CinematicPrep_28
  l1 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|708316736", "708316736", "S02M030_Main", "box_CinematicPrep_28.PostOut", "box_MultipleOR_25.Input", l0, l1)
  l1:Input(1)
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
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|885873182", "885873182", "S02M030_Main", "box_Get_Player_ID_1.Out", "box_MultipleOR_16.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_S02M030_CIN_HotelElevator_Main_11_EndCine()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_13
  l0.SceneEntity = "9223372066729637322"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_FalseProphets-fs_VID/s02_falseprophets-fs_vid.seq"
  l0 = self.box_S02M030_CIN_HotelElevator_Main_11
  l1 = self.box_PlaySequence_v5_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1243021856", "1243021856", "S02M030_Main", "box_S02M030_CIN_HotelElevator_Main_11.EndCine", "box_PlaySequence_v5_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_25_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_24
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_25
  l1 = self.box_MissionCheckpointReach_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|2027087937", "2027087937", "S02M030_Main", "box_MultipleOR_25.Out", "box_MissionCheckpointReach_24.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_17
  l1 = self.box_S02M030_CIN_HotelElevator_Main_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1141929236", "1141929236", "S02M030_Main", "box_MissionCheckpointReach_17.Out", "box_S02M030_CIN_HotelElevator_Main_11.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_6_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|2992634"
  l0.Out = self.f_box_Get_Player_ID_18_Out
  l0 = self.box_MissionLayer_v2_6
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|127670074", "127670074", "S02M030_Main", "box_MissionLayer_v2_6.Loaded", "box_Get_Player_ID_18.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_4_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_5
  l0.LMALayerName = "SF_03_HotelElevator_LMA"
  l0 = self.box_PhoneCommunicationController_4
  l1 = self.box_LMA_Layer_Controller_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|213839770", "213839770", "S02M030_Main", "box_PhoneCommunicationController_4.OnCommunicationFinished", "box_LMA_Layer_Controller_5.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_LMA_Layer_Controller_5_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_7
  l0.LayerName = "S02M030_Main"
  l0 = self.box_LMA_Layer_Controller_5
  l1 = self.box_MissionLayer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1393086840", "1393086840", "S02M030_Main", "box_LMA_Layer_Controller_5.Unloaded", "box_MissionLayer_v2_7.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_CinematicPrep_19_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_CinematicPrep_19
  l1 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1698938184", "1698938184", "S02M030_Main", "box_CinematicPrep_19.PostOut", "box_MultipleOR_25.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_21_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_19
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_21
  l1 = self.box_CinematicPrep_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|1277674732", "1277674732", "S02M030_Main", "box_Timer_v2_21.TimeElapsed", "box_CinematicPrep_19.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Teleport_To_SpawnPoint_12_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_12
  l1 = self.box_Timer_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|738433875", "738433875", "S02M030_Main", "box_Teleport_To_SpawnPoint_12.TeleportDone", "box_Timer_v2_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_28
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\S02M030.domino|@S02M030_Main|472466704", "472466704", "S02M030_Main", "box_Get_Player_ID_27.Out", "box_CinematicPrep_28.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:OnEnter_box_MultipleOR_16()
end
function export:OnEnter_box_OnceOnly_v3_23()
end
function export:OnEnter_box_MultipleOR_25()
end
_compilerVersion = 4
