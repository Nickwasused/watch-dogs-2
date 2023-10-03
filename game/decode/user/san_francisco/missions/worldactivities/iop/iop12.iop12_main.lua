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
  cbox:RegisterBox("domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/FloatArithmetics.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/System/IntegerSelect.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter_SoundID.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayDialogWithSubtitle.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/StimEmitterController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:RegisterBox("domino/System/WaitQualitiesLoaded.lua")
  cbox:LoadResource("soundbinary/389062708.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3820053461.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1116370542.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2559148287.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3204023784.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3255868609.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/857115984.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3436825355.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/424281780.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/821624694.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2666770453.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/879191256.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2345918963.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/85634510.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/786578842.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2875306816.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3278799333.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1633162061.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3264659934.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1931631566.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1219010871.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3959191738.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/665110581.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3357305020.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4092521433.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2099014057.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2881901905.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2986429145.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1447677536.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/605089334.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/759520948.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3889398298.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1703411120.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1339853095.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/753200157.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1534642678.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/722522482.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3408592341.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1357335131.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.Escalation = 0
  self.CharacterRolesIOPSwatTheSwatter = {
    "Swat.Kid",
    "Swat.Cop",
    "Swat.Cop",
    "Swat.SwatCop",
    "Swat.SwatCop",
    "Swat.SwatCop"
  }
  self.BarkSoundEntity_OffScreenPoint = "9223372049656831290"
  self.ObjectsHacked = 0
  self.Cop1E1 = nil
  self.TheSwatter = nil
  self.Swat3 = nil
  self.NumberOfHacks = 0
  self.PCHacked = 0
  self.CharactersIOPSwatTheSwatter = {}
  self.PhoneHasBeenHacked = 0
  self.Swat2 = nil
  self.TotalTime = 0
  self.Cop2E1 = nil
  self.Swat1 = nil
  self.PoliceDialogueLines = {}
  self.OperatorInterrupted = 0
  self.PoliceCar = nil
  self.SwatCar = nil
  self.PoliceCar2 = nil
  self.PoliceCar3 = nil
  self.PoliceCar4 = nil
  self.SWAT2 = nil
  self.SecurityCameraList = {}
  self[193] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[193]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_193_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[109] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[109]
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
  self[198] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[198]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_198_EventOccurred
  l0.Out = DummyFunction
  self[232] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[232]
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
  self[65] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[65]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_65_Out
  self[99] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[99]
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
  self[69] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[69]
  l0._graph = self
  l0.Out = self.f_69_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[21] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[21]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_21_EventOccurred
  l0.Out = DummyFunction
  self[24] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[24]
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
  self[103] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[103]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_103_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[149] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[149]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_149_Out
  self[166] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[166]
  l0._graph = self
  l0.Out = self.f_166_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[113] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[113]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_113_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[244] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[244]
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
  self[54] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_54_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[63] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[63]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_63_OnUserInPlace
  self[253] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[253]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_253_EventOccurred
  l0.Out = DummyFunction
  self[100] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[100]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_100_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[19] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0.SetTrue = self.f_19_SetTrue
  l0.SetFalse = self.f_19_SetFalse
  l0.Toggled = self.f_19_Toggled
  l0.SetFromBool = self.f_19_SetFromBool
  self[252] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[252]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[189] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[189]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_189_Out
  self[95] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[95]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_95_Added
  l0.Removed = self.f_95_Removed
  l0.Out = self.f_95_Out
  self[34] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_34_Unloaded
  l0.Reseted = DummyFunction
  self[188] = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.lua")
  l0 = self[188]
  l0._graph = self
  l0.Out = self.f_188_Out
  self[96] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[96]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_96_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[197] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[197]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_197_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[78] = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self[78]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 3}
  l0.Added = self.f_78_Added
  l0.Removed = self.f_78_Removed
  l0.Out = self.f_78_Out
  self[102] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[102]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_102_EventOccurred
  l0.Out = DummyFunction
  self[238] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[238]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_238_OnUserInPlace
  self[284] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[284]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_284_Out
  self[140] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[140]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_140_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[183] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[183]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_183_OnUserInPlace
  self[33] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[33]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_33_OnUserInPlace
  self[129] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[129]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_129_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_129_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[261] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[261]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_261_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[195] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[195]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_195_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[51] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[51]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[52] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_52_Out
  self[89] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[89]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_89_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[259] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[259]
  l0._graph = self
  l0.Out = self.f_259_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[184] = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self[184]
  l0._graph = self
  l0._DynamicAnchors = {Case = 3, Match = 3}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_184_Match_0
  l0.Match[1] = self.f_184_Match_1
  l0.Match[2] = self.f_184_Match_2
  l0.None = self.f_184_None
  self[31] = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self[31]
  l0._graph = self
  l0._DynamicAnchors = {Case = 3, Match = 3}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_31_Match_0
  l0.Match[1] = self.f_31_Match_1
  l0.Match[2] = self.f_31_Match_2
  l0.None = DummyFunction
  self[268] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[268]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_268_EventOccurred
  l0.Out = DummyFunction
  self[281] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[281]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_281_Out
  self[57] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = self.f_57_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[27] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[27]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_27_EventOccurred
  l0.Out = DummyFunction
  self[251] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[251]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[249] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[249]
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
  self[144] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[144]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_144_Out
  self[164] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[164]
  l0._graph = self
  l0.Out = self.f_164_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[79] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[79]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_79_Out
  self[172] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[172]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_172_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[50] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[50]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_50_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[242] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[242]
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
  self[17] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[274] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[274]
  l0._graph = self
  l0.Out = self.f_274_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[157] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[157]
  l0._graph = self
  l0.Started = self.f_157_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[98] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[98]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_98_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[41] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = self.f_41_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[124] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[124]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = self.f_124_DeactivateHackables
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[182] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[182]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_182_Out
  l0.ResetOut = DummyFunction
  self[177] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[177]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_177_EventOccurred
  l0.Out = DummyFunction
  self[74] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[74]
  l0._graph = self
  l0.Out = self.f_74_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[179] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[179]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_179_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self[233] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[233]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_233_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[121] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[121]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_121_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[97] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[97]
  l0._graph = self
  l0.Loaded = self.f_97_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[66] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.lua")
  l0 = self[1]
  l0._graph = self
  l0.Completed = self.f_1_Completed
  l0.DisconnectedAnimationPlayed = self.f_1_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self[83] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[83]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_83_EventOccurred
  l0.Out = DummyFunction
  self[77] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[77]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[211] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[211]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_211_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[214] = cbox:CreateBox("domino/System/WaitQualitiesLoaded.lua")
  l0 = self[214]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Loaded = self.f_214_Loaded
  self[169] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[169]
  l0._graph = self
  l0.Started = self.f_169_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[85] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[85]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[228] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[228]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_228_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[191] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[191]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_191_Out
  l0.ResetOut = DummyFunction
  self[26] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[26]
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
  self[231] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[231]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_231_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[106] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[106]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_106_SendEventCompleted
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
  self[81] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[81]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_81_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[262] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[262]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_262_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[5] = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Case = 3, Match = 3}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_5_Match_0
  l0.Match[1] = self.f_5_Match_1
  l0.Match[2] = self.f_5_Match_2
  l0.None = DummyFunction
  self[219] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[219]
  l0._graph = self
  l0.Out = self.f_219_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[49] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[49]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[212] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[212]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_212_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[46] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = self.f_46_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[243] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[243]
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
  self[16] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_16_Out
  l0.ResetOut = DummyFunction
  self[264] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[264]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[112] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[112]
  l0._graph = self
  l0.Out = self.f_112_Out
  l0.SetTrue = self.f_112_SetTrue
  l0.SetFalse = self.f_112_SetFalse
  l0.Toggled = self.f_112_Toggled
  l0.SetFromBool = self.f_112_SetFromBool
  self[185] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[185]
  l0._graph = self
  self[56] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[56]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_56_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[126] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[126]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_126_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[202] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[202]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_202_Out
  self[25] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[25]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[10] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[287] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[287]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_287_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[36] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_36_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[143] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[143]
  l0._graph = self
  l0.Out = self.f_143_Out
  l0.SetTrue = self.f_143_SetTrue
  l0.SetFalse = self.f_143_SetFalse
  l0.Toggled = self.f_143_Toggled
  l0.SetFromBool = self.f_143_SetFromBool
  self[200] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[200]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_200_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[260] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[260]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_260_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[104] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[104]
  l0._graph = self
  l0.Out = self.f_104_Out
  l0.SetTrue = self.f_104_SetTrue
  l0.SetFalse = self.f_104_SetFalse
  l0.Toggled = self.f_104_Toggled
  l0.SetFromBool = self.f_104_SetFromBool
  self[286] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[286]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[75] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[75]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_75_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[132] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[132]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_132_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[256] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[256]
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
  self[147] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[147]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_147_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[269] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[269]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_269_EventOccurred
  l0.Out = DummyFunction
  self[38] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[297] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[297]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_297_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[119] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[119]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[32] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[32]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[290] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[290]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_290_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[114] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[114]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_114_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[237] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[237]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_237_OnUserInPlace
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
  self[86] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[86]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_86_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[196] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[196]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_196_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[115] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[115]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_115_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_115_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[263] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[263]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_263_Out
  self[133] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[133]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_133_Added
  l0.Removed = self.f_133_Removed
  l0.Out = self.f_133_Out
  self[267] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[267]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_267_EventOccurred
  l0.Out = DummyFunction
  self[265] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[265]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_265_Out
  self[136] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[136]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_136_OnUserInPlace
  self[71] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[71]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_71_OnUserInPlace
  self[289] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[289]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_289_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[6] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_6_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[168] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[168]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_168_OnUserInPlace
  self[194] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[194]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_194_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[30] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[246] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[246]
  l0._graph = self
  l0.Enabled = self.f_246_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[272] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[272]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_272_Out
  self[266] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[266]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_266_EventOccurred
  l0.Out = DummyFunction
  self[158] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[158]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_158_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[229] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[229]
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
  self[165] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[165]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_165_Out
  self[254] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[254]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_254_EventOccurred
  l0.Out = DummyFunction
  self[139] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[139]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_139_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[48] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_48_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[55] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[55]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_55_EventOccurred
  l0.Out = DummyFunction
  self[134] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[134]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_134_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[14] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_14_OnUserInPlace
  self[175] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[175]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[213] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[213]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_213_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[255] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[255]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_255_EventOccurred
  l0.Out = DummyFunction
  self[64] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[64]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[170] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[170]
  l0._graph = self
  l0.Out = self.f_170_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[145] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[145]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_145_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[107] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[107]
  l0._graph = self
  l0.Out = self.f_107_Out
  l0.SetTrue = self.f_107_SetTrue
  l0.SetFalse = self.f_107_SetFalse
  l0.Toggled = self.f_107_Toggled
  l0.SetFromBool = self.f_107_SetFromBool
  self[44] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[44]
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
  self[248] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[248]
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
  self[296] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[296]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_296_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_296_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[82] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = self.f_82_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[88] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[88]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_88_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[40] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[40]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_40_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[199] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[199]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_199_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[59] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[59]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_59_OnUserInPlace
  self[236] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[236]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_236_OnUserInPlace
  self[137] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[137]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_137_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[76] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_76_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[39] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[39]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[210] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[210]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_210_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[135] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[135]
  l0._graph = self
  l0.Out = self.f_135_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[9] = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Case = 3, Match = 3}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_9_Match_0
  l0.Match[1] = self.f_9_Match_1
  l0.Match[2] = self.f_9_Match_2
  l0.None = DummyFunction
  self[43] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[43]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_43_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[101] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[101]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self[181] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[181]
  l0._graph = self
  l0.Out = self.f_181_Out
  l0.SetTrue = self.f_181_SetTrue
  l0.SetFalse = self.f_181_SetFalse
  l0.Toggled = self.f_181_Toggled
  l0.SetFromBool = self.f_181_SetFromBool
  self[70] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[70]
  l0._graph = self
  l0.Out = self.f_70_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[204] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[204]
  l0._graph = self
  l0.Out = self.f_204_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[23] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 6}
  l0.Out = self.f_23_Out
  self[230] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[230]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_230_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[130] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[130]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[247] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[247]
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
  self[68] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[68]
  l0._graph = self
  l0.Out = self.f_68_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[176] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[176]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[206] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[206]
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
  self[282] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[282]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_282_Out
  self[127] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[127]
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
  self[161] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[161]
  l0._graph = self
  l0.Out = self.f_161_Out
  l0.SetTrue = self.f_161_SetTrue
  l0.SetFalse = self.f_161_SetFalse
  l0.Toggled = self.f_161_Toggled
  l0.SetFromBool = self.f_161_SetFromBool
  self[283] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[283]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_283_Out
  self[4] = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_4_EventOccurred
  l0.Out = DummyFunction
  self[192] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[192]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_192_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[280] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[280]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_280_Out
  self[125] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[125]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_125_Out
  self[148] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[148]
  l0._graph = self
  l0.Out = self.f_148_Out
  l0.SetTrue = self.f_148_SetTrue
  l0.SetFalse = self.f_148_SetFalse
  l0.Toggled = self.f_148_Toggled
  l0.SetFromBool = self.f_148_SetFromBool
  self[273] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[273]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_273_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[110] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[110]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_110_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self[307] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[307]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_307_Out
  l0.ResetOut = DummyFunction
  self[12] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[12]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_12_OnUserInPlace
  self[186] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[186]
  l0._graph = self
  l0.PreOut = DummyFunction
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
  l0 = self[189]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[189]
  l0:Input(0)
