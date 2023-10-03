export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
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
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
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
  self._name = "IOP12_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main"
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
  self.box_HackableController_v2_193 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_193
  l0._graph = self
  l0._name = "box_HackableController_v2_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|20881218"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_193_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_109 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_109
  l0._graph = self
  l0._name = "box_HackableController_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|27628942"
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
  self.box_IOPMonitor_198 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_198
  l0._graph = self
  l0._name = "box_IOPMonitor_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|34254665"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_198_EventOccurred
  l0.Out = DummyFunction
  self.box_HackableController_v2_232 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_232
  l0._graph = self
  l0._name = "box_HackableController_v2_232"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|44163254"
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
  self.box_PlayDialog_v2_65 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_65
  l0._graph = self
  l0._name = "box_PlayDialog_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|48572951"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_65_Out
  self.box_HackableController_v2_99 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_99
  l0._graph = self
  l0._name = "box_HackableController_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|59782221"
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
  self.box_AI_IOPController_69 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_69
  l0._graph = self
  l0._name = "box_AI_IOPController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|85333315"
  l0.Out = self.f_box_AI_IOPController_69_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_IOPMonitor_21 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_21
  l0._graph = self
  l0._name = "box_IOPMonitor_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|92234669"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_21_EventOccurred
  l0.Out = DummyFunction
  self.box_HackableController_v2_24 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_24
  l0._graph = self
  l0._name = "box_HackableController_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|92574494"
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
  self.box_CLOController_103 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_103
  l0._graph = self
  l0._name = "box_CLOController_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|94926396"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_103_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlayDialog_v2_149 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_149
  l0._graph = self
  l0._name = "box_PlayDialog_v2_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|129308683"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_149_Out
  self.box_PlaySound_v2_166 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_166
  l0._graph = self
  l0._name = "box_PlaySound_v2_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|150446153"
  l0.Out = self.f_box_PlaySound_v2_166_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_113 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_113
  l0._graph = self
  l0._name = "box_Hackable_Monitor_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|156218938"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_113_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_244 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_244
  l0._graph = self
  l0._name = "box_HackableController_v2_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|156299014"
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
  self.box_HackableController_v2_54 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_54
  l0._graph = self
  l0._name = "box_HackableController_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|156898093"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_54_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_63 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_63
  l0._graph = self
  l0._name = "box_CLOController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|157613678"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_63_OnUserInPlace
  self.box_IOPMonitor_253 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_253
  l0._graph = self
  l0._name = "box_IOPMonitor_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|181770697"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_253_EventOccurred
  l0.Out = DummyFunction
  self.box_Hackable_Monitor_100 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_100
  l0._graph = self
  l0._name = "box_Hackable_Monitor_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|200911709"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_100_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_SetBoolean_v2_19 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_19
  l0._graph = self
  l0._name = "box_SetBoolean_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|212809015"
  l0.Out = self.f_box_SetBoolean_v2_19_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_19_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_19_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_19_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_19_SetFromBool
  self.box_AI_IOPController_252 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_252
  l0._graph = self
  l0._name = "box_AI_IOPController_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|215542916"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_189 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_189
  l0._graph = self
  l0._name = "box_MultipleOR_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|239533546"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_189_Out
  self.box_ListWriter_95 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_95
  l0._graph = self
  l0._name = "box_ListWriter_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|257903538"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_95_Added
  l0.Removed = self.f_box_ListWriter_95_Removed
  l0.Out = self.f_box_ListWriter_95_Out
  self.box_MissionLayer_v2_34 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_34
  l0._graph = self
  l0._name = "box_MissionLayer_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|262300932"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_34_Unloaded
  l0.Reseted = DummyFunction
  self.box_IOP_StartUp_188 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_188
  l0._graph = self
  l0._name = "box_IOP_StartUp_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|276259808"
  l0.Out = self.f_box_IOP_StartUp_188_Out
  self.box_Timer_v2_96 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_96
  l0._graph = self
  l0._name = "box_Timer_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|280261859"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_96_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_197 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_197
  l0._graph = self
  l0._name = "box_HackableController_v2_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|283103393"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_197_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_ListWriterSoundID_78 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_78
  l0._graph = self
  l0._name = "box_ListWriterSoundID_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|291241753"
  l0._DynamicAnchors = {SoundID = 3}
  l0.Added = self.f_box_ListWriterSoundID_78_Added
  l0.Removed = self.f_box_ListWriterSoundID_78_Removed
  l0.Out = self.f_box_ListWriterSoundID_78_Out
  self.box_IOPMonitor_102 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_102
  l0._graph = self
  l0._name = "box_IOPMonitor_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|323755875"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_102_EventOccurred
  l0.Out = DummyFunction
  self.box_CLOController_238 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_238
  l0._graph = self
  l0._name = "box_CLOController_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|329556510"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_238_OnUserInPlace
  self.box_MultipleOR_284 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_284
  l0._graph = self
  l0._name = "box_MultipleOR_284"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|370393721"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_284_Out
  self.box_Hackable_Monitor_140 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_140
  l0._graph = self
  l0._name = "box_Hackable_Monitor_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|371937493"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_140_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CLOController_183 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_183
  l0._graph = self
  l0._name = "box_CLOController_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|379231856"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_183_OnUserInPlace
  self.box_CLOController_33 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_33
  l0._graph = self
  l0._name = "box_CLOController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|390003466"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_33_OnUserInPlace
  self.box_HackableController_v2_129 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_129
  l0._graph = self
  l0._name = "box_HackableController_v2_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|407627245"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_129_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_129_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_261 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_261
  l0._graph = self
  l0._name = "box_Timer_v2_261"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|411120073"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_261_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_195 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_195
  l0._graph = self
  l0._name = "box_HackableController_v2_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|415470029"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_195_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_51 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_51
  l0._graph = self
  l0._name = "box_CLOController_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|447337988"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlayDialog_v2_52 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_52
  l0._graph = self
  l0._name = "box_PlayDialog_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|449174163"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_52_Out
  self.box_PlayDialog_v2_89 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_89
  l0._graph = self
  l0._name = "box_PlayDialog_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|486742231"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_89_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_259 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_259
  l0._graph = self
  l0._name = "box_PlaySound_v2_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|488401742"
  l0.Out = self.f_box_PlaySound_v2_259_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Integer_Select_184 = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self.box_Integer_Select_184
  l0._graph = self
  l0._name = "box_Integer_Select_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|493065934"
  l0._DynamicAnchors = {Case = 3, Match = 3}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_box_Integer_Select_184_Match_0
  l0.Match[1] = self.f_box_Integer_Select_184_Match_1
  l0.Match[2] = self.f_box_Integer_Select_184_Match_2
  l0.None = self.f_box_Integer_Select_184_None
  self.box_Integer_Select_31 = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self.box_Integer_Select_31
  l0._graph = self
  l0._name = "box_Integer_Select_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|501451057"
  l0._DynamicAnchors = {Case = 3, Match = 3}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_box_Integer_Select_31_Match_0
  l0.Match[1] = self.f_box_Integer_Select_31_Match_1
  l0.Match[2] = self.f_box_Integer_Select_31_Match_2
  l0.None = DummyFunction
  self.box_IOPMonitor_268 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_268
  l0._graph = self
  l0._name = "box_IOPMonitor_268"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|510383811"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_268_EventOccurred
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_281 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_281
  l0._graph = self
  l0._name = "box_PlayDialog_v2_281"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|511519356"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_281_Out
  self.box_PlaySound_v2_57 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_57
  l0._graph = self
  l0._name = "box_PlaySound_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|515849633"
  l0.Out = self.f_box_PlaySound_v2_57_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_IOPMonitor_27 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_27
  l0._graph = self
  l0._name = "box_IOPMonitor_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|521454455"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_27_EventOccurred
  l0.Out = DummyFunction
  self.box_AI_IOPController_251 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_251
  l0._graph = self
  l0._name = "box_AI_IOPController_251"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|542313581"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_249 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_249
  l0._graph = self
  l0._name = "box_HackableController_v2_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|545095543"
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
  self.box_PlayDialog_v2_144 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_144
  l0._graph = self
  l0._name = "box_PlayDialog_v2_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|580916653"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_144_Out
  self.box_PlaySound_v2_164 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_164
  l0._graph = self
  l0._name = "box_PlaySound_v2_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|584020762"
  l0.Out = self.f_box_PlaySound_v2_164_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_79 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_79
  l0._graph = self
  l0._name = "box_PlayDialog_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|605477202"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_79_Out
  self.box_AI_IOPController_172 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_172
  l0._graph = self
  l0._name = "box_AI_IOPController_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|613847688"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_172_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_50 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_50
  l0._graph = self
  l0._name = "box_AI_IOPController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|613860459"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_50_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_242 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_242
  l0._graph = self
  l0._name = "box_HackableController_v2_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|619496914"
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
  self.box_PlaySound_v2_17 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_17
  l0._graph = self
  l0._name = "box_PlaySound_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|633536596"
  l0.Out = self.f_box_PlaySound_v2_17_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_274 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_274
  l0._graph = self
  l0._name = "box_PlaySound_v2_274"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|640039395"
  l0.Out = self.f_box_PlaySound_v2_274_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_157 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_157
  l0._graph = self
  l0._name = "box_PlayDialog_v2_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|686870335"
  l0.Started = self.f_box_PlayDialog_v2_157_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_98 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_98
  l0._graph = self
  l0._name = "box_CLOController_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|698544509"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_98_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySound_v2_41 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_41
  l0._graph = self
  l0._name = "box_PlaySound_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|705304774"
  l0.Out = self.f_box_PlaySound_v2_41_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_IOPMonitor_124 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_124
  l0._graph = self
  l0._name = "box_IOPMonitor_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|716473944"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = self.f_box_IOPMonitor_124_DeactivateHackables
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_182 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_182
  l0._graph = self
  l0._name = "box_OnceOnly_v3_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|736540553"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_182_Out
  l0.ResetOut = DummyFunction
  self.box_IOPMonitor_177 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_177
  l0._graph = self
  l0._name = "box_IOPMonitor_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|765680176"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_177_EventOccurred
  l0.Out = DummyFunction
  self.box_PlaySound_v2_74 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_74
  l0._graph = self
  l0._name = "box_PlaySound_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|777072389"
  l0.Out = self.f_box_PlaySound_v2_74_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_IOPMonitor_179 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_179
  l0._graph = self
  l0._name = "box_IOPMonitor_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|816871355"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_box_IOPMonitor_179_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_233 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_233
  l0._graph = self
  l0._name = "box_HackableController_v2_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|848031385"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_233_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_121 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_121
  l0._graph = self
  l0._name = "box_CLOController_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|854745509"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_121_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionLayer_v2_97 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_97
  l0._graph = self
  l0._name = "box_MissionLayer_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|857299411"
  l0.Loaded = self.f_box_MissionLayer_v2_97_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_AI_IOPController_66 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_66
  l0._graph = self
  l0._name = "box_AI_IOPController_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|861091146"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_IOP_CleanUp_1 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_1
  l0._graph = self
  l0._name = "box_IOP_CleanUp_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|882671878"
  l0.Completed = self.f_box_IOP_CleanUp_1_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_1_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_IOPMonitor_83 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_83
  l0._graph = self
  l0._name = "box_IOPMonitor_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|913762445"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_83_EventOccurred
  l0.Out = DummyFunction
  self.box_AI_IOPController_77 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_77
  l0._graph = self
  l0._name = "box_AI_IOPController_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|920985182"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_211 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_211
  l0._graph = self
  l0._name = "box_Timer_v2_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|926910403"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_211_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Wait_Qualities_Loaded_214 = cbox:CreateBox("domino/System/WaitQualitiesLoaded.lua")
  l0 = self.box_Wait_Qualities_Loaded_214
  l0._graph = self
  l0._name = "box_Wait_Qualities_Loaded_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|929150574"
  l0.Out = DummyFunction
  l0.Loaded = self.f_box_Wait_Qualities_Loaded_214_Loaded
  self.box_PlayDialog_v2_169 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_169
  l0._graph = self
  l0._name = "box_PlayDialog_v2_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|929554836"
  l0.Started = self.f_box_PlayDialog_v2_169_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_85 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_85
  l0._graph = self
  l0._name = "box_PlayDialog_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|930629535"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_228 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_228
  l0._graph = self
  l0._name = "box_Timer_v2_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|948620802"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_228_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_191 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_191
  l0._graph = self
  l0._name = "box_OnceOnly_v3_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|955699054"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_191_Out
  l0.ResetOut = DummyFunction
  self.box_HackableController_v2_26 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_26
  l0._graph = self
  l0._name = "box_HackableController_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|956676067"
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
  self.box_HackableController_v2_231 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_231
  l0._graph = self
  l0._name = "box_HackableController_v2_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|967325186"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_231_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_106 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_106
  l0._graph = self
  l0._name = "box_AI_IOPController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|971438056"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_106_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_CLOController_15 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_15
  l0._graph = self
  l0._name = "box_CLOController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|974586566"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_15_OnUserInPlace
  self.box_Hackable_Monitor_81 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_81
  l0._graph = self
  l0._name = "box_Hackable_Monitor_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|979087154"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_81_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_AI_IOPController_262 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_262
  l0._graph = self
  l0._name = "box_AI_IOPController_262"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|985632681"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_262_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Integer_Select_5 = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self.box_Integer_Select_5
  l0._graph = self
  l0._name = "box_Integer_Select_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|993546771"
  l0._DynamicAnchors = {Case = 3, Match = 3}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_box_Integer_Select_5_Match_0
  l0.Match[1] = self.f_box_Integer_Select_5_Match_1
  l0.Match[2] = self.f_box_Integer_Select_5_Match_2
  l0.None = DummyFunction
  self.box_PlaySound_v2_219 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_219
  l0._graph = self
  l0._name = "box_PlaySound_v2_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1009523302"
  l0.Out = self.f_box_PlaySound_v2_219_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_49 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_49
  l0._graph = self
  l0._name = "box_CLOController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1021217407"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_212 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_212
  l0._graph = self
  l0._name = "box_Timer_v2_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1023788897"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_212_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_46 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_46
  l0._graph = self
  l0._name = "box_AI_IOPController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1025226504"
  l0.Out = self.f_box_AI_IOPController_46_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_243 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_243
  l0._graph = self
  l0._name = "box_HackableController_v2_243"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1028074198"
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
  self.box_OnceOnly_v3_16 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_16
  l0._graph = self
  l0._name = "box_OnceOnly_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1030515144"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_16_Out
  l0.ResetOut = DummyFunction
  self.box_PlayDialog_v2_264 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_264
  l0._graph = self
  l0._name = "box_PlayDialog_v2_264"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1030665919"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_112 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_112
  l0._graph = self
  l0._name = "box_SetBoolean_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1031457513"
  l0.Out = self.f_box_SetBoolean_v2_112_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_112_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_112_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_112_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_112_SetFromBool
  self.box_MissionController_v4_185 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_185
  l0._graph = self
  l0._name = "box_MissionController_v4_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1048668356"
  self.box_HackableController_v2_56 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_56
  l0._graph = self
  l0._name = "box_HackableController_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1057368300"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_56_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_126 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_126
  l0._graph = self
  l0._name = "box_HackableController_v2_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1061279320"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_126_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_202 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_202
  l0._graph = self
  l0._name = "box_MultipleOR_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1063096589"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_202_Out
  self.box_CLOController_25 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_25
  l0._graph = self
  l0._name = "box_CLOController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1074519016"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySound_v2_10 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_10
  l0._graph = self
  l0._name = "box_PlaySound_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1076287916"
  l0.Out = self.f_box_PlaySound_v2_10_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_287 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_287
  l0._graph = self
  l0._name = "box_Timer_v2_287"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1087676037"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_287_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_36 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_36
  l0._graph = self
  l0._name = "box_HackableController_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1108146507"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_36_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_SetBoolean_v2_143 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_143
  l0._graph = self
  l0._name = "box_SetBoolean_v2_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1113493869"
  l0.Out = self.f_box_SetBoolean_v2_143_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_143_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_143_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_143_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_143_SetFromBool
  self.box_PhoneCommunicationController_200 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_200
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_200"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1117203436"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_200_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_260 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_260
  l0._graph = self
  l0._name = "box_Timer_v2_260"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1139532643"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_260_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_104 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_104
  l0._graph = self
  l0._name = "box_SetBoolean_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1154032946"
  l0.Out = self.f_box_SetBoolean_v2_104_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_104_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_104_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_104_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_104_SetFromBool
  self.box_PlayDialogOnSoundPoint_286 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_286
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_286"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1172525775"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_75 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_75
  l0._graph = self
  l0._name = "box_Timer_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1178127984"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_75_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_132 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_132
  l0._graph = self
  l0._name = "box_HackableController_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1180430532"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_132_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_256 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_256
  l0._graph = self
  l0._name = "box_HackableController_v2_256"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1185856329"
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
  self.box_Timer_v2_147 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_147
  l0._graph = self
  l0._name = "box_Timer_v2_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1188996169"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_147_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPMonitor_269 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_269
  l0._graph = self
  l0._name = "box_IOPMonitor_269"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1193410083"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_269_EventOccurred
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_38 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_38
  l0._graph = self
  l0._name = "box_PlayDialog_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1221914877"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_297 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_297
  l0._graph = self
  l0._name = "box_Timer_v2_297"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1250202244"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_297_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_119 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_119
  l0._graph = self
  l0._name = "box_CLOController_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1256620708"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_32 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_32
  l0._graph = self
  l0._name = "box_CLOController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1266533409"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_290 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_290
  l0._graph = self
  l0._name = "box_Timer_v2_290"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1272771210"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_290_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_114 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_114
  l0._graph = self
  l0._name = "box_HackableController_v2_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1275934590"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_114_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_237 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_237
  l0._graph = self
  l0._name = "box_CLOController_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1284676516"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_237_OnUserInPlace
  self.box_Timer_v2_45 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_45
  l0._graph = self
  l0._name = "box_Timer_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1284790193"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_86 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_86
  l0._graph = self
  l0._name = "box_HackableController_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1285258573"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_86_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_196 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_196
  l0._graph = self
  l0._name = "box_HackableController_v2_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1315788953"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_196_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_115 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_115
  l0._graph = self
  l0._name = "box_HackableController_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1363057436"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_115_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_115_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlayDialog_v2_263 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_263
  l0._graph = self
  l0._name = "box_PlayDialog_v2_263"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1372879946"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_263_Out
  self.box_ListWriter_133 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_133
  l0._graph = self
  l0._name = "box_ListWriter_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1378277977"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_133_Added
  l0.Removed = self.f_box_ListWriter_133_Removed
  l0.Out = self.f_box_ListWriter_133_Out
  self.box_IOPMonitor_267 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_267
  l0._graph = self
  l0._name = "box_IOPMonitor_267"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1390820975"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_267_EventOccurred
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_265 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_265
  l0._graph = self
  l0._name = "box_PlayDialog_v2_265"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1393094492"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_265_Out
  self.box_CLOController_136 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_136
  l0._graph = self
  l0._name = "box_CLOController_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1400201703"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_136_OnUserInPlace
  self.box_CLOController_71 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_71
  l0._graph = self
  l0._name = "box_CLOController_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1404057231"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_71_OnUserInPlace
  self.box_Timer_v2_289 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_289
  l0._graph = self
  l0._name = "box_Timer_v2_289"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1407495533"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_289_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_6 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_6
  l0._graph = self
  l0._name = "box_HackableController_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1423927407"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_6_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_168 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_168
  l0._graph = self
  l0._name = "box_CLOController_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1434099690"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_168_OnUserInPlace
  self.box_HackableController_v2_194 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_194
  l0._graph = self
  l0._name = "box_HackableController_v2_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1448727811"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_194_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlayDialog_v2_30 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_30
  l0._graph = self
  l0._name = "box_PlayDialog_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1463830457"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_246 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_246
  l0._graph = self
  l0._name = "box_HackableController_v2_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1468394781"
  l0.Enabled = self.f_box_HackableController_v2_246_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_272 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_272
  l0._graph = self
  l0._name = "box_MultipleOR_272"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1476985089"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_272_Out
  self.box_IOPMonitor_266 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_266
  l0._graph = self
  l0._name = "box_IOPMonitor_266"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1481809445"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_266_EventOccurred
  l0.Out = DummyFunction
  self.box_CLOController_158 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_158
  l0._graph = self
  l0._name = "box_CLOController_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1514754625"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_158_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_HackableController_v2_229 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_229
  l0._graph = self
  l0._name = "box_HackableController_v2_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1521054374"
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
  self.box_PlayDialog_v2_165 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_165
  l0._graph = self
  l0._name = "box_PlayDialog_v2_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1535145165"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_165_Out
  self.box_IOPMonitor_254 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_254
  l0._graph = self
  l0._name = "box_IOPMonitor_254"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1539362805"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_254_EventOccurred
  l0.Out = DummyFunction
  self.box_Timer_v2_139 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_139
  l0._graph = self
  l0._name = "box_Timer_v2_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1541815423"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_139_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_48 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_48
  l0._graph = self
  l0._name = "box_Timer_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1550349107"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_48_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPMonitor_55 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_55
  l0._graph = self
  l0._name = "box_IOPMonitor_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1582215786"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_55_EventOccurred
  l0.Out = DummyFunction
  self.box_AI_IOPController_134 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_134
  l0._graph = self
  l0._name = "box_AI_IOPController_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1596908862"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_134_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_CLOController_14 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1626985183"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_14_OnUserInPlace
  self.box_PlayDialog_v2_175 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_175
  l0._graph = self
  l0._name = "box_PlayDialog_v2_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1641607328"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_213 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_213
  l0._graph = self
  l0._name = "box_Timer_v2_213"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1652562708"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_213_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPMonitor_255 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_255
  l0._graph = self
  l0._name = "box_IOPMonitor_255"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1667068519"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_255_EventOccurred
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_64 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_64
  l0._graph = self
  l0._name = "box_PlayDialog_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1669643212"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_170 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_170
  l0._graph = self
  l0._name = "box_PlaySound_v2_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1695196982"
  l0.Out = self.f_box_PlaySound_v2_170_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_145 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_145
  l0._graph = self
  l0._name = "box_Timer_v2_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1700197804"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_145_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_107 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_107
  l0._graph = self
  l0._name = "box_SetBoolean_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1723199112"
  l0.Out = self.f_box_SetBoolean_v2_107_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_107_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_107_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_107_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_107_SetFromBool
  self.box_HackableController_v2_44 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_44
  l0._graph = self
  l0._name = "box_HackableController_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1725113880"
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
  self.box_HackableController_v2_248 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_248
  l0._graph = self
  l0._name = "box_HackableController_v2_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1738514947"
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
  self.box_Security_Camera_Monitor_296 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_296
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_296"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1742651380"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_296_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_296_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_PlayDialogOnSoundPoint_82 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_82
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1769208239"
  l0.Out = self.f_box_PlayDialogOnSoundPoint_82_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_88 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_88
  l0._graph = self
  l0._name = "box_Timer_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1782406896"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_88_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_40 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_40
  l0._graph = self
  l0._name = "box_CLOController_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1788607441"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_40_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_199 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_199
  l0._graph = self
  l0._name = "box_Timer_v2_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1795552183"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_199_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_59 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_59
  l0._graph = self
  l0._name = "box_CLOController_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1814122769"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_59_OnUserInPlace
  self.box_CLOController_236 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_236
  l0._graph = self
  l0._name = "box_CLOController_236"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1828066768"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_236_OnUserInPlace
  self.box_CLOController_137 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_137
  l0._graph = self
  l0._name = "box_CLOController_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1841376965"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_137_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_76 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_76
  l0._graph = self
  l0._name = "box_Timer_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1850806413"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_76_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_39 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_39
  l0._graph = self
  l0._name = "box_CLOController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1852537624"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_210 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_210
  l0._graph = self
  l0._name = "box_Timer_v2_210"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1863573002"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_210_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_135 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_135
  l0._graph = self
  l0._name = "box_PlaySound_v2_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1865143137"
  l0.Out = self.f_box_PlaySound_v2_135_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Integer_Select_9 = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self.box_Integer_Select_9
  l0._graph = self
  l0._name = "box_Integer_Select_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1873843771"
  l0._DynamicAnchors = {Case = 3, Match = 3}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_box_Integer_Select_9_Match_0
  l0.Match[1] = self.f_box_Integer_Select_9_Match_1
  l0.Match[2] = self.f_box_Integer_Select_9_Match_2
  l0.None = DummyFunction
  self.box_Timer_v2_43 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_43
  l0._graph = self
  l0._name = "box_Timer_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1876192543"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_43_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_101 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_101
  l0._graph = self
  l0._name = "box_AI_IOPController_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1888322033"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_181 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_181
  l0._graph = self
  l0._name = "box_SetBoolean_v2_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1919286183"
  l0.Out = self.f_box_SetBoolean_v2_181_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_181_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_181_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_181_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_181_SetFromBool
  self.box_PlaySound_v2_70 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_70
  l0._graph = self
  l0._name = "box_PlaySound_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1927030124"
  l0.Out = self.f_box_PlaySound_v2_70_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_204 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_204
  l0._graph = self
  l0._name = "box_PlaySound_v2_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1936006780"
  l0.Out = self.f_box_PlaySound_v2_204_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Multiple_AND_23 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_23
  l0._graph = self
  l0._name = "box_Multiple_AND_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1936822520"
  l0._DynamicAnchors = {Condition = 6}
  l0.Out = self.f_box_Multiple_AND_23_Out
  self.box_HackableController_v2_230 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_230
  l0._graph = self
  l0._name = "box_HackableController_v2_230"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1949221788"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_230_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_130 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_130
  l0._graph = self
  l0._name = "box_PlaySound_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1958433819"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_247 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_247
  l0._graph = self
  l0._name = "box_HackableController_v2_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1961385990"
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
  self.box_PlaySound_v2_68 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_68
  l0._graph = self
  l0._name = "box_PlaySound_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1973114737"
  l0.Out = self.f_box_PlaySound_v2_68_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_176 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_176
  l0._graph = self
  l0._name = "box_PlayDialog_v2_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1979282003"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_206 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_206
  l0._graph = self
  l0._name = "box_HackableController_v2_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1988231888"
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
  self.box_PlayDialog_v2_282 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_282
  l0._graph = self
  l0._name = "box_PlayDialog_v2_282"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2004551522"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_282_Out
  self.box_HackableController_v2_127 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_127
  l0._graph = self
  l0._name = "box_HackableController_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2014622916"
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
  self.box_SetBoolean_v2_161 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_161
  l0._graph = self
  l0._name = "box_SetBoolean_v2_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2014982107"
  l0.Out = self.f_box_SetBoolean_v2_161_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_161_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_161_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_161_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_161_SetFromBool
  self.box_PlayDialog_v2_283 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_283
  l0._graph = self
  l0._name = "box_PlayDialog_v2_283"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2020730440"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_283_Out
  self.box_IOPMonitor_4 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_4
  l0._graph = self
  l0._name = "box_IOPMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2023700312"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_4_EventOccurred
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_192 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_192
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2027664483"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_192_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_280 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_280
  l0._graph = self
  l0._name = "box_MultipleOR_280"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2042824448"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_280_Out
  self.box_PlayDialog_v2_125 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_125
  l0._graph = self
  l0._name = "box_PlayDialog_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2057679960"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_125_Out
  self.box_SetBoolean_v2_148 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_148
  l0._graph = self
  l0._name = "box_SetBoolean_v2_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2065646541"
  l0.Out = self.f_box_SetBoolean_v2_148_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_148_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_148_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_148_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_148_SetFromBool
  self.box_Timer_v2_273 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_273
  l0._graph = self
  l0._name = "box_Timer_v2_273"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2085909159"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_273_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_110 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_110
  l0._graph = self
  l0._name = "box_AI_IOPController_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2102943371"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_110_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_OnceOnly_v3_307 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_307
  l0._graph = self
  l0._name = "box_OnceOnly_v3_307"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2117810277"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_307_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_12 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_12
  l0._graph = self
  l0._name = "box_CLOController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2118148191"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_12_OnUserInPlace
  self.box_CinematicPrep_186 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_186
  l0._graph = self
  l0._name = "box_CinematicPrep_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2127523709"
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
  self:OnEnter_box_MultipleOR_189()
  l0 = self.box_MultipleOR_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|110834464", "110834464", "IOP12_Main", "CheckPoint_0", "box_MultipleOR_189.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_189()
  l0 = self.box_MultipleOR_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1077845620", "1077845620", "IOP12_Main", "In", "box_MultipleOR_189.Input", self, l0)
  l0:Input(0)
