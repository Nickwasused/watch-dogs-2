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
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Camera_List = {}
  self[24] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_24_TeleportDone
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[5] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[5]
  l0._graph = self
  l0.PreOut = self.f_5_PreOut
  l0.PostOut = DummyFunction
  self[22] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_22_Out
  self[33] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[33]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_33_Skipped
  l0.Finished = self.f_33_Finished
  self[7] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[7]
  l0._graph = self
  self[11] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[11]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_11_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[36] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[36]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_36_PostOut
  self[9] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[3] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_3_Skipped
  l0.Finished = self.f_3_Finished
  self[4] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[4]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_4_PostOut
  self[10] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[13] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Loaded = self.f_13_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[16] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[16]
  l0._graph = self
  l0.PreOut = self.f_16_PreOut
  l0.PostOut = DummyFunction
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
  l0 = self[13]
  l0.LayerName = "S11M010_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  self:en_7()
  l0 = self[7]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[2]
  l0.LayerName = "S11M010_Main"
  l0:Load()
end
function export:f_24_TeleportDone()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_21_Out
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
function export:f_5_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372064742473294"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_23_Out
  l0:Enable()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[36]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_33_Finished()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_33_Skipped()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_18_Popped()
  local l0
  self = self._graph
  l0 = self[11]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048063956708"
  l0:StartCommunication()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(0)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[10]
  l0:Input(0)
end
function export:f_11_OnCommunicationFinished()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:End()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372056543865358"
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
function export:f_15_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_18_Popped
  l0:Pop()
end
function export:f_36_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_15_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_19_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SceneEntity = "9223372049341580745"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S11/S11_M010MissionStart_CIN/s11_m010missionstart_cin.seq"
  l0:Start()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[24]
  l0.SpawnPoint = "9223372053000921201"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_3_Finished()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_3_Skipped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_20_Out
  l0:In()
end
function export:f_4_PostOut()
  local l0
  self = self._graph
  l0 = self[16]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_19_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_17_Hidden
  l0:Hide()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_13_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(1)
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[10]
  l0:Input(1)
end
function export:f_17_Hidden()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_16_PreOut()
  local l0
  self = self._graph
  l0 = self[33]
  l0.SceneEntity = "9223372050022502833"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S11/S11_TezcaScan-FS_VID/s11_tezcascan-fs_vid.seq"
  l0:Start()
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "S11M010_Main"
  l0.ShowMissionComplete = 0
end
_compilerVersion = 4
