export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SetIsHindingInVehicle.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/42397832.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3841799905.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1270627348.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/647288204.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S03_M020_CIN_AIDrive_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Box_Van = nil
  self.TalkingCar01 = {}
  self.TalkingCar01a = {}
  self.TalkingCar01b = {}
  self.box_PlaySequence_v5_2 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_2
  l0._graph = self
  l0._name = "box_PlaySequence_v5_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|723196773"
  l0._DynamicAnchors = {
    EntityIn = {"CHIP"},
    EntityOut = {"CHIP", "Box_Van"},
    SPOut = {
      "Play_Music",
      "PoweringUp",
      "SystemCheck",
      "Sweet"
    }
  }
  l0.Started = self.f_box_PlaySequence_v5_2_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_2_Finished
  l0.SPOut.Play_Music = self.f_box_PlaySequence_v5_2_SPOut__Play_Music_
  l0.SPOut.PoweringUp = self.f_box_PlaySequence_v5_2_SPOut__PoweringUp_
  l0.SPOut.SystemCheck = self.f_box_PlaySequence_v5_2_SPOut__SystemCheck_
  l0.SPOut.Sweet = self.f_box_PlaySequence_v5_2_SPOut__Sweet_
  self.box_PlayDialog_v2_5 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_5
  l0._graph = self
  l0._name = "box_PlayDialog_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|762361538"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1089397306"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_1_PostOut
  self.box_PlayDialog_v2_4 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_4
  l0._graph = self
  l0._name = "box_PlayDialog_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1142364424"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_16 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_16
  l0._graph = self
  l0._name = "box_Timer_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1243525490"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_17 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_17
  l0._graph = self
  l0._name = "box_PlaySound_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1253914228"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_6 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_6
  l0._graph = self
  l0._name = "box_PlayDialog_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1894037362"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
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
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|449182398"
  l0.Out = self.f_box_Pawn_Health_Controller_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1956698574", "1956698574", "S03_M020_CIN_AIDrive_Main", "In", "box_Pawn_Health_Controller_8.SetInvincible", self, l0)
  l0:SetInvincible()
end
function export:f_box_Pawn_Health_Controller_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_NoMovement_CamOnly"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1227701881"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_10_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|222984505", "222984505", "S03_M020_CIN_AIDrive_Main", "box_Pawn_Health_Controller_8.Out", "box_SetActionMap_v2_10.Push", clone, l0)
  l0:Push()
end
function export:f_box_Set_Is_Hiding_In_Vehicle_12_HideInVehicleEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1527013361"
  l0.Out = self.f_box_Pawn_Health_Controller_9_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1578287801", "1578287801", "S03_M020_CIN_AIDrive_Main", "box_Set_Is_Hiding_In_Vehicle_12.HideInVehicleEnabled", "box_Pawn_Health_Controller_9.UnsetInvincible", clone, l0)
  l0:UnsetInvincible()
end
function export:f_box_PlaySequence_v5_2_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_NoMovement_CamOnly"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1825139837"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_13_Popped
  l0 = self.box_PlaySequence_v5_2
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|366385145", "366385145", "S03_M020_CIN_AIDrive_Main", "box_PlaySequence_v5_2.Finished", "box_SetActionMap_v2_13.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_PlaySequence_v5_2_SPOut__Play_Music_()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372073311418274"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1597996064"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySequence_v5_2
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|166276918", "166276918", "S03_M020_CIN_AIDrive_Main", "box_PlaySequence_v5_2.SPOut", "box_MissionMusicController_3.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlaySequence_v5_2_SPOut__PoweringUp_()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_4
  l0.SoundId = "soundbinary/647288204.bnk"
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_PlayDialog_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|756328858", "756328858", "S03_M020_CIN_AIDrive_Main", "box_PlaySequence_v5_2.SPOut", "box_PlayDialog_v2_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_2_SPOut__Sweet_()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_5
  l0.SoundId = "soundbinary/1270627348.bnk"
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_PlayDialog_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1580409491", "1580409491", "S03_M020_CIN_AIDrive_Main", "box_PlaySequence_v5_2.SPOut", "box_PlayDialog_v2_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_2_SPOut__SystemCheck_()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_6
  l0.SoundId = "soundbinary/42397832.bnk"
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_PlayDialog_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|85815407", "85815407", "S03_M020_CIN_AIDrive_Main", "box_PlaySequence_v5_2.SPOut", "box_PlayDialog_v2_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_2_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_2
  self.CHIP_Out = l0.EntityOut.CHIP
  self.Box_Van = l0.EntityOut.Box_Van
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1335871229"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_15_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_15_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_15_Out_2
  l0 = self.box_PlaySequence_v5_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1932599677", "1932599677", "S03_M020_CIN_AIDrive_Main", "box_PlaySequence_v5_2.Started", "box_Ordered_Output_15.In", l0, l1)
  l1:In()
