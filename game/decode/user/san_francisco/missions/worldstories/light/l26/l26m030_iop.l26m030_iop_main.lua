export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/IOPPropMonitor.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/1385151175.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1510380737.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4241938474.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.HackableEntity_OnceOnly_0 = "9223372068842132946"
  self.Cam = "9223372056554756107"
  self.Aiden = nil
  self.CharacterList = {}
  self.Grunt = nil
  self.WayOutDoors = {
    "9223372048342077902",
    "9223372052869592695",
    "9223372049202053908",
    "9223372049150575666"
  }
  self[11] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_11_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[23] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_23_Deactivated
  l0.UnspawnedUser = self.f_23_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[3] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_3_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[34] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = self.f_34_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[33] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_33_Started
  l0.Finished = DummyFunction
  self[9] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[32] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_32_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[35] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_35_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[45] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[45]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[19] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_19_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[10] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_10_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[8] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_8_Added
  l0.Removed = self.f_8_Removed
  l0.Out = self.f_8_Out
  self[46] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[46]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_46_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_46_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[12] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[12]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self[13] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_13_Started
  l0.Finished = DummyFunction
  self[31] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[31]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_31_Disabled
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_31_EventOccurred
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_1_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[4] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[17] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_17_OnUserInPlace
  self[40] = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_40_Enabled
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_40_PropSpawned
  self[7] = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  self[2] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[2]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_2_OnUserInPlace
  self[24] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_24_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[26] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Enabled = self.f_26_Enabled
  l0.Disabled = self.f_26_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_26_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[30] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_30_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[37] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[14] = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  l0 = self[14]
  l0._graph = self
  l0.Completed = self.f_14_Completed
  l0.DisconnectedAnimationPlayed = self.f_14_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self[28] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[28]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_28_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
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
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:In()
end
function export:f_11_UnspawnedUser()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Deactivate()
end
function export:f_23_Deactivated()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:UnspawnUser()
end
function export:f_23_UnspawnedUser()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Deactivate()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.HackableEntity_OnceOnly_0
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_39_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_3_HackSuccess()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:DisableHack()
end
function export:f_34_Out()
  self = self._graph
  self:Out()
end
function export:f_33_Started()
  local l0
  self = self._graph
  self:en_22()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_9_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[24]
  l0.IopID = "Vigilante"
  l0.IopEvent = "Vigilante.Hack"
  l0:SendEvent()
end
function export:f_32_ProfilingDisabled()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Input = self.CharacterList
  l0.Data[0] = self.Aiden
  l0.Data[1] = self.Grunt
  l0:Add()
end
function export:f_35_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372060518488252"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_45_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[12]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_20_Disabled()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Start()
end
function export:f_27_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[17]
  l0.CLO = "9223372056126999858"
  l0:Activate()
end
function export:f_38_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = nil
  l0.Radius = 300
  l0.PropagationSpeed = 50
  l0.RecoverySpeed = 10
  l0.Duration = 30
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = nil
  l0._graph = self
  l0.BlackoutStarted = self.f_36_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  l0:StartBlackout()
end
function export:f_38_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372060518488254"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_15_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_38_Out_2()
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
function export:f_38_Out_3()
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
function export:f_38_Out_4()
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
function export:f_38_Out_5()
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
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  self:en_40()
  l0 = self[40]
  l0:Enable()
end
function export:f_15_Disabled()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Start()
end
function export:f_19_StartCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_21_Out_0
  l0.Out[1] = self.f_21_Out_1
  l0:In()
end
function export:f_10_SendEventCompleted()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:EnableHack()
end
function export:f_36_BlackoutStarted()
  local l0
  self = self._graph
  l0 = self[37]
  l0.SoundId = "soundbinary/1385151175.bnk"
  l0:Play()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Enable()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = self[28]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357372613"
  l0:StartCommunication()
