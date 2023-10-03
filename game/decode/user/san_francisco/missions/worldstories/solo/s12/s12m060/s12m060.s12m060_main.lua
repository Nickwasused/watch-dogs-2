export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/FloatArithmetics.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialogWithSubtitle.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/s12_m060_cin_belongtous.S12_M060_CIN_BelongToUs_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/s12_m060_cin_bunkerboom.S12_M060_CIN_BunkerBoom_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12_M060_CIN_ConfrontLenni.S12_M060_CIN_ConfrontLenni_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/s12_m060_scr_marcusdrop.s12_m060_scr_MarcusDrop_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_DefuseFailExplosions.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_VRBattle.lua")
  cbox:RegisterBox("domino/System/SendDamage.lua")
  cbox:RegisterBox("domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1462602391.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/16671305.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3217659541.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2528145742.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2985910083.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1807260655.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/713515815.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2971121199.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4168566735.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/50640590.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/954511156.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1007340844.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3666495750.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4105995969.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.IconObj1 = "9223372047074100094"
  self.InteractObj4A = "9223372047894108370"
  self.InteractObj4B = "9223372047894108368"
  self.IconObj4A = "9223372047297176221"
  self.IconObj4B = "9223372047297176227"
  self.IconObj4C = "9223372047297176231"
  self.InteractObj4C = "9223372047894106062"
  self.InteractObj2C = "9223372048349489073"
  self.InteractObj3 = "9223372047894110812"
  self.IconObj3 = "9223372047074069850"
  self.InteractObj2B = "9223372048349489078"
  self.InteractObj2A = "9223372048349489076"
  self.IconObj2 = "9223372048349343065"
  self.bombProfilerLine_01 = "9223372048077424389"
  self.bombProfilerLine_02 = "9223372048077424393"
  self.bombProfilerLine_03 = "9223372048077424395"
  self.lookAtTrigger_01 = "9223372048077633852"
  self.lookAtTriggerMainframe_01 = "9223372048077632092"
  self.IconObj2C = "9223372047074069832"
  self.IconObj2B = "9223372047074069844"
  self.IconObj2A = "9223372047074069838"
  self.lookAtTrigger_02 = "9223372048349254955"
  self.lookAtTrigger_03 = "9223372048077632090"
  self.SearchAreaObj2 = "9223372048349341667"
  self.MissionZoneVolume = "9223372048349348666"
  self.NeedIncrement = 0
  self.ObjectiveUpdated = 0
  self.BombVRPuzzleAccessNode = "9223372049759826737"
  self.BombVRPuzzleFinalNode = "9223372049759826837"
  self.BombVRPuzzleOBjIcon = "9223372049987004857"
  self.zx = 0
  self.Bunker_entry_trigger = "9223372047074100092"
  self.entry_searchArea = "9223372053467788281"
  self.Secret_Entrance_Trigger = "9223372053467787349"
  self.Front_Entrance_Keypad = "9223372054957428090"
  self.TagPoint_ReachTarget_Bunker = "9223372055068614976"
  self.CentralConsole = "9223372047894110812"
  self.BombTimer = 0
  self.Wrench = nil
  self.WrenchCheckpoint = nil
  self.WrenchWaitCLO = "9223372055552508533"
  self.TagPoint_ReachTarget_GPSHelper = "9223372056112332189"
  self.MAR_01_BunkerMission_LMA = "MAR_01_BunkerMission_LMA"
  self.Lenni_Taunt_SoundPoint = "9223372058132017088"
  self.VR_Node_SW = "9223372050374033061"
  self.VR_Node_NE = "9223372049759826823"
  self.VR_Node_NW = "9223372049759826872"
  self.VR_Node_SE = "9223372059155174456"
  self.ScrambleNodes_SE = {}
  self.ScrambleNodes_NW = {}
  self.ScrambleNodes_SW = {}
  self.ScrambleNodes_NE = {}
  self.LenniLaughsDelay = 0
  self.Secret_Entrance_SearchArea = "9223372064222844131"
  self.WrenchVehicle = nil
  self[15] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[15]
  l0._graph = self
  l0.PreOut = self.f_15_PreOut
  l0.PostOut = DummyFunction
  self[80] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[80]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_80_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[152] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[152]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_152_Out
  self[143] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[143]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_143_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[57] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[57]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_57_Out
  self[61] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_VRBattle.lua")
  l0 = self[61]
  l0._graph = self
  l0.TrapHacked = self.f_61_TrapHacked
  self[82] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_82_TeleportDone
  self[171] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[171]
  l0._graph = self
  self[117] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[117]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_117_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_117_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[21] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[21]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_21_PostOut
  self[60] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[60]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_60_Deactivated
  self[53] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Loaded = self.f_53_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[138] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[138]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_138_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[23] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_23_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_23_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[72] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[72]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[119] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[119]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_119_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[74] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[74]
  l0._graph = self
  l0.Out = self.f_74_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[9] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12_M060_CIN_ConfrontLenni.S12_M060_CIN_ConfrontLenni_Main.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  self[136] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[136]
  l0._graph = self
  l0.Loaded = self.f_136_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[124] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[124]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[56] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[56]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_56_Added
  l0.Removed = self.f_56_Removed
  l0.Out = self.f_56_Out
  self[140] = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self[140]
  l0._graph = self
  l0._DynamicAnchors = {Output = 4}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_140_Output_0
  l0.Output[1] = self.f_140_Output_1
  l0.Output[2] = self.f_140_Output_2
  l0.Output[3] = self.f_140_Output_3
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self[76] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[76]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_76_Interacted
  self[77] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[77]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[55] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = self.f_55_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[155] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[155]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_155_PostOut
  self[22] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_22_Out
  self[104] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/s12_m060_scr_marcusdrop.s12_m060_scr_MarcusDrop_Main.lua")
  l0 = self[104]
  l0._graph = self
  l0.Out = self.f_104_Out
  self[37] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = self.f_37_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[162] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[162]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[164] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[164]
  l0._graph = self
  l0.Out = self.f_164_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[85] = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  l0 = self[85]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Reached = self.f_85_Reached
  self[123] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[123]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[170] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[170]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[25] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[25]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_25_Out
  self[87] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[87]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_87_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_87_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[79] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[79]
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
  self[113] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_VRBattle.lua")
  l0 = self[113]
  l0._graph = self
  l0.TrapHacked = self.f_113_TrapHacked
  self[97] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[97]
  l0._graph = self
  self[33] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_VRBattle.lua")
  l0 = self[33]
  l0._graph = self
  l0.TrapHacked = self.f_33_TrapHacked
  self[43] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[43]
  l0._graph = self
  l0.Out = self.f_43_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[30] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[30]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_30_Hacked
  self[99] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[99]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_99_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[141] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[141]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_141_Out
  self[154] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[154]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_154_OnUserInPlace
  self[90] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[90]
  l0._graph = self
  l0.Enabled = self.f_90_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[144] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[144]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_144_Out
  self[5] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_DefuseFailExplosions.lua")
  l0 = self[5]
  l0._graph = self
  l0.BombsExploded = self.f_5_BombsExploded
  self[115] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[115]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_115_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_115_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[125] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[125]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_125_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[145] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[145]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[49] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[49]
  l0._graph = self
  l0.Enabled = self.f_49_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[7]
  l0._graph = self
  l0.StartCommunicationOut = self.f_7_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_7_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[67] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[67]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[122] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[122]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_122_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.MessageCompleted = DummyFunction
  self[47] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[47]
  l0._graph = self
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_47_Added
  l0.Removed = self.f_47_Removed
  l0.Out = self.f_47_Out
  self[112] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[112]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[18] = cbox:CreateBox("domino/System/SendDamage.lua")
  l0 = self[18]
  l0._graph = self
  l0.DamageSent = self.f_18_DamageSent
  self[12] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[12]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_12_PostOut
  self[32] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = self.f_32_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[102] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[102]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self[83] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[83]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_83_Finished
  self[157] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[157]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_157_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[66] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/s12_m060_cin_bunkerboom.S12_M060_CIN_BunkerBoom_Main.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = self.f_66_Out
  self[70] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_VRBattle.lua")
  l0 = self[70]
  l0._graph = self
  l0.TrapHacked = self.f_70_TrapHacked
  self[100] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[100]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[31] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[31]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_31_Out
  self[17] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0.MessageCompleted = DummyFunction
  self[69] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[69]
  l0._graph = self
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_69_Added
  l0.Removed = self.f_69_Removed
  l0.Out = self.f_69_Out
  self[13] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Loaded = self.f_13_Loaded
  l0.Unloaded = DummyFunction
  self[81] = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self[81]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_81_TimeElapsed
  self[148] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[148]
  l0._graph = self
  l0.StartCommunicationOut = self.f_148_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[84] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[84]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[103] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[103]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_103_Finished
  self[41] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[41]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_41_Out
  l0.ResetOut = DummyFunction
  self[19] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[19]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_19_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[34] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[34]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_34_Finished
  self[36] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_36_Out
  self[128] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[128]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self[169] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[169]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[111] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[111]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_111_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[139] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[139]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_139_Out
  self[96] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[96]
  l0._graph = self
  l0.Out = self.f_96_Out
  l0.MessageCompleted = DummyFunction
  self[151] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[151]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_151_Disabled
  l0.EnterRadius = self.f_151_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[149] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[149]
  l0._graph = self
  l0.Out = self.f_149_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_149_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[98] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[98]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_98_Disabled
  l0.InteractionStarted = self.f_98_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[150] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[150]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_150_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[95] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[95]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[71] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_71_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[64] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[64]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_64_TeleportDone
  self[110] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[110]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[92] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[92]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_92_Finished
  self[101] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/s12_m060_cin_belongtous.S12_M060_CIN_BelongToUs_Main.lua")
  l0 = self[101]
  l0._graph = self
  l0.Out = self.f_101_Out
  self[88] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[88]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_88_Finished
  self[73] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[73]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_73_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[106] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[106]
  l0._graph = self
  l0.Started = self.f_106_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_106_Interacted
  self[65] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[65]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_65_Out
  self[58] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[58]
  l0._graph = self
  l0.Out = self.f_58_Out
  l0.MessageCompleted = DummyFunction
  self[114] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[114]
  l0._graph = self
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_114_Added
  l0.Removed = self.f_114_Removed
  l0.Out = self.f_114_Out
  self[38] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0.Loaded = self.f_38_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[146] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[146]
  l0._graph = self
  l0.Enabled = self.f_146_Enabled
  l0.Disabled = self.f_146_Disabled
  l0.EnterRadius = self.f_146_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[75] = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self[75]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
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
  self[52] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_52_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[59] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[59]
  l0._graph = self
  l0.Out = self.f_59_Out
  l0.MessageCompleted = DummyFunction
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
  l0 = self[25]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_39_Out
  l0:In()
end
function export:CheckPoint_2()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_46_Out
  l0:In()
end
function export:CheckPoint_3()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_137_Out
  l0:In()
end
function export:CheckPoint_4()
  local l0
  self:en_171()
  l0 = self[171]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[25]
  l0:Input(0)
end
function export:f_15_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_42_Out_0
  l0.Out[1] = self.f_42_Out_1
  l0:In()
end
function export:f_132_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.LenniLaughsDelay = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_45_Out_0
  l0.Out[1] = self.f_45_Out_1
  l0.Out[2] = self.f_45_Out_2
  l0.Out[3] = self.f_45_Out_3
  l0.Out[4] = self.f_45_Out_4
  l0:In()
end
function export:f_80_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[18]
  l0.PlayerEntity = self.PlayerEntity
  l0.DamageSource = "9223372066765976085"
  l0.DamageLevel = 1000
  l0.DamageType = "Explosion"
  l0.DamageLocation = "Torso"
  l0:Send()
end
function export:f_152_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055108868067"
  l0:StartCommunication()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[53]
  l0.LayerName = "S12M060_Main"
  l0:Load()
end
function export:f_143_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_147_Out_0
  l0.Out[1] = self.f_147_Out_1
  l0:In()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = self[74]
  l0.Checkpoint = "CheckPoint_2"
  l0:In()
end
function export:f_61_TrapHacked()
  local l0
  self = self._graph
  l0 = self[139]
  l0:Input(1)
end
function export:f_82_TeleportDone()
  local l0
  self = self._graph
  l0 = self[138]
  l0.Seconds = 3
  l0:Start()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = self[15]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:Disable()
end
function export:f_27_Out_0()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S12.S12M060.Objectives.Objective020",
    item = "Objective",
    id = "359121"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_27_Out_2()
  local l0
  self = self._graph
  l0 = self[13]
  l0.LMALayerName = self.MAR_01_BunkerMission_LMA
  l0:Load()
end
function export:f_137_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[136]
  l0.LayerName = "S12M060_Main"
  l0:Load()
end
function export:f_126_Out_0()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Start()
end
function export:f_117_Stopped()
  local l0
  self = self._graph
  l0 = self[119]
  l0:Stop()
end
function export:f_117_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_166_Out_0
  l0.Out[1] = self.f_166_Out_1
  l0:In()
end
function export:f_21_PostOut()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Checkpoint = "CheckPoint_4"
  l0:In()
end
function export:f_60_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_165_Out_0
  l0.Out[1] = self.f_165_Out_1
  l0.Out[2] = self.f_165_Out_2
  l0:In()
end
function export:f_53_Loaded()
  local l0
  self = self._graph
  l0 = self[12]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_138_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[21]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_23_Stopped()
  local l0
  self = self._graph
  l0 = self[115]
  l0:Stop()
end
function export:f_23_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_163_Out_0
  l0.Out[1] = self.f_163_Out_1
  l0:In()
end
function export:f_72_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[84]
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/4168566735.bnk"
  l0:Play()
end
function export:f_119_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[103]
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/3666495750.bnk"
  l0:Play()
end
function export:f_74_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_27_Out_0
  l0.Out[1] = DummyFunction
  l0.Out[2] = self.f_27_Out_2
  l0.Out[3] = DummyFunction
  l0:In()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[38]
  l0.LayerName = "S12M060_Main"
  l0:Load()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Input(0)
end
function export:f_136_Loaded()
  local l0
  self = self._graph
  l0 = self[141]
  l0:Input(1)
end
function export:f_56_Added()
  local l0
  self = self._graph
  l0 = self[56]
  self.ScrambleNodes_SW = l0.Target
  l0 = self[61]
  l0.ScrambleNodesList = self.ScrambleNodes_SW
  l0.TrapNodeIn = self.VR_Node_SW
  l0:Enable()
end
function export:f_56_Out()
  local l0
  self = self._graph
  l0 = self[56]
  self.ScrambleNodes_SW = l0.Target
end
function export:f_56_Removed()
  local l0
  self = self._graph
  l0 = self[56]
  self.ScrambleNodes_SW = l0.Target
end
function export:f_140_Output_0()
  local l0
  self = self._graph
  l0 = self[125]
  l0.Seconds = self.LenniLaughsDelay
  l0:Start()
end
function export:f_140_Output_1()
  local l0
  self = self._graph
  l0 = self[73]
  l0.Seconds = self.LenniLaughsDelay
  l0:Start()
end
function export:f_140_Output_2()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Seconds = self.LenniLaughsDelay
  l0:Start()
end
function export:f_140_Output_3()
  local l0
  self = self._graph
  l0 = self[72]
  l0.Seconds = self.LenniLaughsDelay
  l0:Start()
end
function export:f_76_Interacted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0:In()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[96]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S12.S12M060.Objectives.Objective042",
    item = "Objective",
    id = "643484"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_155_PostOut()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S12.S12M060.Objectives.Objective010",
    item = "Objective",
    id = "359120"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[157]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055108868065"
  l0:StartCommunication()
end
function export:f_104_Out()
  local l0
  self = self._graph
  l0 = self[55]
  l0.Checkpoint = "CheckPoint_3"
  l0:In()
end
function export:f_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372066736820048"
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
  l0.Out = self.f_26_Out
  l0:CleanZone()
end
function export:f_42_Out_1()
  local l0
  self = self._graph
  l0 = self[128]
  l0.PGTMissionArea = "9223372047074040116"
  l0:Abort()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372062905894085"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_156_MovedForward
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
function export:f_164_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669162"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = 11
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Deactivate()
end
function export:f_85_Reached()
  local l0
  self = self._graph
  l0 = self[152]
  l0:Condition(0)
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S12M060_Main"
  l0:Load()
end
function export:f_87_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_44_Out_0
  l0.Out[1] = self.f_44_Out_1
  l0.Out[2] = self.f_44_Out_2
  l0:In()
end
function export:f_87_HackSuccess()
  local l0
  self = self._graph
  self:en_87()
  l0 = self[87]
  l0:Disable()
end
function export:f_113_TrapHacked()
  local l0
  self = self._graph
  l0 = self[139]
  l0:Input(3)
end
function export:f_120_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l1 = self[119]
  l1.Seconds = l0.Target
  l1:Start()
end
function export:f_51_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 300
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_108_Out
  l0:FromFloat()
end
function export:f_51_Out_1()
  local l0
  self = self._graph
  l0 = self[90]
  l0.HackableEntity = self.BombVRPuzzleAccessNode
  l0:EnableHack()
end
function export:f_51_Out_2()
  local l0
  self = self._graph
  l0 = self[145]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_51_Out_3()
  local l0
  self = self._graph
  self:en_79()
  l0 = self[79]
  l0:EnableHack()
end
function export:f_33_TrapHacked()
  local l0
  self = self._graph
  l0 = self[139]
  l0:Input(0)
end
function export:f_14_Out_0()
  local l0
  self = self._graph
  l0 = self[57]
  l0:Input(1)
end
function export:f_14_Out_1()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Input(1)
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In()
end
function export:f_116_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l1 = self[115]
  l1.Seconds = l0.Target
  l1:Start()
end
function export:f_30_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 0.3
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_132_Out
  l0:FromFloat()
end
function export:f_99_Hidden()
  local l0
  self = self._graph
  l0 = self[58]
  l0:ShowLastObjectiveComplete()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372066736820050"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0.Out = self.f_54_Out
  l0:In()
end
function export:f_141_Out()
  local l0
  self = self._graph
  l0 = self[104]
  l0.Player = self.PlayerEntity
  l0:In()
end
function export:f_108_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.BombTimer = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_161_Out_0
  l0.Out[1] = self.f_161_Out_1
  l0:In()
end
function export:f_154_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[154]
  self.WrenchVehicle = l0.UserID
  l0 = self[155]
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
  l0 = self[43]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_90_Enabled()
  local l0
  self = self._graph
  l0 = self[30]
  l0.Entity = self.BombVRPuzzleAccessNode
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0:Start()
end
function export:f_163_Out_0()
  local l0
  self = self._graph
  l0 = self[75]
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/4105995969.bnk"
  l0:Play()
end
function export:f_163_Out_1()
  local l0
  self = self._graph
  l0 = self[162]
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0:Play()
end
function export:f_44_Out_0()
  local l0
  self = self._graph
  l0 = self[99]
  l0.MapPoint = self.BombVRPuzzleOBjIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0:Hide()
end
function export:f_44_Out_1()
  local l0
  self = self._graph
  self:en_81()
  l0 = self[81]
  l0:Stop()
end
function export:f_44_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_144_Out()
  local l0
  self = self._graph
  l0 = self[143]
  l0:Start()
end
function export:f_5_BombsExploded()
  local l0
  self = self._graph
  l0 = self[80]
  l0.Seconds = 0.25
  l0:Start()
end
function export:f_115_Stopped()
  local l0
  self = self._graph
  l0 = self[117]
  l0:Stop()
end
function export:f_115_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[100]
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/1007340844.bnk"
  l0:Play()
end
function export:f_156_MovedForward()
  local l0
  self = self._graph
  self:en_171()
  l0 = self[171]
  l0:End()
end
function export:f_125_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[123]
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/2971121199.bnk"
  l0:Play()
end
function export:f_49_Enabled()
  local l0
  self = self._graph
  l0 = self[102]
  l0.PGTMissionArea = "9223372047074040116"
  l0:Start()
end
function export:f_7_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Input(0)
end
function export:f_7_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[57]
  l0:Input(0)
end
function export:f_122_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Enable()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[149]
  l0.Seconds = 5
  l0:Start()
end
function export:f_47_Added()
  local l0
  self = self._graph
  l0 = self[47]
  self.ScrambleNodes_NE = l0.Target
  l0 = self[33]
  l0.ScrambleNodesList = self.ScrambleNodes_NE
  l0.TrapNodeIn = self.VR_Node_NE
  l0:Enable()
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = self[47]
  self.ScrambleNodes_NE = l0.Target
end
function export:f_47_Removed()
  local l0
  self = self._graph
  l0 = self[47]
  self.ScrambleNodes_NE = l0.Target
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Condition(0)
end
function export:f_89_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_35_Out_0
  l0.Out[1] = self.f_35_Out_1
  l0:In()
end
function export:f_18_DamageSent()
  local l0
  self = self._graph
  l0 = self[97]
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "BombsNotDefused",
    id = "650873"
  }
  l0:Fail()