end
function export:f_60_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049657004655"
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
  l0.Out = self.f_105_Out
  l0:MoveForward()
end
function export:f_221_Out_0()
  local l0
  self = self._graph
  l0 = self[219]
  l0.SoundId = "soundbinary/1447677536.bnk"
  l0:Play()
end
function export:f_221_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372052621829459"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_221_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052621829788"
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
function export:f_193_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Condition(1)
end
function export:f_154_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[194]
  l0.HackableEntity = self.Cop2E1
  l0:DisableProfiling()
end
function export:f_198_EventOccurred()
  local l0
  self = self._graph
  l0 = self[165]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/1633162061.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  l0:Start()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[202]
  l0:Input(1)
end
function export:f_279_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.NumberOfHacks
  l0.B = 3
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_276_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_276_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_279_Out_1()
  local l0
  self = self._graph
  l0 = self[280]
  l0:Input(0)
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 40
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_311_Out
  l0:FromFloat()
end
function export:f_21_EventOccurred()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ObjectsHacked
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_163_A_is_True
  l0.A_is_False = self.f_163_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_103_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[49]
  l0.CLO = "9223372049656831293"
  l0:Deactivate()
end
function export:f_149_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_142_Out_0()
  local l0
  self = self._graph
  self:en_132()
  l0 = self[132]
  l0:DisableProfiling()
