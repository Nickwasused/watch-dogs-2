export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/4146193.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S04_M010_CIN_MeetWrench_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Wrench = nil
  self.box_CinematicPrep_6 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_6
  l0._graph = self
  l0._name = "box_CinematicPrep_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|119517184"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_6_PostOut
  self.box_PlaySound_v2_2 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_2
  l0._graph = self
  l0._name = "box_PlaySound_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|869396510"
  l0.Out = self.f_box_PlaySound_v2_2_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|909134417"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
  l0.PostOut = DummyFunction
  self.box_OnceOnly_v3_7 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_7
  l0._graph = self
  l0._name = "box_OnceOnly_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1094128794"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_7_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_5 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_5
  l0._graph = self
  l0._name = "box_PlaySequence_v5_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1387959327"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_5_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_5_Finished
  self.box_CLOMonitor_14 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_14
  l0._graph = self
  l0._name = "box_CLOMonitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|2024456169"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_14_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_14_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_14_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
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
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1742422489", "1742422489", "S04_M010_CIN_MeetWrench_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_CinematicPrep_6_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|821135725", "821135725", "S04_M010_CIN_MeetWrench_Main", "box_CinematicPrep_6.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_VisibilityController_v2_4_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372057176310738"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|964168542"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_10_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1368452221", "1368452221", "S04_M010_CIN_MeetWrench_Main", "box_VisibilityController_v2_4.Hidden", "box_VisibilityController_v2_10.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_8_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_6
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|415275974", "415275974", "S04_M010_CIN_MeetWrench_Main", "box_VisibilityController_v2_8.Shown", "box_CinematicPrep_6.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Cinema_Zone_Cleanup_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_14
  l0.CLO = "9223372056708308972"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|2045194442", "2045194442", "S04_M010_CIN_MeetWrench_Main", "box_Cinema_Zone_Cleanup_3.Out", "box_CLOMonitor_14.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_VisibilityController_v2_12_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372068946140621"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|339511490"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_8_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1598002310", "1598002310", "S04_M010_CIN_MeetWrench_Main", "box_VisibilityController_v2_12.Shown", "box_VisibilityController_v2_8.Show", clone, l0)
  l0:Show()
end
function export:f_box_PlaySound_v2_2_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySound_v2_2
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1104188289", "1104188289", "S04_M010_CIN_MeetWrench_Main", "box_PlaySound_v2_2.Out", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(0)
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053471671988"
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
  l0._name = "box_Lanes_Restrictions_Control_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1287001206"
  l0.Out = self.f_box_Lanes_Restrictions_Control_9_Out
  l0 = self.box_CinematicPrep_1
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1316831142", "1316831142", "S04_M010_CIN_MeetWrench_Main", "box_CinematicPrep_1.PreOut", "box_Lanes_Restrictions_Control_9.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_10_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_5
  l0.SceneEntity = "9223372046601119533"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_MeetWrench_CIN/s04_meetwrench_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|30916916", "30916916", "S04_M010_CIN_MeetWrench_Main", "box_VisibilityController_v2_10.Hidden", "box_PlaySequence_v5_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Wrench
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1109577404"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_13_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_OnceOnly_v3_7
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1289589795", "1289589795", "S04_M010_CIN_MeetWrench_Main", "box_OnceOnly_v3_7.Out", "box_VisibilityController_v2_13.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_13_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372057176310738"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|786382503"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_12_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1560894492", "1560894492", "S04_M010_CIN_MeetWrench_Main", "box_VisibilityController_v2_13.Shown", "box_VisibilityController_v2_12.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_15_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372068946140621"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|250824852"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_4_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1157769564", "1157769564", "S04_M010_CIN_MeetWrench_Main", "box_VisibilityController_v2_15.Hidden", "box_VisibilityController_v2_4.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Lanes_Restrictions_Control_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372063966591388"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|509091391"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|702395825", "702395825", "S04_M010_CIN_MeetWrench_Main", "box_Lanes_Restrictions_Control_9.Out", "box_Cinema_Zone_Cleanup_3.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_PlaySequence_v5_5_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_5
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1504868382", "1504868382", "S04_M010_CIN_MeetWrench_Main", "box_PlaySequence_v5_5.Finished", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_5_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_2
  l0.SoundId = "soundbinary/4146193.bnk"
  l0 = self.box_PlaySequence_v5_5
  l1 = self.box_PlaySound_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1050685814", "1050685814", "S04_M010_CIN_MeetWrench_Main", "box_PlaySequence_v5_5.Skipped", "box_PlaySound_v2_2.Play", l0, l1)
  l1:Play()
end
function export:f_box_CLOMonitor_14_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_14
  self.Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Wrench
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|1211398294"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_15_Hidden
  l0.Out = DummyFunction
  l0 = self.box_CLOMonitor_14
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M010\\s04_m010_cin_meetwrench.domino|@S04_M010_CIN_MeetWrench_Main|55243726", "55243726", "S04_M010_CIN_MeetWrench_Main", "box_CLOMonitor_14.GotUser", "box_VisibilityController_v2_15.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_CLOMonitor_14_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_14
  self.Wrench = l0.UserID
end
function export:f_box_CLOMonitor_14_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_14
  self.Wrench = l0.UserID
end
function export:OnEnter_box_OnceOnly_v3_7()
end
function export:Out()
end
_compilerVersion = 4