end
function export:f_12_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_14_Out_0
  l0.Out[1] = self.f_14_Out_1
  l0:In()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[154]
  l0.CLO = "9223372055068614974"
  l0:Activate()
end
function export:f_83_Finished()
  local l0
  self = self._graph
  l0 = self[92]
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/16671305.bnk"
  l0:Play()
end
function export:f_121_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Stop()
end
function export:f_157_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[152]
  l0:Condition(1)
end
function export:f_109_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l1 = self[23]
  l1.Seconds = l0.Target
  l1:Start()
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[59]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S12.S12M060.Objectives.Objective040",
    item = "Objective",
    id = "407533"
  }
  l0:ShowNewObjective()
end
function export:f_166_Out_0()
  local l0
  self = self._graph
  l0 = self[77]
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/954511156.bnk"
  l0:Play()
end
function export:f_166_Out_1()
  local l0
  self = self._graph
  l0 = self[169]
  l0.SoundId = "soundbinary/3217659541.bnk"
  l0:Play()
end
function export:f_70_TrapHacked()
  local l0
  self = self._graph
  l0 = self[139]
  l0:Input(2)
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[76]
  l0.Entity = self.Secret_Entrance_Trigger
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  l0:Start()
end
function export:f_45_Out_0()
  local l0
  self = self._graph
  self:en_87()
  l0 = self[87]
  l0:Enable()
