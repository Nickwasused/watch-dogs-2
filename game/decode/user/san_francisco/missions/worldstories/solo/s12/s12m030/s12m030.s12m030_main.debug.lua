export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S12M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main"
  self.PlayerEntity = nil
  self.box_CinematicPrep_23 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_23
  l0._graph = self
  l0._name = "box_CinematicPrep_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|119499849"
  l0.PreOut = self.f_box_CinematicPrep_23_PreOut
  l0.PostOut = DummyFunction
  self.box_MissionLayer_v2_10 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_10
  l0._graph = self
  l0._name = "box_MissionLayer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|179988334"
  l0.Loaded = self.f_box_MissionLayer_v2_10_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_11 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|529555709"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_Timer_v2_21 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_21
  l0._graph = self
  l0._name = "box_Timer_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|726949446"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionCheckpointReach_7 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_7
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|749333830"
  l0.Out = self.f_box_MissionCheckpointReach_7_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_OnceOnly_v3_24 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_24
  l0._graph = self
  l0._name = "box_OnceOnly_v3_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|819889306"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_24_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_16 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|843679635"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_16_Out
  self.box_MissionCheckpointReach_9 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_9
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|949067951"
  l0.Out = self.f_box_MissionCheckpointReach_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySequence_v5_18 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_18
  l0._graph = self
  l0._name = "box_PlaySequence_v5_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1133824276"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_18_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_18_Finished
  self.box_PhoneCommunicationController_6 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_6
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1209747517"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_6_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_20 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_20
  l0._graph = self
  l0._name = "box_CinematicPrep_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1420573005"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_20_PostOut
  self.box_MissionLayer_v2_3 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_3
  l0._graph = self
  l0._name = "box_MissionLayer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1481725422"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_3_Unloaded
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_13 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_13
  l0._graph = self
  l0._name = "box_CinematicPrep_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1550906525"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_13_PostOut
  self.box_MissionController_v4_4 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_4
  l0._graph = self
  l0._name = "box_MissionController_v4_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|2059470186"
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
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1155793", "1155793", "S12M030_Main", "CheckPoint_0", "box_MultipleOR_16.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_10
  l0.LayerName = "S12M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|2020757346", "2020757346", "S12M030_Main", "CheckPoint_1", "box_MissionLayer_v2_10.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1614207563", "1614207563", "S12M030_Main", "In", "box_MultipleOR_16.Input", self, l0)
  l0:Input(0)
end
function export:f_box_CinematicPrep_23_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055043521142"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
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
  l0._name = "box_Lanes_Restrictions_Control_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1930288732"
  l0.Out = self.f_box_Lanes_Restrictions_Control_5_Out
  l0 = self.box_CinematicPrep_23
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|2962743", "2962743", "S12M030_Main", "box_CinematicPrep_23.PreOut", "box_Lanes_Restrictions_Control_5.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_10_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1222462472"
  l0.Out = self.f_box_Get_Player_ID_12_Out
  l0 = self.box_MissionLayer_v2_10
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|159226414", "159226414", "S12M030_Main", "box_MissionLayer_v2_10.Loaded", "box_Get_Player_ID_12.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|794668992", "794668992", "S12M030_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_9
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_11
  l1 = self.box_MissionCheckpointReach_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|963568437", "963568437", "S12M030_Main", "box_MultipleOR_11.Out", "box_MissionCheckpointReach_9.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_21_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_20
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_21
  l1 = self.box_CinematicPrep_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|170843824", "170843824", "S12M030_Main", "box_Timer_v2_21.TimeElapsed", "box_CinematicPrep_20.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionCheckpointReach_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_23
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionCheckpointReach_7
  l1 = self.box_CinematicPrep_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|396880232", "396880232", "S12M030_Main", "box_MissionCheckpointReach_7.Out", "box_CinematicPrep_23.PreCinematic", l0, l1)
  l1:PreCinematic()
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
  l0 = self.box_MissionCheckpointReach_7
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1320306956", "1320306956", "S12M030_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_7.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_24_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_24
  l1 = self.box_Timer_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|437019615", "437019615", "S12M030_Main", "box_OnceOnly_v3_24.Out", "box_Timer_v2_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S12M030_Main"
  l0 = self.box_MultipleOR_16
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|951553992", "951553992", "S12M030_Main", "box_MultipleOR_16.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionCheckpointReach_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_6
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055108868059"
  l0 = self.box_MissionCheckpointReach_9
  l1 = self.box_PhoneCommunicationController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|341542540", "341542540", "S12M030_Main", "box_MissionCheckpointReach_9.Out", "box_PhoneCommunicationController_6.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PlaySequence_v5_18_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_24()
  l0 = self.box_PlaySequence_v5_18
  l1 = self.box_OnceOnly_v3_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1662586952", "1662586952", "S12M030_Main", "box_PlaySequence_v5_18.Finished", "box_OnceOnly_v3_24.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_18_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_24()
  l0 = self.box_PlaySequence_v5_18
  l1 = self.box_OnceOnly_v3_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|397671222", "397671222", "S12M030_Main", "box_PlaySequence_v5_18.Skipped", "box_OnceOnly_v3_24.In", l0, l1)
  l1:In(0)
end
function export:f_box_PhoneCommunicationController_6_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_3
  l0.LayerName = "S12M030_Main"
  l0 = self.box_PhoneCommunicationController_6
  l1 = self.box_MissionLayer_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|319682406", "319682406", "S12M030_Main", "box_PhoneCommunicationController_6.OnCommunicationFinished", "box_MissionLayer_v2_3.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Get_Player_ID_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_13
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1730029093", "1730029093", "S12M030_Main", "box_Get_Player_ID_12.Out", "box_CinematicPrep_13.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Cinema_Zone_Cleanup_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_18
  l0.SceneEntity = "9223372047235832135"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S12/S12_LenniDemands_CIN/s12_lennidemands_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1294304268", "1294304268", "S12M030_Main", "box_Cinema_Zone_Cleanup_8.Out", "box_PlaySequence_v5_18.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_20_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_CinematicPrep_20
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|956529413", "956529413", "S12M030_Main", "box_CinematicPrep_20.PostOut", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionLayer_v2_3_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_3
  l1 = self.box_MissionController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1149980374", "1149980374", "S12M030_Main", "box_MissionLayer_v2_3.Unloaded", "box_MissionController_v4_4.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_CinematicPrep_13_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_CinematicPrep_13
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1785698304", "1785698304", "S12M030_Main", "box_CinematicPrep_13.PostOut", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Lanes_Restrictions_Control_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372057175221275"
  l0.SceneEntity = "9223372047235832135"
  l0.RemoveBreakable = 0
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1274089722"
  l0._DynamicAnchors = {NotRemovableEntity = 0}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Main|1449246541", "1449246541", "S12M030_Main", "box_Lanes_Restrictions_Control_5.Out", "box_Cinema_Zone_Cleanup_8.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:OnEnter_box_MultipleOR_11()
end
function export:OnEnter_box_OnceOnly_v3_24()
end
function export:OnEnter_box_MultipleOR_16()
end
_compilerVersion = 4