end
function export:f_142_Out_1()
  local l0
  self = self._graph
  self:en_54()
  l0 = self[54]
  l0:DisableProfiling()
end
function export:f_142_Out_2()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:DisableProfiling()
end
function export:f_142_Out_3()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:DisableProfiling()
end
function export:f_294_Out()
  local l0
  self = self._graph
  l0 = self[230]
  l0.HackableEntity = self.Cop2E1
  l0:EnableProfiling()
end
function export:f_166_Out()
  local l0
  self = self._graph
  l0 = self[57]
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/2881901905.bnk"
  l0:Play()
end
function export:f_113_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_293_Out_0
  l0.Out[1] = self.f_293_Out_1
  l0.Out[2] = self.f_293_Out_2
  l0:In()
end
function export:f_54_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_54()
  l0 = self[54]
  l0:DisableHack()
end
function export:f_63_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[63]
  self.SwatCar = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.SwatCar
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = nil
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_146_Out_0()
  local l0
  self = self._graph
  l0 = self[192]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049814637227"
  l0:StartCommunication()
end
function export:f_253_EventOccurred()
  local l0
  self = self._graph
  l0 = self[231]
  l0.HackableEntity = self.Swat1
  l0:EnableProfiling()
end
function export:f_100_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052460166222"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_92_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[19]
  self.PCHacked = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_117_Out_0
  l0.Out[1] = self.f_117_Out_1
  l0.Out[2] = self.f_117_Out_2
  l0:In()
end
function export:f_19_SetFalse()
  local l0
  self = self._graph
  l0 = self[19]
  self.PCHacked = l0.Target
end
function export:f_19_SetFromBool()
  local l0
  self = self._graph
  l0 = self[19]
  self.PCHacked = l0.Target
end
function export:f_19_SetTrue()
  local l0
  self = self._graph
  l0 = self[19]
  self.PCHacked = l0.Target
end
function export:f_19_Toggled()
  local l0
  self = self._graph
  l0 = self[19]
  self.PCHacked = l0.Target
end
function export:f_92_Shown()
  local l0
  self = self._graph
  l0 = self[82]
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/1219010871.bnk"
  l0:Play()
end
function export:f_189_Out()
  local l0
  self = self._graph
  l0 = self[97]
  l0.LayerName = "IOP12_Deactivation"
  l0:Load()
end
function export:f_111_Out()
  local l0
  self = self._graph
  l0 = self[104]
  l0:False()
end
function export:f_95_Added()
  local l0
  self = self._graph
  l0 = self[95]
  self.CharactersIOPSwatTheSwatter = l0.Target
  l0 = self[172]
  l0.IopID = "SwatTheSwatter"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.CharactersIOPSwatTheSwatter
  l0.IopRoleList = self.CharacterRolesIOPSwatTheSwatter
  l0.OffscreenDialogPoint = "9223372049656831290"
  l0:Start()
end
function export:f_95_Out()
  local l0
  self = self._graph
  l0 = self[95]
  self.CharactersIOPSwatTheSwatter = l0.Target
end
function export:f_95_Removed()
  local l0
  self = self._graph
  l0 = self[95]
  self.CharactersIOPSwatTheSwatter = l0.Target
end
function export:f_34_Unloaded()
  local l0
  self = self._graph
  l0 = self[185]
  l0:Succeed()
end
function export:f_152_A_is_True()
  local l0
  self = self._graph
  l0 = self[16]
  l0:In(0)
end
function export:f_188_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0:In()
end
function export:f_58_Out_0()
  local l0
  self = self._graph
  l0 = self[158]
  l0.User = self.TheSwatter
  l0:UnspawnUser()
end
function export:f_58_Out_1()
  local l0
  self = self._graph
  l0 = self[103]
  l0.User = self.Cop1E1
  l0:UnspawnUser()
end
function export:f_58_Out_2()
  local l0
  self = self._graph
  l0 = self[40]
  l0.User = self.Cop2E1
  l0:UnspawnUser()
end
function export:f_58_Out_3()
  local l0
  self = self._graph
  l0 = self[137]
  l0.User = self.Swat1
  l0:UnspawnUser()
end
function export:f_58_Out_4()
  local l0
  self = self._graph
  l0 = self[121]
  l0.User = self.Swat2
  l0:UnspawnUser()
end
function export:f_58_Out_5()
  local l0
  self = self._graph
  l0 = self[98]
  l0.User = self.Swat3
  l0:UnspawnUser()
end
function export:f_58_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049657004655"
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
  l0:MoveBackward()
end
function export:f_96_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[46]
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.ECigHack"
  l0:SendEvent()
end
function export:f_84_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:f_197_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Condition(5)
end
function export:f_78_Added()
  local l0
  self = self._graph
  l0 = self[78]
  self.PoliceDialogueLines = l0.Target
end
function export:f_78_Out()
  local l0
  self = self._graph
  l0 = self[78]
  self.PoliceDialogueLines = l0.Target
  l0 = self[70]
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/1534642678.bnk"
  l0:Play()
end
function export:f_78_Removed()
  local l0
  self = self._graph
  l0 = self[78]
  self.PoliceDialogueLines = l0.Target
end
function export:f_301_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  l0.StimEmitter = "9223372053995174727"
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0:SetEnabled()
end
function export:f_102_EventOccurred()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_278_Out_0
  l0.Out[1] = self.f_278_Out_1
  l0:In()
end
function export:f_238_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[238]
  self.SWAT2 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.SWAT2
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = nil
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_167_A_is_False()
  local l0
  self = self._graph
  l0 = self[99]
  l0.HackableEntity = "9223372049656831279"
  l0:EnableHack()
end
function export:f_284_Out()
  local l0
  self = self._graph
  l0 = self[269]
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_140_HackSuccess()
  local l0
  self = self._graph
  l0 = self[211]
  l0.Seconds = 0.6
  l0:Start()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.NumberOfHacks = l0.Target
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 95
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_122_Out
  l0:FromFloat()
end
function export:f_276_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 15
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:FromFloat()
end
function export:f_276_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 30
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_275_Out
  l0:FromFloat()
end
function export:f_183_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[183]
  self.Swat1 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Swat1
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_171_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_33_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[33]
  self.Cop2E1 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Cop2E1
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_154_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_173_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.TotalTime = l0.Target
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.TotalTime
  l0.B = 0
  l0.Tolerance = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_29_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_129_Disabled()
  local l0
  self = self._graph
  l0 = self[169]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/3204023784.bnk"
  l0.Supersede = 1
  l0:Start()
end
function export:f_129_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_129()
  l0 = self[129]
  l0:DisableHack()
end
function export:f_288_Out_0()
  local l0
  self = self._graph
  l0 = self[273]
  l0.Seconds = 2.9
  l0:Start()
end
function export:f_288_Out_1()
  local l0
  self = self._graph
  l0 = self[289]
  l0.Seconds = 2
  l0:Start()