end
function export:f_45_Out_1()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Input = self.ScrambleNodes_NE
  l0.Data[0] = "9223372049759826823"
  l0.Data[1] = "9223372050479473299"
  l0.Data[2] = "9223372050479473295"
  l0.Data[3] = "9223372050479473297"
  l0.Data[4] = "9223372050479473293"
  l0:Add()
end
function export:f_45_Out_2()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Input = self.ScrambleNodes_SW
  l0.Data[0] = "9223372049759826874"
  l0.Data[1] = "9223372059155174627"
  l0.Data[2] = "9223372050374033061"
  l0.Data[3] = "9223372050374033066"
  l0.Data[4] = "9223372050374033074"
  l0.Data[5] = "9223372050374033061"
  l0:Add()
end
function export:f_45_Out_3()
  local l0
  self = self._graph
  l0 = self[69]
  l0.Input = self.ScrambleNodes_NW
  l0.Data[0] = "9223372049759826872"
  l0.Data[1] = "9223372050374033001"
  l0.Data[2] = "9223372050374032999"
  l0.Data[3] = "9223372050374033003"
  l0.Data[4] = "9223372050374033005"
  l0:Add()
end
function export:f_45_Out_4()
  local l0
  self = self._graph
  l0 = self[114]
  l0.Input = self.ScrambleNodes_SE
  l0.Data[0] = "9223372059155174450"
  l0.Data[1] = "9223372059155174454"
  l0.Data[2] = "9223372059155174474"
  l0.Data[3] = "9223372059155174458"
  l0.Data[4] = "9223372059155174466"
  l0.Data[5] = "9223372059155174468"
  l0.Data[6] = "9223372059155174472"
  l0.Data[7] = "9223372059155174456"
  l0:Add()
