export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/FloatArithmetics.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
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
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/s12_m060_cin_belongtous.S12_M060_CIN_BelongToUs_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/s12_m060_cin_bunkerboom.S12_M060_CIN_BunkerBoom_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12_M060_CIN_ConfrontLenni.S12_M060_CIN_ConfrontLenni_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/s12_m060_scr_marcusdrop.s12_m060_scr_MarcusDrop_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_DefuseFailExplosions.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_VRBattle.debug.lua")
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
  self._name = "S12M060_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main"
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
  self.box_CinematicPrep_15 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_15
  l0._graph = self
  l0._name = "box_CinematicPrep_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|9013238"
  l0.PreOut = self.f_box_CinematicPrep_15_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_80 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_80
  l0._graph = self
  l0._name = "box_Timer_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|19427495"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_80_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_152 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_152
  l0._graph = self
  l0._name = "box_Multiple_AND_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|37853226"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_152_Out
  self.box_Timer_v2_143 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_143
  l0._graph = self
  l0._name = "box_Timer_v2_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|66057235"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_143_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_57 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_57
  l0._graph = self
  l0._name = "box_MultipleOR_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|85656673"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_57_Out
  self.box_S12M060_VRBattle_61 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_VRBattle.debug.lua")
  l0 = self.box_S12M060_VRBattle_61
  l0._graph = self
  l0._name = "box_S12M060_VRBattle_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|92197461"
  l0.TrapHacked = self.f_box_S12M060_VRBattle_61_TrapHacked
  self.box_Teleport_To_SpawnPoint_82 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_82
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|104917858"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_82_TeleportDone
  self.box_Mission_End_171 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_171
  l0._graph = self
  l0._name = "box_Mission_End_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|126066143"
  self.box_Timer_v2_117 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_117
  l0._graph = self
  l0._name = "box_Timer_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|149530727"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_117_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_117_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_21 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_21
  l0._graph = self
  l0._name = "box_CinematicPrep_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|156387785"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_21_PostOut
  self.box_Network_Surfing_Controller_60 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_60
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|165470431"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_60_Deactivated
  self.box_MissionLayer_v2_53 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_53
  l0._graph = self
  l0._name = "box_MissionLayer_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|165947822"
  l0.Loaded = self.f_box_MissionLayer_v2_53_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_138 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_138
  l0._graph = self
  l0._name = "box_Timer_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|206453409"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_138_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_23 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_23
  l0._graph = self
  l0._name = "box_Timer_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|240427544"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_23_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_23_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_72 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_72
  l0._graph = self
  l0._name = "box_Timer_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|273840986"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_119 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_119
  l0._graph = self
  l0._name = "box_Timer_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|302822732"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_119_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionCheckpointReach_74 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_74
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|310699710"
  l0.Out = self.f_box_MissionCheckpointReach_74_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_S12_M060_CIN_ConfrontLenni_Main_9 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12_M060_CIN_ConfrontLenni.S12_M060_CIN_ConfrontLenni_Main.debug.lua")
  l0 = self.box_S12_M060_CIN_ConfrontLenni_Main_9
  l0._graph = self
  l0._name = "box_S12_M060_CIN_ConfrontLenni_Main_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|334355721"
  l0.Out = self.f_box_S12_M060_CIN_ConfrontLenni_Main_9_Out
  self.box_MissionLayer_v2_136 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_136
  l0._graph = self
  l0._name = "box_MissionLayer_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|334990376"
  l0.Loaded = self.f_box_MissionLayer_v2_136_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_124 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_124
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|349886352"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriter_56 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_56
  l0._graph = self
  l0._name = "box_ListWriter_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|362910752"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_56_Added
  l0.Removed = self.f_box_ListWriter_56_Removed
  l0.Out = self.f_box_ListWriter_56_Out
  self.box_SwitchOutput_v3_140 = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_140
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|363181641"
  l0._DynamicAnchors = {Output = 4}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_140_Output_0
  l0.Output[1] = self.f_box_SwitchOutput_v3_140_Output_1
  l0.Output[2] = self.f_box_SwitchOutput_v3_140_Output_2
  l0.Output[3] = self.f_box_SwitchOutput_v3_140_Output_3
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self.box_Interact_Gameplay_76 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_76
  l0._graph = self
  l0._name = "box_Interact_Gameplay_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|384291178"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_76_Interacted
  self.box_PlayDialogOnSoundPoint_77 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_77
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|388052074"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionCheckpointReach_55 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_55
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|393591485"
  l0.Out = self.f_box_MissionCheckpointReach_55_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CinematicPrep_155 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_155
  l0._graph = self
  l0._name = "box_CinematicPrep_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|394763352"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_155_PostOut
  self.box_Multiple_AND_22 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_22
  l0._graph = self
  l0._name = "box_Multiple_AND_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|406582043"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_22_Out
  self.box_s12_m060_scr_MarcusDrop_Main_104 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/s12_m060_scr_marcusdrop.s12_m060_scr_MarcusDrop_Main.debug.lua")
  l0 = self.box_s12_m060_scr_MarcusDrop_Main_104
  l0._graph = self
  l0._name = "box_s12_m060_scr_MarcusDrop_Main_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|427620143"
  l0.Out = self.f_box_s12_m060_scr_MarcusDrop_Main_104_Out
  self.box_MissionCheckpointReach_37 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_37
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|441789472"
  l0.Out = self.f_box_MissionCheckpointReach_37_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySound_v2_162 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_162
  l0._graph = self
  l0._name = "box_PlaySound_v2_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|459006406"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_164 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_164
  l0._graph = self
  l0._name = "box_PlaySound_v2_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|482524797"
  l0.Out = self.f_box_PlaySound_v2_164_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Reach_Gameplay_85 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_85
  l0._graph = self
  l0._name = "box_Reach_Gameplay_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|487714189"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Reached = self.f_box_Reach_Gameplay_85_Reached
  self.box_PlayDialogOnSoundPoint_123 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_123
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|497867405"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_170 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_170
  l0._graph = self
  l0._name = "box_PlaySound_v2_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|502930990"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_25 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_25
  l0._graph = self
  l0._name = "box_MultipleOR_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|522429264"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_25_Out
  self.box_Hackable_Monitor_87 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_87
  l0._graph = self
  l0._name = "box_Hackable_Monitor_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|536197633"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_87_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_87_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_79 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_79
  l0._graph = self
  l0._name = "box_HackableController_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|543772183"
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
  self.box_S12M060_VRBattle_113 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_VRBattle.debug.lua")
  l0 = self.box_S12M060_VRBattle_113
  l0._graph = self
  l0._name = "box_S12M060_VRBattle_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|563195546"
  l0.TrapHacked = self.f_box_S12M060_VRBattle_113_TrapHacked
  self.box_MissionController_v4_97 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_97
  l0._graph = self
  l0._name = "box_MissionController_v4_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|630267670"
  self.box_S12M060_VRBattle_33 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_VRBattle.debug.lua")
  l0 = self.box_S12M060_VRBattle_33
  l0._graph = self
  l0._name = "box_S12M060_VRBattle_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|633210142"
  l0.TrapHacked = self.f_box_S12M060_VRBattle_33_TrapHacked
  self.box_MissionCheckpointReach_43 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_43
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|638448629"
  l0.Out = self.f_box_MissionCheckpointReach_43_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Hack_Gameplay_30 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_30
  l0._graph = self
  l0._name = "box_Hack_Gameplay_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|666424680"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_30_Hacked
  self.box_MapPointController_v4_99 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_99
  l0._graph = self
  l0._name = "box_MapPointController_v4_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|693411027"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_99_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_141 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_141
  l0._graph = self
  l0._name = "box_MultipleOR_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|733083307"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_141_Out
  self.box_CLOController_154 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_154
  l0._graph = self
  l0._name = "box_CLOController_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|810439619"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_154_OnUserInPlace
  self.box_HackableController_v2_90 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_90
  l0._graph = self
  l0._name = "box_HackableController_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|821447622"
  l0.Enabled = self.f_box_HackableController_v2_90_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Multiple_AND_144 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_144
  l0._graph = self
  l0._name = "box_Multiple_AND_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|859002056"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_144_Out
  self.box_S12M060_DefuseFailExplosions_5 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_DefuseFailExplosions.debug.lua")
  l0 = self.box_S12M060_DefuseFailExplosions_5
  l0._graph = self
  l0._name = "box_S12M060_DefuseFailExplosions_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|863886006"
  l0.BombsExploded = self.f_box_S12M060_DefuseFailExplosions_5_BombsExploded
  self.box_Timer_v2_115 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_115
  l0._graph = self
  l0._name = "box_Timer_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|867176755"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_115_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_115_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_125 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_125
  l0._graph = self
  l0._name = "box_Timer_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|880910296"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_125_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_145 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_145
  l0._graph = self
  l0._name = "box_PlaySound_v2_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|910705443"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionZone_49 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_49
  l0._graph = self
  l0._name = "box_MissionZone_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|952734430"
  l0.Enabled = self.f_box_MissionZone_49_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_PhoneCommunicationController_7 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_7
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|965735247"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_7_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_7_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialogOnSoundPoint_67 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_67
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|969228580"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_122 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_122
  l0._graph = self
  l0._name = "box_Timer_v2_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|973262325"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_122_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_6 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_6
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|985550870"
  l0.Out = self.f_box_MissionMessageController_v3_6_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_47 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_47
  l0._graph = self
  l0._name = "box_ListWriter_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|986246915"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_47_Added
  l0.Removed = self.f_box_ListWriter_47_Removed
  l0.Out = self.f_box_ListWriter_47_Out
  self.box_PhoneCommunicationController_112 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_112
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1021042756"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_SendDamageBox_18 = cbox:CreateBox("domino/System/SendDamage.lua")
  l0 = self.box_SendDamageBox_18
  l0._graph = self
  l0._name = "box_SendDamageBox_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1063420375"
  l0.DamageSent = self.f_box_SendDamageBox_18_DamageSent
  self.box_CinematicPrep_12 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_12
  l0._graph = self
  l0._name = "box_CinematicPrep_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1068552140"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_12_PostOut
  self.box_MissionCheckpointReach_32 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_32
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1081223436"
  l0.Out = self.f_box_MissionCheckpointReach_32_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PGTController_v2_102 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_102
  l0._graph = self
  l0._name = "box_PGTController_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1084424017"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_PlayDialogOnSoundPoint_83 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_83
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1114434995"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_83_Finished
  self.box_PhoneCommunicationController_157 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_157
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1121697224"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_157_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_S12_M060_CIN_BunkerBoom_Main_66 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/s12_m060_cin_bunkerboom.S12_M060_CIN_BunkerBoom_Main.debug.lua")
  l0 = self.box_S12_M060_CIN_BunkerBoom_Main_66
  l0._graph = self
  l0._name = "box_S12_M060_CIN_BunkerBoom_Main_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1148129523"
  l0.Out = self.f_box_S12_M060_CIN_BunkerBoom_Main_66_Out
  self.box_S12M060_VRBattle_70 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/S12M060.S12M060_VRBattle.debug.lua")
  l0 = self.box_S12M060_VRBattle_70
  l0._graph = self
  l0._name = "box_S12M060_VRBattle_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1157711504"
  l0.TrapHacked = self.f_box_S12M060_VRBattle_70_TrapHacked
  self.box_PlayDialogOnSoundPoint_100 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_100
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1186152744"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_31 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_31
  l0._graph = self
  l0._name = "box_MultipleOR_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1196055878"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_31_Out
  self.box_MissionMessageController_v3_17 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_17
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1243421719"
  l0.Out = self.f_box_MissionMessageController_v3_17_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_69 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_69
  l0._graph = self
  l0._name = "box_ListWriter_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1259272377"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_69_Added
  l0.Removed = self.f_box_ListWriter_69_Removed
  l0.Out = self.f_box_ListWriter_69_Out
  self.box_LMA_Layer_Controller_13 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_13
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1296827697"
  l0.Loaded = self.f_box_LMA_Layer_Controller_13_Loaded
  l0.Unloaded = DummyFunction
  self.box_TimerToScreen_81 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_81
  l0._graph = self
  l0._name = "box_TimerToScreen_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1315489070"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_81_TimeElapsed
  self.box_PhoneCommunicationController_148 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_148
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1330402546"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_148_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialogOnSoundPoint_84 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_84
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1389299737"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialogOnSoundPoint_103 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_103
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1400462714"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_103_Finished
  self.box_OnceOnly_v3_41 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_41
  l0._graph = self
  l0._name = "box_OnceOnly_v3_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1407358579"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_41_Out
  l0.ResetOut = DummyFunction
  self.box_PhoneCommunicationController_19 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_19
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1407713743"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_19_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_34 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_34
  l0._graph = self
  l0._name = "box_PlaySequence_v5_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1408871268"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_34_Finished
  self.box_MultipleOR_36 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1428970655"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_PGTController_v2_128 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_128
  l0._graph = self
  l0._name = "box_PGTController_v2_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1451687302"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_PlaySound_v2_169 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_169
  l0._graph = self
  l0._name = "box_PlaySound_v2_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1486268250"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_111 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_111
  l0._graph = self
  l0._name = "box_Timer_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1490038464"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_111_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_139 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_139
  l0._graph = self
  l0._name = "box_MultipleOR_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1490896452"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_139_Out
  self.box_MissionMessageController_v3_96 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_96
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1507437114"
  l0.Out = self.f_box_MissionMessageController_v3_96_Out
  l0.MessageCompleted = DummyFunction
  self.box_Player_Proximity_Monitor_151 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_151
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1524028894"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Player_Proximity_Monitor_151_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_151_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_Timer_v2_149 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_149
  l0._graph = self
  l0._name = "box_Timer_v2_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1603744466"
  l0.Out = self.f_box_Timer_v2_149_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_149_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_InteractionScriptMonitor_v2_98 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_98
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1613102179"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_98_Disabled
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_98_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_PhoneCommunicationController_150 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_150
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1623164722"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_150_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialogOnSoundPoint_95 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_95
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1651966406"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_71 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_71
  l0._graph = self
  l0._name = "box_Timer_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1654024373"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_71_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Teleport_To_SpawnPoint_64 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_64
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1704797966"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_64_TeleportDone
  self.box_PlayDialogOnSoundPoint_110 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_110
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1719516488"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialogOnSoundPoint_92 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_92
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1723453444"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_92_Finished
  self.box_S12_M060_CIN_BelongToUs_Main_101 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M060/s12_m060_cin_belongtous.S12_M060_CIN_BelongToUs_Main.debug.lua")
  l0 = self.box_S12_M060_CIN_BelongToUs_Main_101
  l0._graph = self
  l0._name = "box_S12_M060_CIN_BelongToUs_Main_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1784134706"
  l0.Out = self.f_box_S12_M060_CIN_BelongToUs_Main_101_Out
  self.box_PlayDialogOnSoundPoint_88 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_88
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1843475578"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_88_Finished
  self.box_Timer_v2_73 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_73
  l0._graph = self
  l0._name = "box_Timer_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1873423957"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_73_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Interact_Gameplay_106 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_106
  l0._graph = self
  l0._name = "box_Interact_Gameplay_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1890179881"
  l0.Started = self.f_box_Interact_Gameplay_106_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_106_Interacted
  self.box_Multiple_AND_65 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_65
  l0._graph = self
  l0._name = "box_Multiple_AND_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1942042226"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_65_Out
  self.box_MissionMessageController_v3_58 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_58
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1957021920"
  l0.Out = self.f_box_MissionMessageController_v3_58_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_114 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_114
  l0._graph = self
  l0._name = "box_ListWriter_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1965217333"
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_box_ListWriter_114_Added
  l0.Removed = self.f_box_ListWriter_114_Removed
  l0.Out = self.f_box_ListWriter_114_Out
  self.box_MissionLayer_v2_38 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_38
  l0._graph = self
  l0._name = "box_MissionLayer_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1983912672"
  l0.Loaded = self.f_box_MissionLayer_v2_38_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Player_Proximity_Monitor_146 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_146
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1998106047"
  l0.Enabled = self.f_box_Player_Proximity_Monitor_146_Enabled
  l0.Disabled = self.f_box_Player_Proximity_Monitor_146_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_146_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_PlayDialogOnSoundPoint_75 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_75
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2008038756"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_40 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_40
  l0._graph = self
  l0._name = "box_Timer_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2076577347"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_40_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_52 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_52
  l0._graph = self
  l0._name = "box_Timer_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2091047063"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_52_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_59 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_59
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2097426163"
  l0.Out = self.f_box_MissionMessageController_v3_59_Out
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
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|266514783", "266514783", "S12M060_Main", "CheckPoint_0", "box_MultipleOR_25.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|318457877"
  l0.Out = self.f_box_Get_Player_ID_39_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|554974670", "554974670", "S12M060_Main", "CheckPoint_1", "box_Get_Player_ID_39.In", self, l0)
  l0:In()