end
function export:f_261_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[262]
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.ECigHack"
  l0:SendEvent()
end
function export:f_150_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.NumberOfHacks = l0.Target
  l0 = self[9]
  l0.Integer = self.NumberOfHacks
  l0.Case[0] = 1
  l0.Case[1] = 2
  l0.Case[2] = 3
  l0:In()
end
function export:f_195_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Condition(3)
end
function export:f_73_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PhoneHasBeenHacked
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_118_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_291_Out()
  local l0
  self = self._graph
  l0 = self[232]
  l0.HackableEntity = self.Cop1E1
  l0:EnableProfiling()
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = self[284]
  l0:Input(0)
end
function export:f_159_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 100
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_73_Out
  l0:FromFloat()
end
function export:f_159_Out_1()
  local l0
  self = self._graph
  l0 = self[210]
  l0.Seconds = 0.3
  l0:Start()
end
function export:f_89_Finished()
  local l0
  self = self._graph
  l0 = self[157]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/753200157.bnk"
  l0.Supersede = 1
  l0:Start()
end
function export:f_259_Out()
  local l0
  self = self._graph
  l0 = self[83]
  l0.MonitoredEvent = "Swat.ReenableHacks"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_184_Match_0()
  local l0
  self = self._graph
  l0 = self[281]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/85634510.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0:Start()
end
function export:f_184_Match_1()
  local l0
  self = self._graph
  l0 = self[283]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/85634510.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0:Start()
end
function export:f_184_Match_2()
  local l0
  self = self._graph
  l0 = self[282]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/3889398298.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0:Start()
end
function export:f_184_None()
  local l0
  self = self._graph
  l0 = self[101]
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.TriggerEnding"
  l0:SendEvent()
end
function export:f_31_Match_0()
  local l0
  self = self._graph
  l0 = self[175]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/2559148287.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0:Start()
end
function export:f_31_Match_1()
  local l0
  self = self._graph
  l0 = self[64]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/821624694.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0:Start()
end
function export:f_31_Match_2()
  local l0
  self = self._graph
  l0 = self[176]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/605089334.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0:Start()
end
function export:f_268_EventOccurred()
  local l0
  self = self._graph
  l0 = self[265]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/3357305020.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  l0:Start()
end
function export:f_281_Out()
  local l0
  self = self._graph
  l0 = self[135]
  l0.SoundId = "soundbinary/857115984.bnk"
  l0:Play()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = self[74]
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/3820053461.bnk"
  l0:Play()
end
function export:f_27_EventOccurred()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ObjectsHacked
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_270_A_is_True
  l0.A_is_False = self.f_270_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_205_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_153_Out_0
  l0.Out[1] = self.f_153_Out_1
  l0.Out[2] = self.f_153_Out_2
  l0.Out[3] = self.f_153_Out_3
  l0:In()
end
function export:f_205_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_151_Out_0
  l0.Out[1] = self.f_151_Out_1
  l0.Out[2] = self.f_151_Out_2
  l0.Out[3] = self.f_151_Out_3
  l0.Out[4] = self.f_151_Out_4
  l0.Out[5] = self.f_151_Out_5
  l0.Out[6] = self.f_151_Out_6
  l0:In()
end
function export:f_245_Out_0()
  local l0
  self = self._graph
  l0 = self[242]
  l0.HackableEntity = "9223372049656831279"
  l0:DisableHack()
end
function export:f_245_Out_1()
  local l0
  self = self._graph
  l0 = self[206]
  l0.HackableEntity = "9223372049656831277"
  l0:DisableHack()
end
function export:f_245_Out_2()
  local l0
  self = self._graph
  l0 = self[243]
  l0.HackableEntity = "9223372049656943480"
  l0:DisableHack()
end
function export:f_245_Out_3()
  local l0
  self = self._graph
  l0 = self[244]
  l0.HackableEntity = "9223372049656831292"
  l0:DisableHack()
end
function export:f_245_Out_4()
  local l0
  self = self._graph
  l0 = self[200]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052999071704"
  l0:StartCommunication()
end
function export:f_180_Out_0()
  local l0
  self = self._graph
  l0 = self[63]
  l0.CLO = "9223372051821513858"
  l0:Activate()
end
function export:f_180_Out_1()
  local l0
  self = self._graph
  l0 = self[168]
  l0.CLO = "9223372051821513857"
  l0:Activate()
end
function export:f_180_Out_2()
  local l0
  self = self._graph
  l0 = self[236]
  l0.CLO = "9223372052621832566"
  l0:Activate()
end
function export:f_180_Out_3()
  local l0
  self = self._graph
  l0 = self[237]
  l0.CLO = "9223372052621832565"
  l0:Activate()
end
function export:f_180_Out_4()
  local l0
  self = self._graph
  l0 = self[238]
  l0.CLO = "9223372052621832972"
  l0:Activate()
end
function export:f_131_Out()
  local l0
  self = self._graph
  l0 = self[59]
  l0.CLO = "9223372051821513857"
  l0:Activate()
end
function export:f_144_Out()
  local l0
  self = self._graph
  l0 = self[202]
  l0:Input(2)
end
function export:f_164_Out()
  local l0
  self = self._graph
  l0 = self[147]
  l0.Seconds = 3.5
  l0:Start()
end
function export:f_120_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PhoneHasBeenHacked
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_116_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_120_Out_1()
  local l0
  self = self._graph
  l0 = self[96]
  l0.Seconds = 0.6
  l0:Start()
end
function export:f_160_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[196]
  l0.HackableEntity = self.Swat2
  l0:DisableProfiling()
end
function export:f_79_Out()
  local l0
  self = self._graph
  l0 = self[268]
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_94_Out()
  local l0
  self = self._graph
  l0 = self[274]
  l0.Entity = "9223372049656831282"
  l0.SoundId = "soundbinary/2986429145.bnk"
  l0:Play()
end
function export:f_172_StartCompleted()
  local l0
  self = self._graph
  l0 = self[88]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_50_SendEventCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_225_Out_0
  l0.Out[1] = self.f_225_Out_1
  l0.Out[2] = self.f_225_Out_2
  l0:In()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/3255868609.bnk"
  l0:Play()
end
function export:f_274_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_288_Out_0
  l0.Out[1] = self.f_288_Out_1
  l0:In()
end
function export:f_311_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
  l0 = self[212]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_208_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 5
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_209_Out
  l0:FromFloat()
end
function export:f_208_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 20
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_203_Out
  l0:FromFloat()
end
function export:f_47_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[193]
  l0.HackableEntity = self.Cop1E1
  l0:DisableProfiling()
end
function export:f_171_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[195]
  l0.HackableEntity = self.Swat1
  l0:DisableProfiling()
end
function export:f_128_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_180_Out_0
  l0.Out[1] = self.f_180_Out_1
  l0.Out[2] = self.f_180_Out_2
  l0.Out[3] = self.f_180_Out_3
  l0.Out[4] = self.f_180_Out_4
  l0:In()
end
function export:f_157_Started()
  local l0
  self = self._graph
  l0 = self[260]
  l0.Seconds = 2
  l0:Start()
end
function export:f_98_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[39]
  l0.CLO = "9223372049656831296"
  l0:Deactivate()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[166]
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/1357335131.bnk"
  l0:Play()
