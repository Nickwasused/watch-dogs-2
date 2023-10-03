export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/FelonySystemController_v2.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  cbox:RegisterBox("domino/System/HackableDoorController.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/740073622.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.ProximityTrigger_01 = "9223372049691848633"
  self.L28_StoryIcon_1 = "9223372049691848574"
  self.ProximityTrigger_02 = "9223372049691848635"
  self.L28_StoryIcon_2 = "9223372049691848637"
  self.ProximityTrigger_03 = "9223372049691848639"
  self.L28_StoryIcon_3 = "9223372049691848641"
  self.ProximityTrigger_04 = "9223372049691848645"
  self.L28_StoryIcon_4 = "9223372049691848643"
  self.ProximityTrigger_05 = "9223372049691848649"
  self.L28_StoryIcon_5 = "9223372049691848647"
  self.ProximityTrigger_06 = "9223372049691848653"
  self.L28_StoryIcon_6 = "9223372049691848651"
  self.DebugAnnotationTextEntity_363 = "9223372049902396709"
  self.LookAtTrigger_0 = "9223372050093338594"
  self.L28_StoryIcon_10 = "9223372051258696219"
  self.ProximityTrigger_3543 = "9223372051258696220"
  self.L28M020_VR_AccessNode_EXT_EntranceNodeEntity_Invisible_0 = "9223372053758656264"
  self.DebugAnnotationTextEntity_361 = "9223372049902396707"
  self.L28M020_CityLifeObject_SignalRelay_1 = "9223372057223392826"
  self.Signal_Relay_Delay = 0
  self.L28M020_CityLifeObject_SignalRelay_2 = "9223372057223392827"
  self.L28M020_CityLifeObject_SignalRelay_3 = "9223372057223392828"
  self.L28M020_CityLifeObject_SignalRelay_4 = "9223372057223392829"
  self.L28M020_CityLifeObject_SignalRelay_5 = "9223372057223392830"
  self.L28M020_CityLifeObject_SignalRelay_6 = "9223372057223392831"
  self.Keypad_HackableEntity_6 = "9223372057006493043"
  self.Keypad_HackableEntity_5 = "9223372057006493041"
  self.Hinge_Hackable_Door_1 = "9223372057006493035"
  self[18] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Loaded = self.f_18_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Loaded = self.f_15_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[17] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_17_Out
  self[4] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_4_Disabled
  l0.OnMovementStarted = self.f_4_OnMovementStarted
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[43] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[43]
  l0._graph = self
  l0.AiAccessEnabled = self.f_43_AiAccessEnabled
  l0.AiAccessDisabled = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Loaded = self.f_16_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[32] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = self.f_32_Out
  self[27] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = self.f_27_Out
  self[39] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_39_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[13]
  l0._graph = self
  self[7] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[7]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_7_PostOut
  self[12] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_12_Unloaded
  l0.Reseted = DummyFunction
  self[40] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_40_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[22] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_22_OnPhoneCallEnded
  self[25] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[25]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_25_Out
  self[21] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_21_RewardsExecuted
  self[41] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[41]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_41_AiAccessDisabled
  self[31] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = self.f_31_Out
  self[19] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_19_Out
  self[30] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = self.f_30_Out
  self[50] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[50]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_50_RewardsExecuted
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.MessageCompleted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[2]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_2_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[26] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  l0 = self[26]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_26_Located
  self[42] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[42]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_42_AiAccessDisabled
  self[20] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[20]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_20_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[29] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.lua")
  l0 = self[29]
  l0._graph = self
  l0.Out = self.f_29_Out
  self[1] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[1]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_1_PostOut
  self[28] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = self.f_28_Out
  self[9] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Loaded = self.f_9_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.MessageCompleted = DummyFunction
  self[8] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[8]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_8_PostOut
  self[6] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.MessageCompleted = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
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
  l0 = self[15]
  l0.LayerName = "L28M020_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self[16]
  l0.LayerName = "L28M020_Main"
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self[18]
  l0.LayerName = "L28M020_Main"
  l0:Load()
end
function export:In()
  local l0
  l0 = self[9]
  l0.LayerName = "L28M020_Main"
  l0:Load()
end
function export:f_18_Loaded()
  local l0
  self = self._graph
  l0 = self[8]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_15_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372071858418912"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_45_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_38_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Enable()
end
function export:f_47_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372064798135287"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_33_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  l0 = self[50]
  l0.ItemDB = "Items.9223372049902191269"
  l0:ExecuteRewards()
end
function export:f_4_OnMovementStarted()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[21]
  l0.ItemDB = "Items.9223372050357367273"
  l0:ExecuteRewards()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0.IncrementalObjectiveTotal = 6
  l0:ShowNewObjective()
end
function export:f_43_AiAccessEnabled()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(0)
end
function export:f_16_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372071858418912"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_46_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[39]
  l0.SoundId = "soundbinary/740073622.bnk"
  l0:Start()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[28]
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_2
  l0.IncrementObjective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0:EnableMonitor()
end
function export:f_45_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372071858418912"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_49_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_36_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Hinge_Hackable_Door_1
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_24_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0:MoveBackward()
end
function export:f_39_Finished()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Seconds = 3
  l0:Start()
end
function export:f_7_PostOut()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(1)
end
function export:f_12_Unloaded()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Succeed()
end
function export:f_40_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[12]
  l0.LayerName = "L28M020_Main"
  l0:Unload()
end
function export:f_22_OnPhoneCallEnded()
  local l0
  self = self._graph
  l0 = self[20]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367343"
  l0:StartCommunication()
end
function export:f_37_Disabled()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(0)
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0.CheckpointList = "CheckPoint_0"
  l0:In()
end
function export:f_21_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[22]
  l0.ItemDb = "Items.9223372050357367273"
  l0:Enable()
end
function export:f_24_MovedBackward()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Entity = "9223372057006493035"
  l0:DisableAiAccess()
end
function export:f_33_ByIndexSet()
  local l0
  self = self._graph
  l0 = self[7]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_34_Disabled()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_41_AiAccessDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_37_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_44_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372071858418912"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_48_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[32]
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_6
  l0.IncrementObjective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0:EnableMonitor()
end
function export:f_48_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372064798135287"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_35_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_46_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372071858418912"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_47_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.CheckpointList = "CheckPoint_2"
  l0:In()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[31]
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_5
  l0.IncrementObjective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0:EnableMonitor()
end
function export:f_50_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Entity = "9223372057006493035"
  l0:EnableAiAccess()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.DistrictsDB = "Districts.9223372048308079984"
  l0:Start()
end
function export:f_2_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020a.Objectives.Objective010",
    item = "Objective",
    id = "550107"
  }
  l0:ShowNewObjective()
end
function export:f_26_Located()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(0)
end
function export:f_42_AiAccessDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_34_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_20_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020a.Objectives.Objective005",
    item = "Objective",
    id = "603669"
  }
  l0:ShowNewObjective()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = self[30]
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_4
  l0.IncrementObjective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0:EnableMonitor()
end
function export:f_49_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372064798135287"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_36_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_1_PostOut()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(1)
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[29]
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_3
  l0.IncrementObjective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0:EnableMonitor()
end
function export:f_35_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Hinge_Hackable_Door_1
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_23_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0:MoveBackward()
end
function export:f_9_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372071858418912"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_44_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_1
  l0.IncrementObjective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0:EnableMonitor()
end
function export:f_8_PostOut()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(1)
end
function export:f_38_Enabled()
  local l0
  self = self._graph
  l0 = self[11]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_23_MovedBackward()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Entity = "9223372057006493035"
  l0:DisableAiAccess()
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367344"
  l0:StartCommunication()
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.MoveableEntity = self.Hinge_Hackable_Door_1
end
_compilerVersion = 4