end
function export:f_box_LightController_60_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049657004655"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|906244482"
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
  l0.Out = self.f_box_MoveableEntityController_105_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1245983626", "1245983626", "IOP12_Main", "box_LightController_60.Enabled", "box_MoveableEntityController_105.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Ordered_Output_221_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_219
  l0.SoundId = "soundbinary/1447677536.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|215843977", "215843977", "IOP12_Main", "box_Ordered_Output_221.Out", "box_PlaySound_v2_219.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_221_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372052621829459"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1862727535"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2053077855", "2053077855", "IOP12_Main", "box_Ordered_Output_221.Out", "box_LightController_222.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_221_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052621829788"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1438699079"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1898135582", "1898135582", "IOP12_Main", "box_Ordered_Output_221.Out", "box_VisibilityController_v2_227.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_HackableController_v2_193_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_23()
  l0 = self.box_HackableController_v2_193
  l1 = self.box_Multiple_AND_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1671771167", "1671771167", "IOP12_Main", "box_HackableController_v2_193.ProfilingDisabled", "box_Multiple_AND_23.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CollisionController_154_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_194
  l0.HackableEntity = self.Cop2E1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|591180175", "591180175", "IOP12_Main", "box_CollisionController_154.CollisionsDisabled", "box_HackableController_v2_194.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_IOPMonitor_198_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_165
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/1633162061.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  l0 = self.box_IOPMonitor_198
  l1 = self.box_PlayDialog_v2_165
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|452127708", "452127708", "IOP12_Main", "box_IOPMonitor_198.EventOccurred", "box_PlayDialog_v2_165.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_65_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_202()
  l0 = self.box_PlayDialog_v2_65
  l1 = self.box_MultipleOR_202
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|725237631", "725237631", "IOP12_Main", "box_PlayDialog_v2_65.Out", "box_MultipleOR_202.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_279_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.NumberOfHacks
  l0.B = 3
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_276"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|377615667"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_276_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Integers_v2_276_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1659360556", "1659360556", "IOP12_Main", "box_Ordered_Output_279.Out", "box_Compare_Integers_v2_276.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_279_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_280()
  l0 = self.box_MultipleOR_280
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1460814432", "1460814432", "IOP12_Main", "box_Ordered_Output_279.Out", "box_MultipleOR_280.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_AI_IOPController_69_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 40
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_311"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|650933158"
  l0.Out = self.f_box_SetFloat_v2_311_Out
  l0 = self.box_AI_IOPController_69
  l1 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1354862806", "1354862806", "IOP12_Main", "box_AI_IOPController_69.Out", "box_SetFloat_v2_311.FromFloat", l0, l1)
  l1:FromFloat()