end
function export:f_17_Out()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:Enable()
end
function export:f_69_Added()
  local l0
  self = self._graph
  l0 = self[69]
  self.ScrambleNodes_NW = l0.Target
  l0 = self[70]
  l0.ScrambleNodesList = self.ScrambleNodes_NW
  l0.TrapNodeIn = self.VR_Node_NW
  l0:Enable()
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = self[69]
  self.ScrambleNodes_NW = l0.Target
end
function export:f_69_Removed()
  local l0
  self = self._graph
  l0 = self[69]
  self.ScrambleNodes_NW = l0.Target
end
function export:f_13_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_68_Out
  l0:In()
end
function export:f_81_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[122]
  l0.Seconds = 0.75
  l0:Start()
end
function export:f_118_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l1 = self[117]
  l1.Seconds = l0.Target
  l1:Start()
end
function export:f_148_StartCommunicationOut()
  local l0
  self = self._graph
  self:en_146()
  l0 = self[146]
  l0:Enable()
end
function export:f_127_Activated()
  local l0
  self = self._graph
  self:en_79()
  l0 = self[79]
  l0:DisableHack()
end
function export:f_103_Finished()
  local l0
  self = self._graph
  l0 = self[88]
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/2528145742.bnk"
  l0:Play()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050202038913"
  l0:StartCommunication()