end
function export:f_91_Out_0()
  local l0
  self = self._graph
  l0 = self[140]
  l0.HackableEntity = "9223372049656943480"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_91_Out_1()
  local l0
  self = self._graph
  l0 = self[81]
  l0.HackableEntity = "9223372049656831279"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_91_Out_2()
  local l0
  self = self._graph
  l0 = self[100]
  l0.HackableEntity = "9223372049656831277"
  l0:Enable()
end
function export:f_124_DeactivateHackables()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_142_Out_0
  l0.Out[1] = self.f_142_Out_1
  l0.Out[2] = self.f_142_Out_2
  l0.Out[3] = self.f_142_Out_3
  l0:In()
end
function export:f_182_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_174_Out_0
  l0.Out[1] = self.f_174_Out_1
  l0:In()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372045064814209"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = self.f_111_Out
  l0:DisableCollisions()
end
function export:f_177_EventOccurred()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_279_Out_0
  l0.Out[1] = self.f_279_Out_1
  l0:In()
end
function export:f_90_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083798512"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = self.f_60_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_295_Out_0()
  local l0
  self = self._graph
  l0 = self[246]
  l0.HackableEntity = "9223372049656831292"
  l0:EnableHack()
end
function export:f_295_Out_1()
  local l0
  self = self._graph
  l0 = self[251]
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.TeamSpeakEnded"
  l0:SendEvent()
end
function export:f_295_Out_2()
  local l0
  self = self._graph
  l0 = self[179]
  l0.AutoDisableOnIOPComplete = 1
  l0:Enable()
end
function export:f_295_Out_3()
  local l0
  self = self._graph
  l0 = self[124]
  l0.AutoDisableOnDeactivateHackables = 1
  l0:Enable()
end
function export:f_295_Out_4()
  local l0
  self = self._graph
  self:en_43()
  l0 = self[43]
  l0:Start()
end
function export:f_74_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_146_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_122_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
  l0 = self[112]
  l0:False()
end
function export:f_224_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083799677"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = self.f_258_Out
  l0:Disable()
end
function export:f_151_Out_0()
  local l0
  self = self._graph
  l0 = self[12]
  l0.CLO = "9223372049656831280"
  l0:Activate()
end
function export:f_151_Out_1()
  local l0
  self = self._graph
  l0 = self[14]
  l0.CLO = "9223372049656831293"
  l0:Activate()
end
function export:f_151_Out_2()
  local l0
  self = self._graph
  l0 = self[33]
  l0.CLO = "9223372049656831294"
  l0:Activate()
end
function export:f_151_Out_3()
  local l0
  self = self._graph
  l0 = self[183]
  l0.CLO = "9223372049656831295"
  l0:Activate()
end
function export:f_151_Out_4()
  local l0
  self = self._graph
  l0 = self[15]
  l0.CLO = "9223372049656831297"
  l0:Activate()
end
function export:f_151_Out_5()
  local l0
  self = self._graph
  l0 = self[136]
  l0.CLO = "9223372049656831296"
  l0:Activate()
end
function export:f_151_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_156_Out
  l0:FromInteger()
end
function export:f_179_IOPComplete()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_221_Out_0
  l0.Out[1] = self.f_221_Out_1
  l0.Out[2] = self.f_221_Out_2
  l0:In()
end
function export:f_278_Out_0()
  local l0
  self = self._graph
  l0 = self[280]
  l0:Input(1)
end
function export:f_278_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.NumberOfHacks
  l0.B = 3
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_190_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_190_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_87_Out_0()
  local l0
  self = self._graph
  self:en_115()
  l0 = self[115]
  l0:DisableProfiling()
end
function export:f_87_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372049656831284"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_72_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_233_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = self[256]
  l0.HackableEntity = self.Swat3
  l0:EnableProfiling()
end
function export:f_121_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[25]
  l0.CLO = "9223372049656831297"
  l0:Deactivate()
end
function export:f_97_Loaded()
  local l0
  self = self._graph
  l0 = self[188]
  l0.MainLayer = "IOP12_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372059425049559"
  l0:In()
end
function export:f_153_Out_0()
  local l0
  self = self._graph
  l0 = self[109]
  l0.HackableEntity = "9223372049656943480"
  l0:EnableHack()
end
function export:f_153_Out_1()
  local l0
  self = self._graph
  l0 = self[127]
  l0.HackableEntity = "9223372049656831292"
  l0:EnableHack()
end
function export:f_153_Out_2()
  local l0
  self = self._graph
  l0 = self[24]
  l0.HackableEntity = "9223372049656831279"
  l0:EnableHack()
end
function export:f_153_Out_3()
  local l0
  self = self._graph
  l0 = self[44]
  l0.HackableEntity = "9223372049656831277"
  l0:EnableHack()
end
function export:f_1_Completed()
  local l0
  self = self._graph
  l0 = self[290]
  l0.Seconds = 3
  l0:Start()
end
function export:f_1_DisconnectedAnimationPlayed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_58_Out_0
  l0.Out[1] = self.f_58_Out_1
  l0.Out[2] = self.f_58_Out_2
  l0.Out[3] = self.f_58_Out_3
  l0.Out[4] = self.f_58_Out_4
  l0.Out[5] = self.f_58_Out_5
  l0.Out[6] = self.f_58_Out_6
  l0:In()
end
function export:f_105_Out()
  local l0
  self = self._graph
  l0 = self[71]
  l0.CLO = "9223372051821513857"
  l0:Activate()
end
function export:f_83_EventOccurred()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052460166218"
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
function export:f_211_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[143]
  l0:True()
end
function export:f_214_Loaded()
  local l0
  self = self._graph
  self:en_37()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_169_Started()
  local l0
  self = self._graph
  l0 = self[75]
  l0.Seconds = 4
  l0:Start()
end
function export:f_80_Out()
  local l0
  self = self._graph
  l0 = self[259]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/4092521433.bnk"
  l0:Play()
end
function export:f_178_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049657004655"
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
  l0.Out = self.f_131_Out
  l0:MoveForward()
end
function export:f_228_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[134]
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.TriggerEnding"
  l0:SendEvent()
end
function export:f_201_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083799677"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = self.f_141_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_201_Out_1()
  local l0
  self = self._graph
  l0 = self[228]
  l0.Seconds = 20
  l0:Start()
end
function export:f_191_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 40
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:FromFloat()
end
function export:f_231_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = self[233]
  l0.HackableEntity = self.Swat2
  l0:EnableProfiling()
end
function export:f_292_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Cop1E1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_294_Out
  l0:Show()
end
function export:f_106_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[255]
  l0.MonitoredEvent = "Swat.CopsEntered"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_15_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[15]
  self.Swat2 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Swat2
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_160_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_81_HackSuccess()
  local l0
  self = self._graph
  l0 = self[161]
  l0:True()
end
function export:f_262_SendEventCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.NumberOfHacks
  l0.B = 3
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_208_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_208_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_5_Match_0()
  local l0
  self = self._graph
  l0 = self[48]
  l0.Seconds = 5
  l0:Start()
end
function export:f_5_Match_1()
  local l0
  self = self._graph
  l0 = self[145]
  l0.Seconds = 5
  l0:Start()
end
function export:f_5_Match_2()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Seconds = 5
  l0:Start()