end
function export:f_box_IOPMonitor_21_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ObjectsHacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2117731180"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_163_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_163_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_IOPMonitor_21
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|141705795", "141705795", "IOP12_Main", "box_IOPMonitor_21.EventOccurred", "box_Compare_Boolean_v2_163.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_103_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_49
  l0.CLO = "9223372049656831293"
  l0 = self.box_CLOController_103
  l1 = self.box_CLOController_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1438943802", "1438943802", "IOP12_Main", "box_CLOController_103.UnspawnedUser", "box_CLOController_49.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_PlayDialog_v2_149_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_27
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_PlayDialog_v2_149
  l1 = self.box_IOPMonitor_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|514339686", "514339686", "IOP12_Main", "box_PlayDialog_v2_149.Out", "box_IOPMonitor_27.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_142_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_132()
  l0 = self.box_HackableController_v2_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2144754344", "2144754344", "IOP12_Main", "box_Ordered_Output_142.Out", "box_HackableController_v2_132.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Ordered_Output_142_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_54()
  l0 = self.box_HackableController_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|557228618", "557228618", "IOP12_Main", "box_Ordered_Output_142.Out", "box_HackableController_v2_54.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Ordered_Output_142_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_56()
  l0 = self.box_HackableController_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1069715571", "1069715571", "IOP12_Main", "box_Ordered_Output_142.Out", "box_HackableController_v2_56.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Ordered_Output_142_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_36()
  l0 = self.box_HackableController_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1947799285", "1947799285", "IOP12_Main", "box_Ordered_Output_142.Out", "box_HackableController_v2_36.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_VisibilityController_v2_294_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_230
  l0.HackableEntity = self.Cop2E1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1504811460", "1504811460", "IOP12_Main", "box_VisibilityController_v2_294.Out", "box_HackableController_v2_230.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_PlaySound_v2_166_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_57
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/2881901905.bnk"
  l0 = self.box_PlaySound_v2_166
  l1 = self.box_PlaySound_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|331046780", "331046780", "IOP12_Main", "box_PlaySound_v2_166.Out", "box_PlaySound_v2_57.Play", l0, l1)
  l1:Play()
end
function export:f_box_Hackable_Monitor_113_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_293"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1089336524"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_293_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_293_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_293_Out_2
  l0 = self.box_Hackable_Monitor_113
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1642395960", "1642395960", "IOP12_Main", "box_Hackable_Monitor_113.HackSuccess", "box_Ordered_Output_293.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_54_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_54()
  l0 = self.box_HackableController_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|620347954", "620347954", "IOP12_Main", "box_HackableController_v2_54.ProfilingDisabled", "box_HackableController_v2_54.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_CLOController_63_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_63
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
  l0._name = "box_SetVehicleLightAndSiren_v2_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|677452967"
  l0.Out = DummyFunction
  l0 = self.box_CLOController_63
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1614341179", "1614341179", "IOP12_Main", "box_CLOController_63.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_218.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Ordered_Output_146_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_192
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049814637227"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|50631164", "50631164", "IOP12_Main", "box_Ordered_Output_146.Out", "box_PhoneCommunicationController_192.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_IOPMonitor_253_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_231
  l0.HackableEntity = self.Swat1
  l0 = self.box_IOPMonitor_253
  l1 = self.box_HackableController_v2_231
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1676820800", "1676820800", "IOP12_Main", "box_IOPMonitor_253.EventOccurred", "box_HackableController_v2_231.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_Hackable_Monitor_100_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052460166222"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|226212990"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_92_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Hackable_Monitor_100
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|569742108", "569742108", "IOP12_Main", "box_Hackable_Monitor_100.HackSuccess", "box_VisibilityController_v2_92.Show", l0, l1)
  l1:Show()
end
function export:f_box_SetBoolean_v2_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.PCHacked = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2007940444"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_117_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_117_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_117_Out_2
  l0 = self.box_SetBoolean_v2_19
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2039510012", "2039510012", "IOP12_Main", "box_SetBoolean_v2_19.Out", "box_Ordered_Output_117.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_19_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.PCHacked = l0.Target
end
function export:f_box_SetBoolean_v2_19_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.PCHacked = l0.Target
end
function export:f_box_SetBoolean_v2_19_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.PCHacked = l0.Target
end
function export:f_box_SetBoolean_v2_19_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.PCHacked = l0.Target
end
function export:f_box_VisibilityController_v2_92_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogOnSoundPoint_82
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/1219010871.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2093490914", "2093490914", "IOP12_Main", "box_VisibilityController_v2_92.Shown", "box_PlayDialogOnSoundPoint_82.Play", clone, l0)
  l0:Play()
end
function export:f_box_MultipleOR_189_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_97
  l0.LayerName = "IOP12_Deactivation"
  l0 = self.box_MultipleOR_189
  l1 = self.box_MissionLayer_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|539625529", "539625529", "IOP12_Main", "box_MultipleOR_189.Out", "box_MissionLayer_v2_97.Load", l0, l1)
  l1:Load()
end
function export:f_box_CollisionController_111_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|983910878", "983910878", "IOP12_Main", "box_CollisionController_111.Out", "box_SetBoolean_v2_104.False", clone, l0)
  l0:False()
end
function export:f_box_ListWriter_95_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_95
  self.CharactersIOPSwatTheSwatter = l0.Target
  l0 = self.box_AI_IOPController_172
  l0.IopID = "SwatTheSwatter"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.CharactersIOPSwatTheSwatter
  l0.IopRoleList = self.CharacterRolesIOPSwatTheSwatter
  l0.OffscreenDialogPoint = "9223372049656831290"
  l0 = self.box_ListWriter_95
  l1 = self.box_AI_IOPController_172
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1269160340", "1269160340", "IOP12_Main", "box_ListWriter_95.Added", "box_AI_IOPController_172.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_95_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_95
  self.CharactersIOPSwatTheSwatter = l0.Target
end
function export:f_box_ListWriter_95_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_95
  self.CharactersIOPSwatTheSwatter = l0.Target
end
function export:f_box_MissionLayer_v2_34_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_34
  l1 = self.box_MissionController_v4_185
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2061270609", "2061270609", "IOP12_Main", "box_MissionLayer_v2_34.Unloaded", "box_MissionController_v4_185.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Compare_Boolean_v2_152_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|298289048", "298289048", "IOP12_Main", "box_Compare_Boolean_v2_152.A_is_True", "box_OnceOnly_v3_16.In", clone, l0)
  l0:In(0)
end
function export:f_box_IOP_StartUp_188_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1319783609"
  l0.Out = self.f_box_Get_Player_ID_22_Out
  l0 = self.box_IOP_StartUp_188
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1303485237", "1303485237", "IOP12_Main", "box_IOP_StartUp_188.Out", "box_Get_Player_ID_22.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_58_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_158
  l0.User = self.TheSwatter
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1586129120", "1586129120", "IOP12_Main", "box_Ordered_Output_58.Out", "box_CLOController_158.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_58_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_103
  l0.User = self.Cop1E1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1769109853", "1769109853", "IOP12_Main", "box_Ordered_Output_58.Out", "box_CLOController_103.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_58_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_40
  l0.User = self.Cop2E1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|674671357", "674671357", "IOP12_Main", "box_Ordered_Output_58.Out", "box_CLOController_40.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_58_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_137
  l0.User = self.Swat1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|976380476", "976380476", "IOP12_Main", "box_Ordered_Output_58.Out", "box_CLOController_137.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_58_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_121
  l0.User = self.Swat2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|148291987", "148291987", "IOP12_Main", "box_Ordered_Output_58.Out", "box_CLOController_121.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_58_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_98
  l0.User = self.Swat3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|82008081", "82008081", "IOP12_Main", "box_Ordered_Output_58.Out", "box_CLOController_98.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_58_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049657004655"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1583893362"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1229335913", "1229335913", "IOP12_Main", "box_Ordered_Output_58.Out", "box_MoveableEntityController_235.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_Timer_v2_96_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_46
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.ECigHack"
  l0 = self.box_Timer_v2_96
  l1 = self.box_AI_IOPController_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|249122877", "249122877", "IOP12_Main", "box_Timer_v2_96.TimeElapsed", "box_AI_IOPController_46.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_SetFloat_v2_84_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:f_box_HackableController_v2_197_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_23()
  l0 = self.box_HackableController_v2_197
  l1 = self.box_Multiple_AND_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|731874322", "731874322", "IOP12_Main", "box_HackableController_v2_197.ProfilingDisabled", "box_Multiple_AND_23.Condition", l0, l1)
  l1:Condition(5)
end
function export:f_box_ListWriterSoundID_78_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_78
  self.PoliceDialogueLines = l0.Target
end
function export:f_box_ListWriterSoundID_78_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_78
  self.PoliceDialogueLines = l0.Target
  l0 = self.box_PlaySound_v2_70
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/1534642678.bnk"
  l0 = self.box_ListWriterSoundID_78
  l1 = self.box_PlaySound_v2_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|776339189", "776339189", "IOP12_Main", "box_ListWriterSoundID_78.Out", "box_PlaySound_v2_70.Play", l0, l1)
  l1:Play()
end
function export:f_box_ListWriterSoundID_78_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_78
  self.PoliceDialogueLines = l0.Target
end
function export:f_box_VisibilityController_v2_301_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  l0.StimEmitter = "9223372053995174727"
  l0._graph = self
  l0._name = "box_Stim_Emitter_Controller_285"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|103368496"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1135658985", "1135658985", "IOP12_Main", "box_VisibilityController_v2_301.Out", "box_Stim_Emitter_Controller_285.SetEnabled", clone, l0)
  l0:SetEnabled()