end
function export:f_19_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[144]
  l0:Condition(0)
end
function export:f_34_Finished()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Condition(1)
end
function export:f_54_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_126_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_111_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[64]
  l0.SpawnPoint = "9223372055068695496"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_139_Out()
  local l0
  self = self._graph
  l0 = self[140]
  l0:In()
end
function export:f_96_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.CentralConsole
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = self.f_89_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_147_Out_0()
  local l0
  self = self._graph
  l0 = self[66]
  l0:In()
end
function export:f_147_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669162"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_127_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_151_Disabled()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Condition(0)
end
function export:f_151_EnterRadius()
  local l0
  self = self._graph
  self:en_151()
  l0 = self[151]
  l0:Disable()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_121_Out
  l0:In()
end
function export:f_165_Out_0()
  local l0
  self = self._graph
  l0 = self[101]
  l0:In()
end
function export:f_165_Out_1()
  local l0
  self = self._graph
  l0 = self[164]
  l0.SoundId = "soundbinary/81442961.bnk"
  l0:Play()
end
function export:f_165_Out_2()
  local l0
  self = self._graph
  l0 = self[170]
  l0.SoundId = "soundbinary/1462602391.bnk"
  l0:Play()
end
function export:f_149_Out()
  local l0
  self = self._graph
  l0 = self[85]
  l0.Entity = "9223372055068614976"
  l0.Entity_AreaRadius = 100
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0:Start()
end
function export:f_149_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[148]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055160263234"
  l0:StartCommunication()
