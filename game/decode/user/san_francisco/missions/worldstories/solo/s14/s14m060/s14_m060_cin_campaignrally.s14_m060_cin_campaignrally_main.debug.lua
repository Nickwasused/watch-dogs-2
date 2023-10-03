export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S14_M060_CIN_CampaignRally_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_Teleport_To_SpawnPoint_2 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_2
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|180000815"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_2_TeleportDone
  self.box_Timer_v2_6 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_6
  l0._graph = self
  l0._name = "box_Timer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|315083188"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|1307982889"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_OnceOnly_v3_10 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_10
  l0._graph = self
  l0._name = "box_OnceOnly_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|1373949447"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_10_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_7 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_7
  l0._graph = self
  l0._name = "box_CinematicPrep_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|1626432310"
  l0.PreOut = self.f_box_CinematicPrep_7_PreOut
  l0.PostOut = DummyFunction
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
  l0 = self.box_CinematicPrep_7
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|220433851", "220433851", "S14_M060_CIN_CampaignRally_Main", "In", "box_CinematicPrep_7.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_Lanes_Restrictions_Control_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|694157358", "694157358", "S14_M060_CIN_CampaignRally_Main", "box_Lanes_Restrictions_Control_9.Out", "box_Timer_v2_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_Teleport_To_SpawnPoint_2_TeleportDone()
  local l0
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|1714694522", "1714694522", "S14_M060_CIN_CampaignRally_Main", "box_Teleport_To_SpawnPoint_2.TeleportDone", "Out", l0, self)
  self:Out()
end
function export:f_box_Timer_v2_6_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047235833558"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S14/S14_CampaignRally_CIN/s14_campaignrally_cin.seq"
  l0 = self.box_Timer_v2_6
  l1 = self.box_PlaySequence_v5_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|1576050621", "1576050621", "S14_M060_CIN_CampaignRally_Main", "box_Timer_v2_6.TimeElapsed", "box_PlaySequence_v5_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Cinema_Zone_Cleanup_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055648685404"
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|174260248"
  l0.Out = self.f_box_Lanes_Restrictions_Control_9_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|924918496", "924918496", "S14_M060_CIN_CampaignRally_Main", "box_Cinema_Zone_Cleanup_5.Out", "box_Lanes_Restrictions_Control_9.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_10()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|1893097123", "1893097123", "S14_M060_CIN_CampaignRally_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_10.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_10()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|1162927264", "1162927264", "S14_M060_CIN_CampaignRally_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_10.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_2
  l0.SpawnPoint = "9223372047969945877"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_OnceOnly_v3_10
  l1 = self.box_Teleport_To_SpawnPoint_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|1092017934", "1092017934", "S14_M060_CIN_CampaignRally_Main", "box_OnceOnly_v3_10.Out", "box_Teleport_To_SpawnPoint_2.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_7_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372070233965817"
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
  l0._name = "box_Cinema_Zone_Cleanup_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|499729779"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_5_Out
  l0 = self.box_CinematicPrep_7
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_campaignrally.domino|@S14_M060_CIN_CampaignRally_Main|1086951702", "1086951702", "S14_M060_CIN_CampaignRally_Main", "box_CinematicPrep_7.PreOut", "box_Cinema_Zone_Cleanup_5.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:OnEnter_box_OnceOnly_v3_10()
end
function export:Out()
end
_compilerVersion = 4