end
function export:f_118_A_is_True()
  local l0
  self = self._graph
  l0 = self[55]
  l0.MonitoredEvent = "Swat.TriggerDispatchDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_219_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SecurityCameraList = self.SecurityCameraList
  l0:In()
end
function export:f_212_TimeElapsed()
  local l0
  self = self._graph
  self:en_129()
  l0 = self[129]
  l0:DisableProfiling()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 100
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_84_Out
  l0:FromFloat()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 100
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:FromFloat()
end
function export:f_112_Out()
  local l0
  self = self._graph
  l0 = self[112]
  self.ObjectsHacked = l0.Target
end
function export:f_112_SetFalse()
  local l0
  self = self._graph
  l0 = self[112]
  self.ObjectsHacked = l0.Target
end
function export:f_112_SetFromBool()
  local l0
  self = self._graph
  l0 = self[112]
  self.ObjectsHacked = l0.Target
end
function export:f_112_SetTrue()
  local l0
  self = self._graph
  l0 = self[112]
  self.ObjectsHacked = l0.Target
end
function export:f_112_Toggled()
  local l0
  self = self._graph
  l0 = self[112]
  self.ObjectsHacked = l0.Target
end
function export:f_270_A_is_False()
  local l0
  self = self._graph
  l0 = self[52]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/3408592341.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  l0:Start()
end
function export:f_270_A_is_True()
  local l0
  self = self._graph
  l0 = self[272]
  l0:Input(2)
end
function export:f_56_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:DisableHack()
end
function export:f_126_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_159_Out_0
  l0.Out[1] = self.f_159_Out_1
  l0:In()
end
function export:f_202_Out()
  local l0
  self = self._graph
  l0 = self[261]
  l0.Seconds = 3
  l0:Start()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[130]
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/786578842.bnk"
  l0:Play()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:f_287_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[286]
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/1219010871.bnk"
  l0:Play()
end
function export:f_293_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_250_Out_0
  l0.Out[1] = self.f_250_Out_1
  l0.Out[2] = self.f_250_Out_2
  l0.Out[3] = DummyFunction
  l0.Out[4] = DummyFunction
  l0:In()
end
function export:f_293_Out_1()
  local l0
  self = self._graph
  l0 = self[181]
  l0:True()
end
function export:f_293_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_91_Out_0
  l0.Out[1] = self.f_91_Out_1
  l0.Out[2] = self.f_91_Out_2
  l0.Out[3] = DummyFunction
  l0:In()
end
function export:f_250_Out_0()
  local l0
  self = self._graph
  l0 = self[249]
  l0.HackableEntity = "9223372049656831279"
  l0:EnableHack()
end
function export:f_250_Out_1()
  local l0
  self = self._graph
  l0 = self[247]
  l0.HackableEntity = "9223372049656831277"
  l0:EnableHack()
end
function export:f_250_Out_2()
  local l0
  self = self._graph
  l0 = self[248]
  l0.HackableEntity = "9223372049656943480"
  l0:EnableHack()
end
function export:f_190_A_ge_B()
  local l0
  self = self._graph
  l0 = self[307]
  l0:In(0)
end
function export:f_190_A_lt_B()
  local l0
  self = self._graph
  l0 = self[191]
  l0:In(0)
end
function export:f_36_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:DisableHack()
end
function export:f_143_Out()
  local l0
  self = self._graph
  l0 = self[143]
  self.ObjectsHacked = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_87_Out_0
  l0.Out[1] = self.f_87_Out_1
  l0:In()
end
function export:f_143_SetFalse()
  local l0
  self = self._graph
  l0 = self[143]
  self.ObjectsHacked = l0.Target
end
function export:f_143_SetFromBool()
  local l0
  self = self._graph
  l0 = self[143]
  self.ObjectsHacked = l0.Target
end
function export:f_143_SetTrue()
  local l0
  self = self._graph
  l0 = self[143]
  self.ObjectsHacked = l0.Target
end
function export:f_143_Toggled()
  local l0
  self = self._graph
  l0 = self[143]
  self.ObjectsHacked = l0.Target
end
function export:f_200_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_295_Out_0
  l0.Out[1] = self.f_295_Out_1
  l0.Out[2] = self.f_295_Out_2
  l0.Out[3] = self.f_295_Out_3
  l0.Out[4] = self.f_295_Out_4
  l0:In()
end
function export:f_72_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372049656943480"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_94_Out
  l0:Hide()
end
function export:f_260_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0:In()
end
function export:f_104_Out()
  local l0
  self = self._graph
  l0 = self[104]
  self.PCHacked = l0.Target
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:FromInteger()
end
function export:f_104_SetFalse()
  local l0
  self = self._graph
  l0 = self[104]
  self.PCHacked = l0.Target
end
function export:f_104_SetFromBool()
  local l0
  self = self._graph
  l0 = self[104]
  self.PCHacked = l0.Target
end
function export:f_104_SetTrue()
  local l0
  self = self._graph
  l0 = self[104]
  self.PCHacked = l0.Target
end
function export:f_104_Toggled()
  local l0
  self = self._graph
  l0 = self[104]
  self.PCHacked = l0.Target
end
function export:f_75_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[89]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/1931631566.bnk"
  l0.Supersede = 1
  l0:Start()
end
function export:f_132_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_132()
  l0 = self[132]
  l0:DisableHack()
end
function export:f_187_Out_0()
  local l0
  self = self._graph
  l0 = self[107]
  l0:True()
end
function export:f_187_Out_1()
  local l0
  self = self._graph
  l0 = self[287]
  l0.Seconds = 0.3
  l0:Start()
end
function export:f_147_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372049656831284"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Stop()
end
function export:f_29_A_le_B()
  local l0
  self = self._graph
  l0 = self[182]
  l0:In(0)
end
function export:f_269_EventOccurred()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ObjectsHacked
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_271_A_is_True
  l0.A_is_False = self.f_271_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_297_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[186]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_290_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/879191256.bnk"
  l0:Play()
end
function export:f_114_Disabled()
  local l0
  self = self._graph
  l0 = self[177]
  l0.MonitoredEvent = "Swat.ReenableHacks"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_237_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[237]
  self.PoliceCar2 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar2
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = nil
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_45_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[144]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/1339853095.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0:Start()
end
function export:f_86_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0.Out[2] = self.f_7_Out_2
  l0.Out[3] = self.f_7_Out_3
  l0:In()
end
function export:f_196_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Condition(4)
end
function export:f_116_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.NumberOfHacks
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_53_Out
  l0:Add()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[133]
  l0.Input = self.SecurityCameraList
  l0.Data[0] = "9223372049656831307"
  l0.Data[1] = "9223372049656831309"
  l0:Add()
end
function export:f_277_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PCHacked
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_167_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_277_Out_1()
  local l0
  self = self._graph
  l0 = self[26]
  l0.HackableEntity = "9223372049656831277"
  l0:EnableHack()
end
function export:f_115_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_120_Out_0
  l0.Out[1] = self.f_120_Out_1
  l0:In()
end
function export:f_115_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_115()
  l0 = self[115]
  l0:DisableHack()
end
function export:f_263_Out()
  local l0
  self = self._graph
  l0 = self[267]
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_133_Added()
  local l0
  self = self._graph
  l0 = self[133]
  self.SecurityCameraList = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_205_Out_0
  l0.Out[1] = self.f_205_Out_1
  l0:In()