end
function export:f_box_IOPMonitor_102_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_278"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|817132308"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_278_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_278_Out_1
  l0 = self.box_IOPMonitor_102
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1055474353", "1055474353", "IOP12_Main", "box_IOPMonitor_102.EventOccurred", "box_Ordered_Output_278.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_238_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_238
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
  l0._name = "box_SetVehicleLightAndSiren_v2_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|345465107"
  l0.Out = DummyFunction
  l0 = self.box_CLOController_238
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1051773703", "1051773703", "IOP12_Main", "box_CLOController_238.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_240.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Compare_Boolean_v2_167_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_99
  l0.HackableEntity = "9223372049656831279"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1214594723", "1214594723", "IOP12_Main", "box_Compare_Boolean_v2_167.A_is_False", "box_HackableController_v2_99.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_MultipleOR_284_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_269
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_MultipleOR_284
  l1 = self.box_IOPMonitor_269
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1449338079", "1449338079", "IOP12_Main", "box_MultipleOR_284.Out", "box_IOPMonitor_269.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Monitor_140_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_211
  l0.Seconds = 0.6
  l0 = self.box_Hackable_Monitor_140
  l1 = self.box_Timer_v2_211
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|551614681", "551614681", "IOP12_Main", "box_Hackable_Monitor_140.HackSuccess", "box_Timer_v2_211.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetInteger_v2_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.NumberOfHacks = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 95
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|782963598"
  l0.Out = self.f_box_SetFloat_v2_122_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1233689794", "1233689794", "IOP12_Main", "box_SetInteger_v2_8.Out", "box_SetFloat_v2_122.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Compare_Integers_v2_276_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 15
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2032856610"
  l0.Out = self.f_box_SetFloat_v2_11_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|750152944", "750152944", "IOP12_Main", "box_Compare_Integers_v2_276.A_ge_B", "box_SetFloat_v2_11.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Compare_Integers_v2_276_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 30
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_275"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1711726332"
  l0.Out = self.f_box_SetFloat_v2_275_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|215673331", "215673331", "IOP12_Main", "box_Compare_Integers_v2_276.A_lt_B", "box_SetFloat_v2_275.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_CLOController_183_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_183
  self.Swat1 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Swat1
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|665787903"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_171_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_183
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2057490229", "2057490229", "IOP12_Main", "box_CLOController_183.OnUserInPlace", "box_CollisionController_171.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_CLOController_33_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_33
  self.Cop2E1 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Cop2E1
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|23441355"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_154_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_33
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|385615487", "385615487", "IOP12_Main", "box_CLOController_33.OnUserInPlace", "box_CollisionController_154.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_Float_Arithmetics_173_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.TotalTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.TotalTime
  l0.B = 0
  l0.Tolerance = nil
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1190074009"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_box_Compare_Floats_v2_29_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|543070837", "543070837", "IOP12_Main", "box_Float_Arithmetics_173.Out", "box_Compare_Floats_v2_29.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_129_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_169
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/3204023784.bnk"
  l0.Supersede = 1
  l0 = self.box_HackableController_v2_129
  l1 = self.box_PlayDialog_v2_169
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|909327261", "909327261", "IOP12_Main", "box_HackableController_v2_129.Disabled", "box_PlayDialog_v2_169.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_129_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_129()
  l0 = self.box_HackableController_v2_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2097857332", "2097857332", "IOP12_Main", "box_HackableController_v2_129.ProfilingDisabled", "box_HackableController_v2_129.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_288_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_273
  l0.Seconds = 2.9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2016824834", "2016824834", "IOP12_Main", "box_Ordered_Output_288.Out", "box_Timer_v2_273.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_288_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_289
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1125309656", "1125309656", "IOP12_Main", "box_Ordered_Output_288.Out", "box_Timer_v2_289.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_261_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_262
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.ECigHack"
  l0 = self.box_Timer_v2_261
  l1 = self.box_AI_IOPController_262
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1176567911", "1176567911", "IOP12_Main", "box_Timer_v2_261.TimeElapsed", "box_AI_IOPController_262.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Integer_Arithmetics_150_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.NumberOfHacks = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Integer_Select_9
  l0.Integer = self.NumberOfHacks
  l0.Case[0] = 1
  l0.Case[1] = 2
  l0.Case[2] = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|823390916", "823390916", "IOP12_Main", "box_Integer_Arithmetics_150.Out", "box_Integer_Select_9.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_195_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_23()
  l0 = self.box_HackableController_v2_195
  l1 = self.box_Multiple_AND_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2041884748", "2041884748", "IOP12_Main", "box_HackableController_v2_195.ProfilingDisabled", "box_Multiple_AND_23.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_SetFloat_v2_73_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PhoneHasBeenHacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|994311975"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_118_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1999811536", "1999811536", "IOP12_Main", "box_SetFloat_v2_73.Out", "box_Compare_Boolean_v2_118.In", clone, l0)
  l0:In()
end
function export:f_box_VisibilityController_v2_291_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_232
  l0.HackableEntity = self.Cop1E1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|83777738", "83777738", "IOP12_Main", "box_VisibilityController_v2_291.Out", "box_HackableController_v2_232.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_PlayDialog_v2_52_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_284()
  l0 = self.box_PlayDialog_v2_52
  l1 = self.box_MultipleOR_284
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|250906113", "250906113", "IOP12_Main", "box_PlayDialog_v2_52.Out", "box_MultipleOR_284.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_159_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 100
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|434544846"
  l0.Out = self.f_box_SetFloat_v2_73_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1855085380", "1855085380", "IOP12_Main", "box_Ordered_Output_159.Out", "box_SetFloat_v2_73.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Ordered_Output_159_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_210
  l0.Seconds = 0.3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|341335003", "341335003", "IOP12_Main", "box_Ordered_Output_159.Out", "box_Timer_v2_210.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_89_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_157
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/753200157.bnk"
  l0.Supersede = 1
  l0 = self.box_PlayDialog_v2_89
  l1 = self.box_PlayDialog_v2_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|379287107", "379287107", "IOP12_Main", "box_PlayDialog_v2_89.Finished", "box_PlayDialog_v2_157.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_259_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_83
  l0.MonitoredEvent = "Swat.ReenableHacks"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_PlaySound_v2_259
  l1 = self.box_IOPMonitor_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1517547454", "1517547454", "IOP12_Main", "box_PlaySound_v2_259.Out", "box_IOPMonitor_83.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_184_Match_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_281
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/85634510.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0 = self.box_Integer_Select_184
  l1 = self.box_PlayDialog_v2_281
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|364503387", "364503387", "IOP12_Main", "box_Integer_Select_184.Match", "box_PlayDialog_v2_281.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_184_Match_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_283
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/85634510.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0 = self.box_Integer_Select_184
  l1 = self.box_PlayDialog_v2_283
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2089912702", "2089912702", "IOP12_Main", "box_Integer_Select_184.Match", "box_PlayDialog_v2_283.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_184_Match_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_282
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/3889398298.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0 = self.box_Integer_Select_184
  l1 = self.box_PlayDialog_v2_282
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2042125414", "2042125414", "IOP12_Main", "box_Integer_Select_184.Match", "box_PlayDialog_v2_282.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_184_None()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_101
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.TriggerEnding"
  l0 = self.box_Integer_Select_184
  l1 = self.box_AI_IOPController_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|203060734", "203060734", "IOP12_Main", "box_Integer_Select_184.None", "box_AI_IOPController_101.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Integer_Select_31_Match_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_175
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/2559148287.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0 = self.box_Integer_Select_31
  l1 = self.box_PlayDialog_v2_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1933353641", "1933353641", "IOP12_Main", "box_Integer_Select_31.Match", "box_PlayDialog_v2_175.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_31_Match_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_64
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/821624694.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0 = self.box_Integer_Select_31
  l1 = self.box_PlayDialog_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2049666490", "2049666490", "IOP12_Main", "box_Integer_Select_31.Match", "box_PlayDialog_v2_64.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_31_Match_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_176
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/605089334.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0 = self.box_Integer_Select_31
  l1 = self.box_PlayDialog_v2_176
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1966424537", "1966424537", "IOP12_Main", "box_Integer_Select_31.Match", "box_PlayDialog_v2_176.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOPMonitor_268_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_265
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/3357305020.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  l0 = self.box_IOPMonitor_268
  l1 = self.box_PlayDialog_v2_265
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|185982729", "185982729", "IOP12_Main", "box_IOPMonitor_268.EventOccurred", "box_PlayDialog_v2_265.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_281_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_135
  l0.SoundId = "soundbinary/857115984.bnk"
  l0 = self.box_PlayDialog_v2_281
  l1 = self.box_PlaySound_v2_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1804219250", "1804219250", "IOP12_Main", "box_PlayDialog_v2_281.Out", "box_PlaySound_v2_135.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_57_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_74
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/3820053461.bnk"
  l0 = self.box_PlaySound_v2_57
  l1 = self.box_PlaySound_v2_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|767519427", "767519427", "IOP12_Main", "box_PlaySound_v2_57.Out", "box_PlaySound_v2_74.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_27_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ObjectsHacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_270"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1042602095"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_270_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_270_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_IOPMonitor_27
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1831916909", "1831916909", "IOP12_Main", "box_IOPMonitor_27.EventOccurred", "box_Compare_Boolean_v2_270.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_205_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|881076709"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_153_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_153_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_153_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_153_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|497651302", "497651302", "IOP12_Main", "box_Ordered_Output_205.Out", "box_Ordered_Output_153.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_205_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|815158169"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_151_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_151_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_151_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_151_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_151_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_151_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_151_Out_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1525302061", "1525302061", "IOP12_Main", "box_Ordered_Output_205.Out", "box_Ordered_Output_151.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_245_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_242
  l0.HackableEntity = "9223372049656831279"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2054299303", "2054299303", "IOP12_Main", "box_Ordered_Output_245.Out", "box_HackableController_v2_242.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_245_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_206
  l0.HackableEntity = "9223372049656831277"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1899357030", "1899357030", "IOP12_Main", "box_Ordered_Output_245.Out", "box_HackableController_v2_206.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_245_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_243
  l0.HackableEntity = "9223372049656943480"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|630614549", "630614549", "IOP12_Main", "box_Ordered_Output_245.Out", "box_HackableController_v2_243.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_245_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_244
  l0.HackableEntity = "9223372049656831292"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1119621663", "1119621663", "IOP12_Main", "box_Ordered_Output_245.Out", "box_HackableController_v2_244.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_245_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_200
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052999071704"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1890416854", "1890416854", "IOP12_Main", "box_Ordered_Output_245.Out", "box_PhoneCommunicationController_200.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_180_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_63
  l0.CLO = "9223372051821513858"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1809102676", "1809102676", "IOP12_Main", "box_Ordered_Output_180.Out", "box_CLOController_63.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_180_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_168
  l0.CLO = "9223372051821513857"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1681420284", "1681420284", "IOP12_Main", "box_Ordered_Output_180.Out", "box_CLOController_168.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_180_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_236
  l0.CLO = "9223372052621832566"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|363561022", "363561022", "IOP12_Main", "box_Ordered_Output_180.Out", "box_CLOController_236.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_180_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_237
  l0.CLO = "9223372052621832565"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|932624531", "932624531", "IOP12_Main", "box_Ordered_Output_180.Out", "box_CLOController_237.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_180_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_238
  l0.CLO = "9223372052621832972"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1960275290", "1960275290", "IOP12_Main", "box_Ordered_Output_180.Out", "box_CLOController_238.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MoveableEntityController_131_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_59
  l0.CLO = "9223372051821513857"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1720042441", "1720042441", "IOP12_Main", "box_MoveableEntityController_131.Out", "box_CLOController_59.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_PlayDialog_v2_144_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_202()
  l0 = self.box_PlayDialog_v2_144
  l1 = self.box_MultipleOR_202
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1480525440", "1480525440", "IOP12_Main", "box_PlayDialog_v2_144.Out", "box_MultipleOR_202.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_PlaySound_v2_164_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_147
  l0.Seconds = 3.5
  l0 = self.box_PlaySound_v2_164
  l1 = self.box_Timer_v2_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1810396787", "1810396787", "IOP12_Main", "box_PlaySound_v2_164.Out", "box_Timer_v2_147.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_120_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PhoneHasBeenHacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1319196310"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_116_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|644608382", "644608382", "IOP12_Main", "box_Ordered_Output_120.Out", "box_Compare_Boolean_v2_116.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_120_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_96
  l0.Seconds = 0.6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1376046698", "1376046698", "IOP12_Main", "box_Ordered_Output_120.Out", "box_Timer_v2_96.Start", clone, l0)
  l0:Start()
end
function export:f_box_CollisionController_160_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_196
  l0.HackableEntity = self.Swat2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|169557705", "169557705", "IOP12_Main", "box_CollisionController_160.CollisionsDisabled", "box_HackableController_v2_196.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_PlayDialog_v2_79_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_268
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_PlayDialog_v2_79
  l1 = self.box_IOPMonitor_268
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1401568854", "1401568854", "IOP12_Main", "box_PlayDialog_v2_79.Out", "box_IOPMonitor_268.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VisibilityController_v2_94_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_274
  l0.Entity = "9223372049656831282"
  l0.SoundId = "soundbinary/2986429145.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|829857821", "829857821", "IOP12_Main", "box_VisibilityController_v2_94.Out", "box_PlaySound_v2_274.Play", clone, l0)
  l0:Play()
end
function export:f_box_AI_IOPController_172_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_88
  l0.Seconds = 0.5
  l0 = self.box_AI_IOPController_172
  l1 = self.box_Timer_v2_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|867563215", "867563215", "IOP12_Main", "box_AI_IOPController_172.StartCompleted", "box_Timer_v2_88.Start", l0, l1)
  l1:Start()
end
function export:f_box_AI_IOPController_50_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1575209395"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_225_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_225_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_225_Out_2
  l0 = self.box_AI_IOPController_50
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1660732102", "1660732102", "IOP12_Main", "box_AI_IOPController_50.SendEventCompleted", "box_Ordered_Output_225.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_10
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/3255868609.bnk"
  l0 = self.box_PlaySound_v2_17
  l1 = self.box_PlaySound_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1632979311", "1632979311", "IOP12_Main", "box_PlaySound_v2_17.Out", "box_PlaySound_v2_10.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_274_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_288"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|407984832"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_288_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_288_Out_1
  l0 = self.box_PlaySound_v2_274
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|891211702", "891211702", "IOP12_Main", "box_PlaySound_v2_274.Out", "box_Ordered_Output_288.In", l0, l1)
  l1:In()
end
function export:f_box_SetFloat_v2_311_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_212
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1389259218", "1389259218", "IOP12_Main", "box_SetFloat_v2_311.Out", "box_Timer_v2_212.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Integers_v2_208_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 5
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1569956360"
  l0.Out = self.f_box_SetFloat_v2_209_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|655242501", "655242501", "IOP12_Main", "box_Compare_Integers_v2_208.A_ge_B", "box_SetFloat_v2_209.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Compare_Integers_v2_208_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 20
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2123360921"
  l0.Out = self.f_box_SetFloat_v2_203_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|864845307", "864845307", "IOP12_Main", "box_Compare_Integers_v2_208.A_lt_B", "box_SetFloat_v2_203.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_CollisionController_47_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_193
  l0.HackableEntity = self.Cop1E1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|938700166", "938700166", "IOP12_Main", "box_CollisionController_47.CollisionsDisabled", "box_HackableController_v2_193.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_CollisionController_171_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_195
  l0.HackableEntity = self.Swat1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|958504928", "958504928", "IOP12_Main", "box_CollisionController_171.CollisionsDisabled", "box_HackableController_v2_195.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_MoveableEntityController_128_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|551634565"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_180_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_180_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_180_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_180_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_180_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|677413770", "677413770", "IOP12_Main", "box_MoveableEntityController_128.Out", "box_Ordered_Output_180.In", clone, l0)
  l0:In()