end
function export:CheckPoint_2()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|39298694"
  l0.Out = self.f_box_Get_Player_ID_46_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1279573650", "1279573650", "S12M060_Main", "CheckPoint_2", "box_Get_Player_ID_46.In", self, l0)
  l0:In()
end
function export:CheckPoint_3()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|129017274"
  l0.Out = self.f_box_Get_Player_ID_137_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1605428931", "1605428931", "S12M060_Main", "CheckPoint_3", "box_Get_Player_ID_137.In", self, l0)
  l0:In()
end
function export:CheckPoint_4()
  local l0
  self:OnEnter_box_Mission_End_171()
  l0 = self.box_Mission_End_171
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|857745987", "857745987", "S12M060_Main", "CheckPoint_4", "box_Mission_End_171.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|941585301", "941585301", "S12M060_Main", "In", "box_MultipleOR_25.Input", self, l0)
  l0:Input(0)
end
function export:f_box_CinematicPrep_15_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|439428054"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_42_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_42_Out_1
  l0 = self.box_CinematicPrep_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|317428707", "317428707", "S12M060_Main", "box_CinematicPrep_15.PreOut", "box_Ordered_Output_42.In", l0, l1)
  l1:In()
end
function export:f_box_SetFloat_v2_132_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.LenniLaughsDelay = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1199159266"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_45_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_45_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_45_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_45_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_45_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1793638265", "1793638265", "S12M060_Main", "box_SetFloat_v2_132.Out", "box_Ordered_Output_45.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_80_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_SendDamageBox_18
  l0.PlayerEntity = self.PlayerEntity
  l0.DamageSource = "9223372066765976085"
  l0.DamageLevel = 1000
  l0.DamageType = "Explosion"
  l0.DamageLocation = "Torso"
  l0 = self.box_Timer_v2_80
  l1 = self.box_SendDamageBox_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|548376289", "548376289", "S12M060_Main", "box_Timer_v2_80.TimeElapsed", "box_SendDamageBox_18.Send", l0, l1)
  l1:Send()