end
function export:f_133_Out()
  local l0
  self = self._graph
  l0 = self[133]
  self.SecurityCameraList = l0.Target
end
function export:f_133_Removed()
  local l0
  self = self._graph
  l0 = self[133]
  self.SecurityCameraList = l0.Target
end
function export:f_267_EventOccurred()
  local l0
  self = self._graph
  l0 = self[264]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/2666770453.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  l0:Start()
end
function export:f_265_Out()
  local l0
  self = self._graph
  l0 = self[266]
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_136_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[136]
  self.Swat3 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Swat3
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_62_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_71_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[71]
  self.PoliceCar = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = nil
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_289_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372054587396765"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_301_Out
  l0:Hide()
end
function export:f_6_Disabled()
  local l0
  self = self._graph
  l0 = self[102]
  l0.MonitoredEvent = "Swat.ReenableHacks"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_168_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[168]
  self.PoliceCar = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = nil
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_155_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049657004655"
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
  l0.Out = self.f_128_Out
  l0:MoveForward()
end
function export:f_194_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Condition(2)
end
function export:f_93_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083799677"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = self.f_67_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_93_Out_1()
  local l0
  self = self._graph
  l0 = self[139]
  l0.Seconds = 21
  l0:Start()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052460166218"
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
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052460166222"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_28_Out
  l0:Hide()
end
function export:f_2_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372052106274775"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_2_Out_3()
  local l0
  self = self._graph
  l0 = self[78]
  l0.Input = self.PoliceDialogueLines
  l0.SoundID[0] = "soundbinary/3436825355.bnk"
  l0.SoundID[1] = "soundbinary/3264659934.bnk"
  l0.SoundID[2] = "soundbinary/3408592341.bnk"
  l0:Add()
end
function export:f_2_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052621829788"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_224_Out
  l0:Hide()
end
function export:f_246_Enabled()
  local l0
  self = self._graph
  l0 = self[113]
  l0.HackableEntity = "9223372049656831292"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_272_Out()
  local l0
  self = self._graph
  l0 = self[79]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/2099014057.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  l0:Start()
end
function export:f_266_EventOccurred()
  local l0
  self = self._graph
  l0 = self[263]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/3278799333.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  l0:Start()
end
function export:f_158_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[51]
  l0.CLO = "9223372049656831280"
  l0:Deactivate()
end
function export:f_67_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083798512"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = self.f_155_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.NumberOfHacks
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_42_Out
  l0:Add()
end
function export:f_165_Out()
  local l0
  self = self._graph
  l0 = self[21]
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_254_EventOccurred()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Cop1E1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_291_Out
  l0:Show()
end
function export:f_139_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[50]
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.TriggerEnding"
  l0:SendEvent()
end
function export:f_141_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083798512"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = self.f_178_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_48_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[125]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/2875306816.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0:Start()
end
function export:f_156_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.Escalation = l0.Target
  l0 = self[148]
  l0:False()
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0.HackableEntity = "9223372049656831279"
  l0:DisableHack()
end
function export:f_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PhoneHasBeenHacked
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_152_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_7_Out_2()
  local l0
  self = self._graph
  l0 = self[213]
  l0.Seconds = 0.3
  l0:Start()
end
function export:f_7_Out_3()
  local l0
  self = self._graph
  l0 = self[76]
  l0.Seconds = 3
  l0:Start()
end
function export:f_209_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:f_225_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372052621829459"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_225_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052621829788"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_225_Out_2()
  local l0
  self = self._graph
  l0 = self[253]
  l0.MonitoredEvent = "Swat.CopsEntered"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_55_EventOccurred()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.NumberOfHacks
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_150_Out
  l0:Add()
end
function export:f_134_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[254]
  l0.MonitoredEvent = "Swat.CopsEntered"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_62_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[197]
  l0.HackableEntity = self.Swat3
  l0:DisableProfiling()
end
function export:f_14_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[14]
  self.Cop1E1 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Cop1E1
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_47_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  l0 = self[198]
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_20_Out_1()
  local l0
  self = self._graph
  l0 = self[252]
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.PhoneHack"
  l0:SendEvent()
end
function export:f_213_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[77]
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.ModemHack"
  l0:SendEvent()
end
function export:f_255_EventOccurred()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Cop2E1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_292_Out
  l0:Show()
end
function export:f_170_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_234_Out_0
  l0.Out[1] = self.f_234_Out_1
  l0:In()
end
function export:f_145_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[65]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/389062708.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0:Start()
end
function export:f_275_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:f_107_Out()
  local l0
  self = self._graph
  l0 = self[107]
  self.ObjectsHacked = l0.Target
  l0 = self[86]
  l0.HackableEntity = "9223372049656831277"
  l0:DisableHack()
end
function export:f_107_SetFalse()
  local l0
  self = self._graph
  l0 = self[107]
  self.ObjectsHacked = l0.Target
end
function export:f_107_SetFromBool()
  local l0
  self = self._graph
  l0 = self[107]
  self.ObjectsHacked = l0.Target
end
function export:f_107_SetTrue()
  local l0
  self = self._graph
  l0 = self[107]
  self.ObjectsHacked = l0.Target
end
function export:f_107_Toggled()
  local l0
  self = self._graph
  l0 = self[107]
  self.ObjectsHacked = l0.Target
end
function export:f_296_Disabled()
  local l0
  self = self._graph
  l0 = self[297]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_296_OnEndAccessCamera()
  local l0
  self = self._graph
  self:en_296()
  l0 = self[296]
  l0:Disable()
end
function export:f_82_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_187_Out_0
  l0.Out[1] = self.f_187_Out_1
  l0:In()
end
function export:f_88_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[214]
  l0.LoadingScreen = 0
  l0:In()
end
function export:f_37_CanExitSet()
  local l0
  self = self._graph
  self:en_37()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_37_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_108_Out_0
  l0.Out[1] = self.f_108_Out_1
  l0:In()
end
function export:f_40_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[119]
  l0.CLO = "9223372049656831294"
  l0:Deactivate()
end
function export:f_199_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[106]
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.TriggerEnding"
  l0:SendEvent()
end
function export:f_59_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[59]
  self.PoliceCar = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = nil
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_236_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[236]
  self.PoliceCar4 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar4
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = nil
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_137_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[32]
  l0.CLO = "9223372049656831295"
  l0:Deactivate()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.NumberOfHacks = l0.Target
  l0 = self[5]
  l0.Integer = self.NumberOfHacks
  l0.Case[0] = 1
  l0.Case[1] = 2
  l0.Case[2] = 3
  l0:In()
end
function export:f_76_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052460166222"
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
function export:f_210_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[66]
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.ScreamPrank"
  l0:SendEvent()
end
function export:f_135_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_201_Out_0
  l0.Out[1] = self.f_201_Out_1
  l0:In()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.NumberOfHacks = l0.Target
  l0 = self[4]
  l0.MonitoredEvent = "Swat.TriggerDispatchDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0:Enable()
end
function export:f_9_Match_0()
  local l0
  self = self._graph
  l0 = self[30]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/1116370542.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0:Start()
end
function export:f_9_Match_1()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/665110581.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0:Start()
end
function export:f_9_Match_2()
  local l0
  self = self._graph
  l0 = self[85]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/2345918963.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0:Start()
end
function export:f_43_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.TotalTime
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_173_Out
  l0:Sub()