end
function export:f_box_PlayDialog_v2_157_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_260
  l0.Seconds = 2
  l0 = self.box_PlayDialog_v2_157
  l1 = self.box_Timer_v2_260
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1157134560", "1157134560", "IOP12_Main", "box_PlayDialog_v2_157.Started", "box_Timer_v2_260.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_98_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_39
  l0.CLO = "9223372049656831296"
  l0 = self.box_CLOController_98
  l1 = self.box_CLOController_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1691004265", "1691004265", "IOP12_Main", "box_CLOController_98.UnspawnedUser", "box_CLOController_39.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_PlaySound_v2_41_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_166
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/1357335131.bnk"
  l0 = self.box_PlaySound_v2_41
  l1 = self.box_PlaySound_v2_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|836671322", "836671322", "IOP12_Main", "box_PlaySound_v2_41.Out", "box_PlaySound_v2_166.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_91_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_140
  l0.HackableEntity = "9223372049656943480"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1371270368", "1371270368", "IOP12_Main", "box_Ordered_Output_91.Out", "box_Hackable_Monitor_140.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_91_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_81
  l0.HackableEntity = "9223372049656831279"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1332690519", "1332690519", "IOP12_Main", "box_Ordered_Output_91.Out", "box_Hackable_Monitor_81.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_91_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_100
  l0.HackableEntity = "9223372049656831277"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1137269579", "1137269579", "IOP12_Main", "box_Ordered_Output_91.Out", "box_Hackable_Monitor_100.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_IOPMonitor_124_DeactivateHackables()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|131848851"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_142_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_142_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_142_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_142_Out_3
  l0 = self.box_IOPMonitor_124
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1671651074", "1671651074", "IOP12_Main", "box_IOPMonitor_124.DeactivateHackables", "box_Ordered_Output_142.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_182_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2093760214"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_174_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_174_Out_1
  l0 = self.box_OnceOnly_v3_182
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|248537369", "248537369", "IOP12_Main", "box_OnceOnly_v3_182.Out", "box_Ordered_Output_174.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372045064814209"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|253894015"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = self.f_box_CollisionController_111_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|24889313", "24889313", "IOP12_Main", "box_VisibilityController_v2_28.Out", "box_CollisionController_111.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_IOPMonitor_177_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_279"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|50520554"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_279_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_279_Out_1
  l0 = self.box_IOPMonitor_177
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|144895531", "144895531", "IOP12_Main", "box_IOPMonitor_177.EventOccurred", "box_Ordered_Output_279.In", l0, l1)
  l1:In()
end
function export:f_box_LightController_90_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083798512"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|5654291"
  l0.Enabled = self.f_box_LightController_60_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|228263759", "228263759", "IOP12_Main", "box_LightController_90.Enabled", "box_LightController_60.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_295_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_246
  l0.HackableEntity = "9223372049656831292"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|6954059", "6954059", "IOP12_Main", "box_Ordered_Output_295.Out", "box_HackableController_v2_246.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_295_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_251
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.TeamSpeakEnded"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|653810942", "653810942", "IOP12_Main", "box_Ordered_Output_295.Out", "box_AI_IOPController_251.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Ordered_Output_295_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_179
  l0.AutoDisableOnIOPComplete = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1080274852", "1080274852", "IOP12_Main", "box_Ordered_Output_295.Out", "box_IOPMonitor_179.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_295_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_124
  l0.AutoDisableOnDeactivateHackables = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|888819661", "888819661", "IOP12_Main", "box_Ordered_Output_295.Out", "box_IOPMonitor_124.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_295_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_43()
  l0 = self.box_Timer_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1369677589", "1369677589", "IOP12_Main", "box_Ordered_Output_295.Out", "box_Timer_v2_43.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_74_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|170118772"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_146_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_PlaySound_v2_74
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1570764552", "1570764552", "IOP12_Main", "box_PlaySound_v2_74.Out", "box_Ordered_Output_146.In", l0, l1)
  l1:In()
end
function export:f_box_SetFloat_v2_122_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1060599011", "1060599011", "IOP12_Main", "box_SetFloat_v2_122.Out", "box_SetBoolean_v2_112.False", clone, l0)
  l0:False()
end
function export:f_box_VisibilityController_v2_224_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083799677"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_258"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1917266447"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = self.f_box_LightController_258_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1292630583", "1292630583", "IOP12_Main", "box_VisibilityController_v2_224.Out", "box_LightController_258.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_151_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_12
  l0.CLO = "9223372049656831280"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1304105318", "1304105318", "IOP12_Main", "box_Ordered_Output_151.Out", "box_CLOController_12.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_151_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_14
  l0.CLO = "9223372049656831293"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1831372077", "1831372077", "IOP12_Main", "box_Ordered_Output_151.Out", "box_CLOController_14.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_151_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_33
  l0.CLO = "9223372049656831294"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2026558560", "2026558560", "IOP12_Main", "box_Ordered_Output_151.Out", "box_CLOController_33.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_151_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_183
  l0.CLO = "9223372049656831295"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1318561194", "1318561194", "IOP12_Main", "box_Ordered_Output_151.Out", "box_CLOController_183.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_151_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_15
  l0.CLO = "9223372049656831297"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1902325762", "1902325762", "IOP12_Main", "box_Ordered_Output_151.Out", "box_CLOController_15.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_151_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_136
  l0.CLO = "9223372049656831296"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1431550147", "1431550147", "IOP12_Main", "box_Ordered_Output_151.Out", "box_CLOController_136.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_151_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1564144366"
  l0.Out = self.f_box_SetInteger_v2_156_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|614082432", "614082432", "IOP12_Main", "box_Ordered_Output_151.Out", "box_SetInteger_v2_156.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_IOPMonitor_179_IOPComplete()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|15400225"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_221_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_221_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_221_Out_2
  l0 = self.box_IOPMonitor_179
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|245928178", "245928178", "IOP12_Main", "box_IOPMonitor_179.IOPComplete", "box_Ordered_Output_221.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_278_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_280()
  l0 = self.box_MultipleOR_280
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1613689774", "1613689774", "IOP12_Main", "box_Ordered_Output_278.Out", "box_MultipleOR_280.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_278_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.NumberOfHacks
  l0.B = 3
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1106566164"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_190_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Integers_v2_190_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|815235619", "815235619", "IOP12_Main", "box_Ordered_Output_278.Out", "box_Compare_Integers_v2_190.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_87_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_115()
  l0 = self.box_HackableController_v2_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1298824431", "1298824431", "IOP12_Main", "box_Ordered_Output_87.Out", "box_HackableController_v2_115.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Ordered_Output_87_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372049656831284"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1138787739"
  l0.Started = self.f_box_ParticleFXController_v2_72_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|876816852", "876816852", "IOP12_Main", "box_Ordered_Output_87.Out", "box_ParticleFXController_v2_72.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_233_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_256
  l0.HackableEntity = self.Swat3
  l0 = self.box_HackableController_v2_233
  l1 = self.box_HackableController_v2_256
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1563471927", "1563471927", "IOP12_Main", "box_HackableController_v2_233.ProfilingEnabled", "box_HackableController_v2_256.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_CLOController_121_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_25
  l0.CLO = "9223372049656831297"
  l0 = self.box_CLOController_121
  l1 = self.box_CLOController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|310844144", "310844144", "IOP12_Main", "box_CLOController_121.UnspawnedUser", "box_CLOController_25.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_MissionLayer_v2_97_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_StartUp_188
  l0.MainLayer = "IOP12_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372059425049559"
  l0 = self.box_MissionLayer_v2_97
  l1 = self.box_IOP_StartUp_188
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1015238446", "1015238446", "IOP12_Main", "box_MissionLayer_v2_97.Loaded", "box_IOP_StartUp_188.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_153_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_109
  l0.HackableEntity = "9223372049656943480"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|907980134", "907980134", "IOP12_Main", "box_Ordered_Output_153.Out", "box_HackableController_v2_109.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_153_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_127
  l0.HackableEntity = "9223372049656831292"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|623182675", "623182675", "IOP12_Main", "box_Ordered_Output_153.Out", "box_HackableController_v2_127.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_153_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_24
  l0.HackableEntity = "9223372049656831279"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1423907403", "1423907403", "IOP12_Main", "box_Ordered_Output_153.Out", "box_HackableController_v2_24.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_153_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_44
  l0.HackableEntity = "9223372049656831277"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1389267764", "1389267764", "IOP12_Main", "box_Ordered_Output_153.Out", "box_HackableController_v2_44.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_IOP_CleanUp_1_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_290
  l0.Seconds = 3
  l0 = self.box_IOP_CleanUp_1
  l1 = self.box_Timer_v2_290
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|79215082", "79215082", "IOP12_Main", "box_IOP_CleanUp_1.Completed", "box_Timer_v2_290.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOP_CleanUp_1_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|280036287"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_58_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_58_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_58_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_58_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_58_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_58_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_58_Out_6
  l0 = self.box_IOP_CleanUp_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|20768520", "20768520", "IOP12_Main", "box_IOP_CleanUp_1.DisconnectedAnimationPlayed", "box_Ordered_Output_58.In", l0, l1)
  l1:In()
end
function export:f_box_MoveableEntityController_105_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_71
  l0.CLO = "9223372051821513857"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|515118357", "515118357", "IOP12_Main", "box_MoveableEntityController_105.Out", "box_CLOController_71.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_IOPMonitor_83_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052460166218"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|261636439"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_IOPMonitor_83
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|407398706", "407398706", "IOP12_Main", "box_IOPMonitor_83.EventOccurred", "box_VisibilityController_v2_138.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Timer_v2_211_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_211
  l1 = self.box_SetBoolean_v2_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1258324212", "1258324212", "IOP12_Main", "box_Timer_v2_211.TimeElapsed", "box_SetBoolean_v2_143.True", l0, l1)
  l1:True()
end
function export:f_box_Wait_Qualities_Loaded_214_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_37()
  l0 = self.box_Wait_Qualities_Loaded_214
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|495545408", "495545408", "IOP12_Main", "box_Wait_Qualities_Loaded_214.Loaded", "box_SecurityCamController_37.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_PlayDialog_v2_169_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_75
  l0.Seconds = 4
  l0 = self.box_PlayDialog_v2_169
  l1 = self.box_Timer_v2_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2050178714", "2050178714", "IOP12_Main", "box_PlayDialog_v2_169.Started", "box_Timer_v2_75.Start", l0, l1)
  l1:Start()
end
function export:f_box_VisibilityController_v2_80_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_259
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/4092521433.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1707944392", "1707944392", "IOP12_Main", "box_VisibilityController_v2_80.Out", "box_PlaySound_v2_259.Play", clone, l0)
  l0:Play()
end
function export:f_box_LightController_178_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049657004655"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|574998227"
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
  l0.Out = self.f_box_MoveableEntityController_131_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|582086956", "582086956", "IOP12_Main", "box_LightController_178.Enabled", "box_MoveableEntityController_131.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Timer_v2_228_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_134
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.TriggerEnding"
  l0 = self.box_Timer_v2_228
  l1 = self.box_AI_IOPController_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1889026471", "1889026471", "IOP12_Main", "box_Timer_v2_228.TimeElapsed", "box_AI_IOPController_134.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Ordered_Output_201_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083799677"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1542470892"
  l0.Enabled = self.f_box_LightController_141_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1787723866", "1787723866", "IOP12_Main", "box_Ordered_Output_201.Out", "box_LightController_141.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_201_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_228
  l0.Seconds = 20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1642566631", "1642566631", "IOP12_Main", "box_Ordered_Output_201.Out", "box_Timer_v2_228.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_191_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 40
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1079256784"
  l0.Out = self.f_box_SetFloat_v2_18_Out
  l0 = self.box_OnceOnly_v3_191
  l1 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1918473163", "1918473163", "IOP12_Main", "box_OnceOnly_v3_191.Out", "box_SetFloat_v2_18.FromFloat", l0, l1)
  l1:FromFloat()
end
function export:f_box_HackableController_v2_231_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_233
  l0.HackableEntity = self.Swat2
  l0 = self.box_HackableController_v2_231
  l1 = self.box_HackableController_v2_233
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1254923696", "1254923696", "IOP12_Main", "box_HackableController_v2_231.ProfilingEnabled", "box_HackableController_v2_233.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_VisibilityController_v2_292_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Cop1E1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_294"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|143095860"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_294_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|364764026", "364764026", "IOP12_Main", "box_VisibilityController_v2_292.Out", "box_VisibilityController_v2_294.Show", clone, l0)
  l0:Show()
end
function export:f_box_AI_IOPController_106_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_255
  l0.MonitoredEvent = "Swat.CopsEntered"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_AI_IOPController_106
  l1 = self.box_IOPMonitor_255
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|956848046", "956848046", "IOP12_Main", "box_AI_IOPController_106.SendEventCompleted", "box_IOPMonitor_255.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_15_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_15
  self.Swat2 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Swat2
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|598703629"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_160_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_15
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|242758423", "242758423", "IOP12_Main", "box_CLOController_15.OnUserInPlace", "box_CollisionController_160.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_Hackable_Monitor_81_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_81
  l1 = self.box_SetBoolean_v2_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1892059321", "1892059321", "IOP12_Main", "box_Hackable_Monitor_81.HackSuccess", "box_SetBoolean_v2_161.True", l0, l1)
  l1:True()
end
function export:f_box_AI_IOPController_262_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.NumberOfHacks
  l0.B = 3
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_208"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|658821592"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_208_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Integers_v2_208_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0 = self.box_AI_IOPController_262
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|133677033", "133677033", "IOP12_Main", "box_AI_IOPController_262.SendEventCompleted", "box_Compare_Integers_v2_208.In", l0, l1)
  l1:In()
end
function export:f_box_Integer_Select_5_Match_0()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_48
  l0.Seconds = 5
  l0 = self.box_Integer_Select_5
  l1 = self.box_Timer_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|943047529", "943047529", "IOP12_Main", "box_Integer_Select_5.Match", "box_Timer_v2_48.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_5_Match_1()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_145
  l0.Seconds = 5
  l0 = self.box_Integer_Select_5
  l1 = self.box_Timer_v2_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1881901437", "1881901437", "IOP12_Main", "box_Integer_Select_5.Match", "box_Timer_v2_145.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_5_Match_2()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_45
  l0.Seconds = 5
  l0 = self.box_Integer_Select_5
  l1 = self.box_Timer_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1908035556", "1908035556", "IOP12_Main", "box_Integer_Select_5.Match", "box_Timer_v2_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Boolean_v2_118_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_55
  l0.MonitoredEvent = "Swat.TriggerDispatchDialog"
  l0.AutoDisableOnEventOccurred = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|480254394", "480254394", "IOP12_Main", "box_Compare_Boolean_v2_118.A_is_True", "box_IOPMonitor_55.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlaySound_v2_219_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_CleanUp_1
  l0.SecurityCameraList = self.SecurityCameraList
  l0 = self.box_PlaySound_v2_219
  l1 = self.box_IOP_CleanUp_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|95043789", "95043789", "IOP12_Main", "box_PlaySound_v2_219.Out", "box_IOP_CleanUp_1.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_212_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_129()
  l0 = self.box_Timer_v2_212
  l1 = self.box_HackableController_v2_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|955987322", "955987322", "IOP12_Main", "box_Timer_v2_212.TimeElapsed", "box_HackableController_v2_129.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_AI_IOPController_46_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 100
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|282381155"
  l0.Out = self.f_box_SetFloat_v2_84_Out
  l0 = self.box_AI_IOPController_46
  l1 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|159908456", "159908456", "IOP12_Main", "box_AI_IOPController_46.Out", "box_SetFloat_v2_84.FromFloat", l0, l1)
  l1:FromFloat()