end
function export:f_box_Multiple_AND_152_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: JOSH_WWIISchematic", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PhoneCommunicationController')-- Comment: JOSH_WWIISchematic")
  l0 = self.box_PhoneCommunicationController_7
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055108868067"
  l0 = self.box_Multiple_AND_152
  l1 = self.box_PhoneCommunicationController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1310768646", "1310768646", "S12M060_Main", "box_Multiple_AND_152.Out", "box_PhoneCommunicationController_7.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Get_Player_ID_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_53
  l0.LayerName = "S12M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2032733727", "2032733727", "S12M060_Main", "box_Get_Player_ID_46.Out", "box_MissionLayer_v2_53.Load", clone, l0)
  l0:Load()
end
function export:f_box_Timer_v2_143_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1516745223"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_147_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_147_Out_1
  l0 = self.box_Timer_v2_143
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1123303127", "1123303127", "S12M060_Main", "box_Timer_v2_143.TimeElapsed", "box_Ordered_Output_147.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_57_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_74
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_57
  l1 = self.box_MissionCheckpointReach_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|765584452", "765584452", "S12M060_Main", "box_MultipleOR_57.Out", "box_MissionCheckpointReach_74.In", l0, l1)
  l1:In()
end
function export:f_box_S12M060_VRBattle_61_TrapHacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_139()
  l0 = self.box_S12M060_VRBattle_61
  l1 = self.box_MultipleOR_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1759316788", "1759316788", "S12M060_Main", "box_S12M060_VRBattle_61.TrapHacked", "box_MultipleOR_139.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Teleport_To_SpawnPoint_82_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_138
  l0.Seconds = 3
  l0 = self.box_Teleport_To_SpawnPoint_82
  l1 = self.box_Timer_v2_138
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|124813881", "124813881", "S12M060_Main", "box_Teleport_To_SpawnPoint_82.TeleportDone", "box_Timer_v2_138.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_15
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2107056818", "2107056818", "S12M060_Main", "box_Ordered_Output_16.Out", "box_CinematicPrep_15.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_49()
  l0 = self.box_MissionZone_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2008320861", "2008320861", "S12M060_Main", "box_Ordered_Output_16.Out", "box_MissionZone_49.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_27_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_17
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S12.S12M060.Objectives.Objective020",
    item = "Objective",
    id = "359121"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1452051135", "1452051135", "S12M060_Main", "box_Ordered_Output_27.Out", "box_MissionMessageController_v3_17.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_27_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_13
  l0.LMALayerName = self.MAR_01_BunkerMission_LMA
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1180198010", "1180198010", "S12M060_Main", "box_Ordered_Output_27.Out", "box_LMA_Layer_Controller_13.Load", clone, l0)
  l0:Load()
end
function export:f_box_Get_Player_ID_137_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_136
  l0.LayerName = "S12M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|235139295", "235139295", "S12M060_Main", "box_Get_Player_ID_137.Out", "box_MissionLayer_v2_136.Load", clone, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_126_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|977709398", "977709398", "S12M060_Main", "box_Ordered_Output_126.Out", "box_Timer_v2_40.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_117_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_119()
  l0 = self.box_Timer_v2_117
  l1 = self.box_Timer_v2_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|72508877", "72508877", "S12M060_Main", "box_Timer_v2_117.Stopped", "box_Timer_v2_119.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Timer_v2_117_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1153835594"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_166_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_166_Out_1
  l0 = self.box_Timer_v2_117
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1828222312", "1828222312", "S12M060_Main", "box_Timer_v2_117.TimeElapsed", "box_Ordered_Output_166.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_21_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_37
  l0.Checkpoint = "CheckPoint_4"
  l0 = self.box_CinematicPrep_21
  l1 = self.box_MissionCheckpointReach_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2077667578", "2077667578", "S12M060_Main", "box_CinematicPrep_21.PostOut", "box_MissionCheckpointReach_37.In", l0, l1)
  l1:In()
end
function export:f_box_Network_Surfing_Controller_60_Deactivated()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1587117566"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_165_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_165_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_165_Out_2
  l0 = self.box_Network_Surfing_Controller_60
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|151000144", "151000144", "S12M060_Main", "box_Network_Surfing_Controller_60.Deactivated", "box_Ordered_Output_165.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_53_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_12
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionLayer_v2_53
  l1 = self.box_CinematicPrep_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|774176397", "774176397", "S12M060_Main", "box_MissionLayer_v2_53.Loaded", "box_CinematicPrep_12.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Timer_v2_138_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_21
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_138
  l1 = self.box_CinematicPrep_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1863332957", "1863332957", "S12M060_Main", "box_Timer_v2_138.TimeElapsed", "box_CinematicPrep_21.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|332969831", "332969831", "S12M060_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_23_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_115()
  l0 = self.box_Timer_v2_23
  l1 = self.box_Timer_v2_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1083119849", "1083119849", "S12M060_Main", "box_Timer_v2_23.Stopped", "box_Timer_v2_115.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Timer_v2_23_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|837038297"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_163_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_163_Out_1
  l0 = self.box_Timer_v2_23
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|893876160", "893876160", "S12M060_Main", "box_Timer_v2_23.TimeElapsed", "box_Ordered_Output_163.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_72_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_84
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/4168566735.bnk"
  l0 = self.box_Timer_v2_72
  l1 = self.box_PlayDialogOnSoundPoint_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|509263485", "509263485", "S12M060_Main", "box_Timer_v2_72.TimeElapsed", "box_PlayDialogOnSoundPoint_84.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_119_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_103
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/3666495750.bnk"
  l0 = self.box_Timer_v2_119
  l1 = self.box_PlayDialogOnSoundPoint_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|302727544", "302727544", "S12M060_Main", "box_Timer_v2_119.TimeElapsed", "box_PlayDialogOnSoundPoint_103.Play", l0, l1)
  l1:Play()
end
function export:f_box_MissionCheckpointReach_74_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|123253430"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_27_Out_0
  l0.Out[1] = DummyFunction
  l0.Out[2] = self.f_box_Ordered_Output_27_Out_2
  l0.Out[3] = DummyFunction
  l0 = self.box_MissionCheckpointReach_74
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1310106552", "1310106552", "S12M060_Main", "box_MissionCheckpointReach_74.Out", "box_Ordered_Output_27.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_38
  l0.LayerName = "S12M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|327398736", "327398736", "S12M060_Main", "box_Get_Player_ID_39.Out", "box_MissionLayer_v2_38.Load", clone, l0)
  l0:Load()
