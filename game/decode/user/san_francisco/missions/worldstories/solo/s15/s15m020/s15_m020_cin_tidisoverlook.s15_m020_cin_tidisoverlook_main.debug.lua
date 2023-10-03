export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S15_M020_CIN_TidisOverlook_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_Teleport_To_SpawnPoint_5 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_5
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|461772198"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_5_TeleportDone
  self.box_PlaySequence_v5_2 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_2
  l0._graph = self
  l0._name = "box_PlaySequence_v5_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|751132726"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_2_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_2_Finished
  self.box_CinematicPrep_8 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_8
  l0._graph = self
  l0._name = "box_CinematicPrep_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|899905286"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_8_PostOut
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|911058416"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_4 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_4
  l0._graph = self
  l0._name = "box_Timer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|1404568787"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_10 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_10
  l0._graph = self
  l0._name = "box_OnceOnly_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|1705649717"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_10_Out
  l0.ResetOut = DummyFunction
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|1465167476", "1465167476", "S15_M020_CIN_TidisOverlook_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_Teleport_To_SpawnPoint_5_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_5
  l1 = self.box_Timer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|1122953293", "1122953293", "S15_M020_CIN_TidisOverlook_Main", "box_Teleport_To_SpawnPoint_5.TeleportDone", "box_Timer_v2_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_2_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_10()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|546986230", "546986230", "S15_M020_CIN_TidisOverlook_Main", "box_PlaySequence_v5_2.Finished", "box_OnceOnly_v3_10.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_2_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_10()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|881861727", "881861727", "S15_M020_CIN_TidisOverlook_Main", "box_PlaySequence_v5_2.Skipped", "box_OnceOnly_v3_10.In", l0, l1)
  l1:In(0)
end
function export:f_box_CinematicPrep_8_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|4969804", "4969804", "S15_M020_CIN_TidisOverlook_Main", "box_CinematicPrep_8.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372070233965360"
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|1213354043"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_3_Out
  l0 = self.box_CinematicPrep_1
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|620669895", "620669895", "S15_M020_CIN_TidisOverlook_Main", "box_CinematicPrep_1.PreOut", "box_Cinema_Zone_Cleanup_3.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_Cinema_Zone_Cleanup_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_2
  l0.SceneEntity = "9223372047502966236"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/S15_TidisOverLook_CIN/s15_tidisoverlook_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|2146367731", "2146367731", "S15_M020_CIN_TidisOverlook_Main", "box_Cinema_Zone_Cleanup_3.Out", "box_PlaySequence_v5_2.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_4_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_8
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_4
  l1 = self.box_CinematicPrep_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|88211601", "88211601", "S15_M020_CIN_TidisOverlook_Main", "box_Timer_v2_4.TimeElapsed", "box_CinematicPrep_8.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_OnceOnly_v3_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_5
  l0.SpawnPoint = "9223372059425314814"
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_OnceOnly_v3_10
  l1 = self.box_Teleport_To_SpawnPoint_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M020\\s15_m020_cin_tidisoverlook.domino|@S15_M020_CIN_TidisOverlook_Main|1059134896", "1059134896", "S15_M020_CIN_TidisOverlook_Main", "box_OnceOnly_v3_10.Out", "box_Teleport_To_SpawnPoint_5.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_OnceOnly_v3_10()
end
function export:Out()
end
_compilerVersion = 4