end
function export:f_98_Disabled()
  local l0
  self = self._graph
  l0 = self[41]
  l0:In(0)
end
function export:f_98_InteractionStarted()
  local l0
  self = self._graph
  self:en_98()
  l0 = self[98]
  l0:Disable()
end
function export:f_150_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Condition(1)
end
function export:f_71_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[67]
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/2985910083.bnk"
  l0:Play()
end
function export:f_35_Out_0()
  local l0
  self = self._graph
  l0 = self[106]
  l0.Entity = self.CentralConsole
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_35_Out_1()
  local l0
  self = self._graph
  l0 = self[112]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055108868068"
  l0:StartCommunication()
end
function export:f_64_TeleportDone()
  local l0
  self = self._graph
  l0 = self[52]
  l0.Seconds = 5
  l0:Start()
end
function export:f_92_Finished()
  local l0
  self = self._graph
  l0 = self[110]
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/713515815.bnk"
  l0:Play()
end
function export:f_101_Out()
  local l0
  self = self._graph
  l0 = self[82]
  l0.SpawnPoint = "9223372049668376974"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_161_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_107_Out_0
  l0.Out[1] = self.f_107_Out_1
  l0.Out[2] = self.f_107_Out_2
  l0.Out[3] = self.f_107_Out_3
  l0.Out[4] = self.f_107_Out_4
  l0:In()