end
function export:f_271_A_is_False()
  local l0
  self = self._graph
  l0 = self[284]
  l0:Input(1)
end
function export:f_271_A_is_True()
  local l0
  self = self._graph
  l0 = self[272]
  l0:Input(1)
end
function export:f_258_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083798512"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = self.f_257_Out
  l0:Disable()
end
function export:f_181_Out()
  local l0
  self = self._graph
  l0 = self[181]
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_181_SetFalse()
  local l0
  self = self._graph
  l0 = self[181]
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_181_SetFromBool()
  local l0
  self = self._graph
  l0 = self[181]
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_181_SetTrue()
  local l0
  self = self._graph
  l0 = self[181]
  self.PhoneHasBeenHacked = l0.Target
  l0 = self[69]
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.PhoneHack"
  l0:SendEvent()
end
function export:f_181_Toggled()
  local l0
  self = self._graph
  l0 = self[181]
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_70_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/759520948.bnk"
  l0:Play()
end
function export:f_204_Out()
  local l0
  self = self._graph
  l0 = self[184]
  l0.Integer = self.NumberOfHacks
  l0.Case[0] = 1
  l0.Case[1] = 2
  l0.Case[2] = 3
  l0:In()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[95]
  l0.Input = self.CharactersIOPSwatTheSwatter
  l0.Data[0] = self.TheSwatter
  l0.Data[1] = self.Cop1E1
  l0.Data[2] = self.Cop2E1
  l0.Data[3] = self.Swat1
  l0.Data[4] = self.Swat2
  l0.Data[5] = self.Swat3
  l0:Add()
end
function export:f_234_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083799677"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = self.f_90_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_234_Out_1()
  local l0
  self = self._graph
  l0 = self[199]
  l0.Seconds = 20
  l0:Start()
end
function export:f_230_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = self[229]
  l0.HackableEntity = self.Cop1E1
  l0:EnableProfiling()
end
function export:f_207_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_93_Out_0
  l0.Out[1] = self.f_93_Out_1
  l0:In()
end
function export:f_282_Out()
  local l0
  self = self._graph
  l0 = self[68]
  l0.SoundId = "soundbinary/722522482.bnk"
  l0:Play()
end
function export:f_108_Out_0()
  local l0
  self = self._graph
  self:en_296()
  l0 = self[296]
  l0:Enable()
end
function export:f_108_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_245_Out_0
  l0.Out[1] = self.f_245_Out_1
  l0.Out[2] = self.f_245_Out_2
  l0.Out[3] = self.f_245_Out_3
  l0.Out[4] = self.f_245_Out_4
  l0:In()
end
function export:f_117_Out_0()
  local l0
  self = self._graph
  l0 = self[126]
  l0.HackableEntity = "9223372049656831279"
  l0:DisableHack()
end
function export:f_117_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052460166218"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_80_Out
  l0:Show()
end
function export:f_117_Out_2()
  local l0
  self = self._graph
  l0 = self[114]
  l0.HackableEntity = "9223372049656831277"
  l0:DisableHack()
end
function export:f_161_Out()
  local l0
  self = self._graph
  l0 = self[161]
  self.ObjectsHacked = l0.Target
  l0 = self[19]
  l0:True()
end
function export:f_161_SetFalse()
  local l0
  self = self._graph
  l0 = self[161]
  self.ObjectsHacked = l0.Target
end
function export:f_161_SetFromBool()
  local l0
  self = self._graph
  l0 = self[161]
  self.ObjectsHacked = l0.Target
end
function export:f_161_SetTrue()
  local l0
  self = self._graph
  l0 = self[161]
  self.ObjectsHacked = l0.Target
end
function export:f_161_Toggled()
  local l0
  self = self._graph
  l0 = self[161]
  self.ObjectsHacked = l0.Target
end
function export:f_283_Out()
  local l0
  self = self._graph
  l0 = self[170]
  l0.SoundId = "soundbinary/424281780.bnk"
  l0:Play()
end
function export:f_4_EventOccurred()
  local l0
  self = self._graph
  l0 = self[31]
  l0.Integer = self.NumberOfHacks
  l0.Case[0] = 1
  l0.Case[1] = 2
  l0.Case[2] = 3
  l0:In()
end
function export:f_192_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[34]
  l0.LayerName = "IOP12_Main"
  l0:Unload()
end
function export:f_257_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372054587396765"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:f_61_CollisionsDisabled()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Condition(0)
end
function export:f_280_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_277_Out_0
  l0.Out[1] = self.f_277_Out_1
  l0:In()
end
function export:f_125_Out()
  local l0
  self = self._graph
  l0 = self[202]
  l0:Input(0)
end
function export:f_148_Out()
  local l0
  self = self._graph
  l0 = self[148]
  self.PhoneHasBeenHacked = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0.Out[2] = self.f_2_Out_2
  l0.Out[3] = self.f_2_Out_3
  l0.Out[4] = self.f_2_Out_4
  l0:In()
end
function export:f_148_SetFalse()
  local l0
  self = self._graph
  l0 = self[148]
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_148_SetFromBool()
  local l0
  self = self._graph
  l0 = self[148]
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_148_SetTrue()
  local l0
  self = self._graph
  l0 = self[148]
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_148_Toggled()
  local l0
  self = self._graph
  l0 = self[148]
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_273_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[164]
  l0.Entity = "9223372049656831282"
  l0.SoundId = "soundbinary/1703411120.bnk"
  l0:Play()
end
function export:f_174_Out_0()
  local l0
  self = self._graph
  l0 = self[110]
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.LockEnding"
  l0:SendEvent()
end
function export:f_174_Out_1()
  local l0
  self = self._graph
  self:en_43()
  l0 = self[43]
  l0:Stop()
end
function export:f_110_SendEventCompleted()
  local l0
  self = self._graph
  l0 = self[204]
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/3959191738.bnk"
  l0:Play()
end
function export:f_163_A_is_False()
  local l0
  self = self._graph
  l0 = self[149]
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/3264659934.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  l0:Start()
end
function export:f_163_A_is_True()
  local l0
  self = self._graph
  l0 = self[272]
  l0:Input(0)
end
function export:f_307_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 5
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_207_Out
  l0:FromFloat()
end
function export:f_12_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[12]
  self.TheSwatter = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.TheSwatter
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_61_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_203_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:en_54()
  local l0
  l0 = self[54]
  l0.HackableEntity = "9223372049656831277"
end
function export:en_129()
  local l0
  l0 = self[129]
  l0.HackableEntity = "9223372049656831292"
end
function export:en_56()
  local l0
  l0 = self[56]
  l0.HackableEntity = "9223372049656943480"
end
function export:en_36()
  local l0
  l0 = self[36]
  l0.HackableEntity = "9223372049656831292"
end
function export:en_132()
  local l0
  l0 = self[132]
  l0.HackableEntity = "9223372049656831279"
end
function export:en_115()
  local l0
  l0 = self[115]
  l0.HackableEntity = "9223372049656943480"
end
function export:en_296()
  local l0
  l0 = self[296]
  l0.CameraEntity = "9223372049656831307"
end
function export:en_37()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372049656831307"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_37_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_37_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_43()
  local l0
  l0 = self[43]
  l0.Loop = 1
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.AutoReset = 1
end
_compilerVersion = 4
