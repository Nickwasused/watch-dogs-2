export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/32320572.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1148528460.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S15_M030_CIN_WaitHerePlease_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main"
  self.Out = DummyFunction
  self.BinkStart = DummyFunction
  self.PlayerEntity = nil
  self.box_Teleport_To_SpawnPoint_2 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_2
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|123620722"
  l0.Out = self.f_box_Teleport_To_SpawnPoint_2_Out
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_2_TeleportDone
  self.box_Timer_v2_11 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_11
  l0._graph = self
  l0._name = "box_Timer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|160805284"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_7 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_7
  l0._graph = self
  l0._name = "box_OnceOnly_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|555376442"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_7_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_4 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_4
  l0._graph = self
  l0._name = "box_PlaySequence_v5_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|1388815473"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_4_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_4_Finished
  self.box_PlaySound_v2_6 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_6
  l0._graph = self
  l0._name = "box_PlaySound_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|1698307886"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_5 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_5
  l0._graph = self
  l0._name = "box_PlaySound_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|1927300691"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
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
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055527650835"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
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
  l0._name = "box_Lanes_Restrictions_Control_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|1855173685"
  l0.Out = self.f_box_Lanes_Restrictions_Control_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|1930710261", "1930710261", "S15_M030_CIN_WaitHerePlease_Main", "In", "box_Lanes_Restrictions_Control_1.In", self, l0)
  l0:In()
end
function export:f_box_Teleport_To_SpawnPoint_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_5
  l0.SoundId = "soundbinary/1148528460.bnk"
  l0 = self.box_Teleport_To_SpawnPoint_2
  l1 = self.box_PlaySound_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|1647846808", "1647846808", "S15_M030_CIN_WaitHerePlease_Main", "box_Teleport_To_SpawnPoint_2.Out", "box_PlaySound_v2_5.Play", l0, l1)
  l1:Play()
end
function export:f_box_Teleport_To_SpawnPoint_2_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|1151188419"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_Teleport_To_SpawnPoint_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|338008011", "338008011", "S15_M030_CIN_WaitHerePlease_Main", "box_Teleport_To_SpawnPoint_2.TeleportDone", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_11_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_2
  l0.SpawnPoint = "9223372047264754146"
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485443"
  l0 = self.box_Timer_v2_11
  l1 = self.box_Teleport_To_SpawnPoint_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|78098480", "78098480", "S15_M030_CIN_WaitHerePlease_Main", "box_Timer_v2_11.TimeElapsed", "box_Teleport_To_SpawnPoint_2.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_7
  l1 = self.box_Timer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|1986982292", "1986982292", "S15_M030_CIN_WaitHerePlease_Main", "box_OnceOnly_v3_7.Out", "box_Timer_v2_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|2137558055"
  l0.Out = self.f_box_Get_Player_ID_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|976926813", "976926813", "S15_M030_CIN_WaitHerePlease_Main", "box_Ordered_Output_8.Out", "box_Get_Player_ID_13.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_6
  l0.SoundId = "soundbinary/32320572.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|717164248", "717164248", "S15_M030_CIN_WaitHerePlease_Main", "box_Ordered_Output_8.Out", "box_PlaySound_v2_6.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySequence_v5_4_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|1146553712", "1146553712", "S15_M030_CIN_WaitHerePlease_Main", "box_PlaySequence_v5_4.Finished", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_4_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|871730317", "871730317", "S15_M030_CIN_WaitHerePlease_Main", "box_PlaySequence_v5_4.Skipped", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(0)
end
function export:f_box_VisibilityController_v2_12_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|646487884", "646487884", "S15_M030_CIN_WaitHerePlease_Main", "box_VisibilityController_v2_12.Hidden", "Out", clone, self)
  self:Out()
end
function export:f_box_Lanes_Restrictions_Control_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_4
  l0.SceneEntity = "9223372047683075862"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/S15_WaitHerePlease_CIN/s15_waithereplease_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|11961611", "11961611", "S15_M030_CIN_WaitHerePlease_Main", "box_Lanes_Restrictions_Control_1.Out", "box_PlaySequence_v5_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_Get_Player_ID_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self._sld_PlayerID_box_Get_Player_ID_13 = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self._sld_PlayerID_box_Get_Player_ID_13
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|1487843251"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_12_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_waithereplease.domino|@S15_M030_CIN_WaitHerePlease_Main|1100276988", "1100276988", "S15_M030_CIN_WaitHerePlease_Main", "box_Get_Player_ID_13.Out", "box_VisibilityController_v2_12.Hide", clone, l0)
  l0:Hide()
end
function export:OnEnter_box_OnceOnly_v3_7()
end
function export:Out()
end
function export:BinkStart()
end
_compilerVersion = 4