end
function export:f_161_Out_1()
  local l0
  self = self._graph
  self:en_81()
  l0 = self[81]
  l0:Start()
end
function export:f_88_Finished()
  local l0
  self = self._graph
  l0 = self[83]
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/50640590.bnk"
  l0:Play()
end
function export:f_73_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[95]
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/1807260655.bnk"
  l0:Play()
end
function export:f_106_Interacted()
  local l0
  self = self._graph
  l0 = self[144]
  l0:Condition(1)
end
function export:f_106_Started()
  local l0
  self = self._graph
  self:en_98()
  l0 = self[98]
  l0:Enable()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[111]
  l0:Start()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = self[60]
  l0:Deactivate()
end
function export:f_114_Added()
  local l0
  self = self._graph
  l0 = self[114]
  self.ScrambleNodes_SE = l0.Target
  l0 = self[113]
  l0.ScrambleNodesList = self.ScrambleNodes_SE
  l0.TrapNodeIn = self.VR_Node_SE
  l0:Enable()
end
function export:f_114_Out()
  local l0
  self = self._graph
  l0 = self[114]
  self.ScrambleNodes_SE = l0.Target
end
function export:f_114_Removed()
  local l0
  self = self._graph
  l0 = self[114]
  self.ScrambleNodes_SE = l0.Target