end
function export:f_box_S12_M060_CIN_ConfrontLenni_Main_9_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_S12_M060_CIN_ConfrontLenni_Main_9
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1848126692", "1848126692", "S12M060_Main", "box_S12_M060_CIN_ConfrontLenni_Main_9.Out", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionLayer_v2_136_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_141()
  l0 = self.box_MissionLayer_v2_136
  l1 = self.box_MultipleOR_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1115110963", "1115110963", "S12M060_Main", "box_MissionLayer_v2_136.Loaded", "box_MultipleOR_141.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListWriter_56_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_56
  self.ScrambleNodes_SW = l0.Target
  l0 = self.box_S12M060_VRBattle_61
  l0.ScrambleNodesList = self.ScrambleNodes_SW
  l0.TrapNodeIn = self.VR_Node_SW
  l0 = self.box_ListWriter_56
  l1 = self.box_S12M060_VRBattle_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|282780614", "282780614", "S12M060_Main", "box_ListWriter_56.Added", "box_S12M060_VRBattle_61.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_56_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_56
  self.ScrambleNodes_SW = l0.Target
end
function export:f_box_ListWriter_56_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_56
  self.ScrambleNodes_SW = l0.Target
end
function export:f_box_SwitchOutput_v3_140_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_125
  l0.Seconds = self.LenniLaughsDelay
  l0 = self.box_SwitchOutput_v3_140
  l1 = self.box_Timer_v2_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2114989102", "2114989102", "S12M060_Main", "box_SwitchOutput_v3_140.Output", "box_Timer_v2_125.Start", l0, l1)
  l1:Start()
end
function export:f_box_SwitchOutput_v3_140_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_73
  l0.Seconds = self.LenniLaughsDelay
  l0 = self.box_SwitchOutput_v3_140
  l1 = self.box_Timer_v2_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1628572646", "1628572646", "S12M060_Main", "box_SwitchOutput_v3_140.Output", "box_Timer_v2_73.Start", l0, l1)
  l1:Start()
end
function export:f_box_SwitchOutput_v3_140_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_71
  l0.Seconds = self.LenniLaughsDelay
  l0 = self.box_SwitchOutput_v3_140
  l1 = self.box_Timer_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|659231331", "659231331", "S12M060_Main", "box_SwitchOutput_v3_140.Output", "box_Timer_v2_71.Start", l0, l1)
  l1:Start()
end
function export:f_box_SwitchOutput_v3_140_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_72
  l0.Seconds = self.LenniLaughsDelay
  l0 = self.box_SwitchOutput_v3_140
  l1 = self.box_Timer_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1664551038", "1664551038", "S12M060_Main", "box_SwitchOutput_v3_140.Output", "box_Timer_v2_72.Start", l0, l1)
  l1:Start()
end
function export:f_box_Interact_Gameplay_76_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|111738859"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_Interact_Gameplay_76
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|321902472", "321902472", "S12M060_Main", "box_Interact_Gameplay_76.Interacted", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_55_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_96
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S12.S12M060.Objectives.Objective042",
    item = "Objective",
    id = "643484"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_55
  l1 = self.box_MissionMessageController_v3_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1894436603", "1894436603", "S12M060_Main", "box_MissionCheckpointReach_55.Out", "box_MissionMessageController_v3_96.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_CinematicPrep_155_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_6
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S12.S12M060.Objectives.Objective010",
    item = "Objective",
    id = "359120"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_CinematicPrep_155
  l1 = self.box_MissionMessageController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1482049071", "1482049071", "S12M060_Main", "box_CinematicPrep_155.PostOut", "box_MissionMessageController_v3_6.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Multiple_AND_22_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Wrench DNT 2", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PhoneCommunicationController')-- Comment: Wrench DNT 2")
  l0 = self.box_PhoneCommunicationController_157
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055108868065"
  l0 = self.box_Multiple_AND_22
  l1 = self.box_PhoneCommunicationController_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|800746917", "800746917", "S12M060_Main", "box_Multiple_AND_22.Out", "box_PhoneCommunicationController_157.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_s12_m060_scr_MarcusDrop_Main_104_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_55
  l0.Checkpoint = "CheckPoint_3"
  l0 = self.box_s12_m060_scr_MarcusDrop_Main_104
  l1 = self.box_MissionCheckpointReach_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1843590145", "1843590145", "S12M060_Main", "box_s12_m060_scr_MarcusDrop_Main_104.Out", "box_MissionCheckpointReach_55.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Cinema_Zone_Cleanup_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|695095536"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_26_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1629112019", "1629112019", "S12M060_Main", "box_Ordered_Output_42.Out", "box_Cinema_Zone_Cleanup_26.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Ordered_Output_42_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_128
  l0.PGTMissionArea = "9223372047074040116"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|741361381", "741361381", "S12M060_Main", "box_Ordered_Output_42.Out", "box_PGTController_v2_128.Abort", clone, l0)
  l0:Abort()
end
function export:f_box_MissionCheckpointReach_37_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372062905894085"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|876689101"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_156_MovedForward
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionCheckpointReach_37
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|141174310", "141174310", "S12M060_Main", "box_MissionCheckpointReach_37.Out", "box_MoveableEntityController_156.MoveForward", l0, l1)
  l1:MoveForward()
end
function export:f_box_PlaySound_v2_164_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669162"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = 11
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1999574850"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_164
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1023103252", "1023103252", "S12M060_Main", "box_PlaySound_v2_164.Out", "box_MissionMusicController_167.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Reach_Gameplay_85_Reached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_152()
  l0 = self.box_Reach_Gameplay_85
  l1 = self.box_Multiple_AND_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|401547242", "401547242", "S12M060_Main", "box_Reach_Gameplay_85.Reached", "box_Multiple_AND_152.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MultipleOR_25_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S12M060_Main"
  l0 = self.box_MultipleOR_25
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|531708023", "531708023", "S12M060_Main", "box_MultipleOR_25.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_Hackable_Monitor_87_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|850385056"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_44_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_44_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_44_Out_2
  l0 = self.box_Hackable_Monitor_87
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|903276218", "903276218", "S12M060_Main", "box_Hackable_Monitor_87.Disabled", "box_Ordered_Output_44.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_87_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_87()
  l0 = self.box_Hackable_Monitor_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1457410763", "1457410763", "S12M060_Main", "box_Hackable_Monitor_87.HackSuccess", "box_Hackable_Monitor_87.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_S12M060_VRBattle_113_TrapHacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_139()
  l0 = self.box_S12M060_VRBattle_113
  l1 = self.box_MultipleOR_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1082254415", "1082254415", "S12M060_Main", "box_S12M060_VRBattle_113.TrapHacked", "box_MultipleOR_139.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Float_Arithmetics_120_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l1 = self.box_Timer_v2_119
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_119()
  l0 = self.box_Timer_v2_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1864285130", "1864285130", "S12M060_Main", "box_Float_Arithmetics_120.Out", "box_Timer_v2_119.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_51_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 300
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|801341867"
  l0.Out = self.f_box_SetFloat_v2_108_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1634095413", "1634095413", "S12M060_Main", "box_Ordered_Output_51.Out", "box_SetFloat_v2_108.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Ordered_Output_51_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_90
  l0.HackableEntity = self.BombVRPuzzleAccessNode
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|149767021", "149767021", "S12M060_Main", "box_Ordered_Output_51.Out", "box_HackableController_v2_90.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_51_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_145
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1650938424", "1650938424", "S12M060_Main", "box_Ordered_Output_51.Out", "box_PlaySound_v2_145.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_51_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_79()
  l0 = self.box_HackableController_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|332893436", "332893436", "S12M060_Main", "box_Ordered_Output_51.Out", "box_HackableController_v2_79.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_S12M060_VRBattle_33_TrapHacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_139()
  l0 = self.box_S12M060_VRBattle_33
  l1 = self.box_MultipleOR_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1910052489", "1910052489", "S12M060_Main", "box_S12M060_VRBattle_33.TrapHacked", "box_MultipleOR_139.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1471816236", "1471816236", "S12M060_Main", "box_Ordered_Output_14.Out", "box_MultipleOR_57.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|514016554", "514016554", "S12M060_Main", "box_Ordered_Output_14.Out", "box_MultipleOR_31.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionCheckpointReach_43_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_43
  l1 = self.box_S12_M060_CIN_ConfrontLenni_Main_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1683421860", "1683421860", "S12M060_Main", "box_MissionCheckpointReach_43.Out", "box_S12_M060_CIN_ConfrontLenni_Main_9.In", l0, l1)
  l1:In()