end
function export:f_box_OnceOnly_v3_16_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 100
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1531436647"
  l0.Out = self.f_box_SetFloat_v2_13_Out
  l0 = self.box_OnceOnly_v3_16
  l1 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1623530130", "1623530130", "IOP12_Main", "box_OnceOnly_v3_16.Out", "box_SetFloat_v2_13.FromFloat", l0, l1)
  l1:FromFloat()
end
function export:f_box_SetBoolean_v2_112_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_112
  self.ObjectsHacked = l0.Target
end
function export:f_box_SetBoolean_v2_112_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_112
  self.ObjectsHacked = l0.Target
end
function export:f_box_SetBoolean_v2_112_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_112
  self.ObjectsHacked = l0.Target
end
function export:f_box_SetBoolean_v2_112_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_112
  self.ObjectsHacked = l0.Target
end
function export:f_box_SetBoolean_v2_112_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_112
  self.ObjectsHacked = l0.Target
end
function export:f_box_Compare_Boolean_v2_270_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_52
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/3408592341.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1348942475", "1348942475", "IOP12_Main", "box_Compare_Boolean_v2_270.A_is_False", "box_PlayDialog_v2_52.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_270_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_272()
  l0 = self.box_MultipleOR_272
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1842924016", "1842924016", "IOP12_Main", "box_Compare_Boolean_v2_270.A_is_True", "box_MultipleOR_272.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_HackableController_v2_56_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_56()
  l0 = self.box_HackableController_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1567651976", "1567651976", "IOP12_Main", "box_HackableController_v2_56.ProfilingDisabled", "box_HackableController_v2_56.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_HackableController_v2_126_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|478206359"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_159_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_159_Out_1
  l0 = self.box_HackableController_v2_126
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1411598062", "1411598062", "IOP12_Main", "box_HackableController_v2_126.Disabled", "box_Ordered_Output_159.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_202_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_261
  l0.Seconds = 3
  l0 = self.box_MultipleOR_202
  l1 = self.box_Timer_v2_261
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1319283224", "1319283224", "IOP12_Main", "box_MultipleOR_202.Out", "box_Timer_v2_261.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_130
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/786578842.bnk"
  l0 = self.box_PlaySound_v2_10
  l1 = self.box_PlaySound_v2_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|223637048", "223637048", "IOP12_Main", "box_PlaySound_v2_10.Out", "box_PlaySound_v2_130.Play", l0, l1)
  l1:Play()
end
function export:f_box_SetFloat_v2_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:f_box_Timer_v2_287_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_286
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/1219010871.bnk"
  l0 = self.box_Timer_v2_287
  l1 = self.box_PlayDialogOnSoundPoint_286
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|903311779", "903311779", "IOP12_Main", "box_Timer_v2_287.TimeElapsed", "box_PlayDialogOnSoundPoint_286.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_293_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_250"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1104114281"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_250_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_250_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_250_Out_2
  l0.Out[3] = DummyFunction
  l0.Out[4] = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|416439304", "416439304", "IOP12_Main", "box_Ordered_Output_293.Out", "box_Ordered_Output_250.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_293_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_181
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|127827557", "127827557", "IOP12_Main", "box_Ordered_Output_293.Out", "box_SetBoolean_v2_181.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_293_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|706803247"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_91_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_91_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_91_Out_2
  l0.Out[3] = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|795957239", "795957239", "IOP12_Main", "box_Ordered_Output_293.Out", "box_Ordered_Output_91.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_250_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_249
  l0.HackableEntity = "9223372049656831279"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|916842527", "916842527", "IOP12_Main", "box_Ordered_Output_250.Out", "box_HackableController_v2_249.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_250_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_247
  l0.HackableEntity = "9223372049656831277"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1476701616", "1476701616", "IOP12_Main", "box_Ordered_Output_250.Out", "box_HackableController_v2_247.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_250_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_248
  l0.HackableEntity = "9223372049656943480"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1286362033", "1286362033", "IOP12_Main", "box_Ordered_Output_250.Out", "box_HackableController_v2_248.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Compare_Integers_v2_190_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_307
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1968900684", "1968900684", "IOP12_Main", "box_Compare_Integers_v2_190.A_ge_B", "box_OnceOnly_v3_307.In", clone, l0)
  l0:In(0)
end
function export:f_box_Compare_Integers_v2_190_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1001514998", "1001514998", "IOP12_Main", "box_Compare_Integers_v2_190.A_lt_B", "box_OnceOnly_v3_191.In", clone, l0)
  l0:In(0)
end
function export:f_box_HackableController_v2_36_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_36()
  l0 = self.box_HackableController_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|778043554", "778043554", "IOP12_Main", "box_HackableController_v2_36.ProfilingDisabled", "box_HackableController_v2_36.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_SetBoolean_v2_143_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_143
  self.ObjectsHacked = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|843010758"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_87_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_87_Out_1
  l0 = self.box_SetBoolean_v2_143
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1191027215", "1191027215", "IOP12_Main", "box_SetBoolean_v2_143.Out", "box_Ordered_Output_87.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_143_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_143
  self.ObjectsHacked = l0.Target
end
function export:f_box_SetBoolean_v2_143_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_143
  self.ObjectsHacked = l0.Target
end
function export:f_box_SetBoolean_v2_143_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_143
  self.ObjectsHacked = l0.Target
end
function export:f_box_SetBoolean_v2_143_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_143
  self.ObjectsHacked = l0.Target
end
function export:f_box_PhoneCommunicationController_200_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_295"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|777007835"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_295_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_295_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_295_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_295_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_295_Out_4
  l0 = self.box_PhoneCommunicationController_200
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|798888483", "798888483", "IOP12_Main", "box_PhoneCommunicationController_200.OnCommunicationFinished", "box_Ordered_Output_295.In", l0, l1)
  l1:In()
end
function export:f_box_ParticleFXController_v2_72_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372049656943480"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|613039535"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_94_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1844384967", "1844384967", "IOP12_Main", "box_ParticleFXController_v2_72.Started", "box_VisibilityController_v2_94.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Timer_v2_260_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1647839701"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0 = self.box_Timer_v2_260
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|483201058", "483201058", "IOP12_Main", "box_Timer_v2_260.TimeElapsed", "box_Ordered_Output_20.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_104_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_104
  self.PCHacked = l0.Target
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|377341967"
  l0.Out = self.f_box_SetInteger_v2_8_Out
  l0 = self.box_SetBoolean_v2_104
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1682047140", "1682047140", "IOP12_Main", "box_SetBoolean_v2_104.Out", "box_SetInteger_v2_8.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_SetBoolean_v2_104_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_104
  self.PCHacked = l0.Target
end
function export:f_box_SetBoolean_v2_104_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_104
  self.PCHacked = l0.Target
end
function export:f_box_SetBoolean_v2_104_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_104
  self.PCHacked = l0.Target
end
function export:f_box_SetBoolean_v2_104_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_104
  self.PCHacked = l0.Target
end
function export:f_box_Timer_v2_75_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_89
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/1931631566.bnk"
  l0.Supersede = 1
  l0 = self.box_Timer_v2_75
  l1 = self.box_PlayDialog_v2_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1125449928", "1125449928", "IOP12_Main", "box_Timer_v2_75.TimeElapsed", "box_PlayDialog_v2_89.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_132_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_132()
  l0 = self.box_HackableController_v2_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|971764811", "971764811", "IOP12_Main", "box_HackableController_v2_132.ProfilingDisabled", "box_HackableController_v2_132.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_187_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|649363707", "649363707", "IOP12_Main", "box_Ordered_Output_187.Out", "box_SetBoolean_v2_107.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_187_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_287
  l0.Seconds = 0.3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1678863709", "1678863709", "IOP12_Main", "box_Ordered_Output_187.Out", "box_Timer_v2_287.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_147_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372049656831284"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|124121806"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_147
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|438714427", "438714427", "IOP12_Main", "box_Timer_v2_147.TimeElapsed", "box_ParticleFXController_v2_162.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Compare_Floats_v2_29_A_le_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_182
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|322401412", "322401412", "IOP12_Main", "box_Compare_Floats_v2_29.A_le_B", "box_OnceOnly_v3_182.In", clone, l0)
  l0:In(0)
end
function export:f_box_IOPMonitor_269_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ObjectsHacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_271"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1879009829"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_271_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_271_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_IOPMonitor_269
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|606660372", "606660372", "IOP12_Main", "box_IOPMonitor_269.EventOccurred", "box_Compare_Boolean_v2_271.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_297_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_186
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_297
  l1 = self.box_CinematicPrep_186
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2099521425", "2099521425", "IOP12_Main", "box_Timer_v2_297.TimeElapsed", "box_CinematicPrep_186.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Timer_v2_290_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_41
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/879191256.bnk"
  l0 = self.box_Timer_v2_290
  l1 = self.box_PlaySound_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|508275962", "508275962", "IOP12_Main", "box_Timer_v2_290.TimeElapsed", "box_PlaySound_v2_41.Play", l0, l1)
  l1:Play()
end
function export:f_box_HackableController_v2_114_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_177
  l0.MonitoredEvent = "Swat.ReenableHacks"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_HackableController_v2_114
  l1 = self.box_IOPMonitor_177
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|41640752", "41640752", "IOP12_Main", "box_HackableController_v2_114.Disabled", "box_IOPMonitor_177.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_237_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_237
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
  l0._name = "box_SetVehicleLightAndSiren_v2_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2085399105"
  l0.Out = DummyFunction
  l0 = self.box_CLOController_237
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1800287417", "1800287417", "IOP12_Main", "box_CLOController_237.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_239.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Timer_v2_45_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_144
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/1339853095.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0 = self.box_Timer_v2_45
  l1 = self.box_PlayDialog_v2_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|383428782", "383428782", "IOP12_Main", "box_Timer_v2_45.TimeElapsed", "box_PlayDialog_v2_144.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_86_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1564278733"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_7_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_7_Out_3
  l0 = self.box_HackableController_v2_86
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1945737371", "1945737371", "IOP12_Main", "box_HackableController_v2_86.Disabled", "box_Ordered_Output_7.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_196_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_23()
  l0 = self.box_HackableController_v2_196
  l1 = self.box_Multiple_AND_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1668263090", "1668263090", "IOP12_Main", "box_HackableController_v2_196.ProfilingDisabled", "box_Multiple_AND_23.Condition", l0, l1)
  l1:Condition(4)
end
function export:f_box_Compare_Boolean_v2_116_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.NumberOfHacks
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1843825211"
  l0.Out = self.f_box_Integer_Arithmetics_53_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|787007861", "787007861", "IOP12_Main", "box_Compare_Boolean_v2_116.A_is_True", "box_Integer_Arithmetics_53.Add", clone, l0)
  l0:Add()
end
function export:f_box_Get_Player_ID_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_133
  l0.Input = self.SecurityCameraList
  l0.Data[0] = "9223372049656831307"
  l0.Data[1] = "9223372049656831309"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|859581615", "859581615", "IOP12_Main", "box_Get_Player_ID_22.Out", "box_ListWriter_133.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_277_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PCHacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|337634488"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_167_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|514605958", "514605958", "IOP12_Main", "box_Ordered_Output_277.Out", "box_Compare_Boolean_v2_167.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_277_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_26
  l0.HackableEntity = "9223372049656831277"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|563184236", "563184236", "IOP12_Main", "box_Ordered_Output_277.Out", "box_HackableController_v2_26.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_HackableController_v2_115_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|593446989"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_120_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_120_Out_1
  l0 = self.box_HackableController_v2_115
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1825045238", "1825045238", "IOP12_Main", "box_HackableController_v2_115.Disabled", "box_Ordered_Output_120.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_115_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_115()
  l0 = self.box_HackableController_v2_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|491344040", "491344040", "IOP12_Main", "box_HackableController_v2_115.ProfilingDisabled", "box_HackableController_v2_115.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_PlayDialog_v2_263_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_267
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_PlayDialog_v2_263
  l1 = self.box_IOPMonitor_267
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1289963169", "1289963169", "IOP12_Main", "box_PlayDialog_v2_263.Out", "box_IOPMonitor_267.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_133_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_133
  self.SecurityCameraList = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|527073287"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_205_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_205_Out_1
  l0 = self.box_ListWriter_133
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|334061583", "334061583", "IOP12_Main", "box_ListWriter_133.Added", "box_Ordered_Output_205.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_133_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_133
  self.SecurityCameraList = l0.Target
end
function export:f_box_ListWriter_133_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_133
  self.SecurityCameraList = l0.Target
