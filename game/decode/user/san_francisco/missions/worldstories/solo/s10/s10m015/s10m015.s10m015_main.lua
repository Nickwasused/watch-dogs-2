export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[10] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[4]
  l0._graph = self
  self[11] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Loaded = self.f_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[6] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[6]
  l0._graph = self
  l0.PreOut = self.f_6_PreOut
  l0.PostOut = DummyFunction
  self[15] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_15_TeleportDone
  self[7] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[7]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_7_PostOut
  self[9] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[5] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_5_Skipped
  l0.Finished = self.f_5_Finished
  self[12] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_12_Out
  l0.ResetOut = DummyFunction
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
  l0 = self[11]
  l0.LayerName = "S10M015_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  self:en_4()
  l0 = self[4]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[2]
  l0.LayerName = "S10M015_Main"
  l0:Load()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SceneEntity = "9223372047235831008"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S10/S10_DateWithWrench_CIN/s10_datewithwrench_cin.seq"
  l0:Start()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[10]
  l0:Input(1)
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372052848351884"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:Enable()
end
function export:f_11_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:In()
end
function export:f_8_Hidden()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_6_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372073941982887"
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
  l0.Out = self.f_14_Out
  l0:CleanZone()
end
function export:f_15_TeleportDone()
  local l0
  self = self._graph
  l0 = self[7]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[10]
  l0:Input(0)
end
function export:f_7_PostOut()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:End()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_8_Hidden
  l0:Hide()
end
function export:f_5_Finished()
  local l0
  self = self._graph
  l0 = self[12]
  l0:In(1)
end
function export:f_5_Skipped()
  local l0
  self = self._graph
  l0 = self[12]
  l0:In(0)
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.SpawnPoint = "9223372048722992458"
  l0.UseFadeToBlack = 0
  l0:In()
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "S10M015_Main"
  l0.ShowMissionComplete = 0
end
_compilerVersion = 4