end
function export:f_box_Float_Arithmetics_116_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l1 = self.box_Timer_v2_115
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_115()
  l0 = self.box_Timer_v2_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1790882036", "1790882036", "S12M060_Main", "box_Float_Arithmetics_116.Out", "box_Timer_v2_115.Start", clone, l0)
  l0:Start()
end
function export:f_box_Hack_Gameplay_30_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 0.3
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|18663592"
  l0.Out = self.f_box_SetFloat_v2_132_Out
  l0 = self.box_Hack_Gameplay_30
  l1 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|389377067", "389377067", "S12M060_Main", "box_Hack_Gameplay_30.Hacked", "box_SetFloat_v2_132.FromFloat", l0, l1)
  l1:FromFloat()
end
function export:f_box_MapPointController_v4_99_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_99
  l1 = self.box_MissionMessageController_v3_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2112043869", "2112043869", "S12M060_Main", "box_MapPointController_v4_99.Hidden", "box_MissionMessageController_v3_58.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:f_box_Cinema_Zone_Cleanup_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Lanes_Restrictions_Control_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1425082275"
  l0.Out = self.f_box_Lanes_Restrictions_Control_54_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1324061268", "1324061268", "S12M060_Main", "box_Cinema_Zone_Cleanup_26.Out", "box_Lanes_Restrictions_Control_54.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_141_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_s12_m060_scr_MarcusDrop_Main_104
  l0.Player = self.PlayerEntity
  l0 = self.box_MultipleOR_141
  l1 = self.box_s12_m060_scr_MarcusDrop_Main_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1712881874", "1712881874", "S12M060_Main", "box_MultipleOR_141.Out", "box_s12_m060_scr_MarcusDrop_Main_104.In", l0, l1)
  l1:In()
end
function export:f_box_SetFloat_v2_108_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.BombTimer = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1797654518"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_161_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_161_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|843004919", "843004919", "S12M060_Main", "box_SetFloat_v2_108.Out", "box_Ordered_Output_161.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_154_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_154
  self.WrenchVehicle = l0.UserID
  l0 = self.box_CinematicPrep_155
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CLOController_154
  l1 = self.box_CinematicPrep_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2063238314", "2063238314", "S12M060_Main", "box_CLOController_154.OnUserInPlace", "box_CinematicPrep_155.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_43
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1882743552", "1882743552", "S12M060_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_43.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_90_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hack_Gameplay_30
  l0.Entity = self.BombVRPuzzleAccessNode
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0 = self.box_HackableController_v2_90
  l1 = self.box_Hack_Gameplay_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1817397249", "1817397249", "S12M060_Main", "box_HackableController_v2_90.Enabled", "box_Hack_Gameplay_30.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_163_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogOnSoundPoint_75
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/4105995969.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|298394652", "298394652", "S12M060_Main", "box_Ordered_Output_163.Out", "box_PlayDialogOnSoundPoint_75.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_163_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_162
  l0.SoundId = "soundbinary/3552307770.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1808597611", "1808597611", "S12M060_Main", "box_Ordered_Output_163.Out", "box_PlaySound_v2_162.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_44_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_99
  l0.MapPoint = self.BombVRPuzzleOBjIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2110837307", "2110837307", "S12M060_Main", "box_Ordered_Output_44.Out", "box_MapPointController_v4_99.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_44_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimerToScreen_81()
  l0 = self.box_TimerToScreen_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1972177669", "1972177669", "S12M060_Main", "box_Ordered_Output_44.Out", "box_TimerToScreen_81.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_44_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1528763855"
  l0.Out = self.f_box_Simple_Node_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|903970761", "903970761", "S12M060_Main", "box_Ordered_Output_44.Out", "box_Simple_Node_8.In", clone, l0)
  l0:In()
end
function export:f_box_Multiple_AND_144_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Multiple_AND_144
  l1 = self.box_Timer_v2_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|894189458", "894189458", "S12M060_Main", "box_Multiple_AND_144.Out", "box_Timer_v2_143.Start", l0, l1)
  l1:Start()
end
function export:f_box_S12M060_DefuseFailExplosions_5_BombsExploded()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_80
  l0.Seconds = 0.25
  l0 = self.box_S12M060_DefuseFailExplosions_5
  l1 = self.box_Timer_v2_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|277071592", "277071592", "S12M060_Main", "box_S12M060_DefuseFailExplosions_5.BombsExploded", "box_Timer_v2_80.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_115_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_117()
  l0 = self.box_Timer_v2_115
  l1 = self.box_Timer_v2_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1149261641", "1149261641", "S12M060_Main", "box_Timer_v2_115.Stopped", "box_Timer_v2_117.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Timer_v2_115_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_100
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/1007340844.bnk"
  l0 = self.box_Timer_v2_115
  l1 = self.box_PlayDialogOnSoundPoint_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|130863292", "130863292", "S12M060_Main", "box_Timer_v2_115.TimeElapsed", "box_PlayDialogOnSoundPoint_100.Play", l0, l1)
  l1:Play()
end
function export:f_box_MoveableEntityController_156_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_171()
  l0 = self.box_Mission_End_171
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|155220865", "155220865", "S12M060_Main", "box_MoveableEntityController_156.MovedForward", "box_Mission_End_171.End", clone, l0)
  l0:End()
end
function export:f_box_Timer_v2_125_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_123
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/2971121199.bnk"
  l0 = self.box_Timer_v2_125
  l1 = self.box_PlayDialogOnSoundPoint_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|185998862", "185998862", "S12M060_Main", "box_Timer_v2_125.TimeElapsed", "box_PlayDialogOnSoundPoint_123.Play", l0, l1)
  l1:Play()
end
function export:f_box_MissionZone_49_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_102
  l0.PGTMissionArea = "9223372047074040116"
  l0 = self.box_MissionZone_49
  l1 = self.box_PGTController_v2_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|303949647", "303949647", "S12M060_Main", "box_MissionZone_49.Enabled", "box_PGTController_v2_102.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_7_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_PhoneCommunicationController_7
  l1 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1890972273", "1890972273", "S12M060_Main", "box_PhoneCommunicationController_7.OnCommunicationFinished", "box_MultipleOR_31.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PhoneCommunicationController_7_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_PhoneCommunicationController_7
  l1 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|381510653", "381510653", "S12M060_Main", "box_PhoneCommunicationController_7.StartCommunicationOut", "box_MultipleOR_57.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_122_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_122
  l1 = self.box_S12M060_DefuseFailExplosions_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1238252922", "1238252922", "S12M060_Main", "box_Timer_v2_122.TimeElapsed", "box_S12M060_DefuseFailExplosions_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_149
  l0.Seconds = 5
  l0 = self.box_MissionMessageController_v3_6
  l1 = self.box_Timer_v2_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1872473255", "1872473255", "S12M060_Main", "box_MissionMessageController_v3_6.Out", "box_Timer_v2_149.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_47_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_47
  self.ScrambleNodes_NE = l0.Target
  l0 = self.box_S12M060_VRBattle_33
  l0.ScrambleNodesList = self.ScrambleNodes_NE
  l0.TrapNodeIn = self.VR_Node_NE
  l0 = self.box_ListWriter_47
  l1 = self.box_S12M060_VRBattle_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1566876643", "1566876643", "S12M060_Main", "box_ListWriter_47.Added", "box_S12M060_VRBattle_33.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_47_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_47
  self.ScrambleNodes_NE = l0.Target
end
function export:f_box_ListWriter_47_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_47
  self.ScrambleNodes_NE = l0.Target
end
function export:f_box_Simple_Node_68_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_65()
  l0 = self.box_Multiple_AND_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1372383817", "1372383817", "S12M060_Main", "box_Simple_Node_68.Out", "box_Multiple_AND_65.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_InteractionScriptController_89_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1657777548"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|602018013", "602018013", "S12M060_Main", "box_InteractionScriptController_89.Enabled", "box_Ordered_Output_35.In", clone, l0)
  l0:In()
