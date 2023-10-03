export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/System/IntegerSelect.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/3330805229.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/278155621.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2461408010.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1549466621.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4188758919.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2128171563.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/874233564.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3375537693.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/330420633.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/618300052.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Spectator2 = nil
  self.Spectator1 = nil
  self.Characters = {}
  self.NPCRoles = {
    "ExerciseFail.Man",
    "ExerciseFail.Woman",
    "ExerciseFail.Spectator1",
    "ExerciseFail.Spectator2"
  }
  self.MainCharacter = nil
  self.Girl = nil
  self.TreadMillSoundHack = 0
  self.CameraListIOP08 = {}
  self.Timeout = 0
  self.TV1On = 0
  self.TV2On = 0
  self.TV3On = 0
  self.IOPEnded = 0
  self.SecurityCameraList = {}
  self[50] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[50]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_50_Added
  l0.Removed = self.f_50_Removed
  l0.Out = self.f_50_Out
  self[41] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[52] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Out = self.f_52_Out
  l0.SetTrue = self.f_52_SetTrue
  l0.SetFalse = self.f_52_SetFalse
  l0.Toggled = self.f_52_Toggled
  l0.SetFromBool = self.f_52_SetFromBool
  self[58] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[58]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self[51] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[51]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_51_EventOccurred
  l0.Out = DummyFunction
  self[45] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[45]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = self.f_45_DeactivateHackables
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[30] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[31] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[103] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[103]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_103_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[55] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[55]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_55_Added
  l0.Removed = self.f_55_Removed
  l0.Out = self.f_55_Out
  self[19] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_19_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[48] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[48]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[17] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[102] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[102]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_102_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[11] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[25] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[15] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[15]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_15_OnUserInPlace
  self[13] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_13_Added
  l0.Removed = self.f_13_Removed
  l0.Out = self.f_13_Out
  self[21] = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = self.f_21_Out
  self[33] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = self.f_33_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[27] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[27]
  l0._graph = self
  self[35] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = self.f_35_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[23] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_23_OnUserInPlace
  self[49] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[28] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[28]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[4] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_4_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[9] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_9_OnUserInPlace
  self[5] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_5_Unloaded
  l0.Reseted = DummyFunction
  self[10] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_10_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[59] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[59]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_59_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_59_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[57] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[57]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_57_Out
  self[2] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[2]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[43] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[43]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_43_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[6] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_6_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_12_MessageCompleted
  self[40] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[53] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = self.f_53_Out
  l0.SetTrue = self.f_53_SetTrue
  l0.SetFalse = self.f_53_SetFalse
  l0.Toggled = self.f_53_Toggled
  l0.SetFromBool = self.f_53_SetFromBool
  self[3] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_3_OnUserInPlace
  self[18] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[18]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_18_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[54] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Out = self.f_54_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[34] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[29] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[29]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[26] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[32] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_32_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[24] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_24_Disabled
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_24_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[60] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[60]
  l0._graph = self
  l0.Out = self.f_60_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[44] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[14] = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  l0 = self[14]
  l0._graph = self
  l0.Completed = self.f_14_Completed
  l0.DisconnectedAnimationPlayed = self.f_14_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self[39] = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self[39]
  l0._graph = self
  l0._DynamicAnchors = {Case = 4, Match = 4}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_39_Match_0
  l0.Match[1] = self.f_39_Match_1
  l0.Match[2] = self.f_39_Match_2
  l0.Match[3] = self.f_39_Match_3
  l0.None = DummyFunction
  self[56] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_56_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[22] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[22]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_22_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
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
  l0 = self[57]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[57]
  l0:Input(0)
end
function export:f_50_Added()
  local l0
  self = self._graph
  l0 = self[50]
  self.CameraListIOP08 = l0.Target
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_38_Out
  l0:FromInteger()
end
function export:f_50_Out()
  local l0
  self = self._graph
  l0 = self[50]
  self.CameraListIOP08 = l0.Target
end
function export:f_50_Removed()
  local l0
  self = self._graph
  l0 = self[50]
  self.CameraListIOP08 = l0.Target
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = self[52]
  self.IOPEnded = l0.Target
  l0 = self[23]
  l0.CLO = "9223372046121130069"
  l0:Activate()
end
function export:f_52_SetFalse()
  local l0
  self = self._graph
  l0 = self[52]
  self.IOPEnded = l0.Target
end
function export:f_52_SetFromBool()
  local l0
  self = self._graph
  l0 = self[52]
  self.IOPEnded = l0.Target
end
function export:f_52_SetTrue()
  local l0
  self = self._graph
  l0 = self[52]
  self.IOPEnded = l0.Target
end
function export:f_52_Toggled()
  local l0
  self = self._graph
  l0 = self[52]
  self.IOPEnded = l0.Target
