export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S15_M010_CIN_DropTheBaby_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15_m010_cin_dropthebaby.domino|@S15_M010_CIN_DropTheBaby_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15_m010_cin_dropthebaby.domino|@S15_M010_CIN_DropTheBaby_Main|543691576"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
  l0.PostOut = DummyFunction
  self.box_OnceOnly_v3_8 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15_m010_cin_dropthebaby.domino|@S15_M010_CIN_DropTheBaby_Main|1455405031"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_8_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_3 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_3
  l0._graph = self
  l0._name = "box_PlaySequence_v5_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15_m010_cin_dropthebaby.domino|@S15_M010_CIN_DropTheBaby_Main|1579335557"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_3_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_3_Finished
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15_m010_cin_dropthebaby.domino|@S15_M010_CIN_DropTheBaby_Main|374567437", "374567437", "S15_M010_CIN_DropTheBaby_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372070199450986"
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
  l0._name = "box_Cinema_Zone_Cleanup_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15_m010_cin_dropthebaby.domino|@S15_M010_CIN_DropTheBaby_Main|1335434770"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_2_Out
  l0 = self.box_CinematicPrep_1
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15_m010_cin_dropthebaby.domino|@S15_M010_CIN_DropTheBaby_Main|165965351", "165965351", "S15_M010_CIN_DropTheBaby_Main", "box_CinematicPrep_1.PreOut", "box_Cinema_Zone_Cleanup_2.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_Cinema_Zone_Cleanup_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_3
  l0.SceneEntity = "9223372047235834724"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/S15_DroptheBaby_CIN/s15_dropthebaby_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15_m010_cin_dropthebaby.domino|@S15_M010_CIN_DropTheBaby_Main|535484857", "535484857", "S15_M010_CIN_DropTheBaby_Main", "box_Cinema_Zone_Cleanup_2.Out", "box_PlaySequence_v5_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15_m010_cin_dropthebaby.domino|@S15_M010_CIN_DropTheBaby_Main|295773760", "295773760", "S15_M010_CIN_DropTheBaby_Main", "box_OnceOnly_v3_8.Out", "Out", l0, self)
  self:Out()
end
function export:f_box_PlaySequence_v5_3_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15_m010_cin_dropthebaby.domino|@S15_M010_CIN_DropTheBaby_Main|750142168", "750142168", "S15_M010_CIN_DropTheBaby_Main", "box_PlaySequence_v5_3.Finished", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_3_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M010\\s15_m010_cin_dropthebaby.domino|@S15_M010_CIN_DropTheBaby_Main|1041981857", "1041981857", "S15_M010_CIN_DropTheBaby_Main", "box_PlaySequence_v5_3.Skipped", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(0)
end
function export:OnEnter_box_OnceOnly_v3_8()
end
function export:Out()
end
_compilerVersion = 4