end
function export:f_box_SendDamageBox_18_DamageSent()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_97
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "BombsNotDefused",
    id = "650873"
  }
  l0 = self.box_SendDamageBox_18
  l1 = self.box_MissionController_v4_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1755471427", "1755471427", "S12M060_Main", "box_SendDamageBox_18.DamageSent", "box_MissionController_v4_97.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_CinematicPrep_12_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|633504162"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  l0 = self.box_CinematicPrep_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|413112660", "413112660", "S12M060_Main", "box_CinematicPrep_12.PostOut", "box_Ordered_Output_14.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_32_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_154
  l0.CLO = "9223372055068614974"
  l0 = self.box_MissionCheckpointReach_32
  l1 = self.box_CLOController_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|820422052", "820422052", "S12M060_Main", "box_MissionCheckpointReach_32.Out", "box_CLOController_154.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlayDialogOnSoundPoint_83_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_92
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/16671305.bnk"
  l0 = self.box_PlayDialogOnSoundPoint_83
  l1 = self.box_PlayDialogOnSoundPoint_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|757504576", "757504576", "S12M060_Main", "box_PlayDialogOnSoundPoint_83.Finished", "box_PlayDialogOnSoundPoint_92.Play", l0, l1)
  l1:Play()
end
function export:f_box_Simple_Node_121_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_23()
  l0 = self.box_Timer_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|248430166", "248430166", "S12M060_Main", "box_Simple_Node_121.Out", "box_Timer_v2_23.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_PhoneCommunicationController_157_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_152()
  l0 = self.box_PhoneCommunicationController_157
  l1 = self.box_Multiple_AND_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1010041964", "1010041964", "S12M060_Main", "box_PhoneCommunicationController_157.OnCommunicationFinished", "box_Multiple_AND_152.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Float_Arithmetics_109_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l1 = self.box_Timer_v2_23
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_23()
  l0 = self.box_Timer_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|733076939", "733076939", "S12M060_Main", "box_Float_Arithmetics_109.Out", "box_Timer_v2_23.Start", clone, l0)
  l0:Start()
end
function export:f_box_S12_M060_CIN_BunkerBoom_Main_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_59
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S12.S12M060.Objectives.Objective040",
    item = "Objective",
    id = "407533"
  }
  l0 = self.box_S12_M060_CIN_BunkerBoom_Main_66
  l1 = self.box_MissionMessageController_v3_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|165193204", "165193204", "S12M060_Main", "box_S12_M060_CIN_BunkerBoom_Main_66.Out", "box_MissionMessageController_v3_59.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_166_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogOnSoundPoint_77
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/954511156.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1572991631", "1572991631", "S12M060_Main", "box_Ordered_Output_166.Out", "box_PlayDialogOnSoundPoint_77.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_166_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_169
  l0.SoundId = "soundbinary/3217659541.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1574659130", "1574659130", "S12M060_Main", "box_Ordered_Output_166.Out", "box_PlaySound_v2_169.Play", clone, l0)
  l0:Play()
end
function export:f_box_S12M060_VRBattle_70_TrapHacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_139()
  l0 = self.box_S12M060_VRBattle_70
  l1 = self.box_MultipleOR_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|773921229", "773921229", "S12M060_Main", "box_S12M060_VRBattle_70.TrapHacked", "box_MultipleOR_139.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_MultipleOR_31_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_76
  l0.Entity = self.Secret_Entrance_Trigger
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  l0 = self.box_MultipleOR_31
  l1 = self.box_Interact_Gameplay_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|303580298", "303580298", "S12M060_Main", "box_MultipleOR_31.Out", "box_Interact_Gameplay_76.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_45_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_87()
  l0 = self.box_Hackable_Monitor_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1618315303", "1618315303", "S12M060_Main", "box_Ordered_Output_45.Out", "box_Hackable_Monitor_87.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_45_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_47
  l0.Input = self.ScrambleNodes_NE
  l0.Data[0] = "9223372049759826823"
  l0.Data[1] = "9223372050479473299"
  l0.Data[2] = "9223372050479473295"
  l0.Data[3] = "9223372050479473297"
  l0.Data[4] = "9223372050479473293"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|731072202", "731072202", "S12M060_Main", "box_Ordered_Output_45.Out", "box_ListWriter_47.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_45_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_56
  l0.Input = self.ScrambleNodes_SW
  l0.Data[0] = "9223372049759826874"
  l0.Data[1] = "9223372059155174627"
  l0.Data[2] = "9223372050374033061"
  l0.Data[3] = "9223372050374033066"
  l0.Data[4] = "9223372050374033074"
  l0.Data[5] = "9223372050374033061"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|226824969", "226824969", "S12M060_Main", "box_Ordered_Output_45.Out", "box_ListWriter_56.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_45_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_69
  l0.Input = self.ScrambleNodes_NW
  l0.Data[0] = "9223372049759826872"
  l0.Data[1] = "9223372050374033001"
  l0.Data[2] = "9223372050374032999"
  l0.Data[3] = "9223372050374033003"
  l0.Data[4] = "9223372050374033005"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|216608852", "216608852", "S12M060_Main", "box_Ordered_Output_45.Out", "box_ListWriter_69.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_45_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_114
  l0.Input = self.ScrambleNodes_SE
  l0.Data[0] = "9223372059155174450"
  l0.Data[1] = "9223372059155174454"
  l0.Data[2] = "9223372059155174474"
  l0.Data[3] = "9223372059155174458"
  l0.Data[4] = "9223372059155174466"
  l0.Data[5] = "9223372059155174468"
  l0.Data[6] = "9223372059155174472"
  l0.Data[7] = "9223372059155174456"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|336407454", "336407454", "S12M060_Main", "box_Ordered_Output_45.Out", "box_ListWriter_114.Add", clone, l0)
  l0:Add()
end
function export:f_box_MissionMessageController_v3_17_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_49()
  l0 = self.box_MissionMessageController_v3_17
  l1 = self.box_MissionZone_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|827173178", "827173178", "S12M060_Main", "box_MissionMessageController_v3_17.Out", "box_MissionZone_49.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_69_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_69
  self.ScrambleNodes_NW = l0.Target
  l0 = self.box_S12M060_VRBattle_70
  l0.ScrambleNodesList = self.ScrambleNodes_NW
  l0.TrapNodeIn = self.VR_Node_NW
  l0 = self.box_ListWriter_69
  l1 = self.box_S12M060_VRBattle_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|58116131", "58116131", "S12M060_Main", "box_ListWriter_69.Added", "box_S12M060_VRBattle_70.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_69_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_69
  self.ScrambleNodes_NW = l0.Target
end
function export:f_box_ListWriter_69_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_69
  self.ScrambleNodes_NW = l0.Target
end
function export:f_box_LMA_Layer_Controller_13_Loaded()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: LMA Loaded", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: LMA Loaded")
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|986615514"
  l0.Out = self.f_box_Simple_Node_68_Out
  l0 = self.box_LMA_Layer_Controller_13
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1984844288", "1984844288", "S12M060_Main", "box_LMA_Layer_Controller_13.Loaded", "box_Simple_Node_68.In", l0, l1)
  l1:In()
end
function export:f_box_TimerToScreen_81_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_122
  l0.Seconds = 0.75
  l0 = self.box_TimerToScreen_81
  l1 = self.box_Timer_v2_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|104505431", "104505431", "S12M060_Main", "box_TimerToScreen_81.TimeElapsed", "box_Timer_v2_122.Start", l0, l1)
  l1:Start()
end
function export:f_box_Float_Arithmetics_118_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l1 = self.box_Timer_v2_117
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_117()
  l0 = self.box_Timer_v2_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1361729939", "1361729939", "S12M060_Main", "box_Float_Arithmetics_118.Out", "box_Timer_v2_117.Start", clone, l0)
  l0:Start()
end
function export:f_box_PhoneCommunicationController_148_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_146()
  l0 = self.box_PhoneCommunicationController_148
  l1 = self.box_Player_Proximity_Monitor_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|717709429", "717709429", "S12M060_Main", "box_PhoneCommunicationController_148.StartCommunicationOut", "box_Player_Proximity_Monitor_146.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMusicController_127_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_79()
  l0 = self.box_HackableController_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1098446937", "1098446937", "S12M060_Main", "box_MissionMusicController_127.Activated", "box_HackableController_v2_79.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_PlayDialogOnSoundPoint_103_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_88
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/2528145742.bnk"
  l0 = self.box_PlayDialogOnSoundPoint_103
  l1 = self.box_PlayDialogOnSoundPoint_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1518350913", "1518350913", "S12M060_Main", "box_PlayDialogOnSoundPoint_103.Finished", "box_PlayDialogOnSoundPoint_88.Play", l0, l1)
  l1:Play()