end
function export:f_51_EventOccurred()
  local l0
  self = self._graph
  l0 = self[35]
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/3375537693.bnk"
  l0:Play()
end
function export:f_45_DeactivateHackables()
  local l0
  self = self._graph
  l0 = self[48]
  l0.HackableEntity = "9223372046121210495"
  l0:DisableHack()
end
function export:f_103_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[12]
  l0:ShowMissionComplete()
end
function export:f_55_Added()
  local l0
  self = self._graph
  l0 = self[55]
  self.SecurityCameraList = l0.Target
  l0 = self[33]
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/874233564.bnk"
  l0:Play()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[55]
  self.SecurityCameraList = l0.Target
end
function export:f_55_Removed()
  local l0
  self = self._graph
  l0 = self[55]
  self.SecurityCameraList = l0.Target
end
function export:f_19_HackSuccess()
  local l0
  self = self._graph
  self:en_43()
  l0 = self[43]
  l0:DisableHack()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.TreadMillSoundHack = l0.Target
  l0 = self[39]
  l0.Integer = self.TreadMillSoundHack
  l0.Case[0] = 1
  l0.Case[1] = 2
  l0.Case[2] = 3
  l0.Case[3] = 4
  l0:In()
end
function export:f_102_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[25]
  l0.IopID = "ExerciseFail"
  l0.IopEvent = "ExerciseFail.Hack"
  l0:SendEvent()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[49]
  l0.Entity = "9223372046121210869"
  l0.SoundId = "soundbinary/3330805229.bnk"
  l0:Play()
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0.Out[2] = self.f_16_Out_2
  l0.Out[3] = self.f_16_Out_3
  l0.Out[4] = self.f_16_Out_4
  l0:In()
end
function export:f_15_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[15]
  self.Spectator2 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372046121130062"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_64_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_13_Added()
  local l0
  self = self._graph
  l0 = self[13]
  self.Characters = l0.Target
  l0 = self[50]
  l0.Input = self.CameraListIOP08
  l0.Data[0] = "9223372046496285355"
  l0.Data[1] = "9223372046411288482"
  l0:Add()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[13]
  self.Characters = l0.Target
end
function export:f_13_Removed()
  local l0
  self = self._graph
  l0 = self[13]
  self.Characters = l0.Target
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[52]
  l0:False()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Seconds = 3
  l0:Start()
end
function export:f_23_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[23]
  self.MainCharacter = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.MainCharacter
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_61_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_62_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[9]
  l0.CLO = "9223372046121130061"
  l0:Activate()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0.User = self.MainCharacter
  l0:UnspawnUser()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = self[22]
  l0.User = self.Girl
  l0:UnspawnUser()
end
function export:f_8_Out_2()
  local l0
  self = self._graph
  l0 = self[4]
  l0.User = self.Spectator1
  l0:UnspawnUser()
end
function export:f_8_Out_3()
  local l0
  self = self._graph
  l0 = self[18]
  l0.User = self.Spectator2
  l0:UnspawnUser()
end
function export:f_4_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[2]
  l0.CLO = "9223372046121130061"
  l0:Deactivate()
end
function export:f_9_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[9]
  self.Spectator1 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372046121130061"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_63_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_5_Unloaded()
  local l0
  self = self._graph
  l0 = self[27]
  l0:Succeed()
end
function export:f_10_StartCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = self.CameraListIOP08
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_42_CanExitSet
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
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.TreadMillSoundHack = l0.Target
  l0 = self[10]
  l0.IopID = "ExerciseFail"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.Characters
  l0.IopRoleList = self.NPCRoles
  l0:Start()
end
function export:f_59_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_101_Out_0
  l0.Out[1] = self.f_101_Out_1
  l0.Out[2] = self.f_101_Out_2
  l0:In()
end
function export:f_59_OnEndAccessCamera()
  local l0
  self = self._graph
  self:en_59()
  l0 = self[59]
  l0:Disable()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = self[21]
  l0.MainLayer = "IOP08_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372060863027539"
  l0:In()
end
function export:f_43_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_46_Out_0
  l0.Out[1] = self.f_46_Out_1
  l0:In()
end
function export:f_6_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[28]
  l0.CLO = "9223372046121130069"
  l0:Deactivate()
end
function export:f_12_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[5]
  l0.LayerName = "IOP08_Main"
  l0:Unload()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = self[53]
  self.IOPEnded = l0.Target
  self:en_19()
  l0 = self[19]
  l0:Disable()
end
function export:f_53_SetFalse()
  local l0
  self = self._graph
  l0 = self[53]
  self.IOPEnded = l0.Target
end
function export:f_53_SetFromBool()
  local l0
  self = self._graph
  l0 = self[53]
  self.IOPEnded = l0.Target
