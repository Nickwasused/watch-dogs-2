export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/ChangePlayerGkModelFromHumanConfig.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  cbox:RegisterBox("domino/System/InventoryController_v2.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_sitara_scr.S17M010_Sitara_SCR_Main.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/WaitQualitiesLoaded.lua")
  cbox:RegisterGlobals("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/S17M010.globals.lua")
  cbox:RegisterGlobals("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_sitara.globals.lua")
  cbox:LoadResource("soundbinary/2286467389.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/338224551.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.SitaraDone = DummyFunction
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.TimeOfDayMinutes = 30
  self.TimeOfDayHour = 18
  self.Catskills = nil
  self[41] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[41]
  l0._graph = self
  l0.StartCommunicationOut = self.f_41_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[17] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_sitara_scr.S17M010_Sitara_SCR_Main.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  self[32] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[32]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_32_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[62] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[62]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_62_IOPKickOutComplete
  self[25] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_25_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[47] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[47]
  l0._graph = self
  l0.Out = self.f_47_Out
  l0.SetTrue = self.f_47_SetTrue
  l0.SetFalse = self.f_47_SetFalse
  l0.Toggled = self.f_47_Toggled
  l0.SetFromBool = self.f_47_SetFromBool
  self[43] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[43]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_1_Out
  self[49] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[55] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[55]
  l0._graph = self
  l0.Activated = self.f_55_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_55_OnUserInPlace
  self[9] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = self.f_9_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[66] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[66]
  l0._graph = self
  l0.PreOut = self.f_66_PreOut
  l0.PostOut = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[23] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = self.f_23_Enabled
  l0.Disabled = self.f_23_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_23_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[44] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[44]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_44_Stopped
  l0.Hacked = self.f_44_Hacked
  self[30] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[30]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[34] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[34]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_34_Deactivated
  self[42] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[42]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_42_Out
  self[31] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[31]
  l0._graph = self
  l0.StartCommunicationOut = self.f_31_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_31_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[57] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = self.f_57_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[21] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_21_TeleportDone
  self[60] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[60]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = self.f_60_OnQuit
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_13_Out
  self[15] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_15_Out
  self[65] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[65]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_65_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.MessageCompleted = DummyFunction
  self[64] = cbox:CreateBox("domino/System/WaitQualitiesLoaded.lua")
  l0 = self[64]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Loaded = self.f_64_Loaded
  self[45] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[45]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_45_Stopped
  l0.Interacted = self.f_45_Interacted
  self[28] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_28_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[53] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[53]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_53_Out
  self[50] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[50]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[39] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = self.f_39_Out
  l0.SetTrue = self.f_39_SetTrue
  l0.SetFalse = self.f_39_SetFalse
  l0.Toggled = self.f_39_Toggled
  l0.SetFromBool = self.f_39_SetFromBool
  self[6] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[11] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_11_Completed
  self[33] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_33_Disabled
  l0.Enter = self.f_33_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.MessageCompleted = DummyFunction
  self[37] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[37]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_37_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self[36] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[36]
  l0._graph = self
  l0.StartCommunicationOut = self.f_36_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_36_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_3_Out
  self[16] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Loaded = self.f_16_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = self.f_4_Started
  l0.Stopped = self.f_4_Stopped
  l0.Hacked = self.f_4_Hacked
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:FromCheckPoint()
  local l0
  l0 = self[39]
  l0.Bool = Globals.S17M010.PlayFromCheckpoint
  l0:True()
end
function export:In()
  local l0
  l0 = self[21]
  l0.SpawnPoint = "9223372046882196939"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485448"
  l0:In()
end
function export:f_41_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_40_Changed()
  local l0
  self = self._graph
  l0 = self[25]
  l0.HackableEntity = self.PlayerEntity
  l0.Hacker = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.Main_Cast.Sitara",
    item = "",
    id = "4294980205"
  }
  l0:AssignProfile()
end
function export:f_20_CanExitSet()
  local l0
  self = self._graph
  l0 = self[60]
  l0.CLO = "9223372059638308304"
  l0.User = self.Catskills
  l0:Quit()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.MissionArea = "9223372056767358885"
  l0.MissionLayer = "S17M010_Main"
  l0.HardFail = 1
  l0.InstantFailOnExit = 0
  l0:Enable()