end
function export:f_box_OnceOnly_v3_41_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: BunkerRoom_Prompt", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PhoneCommunicationController')-- Comment: BunkerRoom_Prompt")
  l0 = self.box_PhoneCommunicationController_19
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050202038913"
  l0 = self.box_OnceOnly_v3_41
  l1 = self.box_PhoneCommunicationController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|659397679", "659397679", "S12M060_Main", "box_OnceOnly_v3_41.Out", "box_PhoneCommunicationController_19.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PhoneCommunicationController_19_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_144()
  l0 = self.box_PhoneCommunicationController_19
  l1 = self.box_Multiple_AND_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1148876066", "1148876066", "S12M060_Main", "box_PhoneCommunicationController_19.OnCommunicationFinished", "box_Multiple_AND_144.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_PlaySequence_v5_34_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_65()
  l0 = self.box_PlaySequence_v5_34
  l1 = self.box_Multiple_AND_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1795369146", "1795369146", "S12M060_Main", "box_PlaySequence_v5_34.Finished", "box_Multiple_AND_65.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Lanes_Restrictions_Control_54_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|139397324"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_126_Out_0
  l0.Out[1] = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1459163946", "1459163946", "S12M060_Main", "box_Lanes_Restrictions_Control_54.Out", "box_Ordered_Output_126.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_32
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_36
  l1 = self.box_MissionCheckpointReach_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2129684416", "2129684416", "S12M060_Main", "box_MultipleOR_36.Out", "box_MissionCheckpointReach_32.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_111_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_64
  l0.SpawnPoint = "9223372055068695496"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_Timer_v2_111
  l1 = self.box_Teleport_To_SpawnPoint_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1801644326", "1801644326", "S12M060_Main", "box_Timer_v2_111.TimeElapsed", "box_Teleport_To_SpawnPoint_64.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_139_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_139
  l1 = self.box_SwitchOutput_v3_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1808662921", "1808662921", "S12M060_Main", "box_MultipleOR_139.Out", "box_SwitchOutput_v3_140.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_96_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.CentralConsole
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1050810481"
  l0.Enabled = self.f_box_InteractionScriptController_89_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionMessageController_v3_96
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2141921430", "2141921430", "S12M060_Main", "box_MissionMessageController_v3_96.Out", "box_InteractionScriptController_89.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_147_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S12_M060_CIN_BunkerBoom_Main_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|978101578", "978101578", "S12M060_Main", "box_Ordered_Output_147.Out", "box_S12_M060_CIN_BunkerBoom_Main_66.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_147_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669162"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1364525155"
  l0.Activated = self.f_box_MissionMusicController_127_Activated
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|80102008", "80102008", "S12M060_Main", "box_Ordered_Output_147.Out", "box_MissionMusicController_127.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Player_Proximity_Monitor_151_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_22()
  l0 = self.box_Player_Proximity_Monitor_151
  l1 = self.box_Multiple_AND_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1155026304", "1155026304", "S12M060_Main", "box_Player_Proximity_Monitor_151.Disabled", "box_Multiple_AND_22.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Player_Proximity_Monitor_151_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_151()
  l0 = self.box_Player_Proximity_Monitor_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|680938438", "680938438", "S12M060_Main", "box_Player_Proximity_Monitor_151.EnterRadius", "box_Player_Proximity_Monitor_151.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1117222478"
  l0.Out = self.f_box_Simple_Node_121_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|527884049", "527884049", "S12M060_Main", "box_Simple_Node_8.Out", "box_Simple_Node_121.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_165_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S12_M060_CIN_BelongToUs_Main_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|277945993", "277945993", "S12M060_Main", "box_Ordered_Output_165.Out", "box_S12_M060_CIN_BelongToUs_Main_101.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_165_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_164
  l0.SoundId = "soundbinary/81442961.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1814020935", "1814020935", "S12M060_Main", "box_Ordered_Output_165.Out", "box_PlaySound_v2_164.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_165_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_170
  l0.SoundId = "soundbinary/1462602391.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1519307379", "1519307379", "S12M060_Main", "box_Ordered_Output_165.Out", "box_PlaySound_v2_170.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_149_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Reach_Gameplay_85
  l0.Entity = "9223372055068614976"
  l0.Entity_AreaRadius = 100
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_Timer_v2_149
  l1 = self.box_Reach_Gameplay_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1065621869", "1065621869", "S12M060_Main", "box_Timer_v2_149.Out", "box_Reach_Gameplay_85.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_149_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: JOSH_WWIISchematic", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PhoneCommunicationController')-- Comment: JOSH_WWIISchematic")
  l0 = self.box_PhoneCommunicationController_148
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055160263234"
  l0 = self.box_Timer_v2_149
  l1 = self.box_PhoneCommunicationController_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1906869667", "1906869667", "S12M060_Main", "box_Timer_v2_149.TimeElapsed", "box_PhoneCommunicationController_148.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_InteractionScriptMonitor_v2_98_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_98
  l1 = self.box_OnceOnly_v3_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1461079159", "1461079159", "S12M060_Main", "box_InteractionScriptMonitor_v2_98.Disabled", "box_OnceOnly_v3_41.In", l0, l1)
  l1:In(0)
end
function export:f_box_InteractionScriptMonitor_v2_98_InteractionStarted()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_98()
  l0 = self.box_InteractionScriptMonitor_v2_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|201544117", "201544117", "S12M060_Main", "box_InteractionScriptMonitor_v2_98.InteractionStarted", "box_InteractionScriptMonitor_v2_98.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PhoneCommunicationController_150_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_22()
  l0 = self.box_PhoneCommunicationController_150
  l1 = self.box_Multiple_AND_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1338332309", "1338332309", "S12M060_Main", "box_PhoneCommunicationController_150.OnCommunicationFinished", "box_Multiple_AND_22.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Timer_v2_71_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_67
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/2985910083.bnk"
  l0 = self.box_Timer_v2_71
  l1 = self.box_PlayDialogOnSoundPoint_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1995708383", "1995708383", "S12M060_Main", "box_Timer_v2_71.TimeElapsed", "box_PlayDialogOnSoundPoint_67.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_106
  l0.Entity = self.CentralConsole
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1514987635", "1514987635", "S12M060_Main", "box_Ordered_Output_35.Out", "box_Interact_Gameplay_106.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: GetDecryptKey", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PhoneCommunicationController')-- Comment: GetDecryptKey")
  l0 = self.box_PhoneCommunicationController_112
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055108868068"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1935806826", "1935806826", "S12M060_Main", "box_Ordered_Output_35.Out", "box_PhoneCommunicationController_112.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Teleport_To_SpawnPoint_64_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_52
  l0.Seconds = 5
  l0 = self.box_Teleport_To_SpawnPoint_64
  l1 = self.box_Timer_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|411297731", "411297731", "S12M060_Main", "box_Teleport_To_SpawnPoint_64.TeleportDone", "box_Timer_v2_52.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialogOnSoundPoint_92_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_110
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/713515815.bnk"
  l0 = self.box_PlayDialogOnSoundPoint_92
  l1 = self.box_PlayDialogOnSoundPoint_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|680295303", "680295303", "S12M060_Main", "box_PlayDialogOnSoundPoint_92.Finished", "box_PlayDialogOnSoundPoint_110.Play", l0, l1)
  l1:Play()
end
function export:f_box_S12_M060_CIN_BelongToUs_Main_101_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_82
  l0.SpawnPoint = "9223372049668376974"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_S12_M060_CIN_BelongToUs_Main_101
  l1 = self.box_Teleport_To_SpawnPoint_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|502780999", "502780999", "S12M060_Main", "box_S12_M060_CIN_BelongToUs_Main_101.Out", "box_Teleport_To_SpawnPoint_82.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_161_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|2116339231"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_107_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_107_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_107_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_107_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_107_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|488482945", "488482945", "S12M060_Main", "box_Ordered_Output_161.Out", "box_Ordered_Output_107.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_161_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimerToScreen_81()
  l0 = self.box_TimerToScreen_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1126899588", "1126899588", "S12M060_Main", "box_Ordered_Output_161.Out", "box_TimerToScreen_81.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialogOnSoundPoint_88_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_83
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/50640590.bnk"
  l0 = self.box_PlayDialogOnSoundPoint_88
  l1 = self.box_PlayDialogOnSoundPoint_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1997092335", "1997092335", "S12M060_Main", "box_PlayDialogOnSoundPoint_88.Finished", "box_PlayDialogOnSoundPoint_83.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_73_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_95
  l0.Entity = self.Lenni_Taunt_SoundPoint
  l0.SoundId = "soundbinary/1807260655.bnk"
  l0 = self.box_Timer_v2_73
  l1 = self.box_PlayDialogOnSoundPoint_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|255582676", "255582676", "S12M060_Main", "box_Timer_v2_73.TimeElapsed", "box_PlayDialogOnSoundPoint_95.Play", l0, l1)
  l1:Play()