end
function export:f_53_SetTrue()
  local l0
  self = self._graph
  l0 = self[53]
  self.IOPEnded = l0.Target
end
function export:f_53_Toggled()
  local l0
  self = self._graph
  l0 = self[53]
  self.IOPEnded = l0.Target
end
function export:f_63_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[15]
  l0.CLO = "9223372046121130062"
  l0:Activate()
end
function export:f_3_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[3]
  self.Girl = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372046121130058"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_62_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_42_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_1_Out_0
  l0.Out[1] = self.f_1_Out_1
  l0:In()
end
function export:f_101_Out_0()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_101_Out_1()
  local l0
  self = self._graph
  l0 = self[102]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357372612"
  l0:StartCommunication()
end
function export:f_101_Out_2()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/278155621.bnk"
  l0:Play()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[55]
  l0.Input = self.SecurityCameraList
  l0.Data[0] = "9223372046411288482"
  l0.Data[1] = "9223372046496285355"
  l0:Add()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = self[30]
  l0.HackableEntity = "9223372046121210495"
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Enable()
end
function export:f_16_Out_2()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Enable()
end
function export:f_16_Out_3()
  local l0
  self = self._graph
  l0 = self[45]
  l0.AutoDisableOnDeactivateHackables = 1
  l0:Enable()
end
function export:f_16_Out_4()
  local l0
  self = self._graph
  l0 = self[51]
  l0.MonitoredEvent = "ExerciseFail.TreadmillStopped"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_18_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[29]
  l0.CLO = "9223372046121130062"
  l0:Deactivate()
end
function export:f_54_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0.SecurityCameraList = self.SecurityCameraList
  l0:In()
end
function export:f_32_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[31]
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/1549466621.bnk"
  l0:Play()
end
function export:f_24_Disabled()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Entity = "9223372046121210869"
  l0.SoundId = "soundbinary/2128171563.bnk"
  l0:Play()
end
function export:f_24_IOPComplete()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Disable()
end
function export:f_64_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Input = self.Characters
  l0.Data[0] = self.MainCharacter
  l0.Data[1] = self.Girl
  l0.Data[2] = self.Spectator1
  l0.Data[3] = self.Spectator2
  l0:Add()
end
function export:f_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_36_Out_0
  l0.Out[1] = self.f_36_Out_1
  l0:In()
end
function export:f_46_Out_1()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Seconds = 2
  l0:Start()
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = self[53]
  l0:True()
end
function export:f_61_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[3]
  l0.CLO = "9223372046121130058"
  l0:Activate()
end
function export:f_20_EnterForced()
  local l0
  self = self._graph
  self:en_59()
  l0 = self[59]
  l0:Enable()
end
function export:f_44_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IOPEnded
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_47_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_1_Out_0()
  local l0
  self = self._graph
  self:en_20()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_1_Out_1()
  local l0
  self = self._graph
  self:en_20()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetInitialTarget()
end
function export:f_14_Completed()
  local l0
  self = self._graph
  l0 = self[103]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051775436222"
  l0:StartCommunication()
end
function export:f_14_DisconnectedAnimationPlayed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0.Out[2] = self.f_8_Out_2
  l0.Out[3] = self.f_8_Out_3
  l0:In()
end
function export:f_36_Out_0()
  local l0
  self = self._graph
  l0 = self[17]
  l0.IopID = "ExerciseFail"
  l0.IopEvent = "ExerciseFail.Hack"
  l0:SendEvent()
end
function export:f_36_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.TreadMillSoundHack
  l0._graph = self
  l0.Out = self.f_37_Out
  l0:Add()
end
function export:f_39_Match_0()
  local l0
  self = self._graph
  l0 = self[34]
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/618300052.bnk"
  l0:Play()
end
function export:f_39_Match_1()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/330420633.bnk"
  l0:Play()
end
function export:f_39_Match_2()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/2461408010.bnk"
  l0:Play()
end
function export:f_39_Match_3()
  local l0
  self = self._graph
  l0 = self[60]
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/4188758919.bnk"
  l0:Play()
end
function export:f_56_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[58]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_47_A_is_False()
  local l0
  self = self._graph
  self:en_43()
  l0 = self[43]
  l0:EnableHack()
end
function export:f_22_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[26]
  l0.CLO = "9223372046121130058"
  l0:Deactivate()
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.HackableEntity = "9223372046121210495"
end
function export:en_59()
  local l0
  l0 = self[59]
  l0.CameraEntity = "9223372046496285355"
end
function export:en_43()
  local l0
  l0 = self[43]
  l0.HackableEntity = "9223372046121210495"
  l0.ProfileLinkedToHack = 1
end
function export:en_20()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372046496285355"
  l0.CameraEntityList = nil
  l0.TargetEntity = "9223372046121130060"
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_20_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
_compilerVersion = 4
