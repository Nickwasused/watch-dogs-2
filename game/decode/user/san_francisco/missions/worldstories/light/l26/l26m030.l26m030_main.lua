export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Light/L26/l26m030_iop.L26M030_IOP_Main.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:LoadResource("soundbinary/2712294448.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.WayOutDoors = {
    "9223372048342077902",
    "9223372052869592695",
    "9223372049202053908",
    "9223372049150575666"
  }
  self[21] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_21_Out
  self[17] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_17_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[14] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[14]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_14_PostOut
  self[7] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = self.f_7_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_7_Escaped
  l0.LeftArea = DummyFunction
  self[9] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.MessageCompleted = DummyFunction
  self[19] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Loaded = self.f_19_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[8] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L26/l26m030_iop.L26M030_IOP_Main.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  self[1] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_1_Out
  self[11] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Loaded = self.f_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[16] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_16_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[4]
  l0._graph = self
  self[5] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[5]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_5_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_13_Unloaded
  l0.Reseted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
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
  l0 = self[1]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self[19]
  l0.LayerName = "L26M030_IOP_Main"
  l0:Load()
end
function export:In()
  local l0
  l0 = self[1]
  l0:Input(0)
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372062876125714"
  l0._graph = self
  l0.Out = self.f_20_Out
  l0:Activate()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_17_AllSpawned()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Input(0)
end
function export:f_14_PostOut()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Input(1)
end
function export:f_7_Escaped()
  local l0
  self = self._graph
  l0 = self[5]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051775436206"
  l0:StartCommunication()
end
function export:f_7_Started()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SoundId = "soundbinary/2712294448.bnk"
  l0:Start()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L26.L26M040.ActivationObjective",
    item = "ActivationObjective",
    id = "689172"
  }
  l0:ShowNewObjective()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Entity = "9223372050340640650"
  l0.Entity_AreaRadius = 65
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.EscapeFelonyLocID = {
    section = "MISSIONS.COMMON.MESSAGES.OBJECTIVE",
    item = "Objective_Escape",
    id = "693233"
  }
  l0:Start()
end
function export:f_19_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372062876125713"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_22_Out
  l0:Enable()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372062876125714"
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:Activate()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.LayerName = "L26M030_IOP_Main"
  l0:Load()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0.PGTMissionArea = "9223372062876125718"
  l0:Start()
end
function export:f_11_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372062876125713"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:Enable()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.PGTMissionArea = "9223372062876125718"
  l0:Start()
end
function export:f_16_AllSpawned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_25_Out_0
  l0.Out[1] = self.f_25_Out_1
  l0.Out[2] = self.f_25_Out_2
  l0.Out[3] = self.f_25_Out_3
  l0.Out[4] = self.f_25_Out_4
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_6_BlackoutStarted()
  local l0
  self = self._graph
  l0 = self[14]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_5_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[13]
  l0.LayerName = "L26M030_IOP_Main"
  l0:Unload()
end
function export:f_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = nil
  l0.Radius = 300
  l0.PropagationSpeed = 50
  l0.RecoverySpeed = 50
  l0.Duration = 5
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = nil
  l0._graph = self
  l0.BlackoutStarted = self.f_6_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  l0:StartBlackout()
end
function export:f_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372052869592681"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0:MoveForward()
end
function export:f_25_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372048342077900"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0:MoveForward()
end
function export:f_25_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049202053907"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0:MoveForward()
end
function export:f_25_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049150575665"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0:MoveForward()
end
function export:f_13_Unloaded()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Succeed()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In()
end
_compilerVersion = 4