end
function export:f_box_IOPMonitor_267_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_264
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/2666770453.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  l0 = self.box_IOPMonitor_267
  l1 = self.box_PlayDialog_v2_264
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|423811090", "423811090", "IOP12_Main", "box_IOPMonitor_267.EventOccurred", "box_PlayDialog_v2_264.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_265_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_266
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_PlayDialog_v2_265
  l1 = self.box_IOPMonitor_266
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|880014571", "880014571", "IOP12_Main", "box_PlayDialog_v2_265.Out", "box_IOPMonitor_266.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_136_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_136
  self.Swat3 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Swat3
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1622584701"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_62_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_136
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|607770602", "607770602", "IOP12_Main", "box_CLOController_136.OnUserInPlace", "box_CollisionController_62.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_CLOController_71_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_71
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
  l0._name = "box_SetVehicleLightAndSiren_v2_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|72360769"
  l0.Out = DummyFunction
  l0 = self.box_CLOController_71
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1209272942", "1209272942", "IOP12_Main", "box_CLOController_71.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_216.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Timer_v2_289_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372054587396765"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_301"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|292372484"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_301_Out
  l0 = self.box_Timer_v2_289
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1850517702", "1850517702", "IOP12_Main", "box_Timer_v2_289.TimeElapsed", "box_VisibilityController_v2_301.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_HackableController_v2_6_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_102
  l0.MonitoredEvent = "Swat.ReenableHacks"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_HackableController_v2_6
  l1 = self.box_IOPMonitor_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|527522682", "527522682", "IOP12_Main", "box_HackableController_v2_6.Disabled", "box_IOPMonitor_102.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_168_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_168
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
  l0._name = "box_SetVehicleLightAndSiren_v2_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|209600406"
  l0.Out = DummyFunction
  l0 = self.box_CLOController_168
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|855147995", "855147995", "IOP12_Main", "box_CLOController_168.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_217.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_LightController_155_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049657004655"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|670320981"
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
  l0.Out = self.f_box_MoveableEntityController_128_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|223574557", "223574557", "IOP12_Main", "box_LightController_155.Enabled", "box_MoveableEntityController_128.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_HackableController_v2_194_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_23()
  l0 = self.box_HackableController_v2_194
  l1 = self.box_Multiple_AND_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1691126434", "1691126434", "IOP12_Main", "box_HackableController_v2_194.ProfilingDisabled", "box_Multiple_AND_23.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_Ordered_Output_93_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083799677"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1515413158"
  l0.Enabled = self.f_box_LightController_67_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|920011797", "920011797", "IOP12_Main", "box_Ordered_Output_93.Out", "box_LightController_67.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_93_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_139
  l0.Seconds = 21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|693287232", "693287232", "IOP12_Main", "box_Ordered_Output_93.Out", "box_Timer_v2_139.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052460166218"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1774118550"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|368577786", "368577786", "IOP12_Main", "box_Ordered_Output_2.Out", "box_VisibilityController_v2_123.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052460166222"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|744650800"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_28_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1195886548", "1195886548", "IOP12_Main", "box_Ordered_Output_2.Out", "box_VisibilityController_v2_28.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_2_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372052106274775"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1403193992"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1021518823", "1021518823", "IOP12_Main", "box_Ordered_Output_2.Out", "box_Media_System_Custom_Broadcast_Controller_3.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_Ordered_Output_2_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriterSoundID_78
  l0.Input = self.PoliceDialogueLines
  l0.SoundID[0] = "soundbinary/3436825355.bnk"
  l0.SoundID[1] = "soundbinary/3264659934.bnk"
  l0.SoundID[2] = "soundbinary/3408592341.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1598522293", "1598522293", "IOP12_Main", "box_Ordered_Output_2.Out", "box_ListWriterSoundID_78.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_2_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052621829788"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|805215993"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_224_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1493560221", "1493560221", "IOP12_Main", "box_Ordered_Output_2.Out", "box_VisibilityController_v2_224.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_HackableController_v2_246_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_113
  l0.HackableEntity = "9223372049656831292"
  l0.AutoDisable = 1
  l0 = self.box_HackableController_v2_246
  l1 = self.box_Hackable_Monitor_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1425397123", "1425397123", "IOP12_Main", "box_HackableController_v2_246.Enabled", "box_Hackable_Monitor_113.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_272_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_79
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/2099014057.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  l0 = self.box_MultipleOR_272
  l1 = self.box_PlayDialog_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|629514631", "629514631", "IOP12_Main", "box_MultipleOR_272.Out", "box_PlayDialog_v2_79.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOPMonitor_266_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_263
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/3278799333.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  l0 = self.box_IOPMonitor_266
  l1 = self.box_PlayDialog_v2_263
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1769769474", "1769769474", "IOP12_Main", "box_IOPMonitor_266.EventOccurred", "box_PlayDialog_v2_263.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_158_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_51
  l0.CLO = "9223372049656831280"
  l0 = self.box_CLOController_158
  l1 = self.box_CLOController_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|55892346", "55892346", "IOP12_Main", "box_CLOController_158.UnspawnedUser", "box_CLOController_51.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_LightController_67_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083798512"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1446431168"
  l0.Enabled = self.f_box_LightController_155_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|309679077", "309679077", "IOP12_Main", "box_LightController_67.Enabled", "box_LightController_155.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetFloat_v2_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.NumberOfHacks
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1867415685"
  l0.Out = self.f_box_Integer_Arithmetics_42_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1406884122", "1406884122", "IOP12_Main", "box_SetFloat_v2_13.Out", "box_Integer_Arithmetics_42.Add", clone, l0)
  l0:Add()
end
function export:f_box_PlayDialog_v2_165_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_21
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_PlayDialog_v2_165
  l1 = self.box_IOPMonitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|493127261", "493127261", "IOP12_Main", "box_PlayDialog_v2_165.Out", "box_IOPMonitor_21.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_IOPMonitor_254_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Cop1E1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_291"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|436207882"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_291_Out
  l0 = self.box_IOPMonitor_254
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1142917413", "1142917413", "IOP12_Main", "box_IOPMonitor_254.EventOccurred", "box_VisibilityController_v2_291.Show", l0, l1)
  l1:Show()
end
function export:f_box_Timer_v2_139_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_50
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.TriggerEnding"
  l0 = self.box_Timer_v2_139
  l1 = self.box_AI_IOPController_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|372179138", "372179138", "IOP12_Main", "box_Timer_v2_139.TimeElapsed", "box_AI_IOPController_50.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_LightController_141_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083798512"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|948456535"
  l0.Enabled = self.f_box_LightController_178_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|134344532", "134344532", "IOP12_Main", "box_LightController_141.Enabled", "box_LightController_178.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_48_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_125
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/2875306816.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0 = self.box_Timer_v2_48
  l1 = self.box_PlayDialog_v2_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1792407943", "1792407943", "IOP12_Main", "box_Timer_v2_48.TimeElapsed", "box_PlayDialog_v2_125.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetInteger_v2_156_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.Escalation = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1983889525", "1983889525", "IOP12_Main", "box_SetInteger_v2_156.Out", "box_SetBoolean_v2_148.False", clone, l0)
  l0:False()
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_6
  l0.HackableEntity = "9223372049656831279"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1728034083", "1728034083", "IOP12_Main", "box_Ordered_Output_7.Out", "box_HackableController_v2_6.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PhoneHasBeenHacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|263522291"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_152_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|189045158", "189045158", "IOP12_Main", "box_Ordered_Output_7.Out", "box_Compare_Boolean_v2_152.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_7_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_213
  l0.Seconds = 0.3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1382049001", "1382049001", "IOP12_Main", "box_Ordered_Output_7.Out", "box_Timer_v2_213.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_7_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_76
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|9023875", "9023875", "IOP12_Main", "box_Ordered_Output_7.Out", "box_Timer_v2_76.Start", clone, l0)
  l0:Start()
end
function export:f_box_SetFloat_v2_209_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:f_box_Ordered_Output_225_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372052621829459"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1818395664"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1036565750", "1036565750", "IOP12_Main", "box_Ordered_Output_225.Out", "box_LightController_220.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_225_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052621829788"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1884295847"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|592860692", "592860692", "IOP12_Main", "box_Ordered_Output_225.Out", "box_VisibilityController_v2_226.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_225_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_253
  l0.MonitoredEvent = "Swat.CopsEntered"
  l0.AutoDisableOnEventOccurred = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1453469820", "1453469820", "IOP12_Main", "box_Ordered_Output_225.Out", "box_IOPMonitor_253.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_IOPMonitor_55_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.NumberOfHacks
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|413253883"
  l0.Out = self.f_box_Integer_Arithmetics_150_Out
  l0 = self.box_IOPMonitor_55
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2004167012", "2004167012", "IOP12_Main", "box_IOPMonitor_55.EventOccurred", "box_Integer_Arithmetics_150.Add", l0, l1)
  l1:Add()
end
function export:f_box_AI_IOPController_134_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_254
  l0.MonitoredEvent = "Swat.CopsEntered"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_AI_IOPController_134
  l1 = self.box_IOPMonitor_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1789394703", "1789394703", "IOP12_Main", "box_AI_IOPController_134.SendEventCompleted", "box_IOPMonitor_254.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CollisionController_62_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_197
  l0.HackableEntity = self.Swat3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|46546859", "46546859", "IOP12_Main", "box_CollisionController_62.CollisionsDisabled", "box_HackableController_v2_197.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_CLOController_14_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  self.Cop1E1 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Cop1E1
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|665031348"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_47_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_14
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1269830262", "1269830262", "IOP12_Main", "box_CLOController_14.OnUserInPlace", "box_CollisionController_47.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_198
  l0.MonitoredEvent = "Swat.IdleDispactDialog"
  l0.AutoDisableOnEventOccurred = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|553042794", "553042794", "IOP12_Main", "box_Ordered_Output_20.Out", "box_IOPMonitor_198.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_252
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.PhoneHack"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|836177243", "836177243", "IOP12_Main", "box_Ordered_Output_20.Out", "box_AI_IOPController_252.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Timer_v2_213_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_77
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.ModemHack"
  l0 = self.box_Timer_v2_213
  l1 = self.box_AI_IOPController_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|667190284", "667190284", "IOP12_Main", "box_Timer_v2_213.TimeElapsed", "box_AI_IOPController_77.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_IOPMonitor_255_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Cop2E1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_292"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|971409505"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_292_Out
  l0 = self.box_IOPMonitor_255
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|361856530", "361856530", "IOP12_Main", "box_IOPMonitor_255.EventOccurred", "box_VisibilityController_v2_292.Show", l0, l1)
  l1:Show()
end
function export:f_box_PlaySound_v2_170_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1946315050"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_234_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_234_Out_1
  l0 = self.box_PlaySound_v2_170
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1664073684", "1664073684", "IOP12_Main", "box_PlaySound_v2_170.Out", "box_Ordered_Output_234.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_145_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_65
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/389062708.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0 = self.box_Timer_v2_145
  l1 = self.box_PlayDialog_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|368455926", "368455926", "IOP12_Main", "box_Timer_v2_145.TimeElapsed", "box_PlayDialog_v2_65.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetFloat_v2_275_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:f_box_SetBoolean_v2_107_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.ObjectsHacked = l0.Target
  l0 = self.box_HackableController_v2_86
  l0.HackableEntity = "9223372049656831277"
  l0 = self.box_SetBoolean_v2_107
  l1 = self.box_HackableController_v2_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1733430864", "1733430864", "IOP12_Main", "box_SetBoolean_v2_107.Out", "box_HackableController_v2_86.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_SetBoolean_v2_107_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.ObjectsHacked = l0.Target
end
function export:f_box_SetBoolean_v2_107_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.ObjectsHacked = l0.Target
end
function export:f_box_SetBoolean_v2_107_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.ObjectsHacked = l0.Target
end
function export:f_box_SetBoolean_v2_107_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.ObjectsHacked = l0.Target
end
function export:f_box_Security_Camera_Monitor_296_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_297
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_296
  l1 = self.box_Timer_v2_297
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|869408368", "869408368", "IOP12_Main", "box_Security_Camera_Monitor_296.Disabled", "box_Timer_v2_297.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_296_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_296()
  l0 = self.box_Security_Camera_Monitor_296
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|346272105", "346272105", "IOP12_Main", "box_Security_Camera_Monitor_296.OnEndAccessCamera", "box_Security_Camera_Monitor_296.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PlayDialogOnSoundPoint_82_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1188007352"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_187_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_187_Out_1
  l0 = self.box_PlayDialogOnSoundPoint_82
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|9069113", "9069113", "IOP12_Main", "box_PlayDialogOnSoundPoint_82.Out", "box_Ordered_Output_187.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_88_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Wait_Qualities_Loaded_214
  l0.LoadingScreen = 0
  l0 = self.box_Timer_v2_88
  l1 = self.box_Wait_Qualities_Loaded_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1854353512", "1854353512", "IOP12_Main", "box_Timer_v2_88.TimeElapsed", "box_Wait_Qualities_Loaded_214.In", l0, l1)
  l1:In()
end
function export:f_box_SecurityCamController_37_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_37()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1984064502", "1984064502", "IOP12_Main", "box_SecurityCamController_37.CanExitSet", "box_SecurityCamController_37.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_SecurityCamController_37_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2006094786"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_108_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_108_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|154278747", "154278747", "IOP12_Main", "box_SecurityCamController_37.EnterForced", "box_Ordered_Output_108.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_40_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_119
  l0.CLO = "9223372049656831294"
  l0 = self.box_CLOController_40
  l1 = self.box_CLOController_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|723637934", "723637934", "IOP12_Main", "box_CLOController_40.UnspawnedUser", "box_CLOController_119.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Timer_v2_199_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_106
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.TriggerEnding"
  l0 = self.box_Timer_v2_199
  l1 = self.box_AI_IOPController_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|436454258", "436454258", "IOP12_Main", "box_Timer_v2_199.TimeElapsed", "box_AI_IOPController_106.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_CLOController_59_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_59
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
  l0._name = "box_SetVehicleLightAndSiren_v2_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|230588472"
  l0.Out = DummyFunction
  l0 = self.box_CLOController_59
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1187793254", "1187793254", "IOP12_Main", "box_CLOController_59.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_215.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_CLOController_236_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_236
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
  l0._name = "box_SetVehicleLightAndSiren_v2_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2031573679"
  l0.Out = DummyFunction
  l0 = self.box_CLOController_236
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1235870698", "1235870698", "IOP12_Main", "box_CLOController_236.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_241.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_CLOController_137_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_32
  l0.CLO = "9223372049656831295"
  l0 = self.box_CLOController_137
  l1 = self.box_CLOController_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|544626762", "544626762", "IOP12_Main", "box_CLOController_137.UnspawnedUser", "box_CLOController_32.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Integer_Arithmetics_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.NumberOfHacks = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Integer_Select_5
  l0.Integer = self.NumberOfHacks
  l0.Case[0] = 1
  l0.Case[1] = 2
  l0.Case[2] = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1069038546", "1069038546", "IOP12_Main", "box_Integer_Arithmetics_53.Out", "box_Integer_Select_5.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_76_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052460166222"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|849402880"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_76
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|757220751", "757220751", "IOP12_Main", "box_Timer_v2_76.TimeElapsed", "box_VisibilityController_v2_35.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Timer_v2_210_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_66
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.ScreamPrank"
  l0 = self.box_Timer_v2_210
  l1 = self.box_AI_IOPController_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|648432801", "648432801", "IOP12_Main", "box_Timer_v2_210.TimeElapsed", "box_AI_IOPController_66.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_PlaySound_v2_135_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|949411792"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_201_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_201_Out_1
  l0 = self.box_PlaySound_v2_135
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1122811568", "1122811568", "IOP12_Main", "box_PlaySound_v2_135.Out", "box_Ordered_Output_201.In", l0, l1)
  l1:In()