end
function export:f_box_Interact_Gameplay_106_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_144()
  l0 = self.box_Interact_Gameplay_106
  l1 = self.box_Multiple_AND_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1482469634", "1482469634", "S12M060_Main", "box_Interact_Gameplay_106.Interacted", "box_Multiple_AND_144.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Interact_Gameplay_106_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_98()
  l0 = self.box_Interact_Gameplay_106
  l1 = self.box_InteractionScriptMonitor_v2_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1164970428", "1164970428", "S12M060_Main", "box_Interact_Gameplay_106.Started", "box_InteractionScriptMonitor_v2_98.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Multiple_AND_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Multiple_AND_65
  l1 = self.box_Timer_v2_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1084006040", "1084006040", "S12M060_Main", "box_Multiple_AND_65.Out", "box_Timer_v2_111.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_58_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_58
  l1 = self.box_Network_Surfing_Controller_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1175230039", "1175230039", "S12M060_Main", "box_MissionMessageController_v3_58.Out", "box_Network_Surfing_Controller_60.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_ListWriter_114_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_114
  self.ScrambleNodes_SE = l0.Target
  l0 = self.box_S12M060_VRBattle_113
  l0.ScrambleNodesList = self.ScrambleNodes_SE
  l0.TrapNodeIn = self.VR_Node_SE
  l0 = self.box_ListWriter_114
  l1 = self.box_S12M060_VRBattle_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|888579427", "888579427", "S12M060_Main", "box_ListWriter_114.Added", "box_S12M060_VRBattle_113.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_114_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_114
  self.ScrambleNodes_SE = l0.Target
end
function export:f_box_ListWriter_114_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_114
  self.ScrambleNodes_SE = l0.Target
end
function export:f_box_MissionLayer_v2_38_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_MissionLayer_v2_38
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1820508584", "1820508584", "S12M060_Main", "box_MissionLayer_v2_38.Loaded", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Player_Proximity_Monitor_146_Disabled()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Wrench DNT 1", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PhoneCommunicationController')-- Comment: Wrench DNT 1")
  l0 = self.box_PhoneCommunicationController_150
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055108868063"
  l0 = self.box_Player_Proximity_Monitor_146
  l1 = self.box_PhoneCommunicationController_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1370363122", "1370363122", "S12M060_Main", "box_Player_Proximity_Monitor_146.Disabled", "box_PhoneCommunicationController_150.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Player_Proximity_Monitor_146_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_151()
  l0 = self.box_Player_Proximity_Monitor_146
  l1 = self.box_Player_Proximity_Monitor_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1718714152", "1718714152", "S12M060_Main", "box_Player_Proximity_Monitor_146.Enabled", "box_Player_Proximity_Monitor_151.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Player_Proximity_Monitor_146_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_146()
  l0 = self.box_Player_Proximity_Monitor_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1232727899", "1232727899", "S12M060_Main", "box_Player_Proximity_Monitor_146.EnterRadius", "box_Player_Proximity_Monitor_146.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_40_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_34
  l0.SceneEntity = "9223372060271589495"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S12/S12_M060_SCR_ManHoleOpening/s12_m060_scr_manholeopening.seq"
  l0 = self.box_Timer_v2_40
  l1 = self.box_PlaySequence_v5_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|242804091", "242804091", "S12M060_Main", "box_Timer_v2_40.TimeElapsed", "box_PlaySequence_v5_34.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_52_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_141()
  l0 = self.box_Timer_v2_52
  l1 = self.box_MultipleOR_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1087576599", "1087576599", "S12M060_Main", "box_Timer_v2_52.TimeElapsed", "box_MultipleOR_141.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_59_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|607960739"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_51_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_51_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_51_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_51_Out_3
  l0 = self.box_MissionMessageController_v3_59
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|397214200", "397214200", "S12M060_Main", "box_MissionMessageController_v3_59.Out", "box_Ordered_Output_51.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_107_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.BombTimer
  l0.B = 120
  l0._graph = self
  l0._name = "box_Float_Arithmetics_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1139120162"
  l0.Out = self.f_box_Float_Arithmetics_109_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|975761440", "975761440", "S12M060_Main", "box_Ordered_Output_107.Out", "box_Float_Arithmetics_109.Sub", clone, l0)
  l0:Sub()
end
function export:f_box_Ordered_Output_107_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.BombTimer
  l0.B = 60
  l0._graph = self
  l0._name = "box_Float_Arithmetics_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|640144266"
  l0.Out = self.f_box_Float_Arithmetics_116_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|615554400", "615554400", "S12M060_Main", "box_Ordered_Output_107.Out", "box_Float_Arithmetics_116.Sub", clone, l0)
  l0:Sub()
end
function export:f_box_Ordered_Output_107_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.BombTimer
  l0.B = 30
  l0._graph = self
  l0._name = "box_Float_Arithmetics_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1321015156"
  l0.Out = self.f_box_Float_Arithmetics_118_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|942528308", "942528308", "S12M060_Main", "box_Ordered_Output_107.Out", "box_Float_Arithmetics_118.Sub", clone, l0)
  l0:Sub()
end
function export:f_box_Ordered_Output_107_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.BombTimer
  l0.B = 14
  l0._graph = self
  l0._name = "box_Float_Arithmetics_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|604698597"
  l0.Out = self.f_box_Float_Arithmetics_120_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|1180445271", "1180445271", "S12M060_Main", "box_Ordered_Output_107.Out", "box_Float_Arithmetics_120.Sub", clone, l0)
  l0:Sub()
end
function export:f_box_Ordered_Output_107_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: DedSec_01", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PhoneCommunicationController')-- Comment: DedSec_01")
  l0 = self.box_PhoneCommunicationController_124
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055570568160"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\S12M060.domino|@S12M060_Main|279583107", "279583107", "S12M060_Main", "box_Ordered_Output_107.Out", "box_PhoneCommunicationController_124.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:OnEnter_box_Multiple_AND_152()
end
function export:OnEnter_box_MultipleOR_57()
end
function export:OnEnter_box_Mission_End_171()
  local l0
  l0 = self.box_Mission_End_171
  l0.Checkpoint = "CheckPoint_4"
  l0.MissionLayer = "S12M060_Main"
  l0.LmaLayer = self.MAR_01_BunkerMission_LMA
  l0.TeamSpeak = "PhoneCommunicationSettingsDb.9223372055306113396"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_Timer_v2_117()
end
function export:OnEnter_box_Timer_v2_23()
end
function export:OnEnter_box_Timer_v2_119()
end
function export:OnEnter_box_Multiple_AND_22()
end
function export:OnEnter_box_MultipleOR_25()
end
function export:OnEnter_box_Hackable_Monitor_87()
  local l0
  l0 = self.box_Hackable_Monitor_87
  l0.HackableEntity = self.BombVRPuzzleFinalNode
end
function export:OnEnter_box_HackableController_v2_79()
  local l0
  l0 = self.box_HackableController_v2_79
  l0.HackableEntity = "9223372061117396007"
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_MultipleOR_141()
end
function export:OnEnter_box_Multiple_AND_144()
end
function export:OnEnter_box_Timer_v2_115()
end
function export:OnEnter_box_MissionZone_49()
  local l0
  l0 = self.box_MissionZone_49
  l0.MissionArea = self.MissionZoneVolume
  l0.MissionLayer = "S12M060_Main"
  l0.LmaLayer = self.MAR_01_BunkerMission_LMA
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_31()
end
function export:OnEnter_box_TimerToScreen_81()
  local l0
  l0 = self.box_TimerToScreen_81
  l0.Seconds = self.BombTimer
end
function export:OnEnter_box_MultipleOR_36()
end
function export:OnEnter_box_MultipleOR_139()
end
function export:OnEnter_box_Player_Proximity_Monitor_151()
  local l0
  l0 = self.box_Player_Proximity_Monitor_151
  l0.TargetEntity = "9223372055068614976"
  l0.Radius = 900
end
function export:OnEnter_box_InteractionScriptMonitor_v2_98()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_98
  l0.InteractionScriptEntity = self.CentralConsole
end
function export:OnEnter_box_Multiple_AND_65()
end
function export:OnEnter_box_Player_Proximity_Monitor_146()
  local l0
  l0 = self.box_Player_Proximity_Monitor_146
  l0.TargetEntity = "9223372055068614976"
  l0.Radius = 3300
end
_compilerVersion = 4