end
function export:f_box_Set_Is_Hiding_In_Vehicle_11_HideInVehicleDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_2
  l0.SceneEntity = "9223372050590115507"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_M020_StealingCHIP/s03_m020_stealingchip.seq"
  l0.EntityIn.CHIP = self.CHIP
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|568588567", "568588567", "S03_M020_CIN_AIDrive_Main", "box_Set_Is_Hiding_In_Vehicle_11.HideInVehicleDisabled", "box_PlaySequence_v5_2.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_1_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|473716199", "473716199", "S03_M020_CIN_AIDrive_Main", "box_CinematicPrep_1.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_SetActionMap_v2_10_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  l0.User = nil
  l0.CanHideInVehicle = 0
  l0._graph = self
  l0._name = "box_Set_Is_Hiding_In_Vehicle_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|847153407"
  l0.Out = DummyFunction
  l0.Hidden = DummyFunction
  l0.Unhidden = DummyFunction
  l0.HideInVehicleEnabled = DummyFunction
  l0.HideInVehicleDisabled = self.f_box_Set_Is_Hiding_In_Vehicle_11_HideInVehicleDisabled
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|851167634", "851167634", "S03_M020_CIN_AIDrive_Main", "box_SetActionMap_v2_10.Pushed", "box_Set_Is_Hiding_In_Vehicle_11.SetCanHideInVehicle", clone, l0)
  l0:SetCanHideInVehicle()
end
function export:f_box_Timer_v2_16_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_17
  l0.SoundId = "soundbinary/3841799905.bnk"
  l0 = self.box_Timer_v2_16
  l1 = self.box_PlaySound_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1984080825", "1984080825", "S03_M020_CIN_AIDrive_Main", "box_Timer_v2_16.TimeElapsed", "box_PlaySound_v2_17.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372068891947766"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1613790935"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|2106399157", "2106399157", "S03_M020_CIN_AIDrive_Main", "box_Ordered_Output_15.Out", "box_VisibilityController_v2_7.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_15_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372070608028852"
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
  l0._name = "box_Cinema_Zone_Cleanup_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|978893696"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|206377493", "206377493", "S03_M020_CIN_AIDrive_Main", "box_Ordered_Output_15.Out", "box_Cinema_Zone_Cleanup_14.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Ordered_Output_15_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_16
  l0.Seconds = 9.4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1139245546", "1139245546", "S03_M020_CIN_AIDrive_Main", "box_Ordered_Output_15.Out", "box_Timer_v2_16.Start", clone, l0)
  l0:Start()
end
function export:f_box_Pawn_Health_Controller_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|1886126583", "1886126583", "S03_M020_CIN_AIDrive_Main", "box_Pawn_Health_Controller_9.Out", "box_CinematicPrep_1.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_SetActionMap_v2_13_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  l0.User = nil
  l0.CanHideInVehicle = nil
  l0._graph = self
  l0._name = "box_Set_Is_Hiding_In_Vehicle_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|475212818"
  l0.Out = DummyFunction
  l0.Hidden = DummyFunction
  l0.Unhidden = DummyFunction
  l0.HideInVehicleEnabled = self.f_box_Set_Is_Hiding_In_Vehicle_12_HideInVehicleEnabled
  l0.HideInVehicleDisabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03_M020_CIN_AIDrive.domino|@S03_M020_CIN_AIDrive_Main|992124131", "992124131", "S03_M020_CIN_AIDrive_Main", "box_SetActionMap_v2_13.Popped", "box_Set_Is_Hiding_In_Vehicle_12.SetCanHideInVehicle", clone, l0)
  l0:SetCanHideInVehicle()
end
function export:Out()
end
_compilerVersion = 4