end
function export:f_32_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_27_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = DummyFunction
  l0:SwitchLocalPlayerInventoryToNormal()
end
function export:f_62_IOPKickOutComplete()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_48_Out_0
  l0.Out[1] = self.f_48_Out_1
  l0:In()
end
function export:f_56_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = "ItemInventoryLists.9223372048560598127"
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_26_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = DummyFunction
  l0:SwitchLocalPlayerInventory()
end
function export:f_56_Out_1()
  local l0
  self = self._graph
  l0 = self[65]
  l0.Seconds = 5
  l0:Start()
end
function export:f_25_ProfileAssigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372051906098133"
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_67_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0:ActivateOverride()
end
function export:f_63_OverrideCleared()
  local l0
  self = self._graph
  l0 = self[37]
  l0.MissionArea = "9223372056767358885"
  l0.MissionLayer = "S17M010_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  l0:Disable()
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = self[47]
  Globals.S17M010_SITARA.EndOfHack = l0.Target
end
function export:f_47_SetFalse()
  local l0
  self = self._graph
  l0 = self[47]
  Globals.S17M010_SITARA.EndOfHack = l0.Target
end
function export:f_47_SetFromBool()
  local l0
  self = self._graph
  l0 = self[47]
  Globals.S17M010_SITARA.EndOfHack = l0.Target
end
function export:f_47_SetTrue()
  local l0
  self = self._graph
  l0 = self[47]
  Globals.S17M010_SITARA.EndOfHack = l0.Target
end
function export:f_47_Toggled()
  local l0
  self = self._graph
  l0 = self[47]
  Globals.S17M010_SITARA.EndOfHack = l0.Target
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Condition(1)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[28]
  l0.Seconds = 0.1
  l0:Start()
end
function export:f_29_Deactivated()
  local l0
  self = self._graph
  l0 = self[57]
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0:Play()
end
function export:f_26_Switched()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Start()
end
function export:f_55_Activated()
  local l0
  self = self._graph
  l0 = self[43]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873270"
  l0:StartCommunication()
end
function export:f_55_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[55]
  self.Catskills = l0.UserID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_59_Out
  l0:In()
end
function export:f_48_Out_0()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Bool = Globals.S17M010_SITARA.EndOfHack
  l0:True()
end
function export:f_48_Out_1()
  local l0
  self = self._graph
  l0 = self[34]
  l0:Deactivate()
end
function export:f_9_Enabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective010",
    item = "Objective",
    id = "353060"
  }
  l0:ShowNewObjective()
end
function export:f_38_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self[62]
  l1.PlayerEntity = l0.PlayerID
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_66_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_46_Out_0
  l0.Out[1] = self.f_46_Out_1
  l0:In()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_56_Out_0
  l0.Out[1] = self.f_56_Out_1
  l0.Out[2] = DummyFunction
  l0:In()
end
function export:f_23_Disabled()
  local l0
  self = self._graph
  l0 = self[55]
  l0.CLO = "9223372059638308304"
  l0:Activate()
end
function export:f_23_Enabled()
  local l0
  self = self._graph
  self:en_45()
  l0 = self[45]
  l0:Start()
end
function export:f_23_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_22_Out_0
  l0.Out[1] = self.f_22_Out_1
  l0:In()
end
function export:f_44_Hacked()
  local l0
  self = self._graph
  self:en_44()
  l0 = self[44]
  l0:Stop()
end
function export:f_44_Stopped()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Text = {
    section = "HACKING.HackingRewardProfilerTitle",
    item = "ExposeTraitorIntel",
    id = "251293"
  }
  l0.TotalTime = 30
  l0:Start()
end
function export:f_8_Unlocked()
  self = self._graph
  self:SitaraDone()
end
function export:f_34_Deactivated()
  local l0
  self = self._graph
  l0 = self[32]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873273"
  l0:StartCommunication()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = self[64]
  l0:In()
end
function export:f_22_Out_0()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Disable()
end
function export:f_22_Out_1()
  local l0
  self = self._graph
  l0 = self[50]
  l0.SoundId = "soundbinary/338224551.bnk"
  l0:Play()