end
function export:f_8_Added()
  local l0
  self = self._graph
  l0 = self[8]
  self.CharacterList = l0.Target
  l0 = self[19]
  l0.IopID = "Vigilante"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.CharacterList
  l0.IopRoleList = {
    "Vigilante.Aiden",
    "Vigilante.Guard"
  }
  l0:Start()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[8]
  self.CharacterList = l0.Target
end
function export:f_8_Removed()
  local l0
  self = self._graph
  l0 = self[8]
  self.CharacterList = l0.Target
end
function export:f_46_Disabled()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_46_OnEndAccessCamera()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Disable()
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Start()
end
function export:f_21_Out_1()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Enable()
end
function export:f_13_Started()
  local l0
  self = self._graph
  l0 = self[2]
  l0.CLO = "9223372056126999853"
  l0:Activate()
end
function export:f_31_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_38_Out_0
  l0.Out[1] = self.f_38_Out_1
  l0.Out[2] = self.f_38_Out_2
  l0.Out[3] = self.f_38_Out_3
  l0.Out[4] = self.f_38_Out_4
  l0.Out[5] = self.f_38_Out_5
  l0:In()
end
function export:f_31_EventOccurred()
  local l0
  self = self._graph
  self:en_31()
  l0 = self[31]
  l0:Disable()
end
function export:f_1_IOPComplete()
  local l0
  self = self._graph
  l0 = self[14]
  l0:In()
end
function export:f_16_Bound()
  local l0
  self = self._graph
  self:en_40()
  l0 = self[40]
  l0:Disable()
end
function export:f_4_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372060518488256"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_20_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_17_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[17]
  self.Aiden = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Aiden
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_5_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_40_Enabled()
  local l0
  self = self._graph
  l0 = self[7]
  l0.CinemaZone = "9223372058159738125"
  l0:In()
end
function export:f_40_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self[40]
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = self.HackableEntity_OnceOnly_0
  l1.BoneName = nil
  l1.BoneNameStr = "cell_phone_01"
  l1.RemoveOffset = 1
  l1._graph = self
  l1.Bound = self.f_16_Bound
  l1.UnBound = DummyFunction
  l1.Out = DummyFunction
  l1:Bind()
end
function export:f_39_Hidden()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.SoundId = "soundbinary/3973683875.bnk"
  l0:Play()
end
function export:f_2_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[2]
  self.Grunt = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Grunt
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_27_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_22_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0:In()
end
function export:f_22_EnterForced()
  local l0
  self = self._graph
  self:en_22()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_24_SendEventCompleted()
  local l0
  self = self._graph
  self:en_31()
  l0 = self[31]
  l0:Enable()
end
function export:f_26_Disabled()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:DisableProfiling()
end
function export:f_26_Enabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_26_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_30_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[33]
  l0.SoundId = "soundbinary/4241938474.bnk"
  l0:Play()
end
function export:f_5_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[32]
  l0.HackableEntity = self.Grunt
  l0:DisableProfiling()
end
function export:f_14_Completed()
  local l0
  self = self._graph
  l0 = self[34]
  l0.SoundId = "soundbinary/1510380737.bnk"
  l0:Play()
end
function export:f_14_DisconnectedAnimationPlayed()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:UnspawnUser()
end
function export:f_28_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[10]
  l0.IopID = "Vigilante"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0:SendEvent()
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.CLO = "9223372056126999853"
  l0.User = self.Grunt
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.CLO = "9223372056126999858"
  l0.User = self.Aiden
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.HackableEntity = self.HackableEntity_OnceOnly_0
end
function export:en_46()
  local l0
  l0 = self[46]
  l0.CameraEntity = self.Cam
end
function export:en_31()
  local l0
  l0 = self[31]
  l0.MonitoredEvent = "Vigilante.Blackout"
end
function export:en_40()
  local l0
  l0 = self[40]
  l0.PropName = "cell_phone_01"
end
function export:en_22()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.Cam
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_22_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_22_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_26()
  local l0
  l0 = self[26]
  l0.HackableEntity = self.HackableEntity_OnceOnly_0
end
function export:Out()
end
_compilerVersion = 4
