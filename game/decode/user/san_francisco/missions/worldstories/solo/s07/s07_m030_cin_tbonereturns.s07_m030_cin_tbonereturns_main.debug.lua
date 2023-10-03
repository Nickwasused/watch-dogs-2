export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S07_M030_CIN_TBoneReturns_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main"
  self.Out = DummyFunction
  self.TBoneReturns_Started = DummyFunction
  self.PlayerEntity = nil
  self.P8_Female01 = nil
  self.P8_Male01 = nil
  self.P8_Male02 = nil
  self.box_CLOController_15 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_15
  l0._graph = self
  l0._name = "box_CLOController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|46988765"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySequence_v5_2 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_2
  l0._graph = self
  l0._name = "box_PlaySequence_v5_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|314441557"
  l0.Started = self.f_box_PlaySequence_v5_2_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_2_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_2_Finished
  self.box_OnceOnly_v3_6 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_6
  l0._graph = self
  l0._name = "box_OnceOnly_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|571417076"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_6_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_1 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_1
  l0._graph = self
  l0._name = "box_Timer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|870142486"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_1_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_23 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_23
  l0._graph = self
  l0._name = "box_CLOController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|935831379"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_18 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_18
  l0._graph = self
  l0._name = "box_CLOController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1122377502"
  l0.Activated = self.f_box_CLOController_18_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_18_OnUserInPlace
  self.box_CLOController_16 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_16
  l0._graph = self
  l0._name = "box_CLOController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1187036199"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_14 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1301887816"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_21 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_21
  l0._graph = self
  l0._name = "box_CLOController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1585362220"
  l0.Activated = self.f_box_CLOController_21_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_21_OnUserInPlace
  self.box_CinematicPrep_4 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_4
  l0._graph = self
  l0._name = "box_CinematicPrep_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1605248554"
  l0.PreOut = self.f_box_CinematicPrep_4_PreOut
  l0.PostOut = DummyFunction
  self.box_CLOController_19 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_19
  l0._graph = self
  l0._name = "box_CLOController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1635033149"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_22 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_22
  l0._graph = self
  l0._name = "box_CLOController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1752424134"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_17 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_17
  l0._graph = self
  l0._name = "box_CLOController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1996984541"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_20 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_20
  l0._graph = self
  l0._name = "box_CLOController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|2074010924"
  l0.Activated = self.f_box_CLOController_20_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_20_OnUserInPlace
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
  l0 = self.box_CinematicPrep_4
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|2083100217", "2083100217", "S07_M030_CIN_TBoneReturns_Main", "In", "box_CinematicPrep_4.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_PlaySequence_v5_2_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_6()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1851166664", "1851166664", "S07_M030_CIN_TBoneReturns_Main", "box_PlaySequence_v5_2.Finished", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_2_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_6()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|538929621", "538929621", "S07_M030_CIN_TBoneReturns_Main", "box_PlaySequence_v5_2.Skipped", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_2_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|741533604", "741533604", "S07_M030_CIN_TBoneReturns_Main", "box_PlaySequence_v5_2.Started", "TBoneReturns_Started", l0, self)
  self:TBoneReturns_Started()
end
function export:f_box_OnceOnly_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_6
  l1 = self.box_Timer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|398224734", "398224734", "S07_M030_CIN_TBoneReturns_Main", "box_OnceOnly_v3_6.Out", "box_Timer_v2_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_1_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|287894990", "287894990", "S07_M030_CIN_TBoneReturns_Main", "box_Timer_v2_1.TimeElapsed", "Out", l0, self)
  self:Out()
end
function export:f_box_Lanes_Restrictions_Control_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_2
  l0.SceneEntity = "9223372047235789465"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_TBoneReturns_CIN/s07_tbonereturns_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1860483392", "1860483392", "S07_M030_CIN_TBoneReturns_Main", "box_Lanes_Restrictions_Control_12.Out", "box_PlaySequence_v5_2.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_18_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_22
  l0.User = self.P8_Male02
  l0 = self.box_CLOController_18
  l1 = self.box_CLOController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1142871159", "1142871159", "S07_M030_CIN_TBoneReturns_Main", "box_CLOController_18.Activated", "box_CLOController_22.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_CLOController_18_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_18
  self.P8_Male02 = l0.UserID
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055648684516"
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
  l0._name = "box_Lanes_Restrictions_Control_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|939695462"
  l0.Out = self.f_box_Lanes_Restrictions_Control_12_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1197301891", "1197301891", "S07_M030_CIN_TBoneReturns_Main", "box_Ordered_Output_13.Out", "box_Lanes_Restrictions_Control_12.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_14
  l0.User = self.Unspawn_Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1310774147", "1310774147", "S07_M030_CIN_TBoneReturns_Main", "box_Ordered_Output_13.Out", "box_CLOController_14.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_13_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_15
  l0.User = self.Unspawn_Sitara
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|372904420", "372904420", "S07_M030_CIN_TBoneReturns_Main", "box_Ordered_Output_13.Out", "box_CLOController_15.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_13_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_16
  l0.User = self.Unspawn_Josh
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1770074685", "1770074685", "S07_M030_CIN_TBoneReturns_Main", "box_Ordered_Output_13.Out", "box_CLOController_16.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_13_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_17
  l0.User = self.Unspawn_Horatio
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|8359341", "8359341", "S07_M030_CIN_TBoneReturns_Main", "box_Ordered_Output_13.Out", "box_CLOController_17.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_13_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_20
  l0.CLO = "9223372050330162274"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1440957608", "1440957608", "S07_M030_CIN_TBoneReturns_Main", "box_Ordered_Output_13.Out", "box_CLOController_20.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_13_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_18
  l0.CLO = "9223372055352992435"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|755253613", "755253613", "S07_M030_CIN_TBoneReturns_Main", "box_Ordered_Output_13.Out", "box_CLOController_18.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_13_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_21
  l0.CLO = "9223372055352992434"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1095351134", "1095351134", "S07_M030_CIN_TBoneReturns_Main", "box_Ordered_Output_13.Out", "box_CLOController_21.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_21_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_23
  l0.User = self.P8_Female01
  l0 = self.box_CLOController_21
  l1 = self.box_CLOController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|96855097", "96855097", "S07_M030_CIN_TBoneReturns_Main", "box_CLOController_21.Activated", "box_CLOController_23.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_CLOController_21_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_21
  self.P8_Female01 = l0.UserID
end
function export:f_box_CinematicPrep_4_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|1548673782"
  l0._DynamicAnchors = {Out = 8}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_13_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_13_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_13_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_13_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_13_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_13_Out_7
  l0 = self.box_CinematicPrep_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|522390824", "522390824", "S07_M030_CIN_TBoneReturns_Main", "box_CinematicPrep_4.PreOut", "box_Ordered_Output_13.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_20_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_19
  l0.User = self.P8_Male01
  l0 = self.box_CLOController_20
  l1 = self.box_CLOController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_tbonereturns.domino|@S07_M030_CIN_TBoneReturns_Main|214760725", "214760725", "S07_M030_CIN_TBoneReturns_Main", "box_CLOController_20.Activated", "box_CLOController_19.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_CLOController_20_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_20
  self.P8_Male01 = l0.UserID
end
function export:OnEnter_box_OnceOnly_v3_6()
end
function export:Out()
end
function export:TBoneReturns_Started()
end
_compilerVersion = 4