end
function export:f_31_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[49]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_31_StartCommunicationOut()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Enable()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669167"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_21_TeleportDone()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_60_OnQuit()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_38_Out
  l0:In()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = {
    "9223372065000482506",
    "9223372065000482727"
  }
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 1
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_20_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0:SetCanExit()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.CLO = "9223372059638308304"
  l0.User = self.Catskills
  l0:TriggerBhv()
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Condition(0)
end
function export:f_18_Out_1()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(1)
end
function export:f_65_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_29_Deactivated
  l0:Deactivate()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[41]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372060828743557"
  l0:StartCommunication()
end
function export:f_27_Switched()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = self.f_63_OverrideCleared
  l0:ClearOverride()
end
function export:f_64_Loaded()
  local l0
  self = self._graph
  l0 = self[17]
  l0:In()
end
function export:f_61_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = {
    "9223372065000482506",
    "9223372065000482727"
  }
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_14_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0:SetCanExit()
end
function export:f_61_Out_1()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Condition(0)
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[66]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_46_Out_0
  l0.Out[1] = self.f_46_Out_1
  l0:In()
end
function export:f_45_Interacted()
  local l0
  self = self._graph
  self:en_45()
  l0 = self[45]
  l0:Stop()
end
function export:f_45_Stopped()
  local l0
  self = self._graph
  l0 = self[36]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873272"
  l0:StartCommunication()
end
function export:f_28_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangePlayerGkModelFromHumanConfig.lua")]
  l0.Model = "HumanConfig.9223372049751415851"
  l0.VoiceActorName = "dialogactors.dialogactors.sitara"
  l0._graph = self
  l0.Failed = DummyFunction
  l0.Changed = self.f_40_Changed
  l0.ResetDone = DummyFunction
  l0:Change()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Condition(1)
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[39]
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_39_SetFalse()
  local l0
  self = self._graph
  l0 = self[39]
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_39_SetFromBool()
  local l0
  self = self._graph
  l0 = self[39]
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_39_SetTrue()
  local l0
  self = self._graph
  l0 = self[39]
  Globals.S17M010.PlayFromCheckpoint = l0.Target
  l0 = self[16]
  l0.LayerName = "S17M010_Main"
  l0:Load()
end
function export:f_39_Toggled()
  local l0
  self = self._graph
  l0 = self[39]
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_67_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = self.TimeOfDayHour
  l0.Minute = self.TimeOfDayMinutes
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:SetTimeOfDay()
end
function export:f_14_CanExitSet()
  local l0
  self = self._graph
  self:en_44()
  l0 = self[44]
  l0:Start()
end
function export:f_11_Completed()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(0)
end
function export:f_24_Locked()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Condition(0)
end
function export:f_46_Out_0()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(1)
end
function export:f_46_Out_1()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(1)
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_24_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Lock()
end
function export:f_33_Disabled()
  local l0
  self = self._graph
  l0 = self[30]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873269"
  l0:StartCommunication()
end
function export:f_33_Enter()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Disable()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_61_Out_0
  l0.Out[1] = self.f_61_Out_1
  l0:In()
end
function export:f_37_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_8_Unlocked
  l0.Out = DummyFunction
  l0:Unlock()
end
function export:f_36_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0:In()
end
function export:f_36_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective015",
    item = "Objective",
    id = "688546"
  }
  l0:ShowNewObjective()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Condition(1)
end
function export:f_16_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(0)
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(0)
end
function export:f_4_Hacked()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Stop()
end
function export:f_4_Started()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Enable()
end
function export:f_4_Stopped()
  local l0
  self = self._graph
  l0 = self[31]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873271"
  l0:StartCommunication()
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.HackableEntity = "9223372047626801393"
end
function export:en_44()
  local l0
  l0 = self[44]
  l0.Entity = "9223372049321186776"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
end
function export:en_45()
  local l0
  l0 = self[45]
  l0.Entity = "9223372053490722538"
  l0.IsManagingInteraction = 1
end
function export:en_33()
  local l0
  l0 = self[33]
  l0.Trigger = "9223372055689543365"
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Entity = "9223372047626801411"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
end
function export:SitaraDone()
end
function export:Out()
end
_compilerVersion = 4
