export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
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
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Box_Van = nil
  self.TalkingCar01 = {}
  self.TalkingCar01a = {}
  self.TalkingCar01b = {}
  self[2] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[2]
  l0._graph = self
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
  l0.Started = self.f_2_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_2_Finished
  l0.SPOut.Play_Music = self.f_2_SPOut__Play_Music_
  l0.SPOut.PoweringUp = self.f_2_SPOut__PoweringUp_
  l0.SPOut.SystemCheck = self.f_2_SPOut__SystemCheck_
  l0.SPOut.Sweet = self.f_2_SPOut__Sweet_
  self[5] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[1]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_1_PostOut
  self[4] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[16] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[17] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[6] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[6]
  l0._graph = self
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
  l0.Out = self.f_8_Out
  l0:SetInvincible()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_NoMovement_CamOnly"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_10_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_12_HideInVehicleEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:UnsetInvincible()
end
function export:f_2_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_NoMovement_CamOnly"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_13_Popped
  l0:Pop()
end
function export:f_2_SPOut__Play_Music_()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372073311418274"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_2_SPOut__PoweringUp_()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SoundId = "soundbinary/647288204.bnk"
  l0:Start()
end
function export:f_2_SPOut__Sweet_()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SoundId = "soundbinary/1270627348.bnk"
  l0:Start()
end
function export:f_2_SPOut__SystemCheck_()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SoundId = "soundbinary/42397832.bnk"
  l0:Start()
end
function export:f_2_Started()
  local l0
  self = self._graph
  l0 = self[2]
  self.CHIP_Out = l0.EntityOut.CHIP
  self.Box_Van = l0.EntityOut.Box_Van
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_15_Out_0
  l0.Out[1] = self.f_15_Out_1
  l0.Out[2] = self.f_15_Out_2
  l0:In()
end
function export:f_11_HideInVehicleDisabled()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SceneEntity = "9223372050590115507"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_M020_StealingCHIP/s03_m020_stealingchip.seq"
  l0.EntityIn.CHIP = self.CHIP
  l0:Start()
end
function export:f_1_PostOut()
  self = self._graph
  self:Out()
end
function export:f_10_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  l0.User = nil
  l0.CanHideInVehicle = 0
  l0._graph = self
  l0.Out = DummyFunction
  l0.Hidden = DummyFunction
  l0.Unhidden = DummyFunction
  l0.HideInVehicleEnabled = DummyFunction
  l0.HideInVehicleDisabled = self.f_11_HideInVehicleDisabled
  l0:SetCanHideInVehicle()
end
function export:f_16_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[17]
  l0.SoundId = "soundbinary/3841799905.bnk"
  l0:Play()
end
function export:f_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372068891947766"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_15_Out_1()
  local l0
  self = self._graph
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
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = DummyFunction
  l0:CleanZone()
end
function export:f_15_Out_2()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Seconds = 9.4
  l0:Start()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_13_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  l0.User = nil
  l0.CanHideInVehicle = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Hidden = DummyFunction
  l0.Unhidden = DummyFunction
  l0.HideInVehicleEnabled = self.f_12_HideInVehicleEnabled
  l0.HideInVehicleDisabled = DummyFunction
  l0:SetCanHideInVehicle()
end
function export:Out()
end
_compilerVersion = 4