end
function export:f_38_Loaded()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Input(1)
end
function export:f_146_Disabled()
  local l0
  self = self._graph
  l0 = self[150]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055108868063"
  l0:StartCommunication()
end
function export:f_146_Enabled()
  local l0
  self = self._graph
  self:en_151()
  l0 = self[151]
  l0:Enable()
end
function export:f_146_EnterRadius()
  local l0
  self = self._graph
  self:en_146()
  l0 = self[146]
  l0:Disable()
end
function export:f_40_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[34]
  l0.SceneEntity = "9223372060271589495"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S12/S12_M060_SCR_ManHoleOpening/s12_m060_scr_manholeopening.seq"
  l0:Start()
end
function export:f_52_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[141]
  l0:Input(0)
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_51_Out_0
  l0.Out[1] = self.f_51_Out_1
  l0.Out[2] = self.f_51_Out_2
  l0.Out[3] = self.f_51_Out_3
  l0:In()
end
function export:f_107_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.BombTimer
  l0.B = 120
  l0._graph = self
  l0.Out = self.f_109_Out
  l0:Sub()
end
function export:f_107_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.BombTimer
  l0.B = 60
  l0._graph = self
  l0.Out = self.f_116_Out
  l0:Sub()
end
function export:f_107_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.BombTimer
  l0.B = 30
  l0._graph = self
  l0.Out = self.f_118_Out
  l0:Sub()
end
function export:f_107_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.BombTimer
  l0.B = 14
  l0._graph = self
  l0.Out = self.f_120_Out
  l0:Sub()
end
function export:f_107_Out_4()
  local l0
  self = self._graph
  l0 = self[124]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055570568160"
  l0:StartCommunication()
end
function export:en_171()
  local l0
  l0 = self[171]
  l0.Checkpoint = "CheckPoint_4"
  l0.MissionLayer = "S12M060_Main"
  l0.LmaLayer = self.MAR_01_BunkerMission_LMA
  l0.TeamSpeak = "PhoneCommunicationSettingsDb.9223372055306113396"
  l0.ShowMissionComplete = 1
end
function export:en_87()
  local l0
  l0 = self[87]
  l0.HackableEntity = self.BombVRPuzzleFinalNode
end
function export:en_79()
  local l0
  l0 = self[79]
  l0.HackableEntity = "9223372061117396007"
  l0.ProfileLinkedToHack = 1
end
function export:en_49()
  local l0
  l0 = self[49]
  l0.MissionArea = self.MissionZoneVolume
  l0.MissionLayer = "S12M060_Main"
  l0.LmaLayer = self.MAR_01_BunkerMission_LMA
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_81()
  local l0
  l0 = self[81]
  l0.Seconds = self.BombTimer
end
function export:en_151()
  local l0
  l0 = self[151]
  l0.TargetEntity = "9223372055068614976"
  l0.Radius = 900
end
function export:en_98()
  local l0
  l0 = self[98]
  l0.InteractionScriptEntity = self.CentralConsole
end
function export:en_146()
  local l0
  l0 = self[146]
  l0.TargetEntity = "9223372055068614976"
  l0.Radius = 3300
end
_compilerVersion = 4