end
function export:f_box_Integer_Arithmetics_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.NumberOfHacks = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_4
  l0.MonitoredEvent = "Swat.TriggerDispatchDialog"
  l0.AutoDisableOnEventOccurred = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|413629775", "413629775", "IOP12_Main", "box_Integer_Arithmetics_42.Out", "box_IOPMonitor_4.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Integer_Select_9_Match_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_30
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/1116370542.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0 = self.box_Integer_Select_9
  l1 = self.box_PlayDialog_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|417764820", "417764820", "IOP12_Main", "box_Integer_Select_9.Match", "box_PlayDialog_v2_30.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_9_Match_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_38
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/665110581.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0 = self.box_Integer_Select_9
  l1 = self.box_PlayDialog_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|275946160", "275946160", "IOP12_Main", "box_Integer_Select_9.Match", "box_PlayDialog_v2_38.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_9_Match_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_85
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/2345918963.bnk"
  l0.DialogPriority = "SafetyReflex"
  l0.Supersede = 1
  l0 = self.box_Integer_Select_9
  l1 = self.box_PlayDialog_v2_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|971381321", "971381321", "IOP12_Main", "box_Integer_Select_9.Match", "box_PlayDialog_v2_85.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_43_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.TotalTime
  l0.B = 1
  l0._graph = self
  l0._name = "box_Float_Arithmetics_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|392200751"
  l0.Out = self.f_box_Float_Arithmetics_173_Out
  l0 = self.box_Timer_v2_43
  l1 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1396614569", "1396614569", "IOP12_Main", "box_Timer_v2_43.TimeElapsed", "box_Float_Arithmetics_173.Sub", l0, l1)
  l1:Sub()
end
function export:f_box_Compare_Boolean_v2_271_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_284()
  l0 = self.box_MultipleOR_284
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1786797918", "1786797918", "IOP12_Main", "box_Compare_Boolean_v2_271.A_is_False", "box_MultipleOR_284.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_271_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_272()
  l0 = self.box_MultipleOR_272
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1833302105", "1833302105", "IOP12_Main", "box_Compare_Boolean_v2_271.A_is_True", "box_MultipleOR_272.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_LightController_258_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083798512"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_257"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2028315751"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = self.f_box_LightController_257_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2121735218", "2121735218", "IOP12_Main", "box_LightController_258.Out", "box_LightController_257.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_SetBoolean_v2_181_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_181
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_box_SetBoolean_v2_181_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_181
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_box_SetBoolean_v2_181_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_181
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_box_SetBoolean_v2_181_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_181
  self.PhoneHasBeenHacked = l0.Target
  l0 = self.box_AI_IOPController_69
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.PhoneHack"
  l0 = self.box_SetBoolean_v2_181
  l1 = self.box_AI_IOPController_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1980581871", "1980581871", "IOP12_Main", "box_SetBoolean_v2_181.SetTrue", "box_AI_IOPController_69.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_SetBoolean_v2_181_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_181
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_box_PlaySound_v2_70_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_17
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/759520948.bnk"
  l0 = self.box_PlaySound_v2_70
  l1 = self.box_PlaySound_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1104849234", "1104849234", "IOP12_Main", "box_PlaySound_v2_70.Out", "box_PlaySound_v2_17.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_204_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Integer_Select_184
  l0.Integer = self.NumberOfHacks
  l0.Case[0] = 1
  l0.Case[1] = 2
  l0.Case[2] = 3
  l0 = self.box_PlaySound_v2_204
  l1 = self.box_Integer_Select_184
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1518509435", "1518509435", "IOP12_Main", "box_PlaySound_v2_204.Out", "box_Integer_Select_184.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_95
  l0.Input = self.CharactersIOPSwatTheSwatter
  l0.Data[0] = self.TheSwatter
  l0.Data[1] = self.Cop1E1
  l0.Data[2] = self.Cop2E1
  l0.Data[3] = self.Swat1
  l0.Data[4] = self.Swat2
  l0.Data[5] = self.Swat3
  l0 = self.box_Multiple_AND_23
  l1 = self.box_ListWriter_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|592989749", "592989749", "IOP12_Main", "box_Multiple_AND_23.Out", "box_ListWriter_95.Add", l0, l1)
  l1:Add()
end
function export:f_box_Ordered_Output_234_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372050083799677"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|772231656"
  l0.Enabled = self.f_box_LightController_90_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|637143477", "637143477", "IOP12_Main", "box_Ordered_Output_234.Out", "box_LightController_90.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_234_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_199
  l0.Seconds = 20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|599826116", "599826116", "IOP12_Main", "box_Ordered_Output_234.Out", "box_Timer_v2_199.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_230_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_229
  l0.HackableEntity = self.Cop1E1
  l0 = self.box_HackableController_v2_230
  l1 = self.box_HackableController_v2_229
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1198325063", "1198325063", "IOP12_Main", "box_HackableController_v2_230.ProfilingEnabled", "box_HackableController_v2_229.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_SetFloat_v2_207_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:f_box_PlaySound_v2_68_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1458655442"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_93_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_93_Out_1
  l0 = self.box_PlaySound_v2_68
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1728149280", "1728149280", "IOP12_Main", "box_PlaySound_v2_68.Out", "box_Ordered_Output_93.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_282_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_68
  l0.SoundId = "soundbinary/722522482.bnk"
  l0 = self.box_PlayDialog_v2_282
  l1 = self.box_PlaySound_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2019794362", "2019794362", "IOP12_Main", "box_PlayDialog_v2_282.Out", "box_PlaySound_v2_68.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_108_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_296()
  l0 = self.box_Security_Camera_Monitor_296
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|832371723", "832371723", "IOP12_Main", "box_Ordered_Output_108.Out", "box_Security_Camera_Monitor_296.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_108_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|539062318"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_245_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_245_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_245_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_245_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_245_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|219742423", "219742423", "IOP12_Main", "box_Ordered_Output_108.Out", "box_Ordered_Output_245.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_117_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_126
  l0.HackableEntity = "9223372049656831279"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1612995779", "1612995779", "IOP12_Main", "box_Ordered_Output_117.Out", "box_HackableController_v2_126.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_117_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372052460166218"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|940285786"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_80_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1368996561", "1368996561", "IOP12_Main", "box_Ordered_Output_117.Out", "box_VisibilityController_v2_80.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_117_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_114
  l0.HackableEntity = "9223372049656831277"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|911260675", "911260675", "IOP12_Main", "box_Ordered_Output_117.Out", "box_HackableController_v2_114.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_SetBoolean_v2_161_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_161
  self.ObjectsHacked = l0.Target
  l1 = self.box_SetBoolean_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1705445171", "1705445171", "IOP12_Main", "box_SetBoolean_v2_161.Out", "box_SetBoolean_v2_19.True", l0, l1)
  l1:True()
end
function export:f_box_SetBoolean_v2_161_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_161
  self.ObjectsHacked = l0.Target
end
function export:f_box_SetBoolean_v2_161_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_161
  self.ObjectsHacked = l0.Target
end
function export:f_box_SetBoolean_v2_161_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_161
  self.ObjectsHacked = l0.Target
end
function export:f_box_SetBoolean_v2_161_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_161
  self.ObjectsHacked = l0.Target
end
function export:f_box_PlayDialog_v2_283_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_170
  l0.SoundId = "soundbinary/424281780.bnk"
  l0 = self.box_PlayDialog_v2_283
  l1 = self.box_PlaySound_v2_170
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1906606697", "1906606697", "IOP12_Main", "box_PlayDialog_v2_283.Out", "box_PlaySound_v2_170.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_4_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_Integer_Select_31
  l0.Integer = self.NumberOfHacks
  l0.Case[0] = 1
  l0.Case[1] = 2
  l0.Case[2] = 3
  l0 = self.box_IOPMonitor_4
  l1 = self.box_Integer_Select_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1085688274", "1085688274", "IOP12_Main", "box_IOPMonitor_4.EventOccurred", "box_Integer_Select_31.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_192_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_34
  l0.LayerName = "IOP12_Main"
  l0 = self.box_PhoneCommunicationController_192
  l1 = self.box_MissionLayer_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|331093756", "331093756", "IOP12_Main", "box_PhoneCommunicationController_192.OnCommunicationFinished", "box_MissionLayer_v2_34.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_LightController_257_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372054587396765"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_302"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1597884347"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1268793933", "1268793933", "IOP12_Main", "box_LightController_257.Out", "box_VisibilityController_v2_302.Show", clone, l0)
  l0:Show()
end
function export:f_box_SetFloat_v2_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:f_box_CollisionController_61_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_23()
  l0 = self.box_Multiple_AND_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|50417277", "50417277", "IOP12_Main", "box_CollisionController_61.CollisionsDisabled", "box_Multiple_AND_23.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_MultipleOR_280_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_277"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1350010536"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_277_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_277_Out_1
  l0 = self.box_MultipleOR_280
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|557114231", "557114231", "IOP12_Main", "box_MultipleOR_280.Out", "box_Ordered_Output_277.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_125_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_202()
  l0 = self.box_PlayDialog_v2_125
  l1 = self.box_MultipleOR_202
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1257848596", "1257848596", "IOP12_Main", "box_PlayDialog_v2_125.Out", "box_MultipleOR_202.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_148_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_148
  self.PhoneHasBeenHacked = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1458983278"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_2_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_2_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_2_Out_4
  l0 = self.box_SetBoolean_v2_148
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1941073511", "1941073511", "IOP12_Main", "box_SetBoolean_v2_148.Out", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_148_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_148
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_box_SetBoolean_v2_148_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_148
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_box_SetBoolean_v2_148_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_148
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_box_SetBoolean_v2_148_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_148
  self.PhoneHasBeenHacked = l0.Target
end
function export:f_box_Timer_v2_273_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_164
  l0.Entity = "9223372049656831282"
  l0.SoundId = "soundbinary/1703411120.bnk"
  l0 = self.box_Timer_v2_273
  l1 = self.box_PlaySound_v2_164
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2103743632", "2103743632", "IOP12_Main", "box_Timer_v2_273.TimeElapsed", "box_PlaySound_v2_164.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_174_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_110
  l0.IopID = "SwatTheSwatter"
  l0.IopEvent = "Swat.LockEnding"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|784588641", "784588641", "IOP12_Main", "box_Ordered_Output_174.Out", "box_AI_IOPController_110.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Ordered_Output_174_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_43()
  l0 = self.box_Timer_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|879670119", "879670119", "IOP12_Main", "box_Ordered_Output_174.Out", "box_Timer_v2_43.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_AI_IOPController_110_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_204
  l0.Entity = "9223372049656831311"
  l0.SoundId = "soundbinary/3959191738.bnk"
  l0 = self.box_AI_IOPController_110
  l1 = self.box_PlaySound_v2_204
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1724162855", "1724162855", "IOP12_Main", "box_AI_IOPController_110.SendEventCompleted", "box_PlaySound_v2_204.Play", l0, l1)
  l1:Play()
end
function export:f_box_Compare_Boolean_v2_163_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_149
  l0.Entity = "9223372049656831290"
  l0.SoundId = "soundbinary/3264659934.bnk"
  l0.DialogPriority = "Interested"
  l0.Supersede = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|171116981", "171116981", "IOP12_Main", "box_Compare_Boolean_v2_163.A_is_False", "box_PlayDialog_v2_149.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_163_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_272()
  l0 = self.box_MultipleOR_272
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|938341444", "938341444", "IOP12_Main", "box_Compare_Boolean_v2_163.A_is_True", "box_MultipleOR_272.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_OnceOnly_v3_307_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 5
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_207"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1971837430"
  l0.Out = self.f_box_SetFloat_v2_207_Out
  l0 = self.box_OnceOnly_v3_307
  l1 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|324606017", "324606017", "IOP12_Main", "box_OnceOnly_v3_307.Out", "box_SetFloat_v2_207.FromFloat", l0, l1)
  l1:FromFloat()
end
function export:f_box_CLOController_12_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_12
  self.TheSwatter = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.TheSwatter
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|2034058904"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_61_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_12
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|722112925", "722112925", "IOP12_Main", "box_CLOController_12.OnUserInPlace", "box_CollisionController_61.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_SetFloat_v2_203_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.TotalTime = l0.Target
end
function export:OnEnter_box_HackableController_v2_54()
  local l0
  l0 = self.box_HackableController_v2_54
  l0.HackableEntity = "9223372049656831277"
end
function export:OnEnter_box_MultipleOR_189()
end
function export:OnEnter_box_MultipleOR_284()
end
function export:OnEnter_box_HackableController_v2_129()
  local l0
  l0 = self.box_HackableController_v2_129
  l0.HackableEntity = "9223372049656831292"
end
function export:OnEnter_box_HackableController_v2_56()
  local l0
  l0 = self.box_HackableController_v2_56
  l0.HackableEntity = "9223372049656943480"
end
function export:OnEnter_box_MultipleOR_202()
end
function export:OnEnter_box_HackableController_v2_36()
  local l0
  l0 = self.box_HackableController_v2_36
  l0.HackableEntity = "9223372049656831292"
end
function export:OnEnter_box_HackableController_v2_132()
  local l0
  l0 = self.box_HackableController_v2_132
  l0.HackableEntity = "9223372049656831279"
end
function export:OnEnter_box_HackableController_v2_115()
  local l0
  l0 = self.box_HackableController_v2_115
  l0.HackableEntity = "9223372049656943480"
end
function export:OnEnter_box_MultipleOR_272()
end
function export:OnEnter_box_Security_Camera_Monitor_296()
  local l0
  l0 = self.box_Security_Camera_Monitor_296
  l0.CameraEntity = "9223372049656831307"
end
function export:OnEnter_box_SecurityCamController_37()
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
  l0._name = "box_SecurityCamController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP12.domino|@IOP12_Main|1785304167"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_37_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_37_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_Timer_v2_43()
  local l0
  l0 = self.box_Timer_v2_43
  l0.Loop = 1
end
function export:OnEnter_box_Multiple_AND_23()
  local l0
  l0 = self.box_Multiple_AND_23
  l0.AutoReset = 1
end
function export:OnEnter_box_MultipleOR_280()
end
_compilerVersion = 4
