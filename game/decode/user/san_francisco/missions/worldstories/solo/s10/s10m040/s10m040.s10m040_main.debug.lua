export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/S10M040/S10_M040_IOP.S10_M040_IOP_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/S10M040/S10M040.S10M040_SwapController.debug.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:LoadResource("soundbinary/2286467389.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3970503291.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2043213869.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2764133111.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2357083344.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S10M040_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main"
  self.PlayerEntity = nil
  self.Screen = nil
  self.List_Screens = {}
  self.TranceiverPlaced = 0
  self.box_MultipleOR_102 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_102
  l0._graph = self
  l0._name = "box_MultipleOR_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|36188148"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_102_Out
  self.box_PhoneCommunicationController_29 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_29
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|78294105"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_29_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_38 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_38
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|82630578"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_38_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_38_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlaySound_v2_109 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_109
  l0._graph = self
  l0._name = "box_PlaySound_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|123598442"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_67 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_67
  l0._graph = self
  l0._name = "box_MissionLayer_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|130777651"
  l0.Loaded = self.f_box_MissionLayer_v2_67_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_ListForEach_115 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_115
  l0._graph = self
  l0._name = "box_ListForEach_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|144323409"
  l0.Started = self.f_box_ListForEach_115_Started
  l0.Stopped = self.f_box_ListForEach_115_Stopped
  l0.ForEach = self.f_box_ListForEach_115_ForEach
  l0.GotNext = self.f_box_ListForEach_115_GotNext
  l0.EndOfList = self.f_box_ListForEach_115_EndOfList
  l0.GotFirst = DummyFunction
  self.box_MissionMessageController_v3_98 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_98
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|159020903"
  l0.Out = self.f_box_MissionMessageController_v3_98_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_108 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_108
  l0._graph = self
  l0._name = "box_PlaySound_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|213802938"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_39 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_39
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|219493548"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_39_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_110 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_110
  l0._graph = self
  l0._name = "box_MultipleOR_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|243645311"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_110_Out
  self.box_ConsoleCommand_v2_57 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_57
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|248656304"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_57_Executed
  self.box_PlaySound_v2_126 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_126
  l0._graph = self
  l0._name = "box_PlaySound_v2_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|290665818"
  l0.Out = self.f_box_PlaySound_v2_126_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_83 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_83
  l0._graph = self
  l0._name = "box_Hackable_Monitor_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|335054387"
  l0.Enabled = self.f_box_Hackable_Monitor_83_Enabled
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_83_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_ListForEach_81 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_81
  l0._graph = self
  l0._name = "box_ListForEach_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|394011967"
  l0.Started = self.f_box_ListForEach_81_Started
  l0.Stopped = self.f_box_ListForEach_81_Stopped
  l0.ForEach = self.f_box_ListForEach_81_ForEach
  l0.GotNext = self.f_box_ListForEach_81_GotNext
  l0.EndOfList = self.f_box_ListForEach_81_EndOfList
  l0.GotFirst = DummyFunction
  self.box_S10M040_SwapController_4 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/S10M040/S10M040.S10M040_SwapController.debug.lua")
  l0 = self.box_S10M040_SwapController_4
  l0._graph = self
  l0._name = "box_S10M040_SwapController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|400314540"
  l0.Started = self.f_box_S10M040_SwapController_4_Started
  l0.Showed = DummyFunction
  l0.Hidden = self.f_box_S10M040_SwapController_4_Hidden
  self.box_OnceOnly_v3_56 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_56
  l0._graph = self
  l0._name = "box_OnceOnly_v3_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|419885883"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_56_Out
  l0.ResetOut = DummyFunction
  self.box_MissionLayer_v2_103 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_103
  l0._graph = self
  l0._name = "box_MissionLayer_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|455997347"
  l0.Loaded = self.f_box_MissionLayer_v2_103_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_v3_72 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_72
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|469115539"
  l0.Out = self.f_box_MissionMessageController_v3_72_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_107 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_107
  l0._graph = self
  l0._name = "box_PlaySound_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|571453036"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_21 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_21
  l0._graph = self
  l0._name = "box_CinematicPrep_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|633436832"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_21_PostOut
  self.box_MultipleOR_97 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_97
  l0._graph = self
  l0._name = "box_MultipleOR_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|654783709"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_97_Out
  self.box_HackableController_v2_131 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_131
  l0._graph = self
  l0._name = "box_HackableController_v2_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|659051582"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_131_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_S10_M040_IOP_Main_80 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/S10M040/S10_M040_IOP.S10_M040_IOP_Main.debug.lua")
  l0 = self.box_S10_M040_IOP_Main_80
  l0._graph = self
  l0._name = "box_S10_M040_IOP_Main_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|665384902"
  l0.Out = self.f_box_S10_M040_IOP_Main_80_Out
  self.box_MultipleOR_114 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_114
  l0._graph = self
  l0._name = "box_MultipleOR_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|694648561"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_114_Out
  self.box_ListForEach_135 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_135
  l0._graph = self
  l0._name = "box_ListForEach_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|712954926"
  l0.Started = self.f_box_ListForEach_135_Started
  l0.Stopped = self.f_box_ListForEach_135_Stopped
  l0.ForEach = self.f_box_ListForEach_135_ForEach
  l0.GotNext = self.f_box_ListForEach_135_GotNext
  l0.EndOfList = self.f_box_ListForEach_135_EndOfList
  l0.GotFirst = DummyFunction
  self.box_MissionCheckpointReach_53 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_53
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|723244283"
  l0.Out = self.f_box_MissionCheckpointReach_53_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Teleport_To_SpawnPoint_85 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_85
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|737204852"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_85_TeleportDone
  self.box_MissionMessageController_v3_106 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_106
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|744748976"
  l0.Out = self.f_box_MissionMessageController_v3_106_Out
  l0.MessageCompleted = DummyFunction
  self.box_Interact_Gameplay_77 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_77
  l0._graph = self
  l0._name = "box_Interact_Gameplay_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|745609577"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_77_Interacted
  self.box_CinematicPrep_89 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_89
  l0._graph = self
  l0._name = "box_CinematicPrep_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|769044314"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_89_PostOut
  self.box_Media_System_Custom_Broadcast_Monitor_30 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_30
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|772101329"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_30_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_30_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_Escape_Gameplay_91 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_91
  l0._graph = self
  l0._name = "box_Escape_Gameplay_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|775711945"
  l0.Started = self.f_box_Escape_Gameplay_91_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_91_Escaped
  l0.LeftArea = DummyFunction
  self.box_Hack_Gameplay_20 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_20
  l0._graph = self
  l0._name = "box_Hack_Gameplay_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|776476737"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_20_Hacked
  self.box_PhoneCommunicationController_74 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_74
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|804923314"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_74_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_113 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_113
  l0._graph = self
  l0._name = "box_PlaySound_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|862842689"
  l0.Out = self.f_box_PlaySound_v2_113_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionCheckpointReach_22 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_22
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|869025335"
  l0.Out = self.f_box_MissionCheckpointReach_22_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PhoneCommunicationController_11 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_11
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|880498600"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_11_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_66 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_66
  l0._graph = self
  l0._name = "box_MultipleOR_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|902582482"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_66_Out
  self.box_CinematicPrep_76 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_76
  l0._graph = self
  l0._name = "box_CinematicPrep_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|929605336"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_76_PostOut
  self.box_MissionMessageController_v3_36 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_36
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|938397599"
  l0.Out = self.f_box_MissionMessageController_v3_36_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_54 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_54
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|999966930"
  l0.Out = self.f_box_MissionMessageController_v3_54_Out
  l0.MessageCompleted = DummyFunction
  self.box_MapPointController_v4_132 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_132
  l0._graph = self
  l0._name = "box_MapPointController_v4_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1011738891"
  l0.Shown = self.f_box_MapPointController_v4_132_Shown
  l0.Hidden = self.f_box_MapPointController_v4_132_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_S10M040_SwapController_26 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/S10M040/S10M040.S10M040_SwapController.debug.lua")
  l0 = self.box_S10M040_SwapController_26
  l0._graph = self
  l0._name = "box_S10M040_SwapController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1016887275"
  l0.Started = DummyFunction
  l0.Showed = DummyFunction
  l0.Hidden = DummyFunction
  self.box_ListWriter_134 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_134
  l0._graph = self
  l0._name = "box_ListWriter_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1037728014"
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_box_ListWriter_134_Added
  l0.Removed = self.f_box_ListWriter_134_Removed
  l0.Out = self.f_box_ListWriter_134_Out
  self.box_MissionZone_42 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_42
  l0._graph = self
  l0._name = "box_MissionZone_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1040378583"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZone_42_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_MissionMessageController_v3_8 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_8
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1048250543"
  l0.Out = self.f_box_MissionMessageController_v3_8_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlayDialog_v2_19 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_19
  l0._graph = self
  l0._name = "box_PlayDialog_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1067985743"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_19_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_35 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_35
  l0._graph = self
  l0._name = "box_CinematicPrep_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1072696840"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_35_PostOut
  self.box_Player_Proximity_Monitor_87 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_87
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1078399981"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Player_Proximity_Monitor_87_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_87_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_MissionZone_10 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_10
  l0._graph = self
  l0._name = "box_MissionZone_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1096610386"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZone_10_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_PhoneCommunicationController_41 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_41
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1105891757"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_48 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_48
  l0._graph = self
  l0._name = "box_SetBoolean_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1119383045"
  l0.Out = self.f_box_SetBoolean_v2_48_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_48_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_48_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_48_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_48_SetFromBool
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1140873705"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_PlaySound_v2_124 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_124
  l0._graph = self
  l0._name = "box_PlaySound_v2_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1166682217"
  l0.Out = self.f_box_PlaySound_v2_124_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AISquadStateMonitor_112 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_112
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1204708354"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = self.f_box_AISquadStateMonitor_112_ArrestState
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_112_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_box_AISquadStateMonitor_112_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_box_AISquadStateMonitor_112_VanishState
  l0.None = DummyFunction
  self.box_PhoneCommunicationController_16 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_16
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1239396833"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_16_OnCommunicationStarted
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_16_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1265594840"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlayDialog_v2_14 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_14
  l0._graph = self
  l0._name = "box_PlayDialog_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1284682591"
  l0.Started = self.f_box_PlayDialog_v2_14_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_100 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_100
  l0._graph = self
  l0._name = "box_PlaySequence_v5_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1329653780"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_100_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_100_Finished
  self.box_Proximity_Monitor_23 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_23
  l0._graph = self
  l0._name = "box_Proximity_Monitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1426792278"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_23_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_23_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_23_ExitRadius
  self.box_PlaySound_v2_128 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_128
  l0._graph = self
  l0._name = "box_PlaySound_v2_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1428412394"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_130 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_130
  l0._graph = self
  l0._name = "box_HackableController_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1439217200"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_130_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CinematicPrep_7 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_7
  l0._graph = self
  l0._name = "box_CinematicPrep_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1487858686"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_7_PostOut
  self.box_PlaySound_v2_123 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_123
  l0._graph = self
  l0._name = "box_PlaySound_v2_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1492605555"
  l0.Out = self.f_box_PlaySound_v2_123_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Download_Gameplay_75 = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_75
  l0._graph = self
  l0._name = "box_Download_Gameplay_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1513015811"
  l0.Started = self.f_box_Download_Gameplay_75_Started
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_box_Download_Gameplay_75_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = self.f_box_Download_Gameplay_75_CustomRatioReached
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self.box_MultipleOR_133 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_133
  l0._graph = self
  l0._name = "box_MultipleOR_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1534028357"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_133_Out
  self.box_CinematicPrep_34 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_34
  l0._graph = self
  l0._name = "box_CinematicPrep_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1536214879"
  l0.PreOut = self.f_box_CinematicPrep_34_PreOut
  l0.PostOut = DummyFunction
  self.box_MultipleOR_61 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_61
  l0._graph = self
  l0._name = "box_MultipleOR_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1537768292"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_61_Out
  self.box_Multiple_AND_59 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_59
  l0._graph = self
  l0._name = "box_Multiple_AND_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1561077023"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_59_Out
  self.box_Interact_Gameplay_32 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_32
  l0._graph = self
  l0._name = "box_Interact_Gameplay_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1565720572"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_32_Interacted
  self.box_HackableController_v2_129 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_129
  l0._graph = self
  l0._name = "box_HackableController_v2_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1567707064"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_129_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Multiple_AND_70 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_70
  l0._graph = self
  l0._name = "box_Multiple_AND_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1595115032"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_70_Out
  self.box_PGTController_v2_31 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_31
  l0._graph = self
  l0._name = "box_PGTController_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1635377437"
  l0.Started = self.f_box_PGTController_v2_31_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionLayer_v2_50 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_50
  l0._graph = self
  l0._name = "box_MissionLayer_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1649647359"
  l0.Loaded = self.f_box_MissionLayer_v2_50_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_71 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_71
  l0._graph = self
  l0._name = "box_MissionLayer_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1712119518"
  l0.Loaded = self.f_box_MissionLayer_v2_71_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_95 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_95
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1743551922"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_95_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_15 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_15
  l0._graph = self
  l0._name = "box_PlaySequence_v5_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1754082319"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_15_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_15_Finished
  self.box_PlayDialog_v2_96 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_96
  l0._graph = self
  l0._name = "box_PlayDialog_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1762608717"
  l0.Started = self.f_box_PlayDialog_v2_96_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_47 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_47
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1771284748"
  l0.Out = self.f_box_MissionMessageController_v3_47_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_116 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_116
  l0._graph = self
  l0._name = "box_ListWriter_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1788357885"
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_box_ListWriter_116_Added
  l0.Removed = self.f_box_ListWriter_116_Removed
  l0.Out = self.f_box_ListWriter_116_Out
  self.box_Mission_End_6 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_6
  l0._graph = self
  l0._name = "box_Mission_End_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1823587404"
  self.box_PGTController_v2_25 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_25
  l0._graph = self
  l0._name = "box_PGTController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1878176514"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_25_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_Media_System_Custom_Broadcast_Monitor_86 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_86
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1888124117"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_86_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_86_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_Reach_Gameplay_63 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_63
  l0._graph = self
  l0._name = "box_Reach_Gameplay_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1908971668"
  l0.Started = self.f_box_Reach_Gameplay_63_Started
  l0.Stopped = DummyFunction
  l0.Reached = self.f_box_Reach_Gameplay_63_Reached
  self.box_Timer_v2_79 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_79
  l0._graph = self
  l0._name = "box_Timer_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1913625984"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_79_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_44 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_44
  l0._graph = self
  l0._name = "box_MultipleOR_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1920004964"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_44_Out
  self.box_PlaySound_v2_69 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_69
  l0._graph = self
  l0._name = "box_PlaySound_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1963944326"
  l0.Out = self.f_box_PlaySound_v2_69_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Media_System_Custom_Broadcast_Monitor_28 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_28
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1987262219"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_28_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_28_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_78 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_78
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2017189513"
  l0.Out = self.f_box_MissionCheckpointReach_78_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Proximity_Monitor_94 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_94
  l0._graph = self
  l0._name = "box_Proximity_Monitor_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2062934935"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_94_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_94_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_PhoneCommunicationController_33 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_33
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2103036183"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_33_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
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
function export:CheckPoint_0()
  local l0
  l0 = self.box_MissionLayer_v2_71
  l0.LayerName = "S10M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1262875726", "1262875726", "S10M040_Main", "CheckPoint_0", "box_MissionLayer_v2_71.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_50
  l0.LayerName = "S10M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1132799255", "1132799255", "S10M040_Main", "CheckPoint_1", "box_MissionLayer_v2_50.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_103
  l0.LayerName = "S10M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1243020097", "1243020097", "S10M040_Main", "CheckPoint_2", "box_MissionLayer_v2_103.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_Mission_End_6()
  l0 = self.box_Mission_End_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1307481700", "1307481700", "S10M040_Main", "CheckPoint_3", "box_Mission_End_6.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_67
  l0.LayerName = "S10M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1803303409", "1803303409", "S10M040_Main", "In", "box_MissionLayer_v2_67.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionMusicController_125_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_39
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346362"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1541443413", "1541443413", "S10M040_Main", "box_MissionMusicController_125.Activated", "box_PhoneCommunicationController_39.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_MultipleOR_102_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_102
  l1 = self.box_S10_M040_IOP_Main_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2106590306", "2106590306", "S10M040_Main", "box_MultipleOR_102.Out", "box_S10_M040_IOP_Main_80.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_119_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|484947293"
  l0.Out = self.f_box_Simple_Node_65_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1687754871", "1687754871", "S10M040_Main", "box_Simple_Node_119.Out", "box_Simple_Node_65.In", clone, l0)
  l0:In()
end
function export:f_box_Dynamic_Media_Controller_17_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.Screen
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|560413775"
  l0.ByIndexSet = self.f_box_MaterialController_111_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1145887084", "1145887084", "S10M040_Main", "box_Dynamic_Media_Controller_17.ChannelChanged", "box_MaterialController_111.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_PhoneCommunicationController_29_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_29
  l1 = self.box_MissionMessageController_v3_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2053416116", "2053416116", "S10M040_Main", "box_PhoneCommunicationController_29.OnCommunicationFinished", "box_MissionMessageController_v3_106.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:f_box_TriggerMonitor_v2_38_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_23()
  l0 = self.box_TriggerMonitor_v2_38
  l1 = self.box_Proximity_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1628443173", "1628443173", "S10M040_Main", "box_TriggerMonitor_v2_38.Disabled", "box_Proximity_Monitor_23.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_38_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_132()
  l0 = self.box_TriggerMonitor_v2_38
  l1 = self.box_MapPointController_v4_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|934529618", "934529618", "S10M040_Main", "box_TriggerMonitor_v2_38.Enter", "box_MapPointController_v4_132.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Simple_Node_105_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_70()
  l0 = self.box_Multiple_AND_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|67289146", "67289146", "S10M040_Main", "box_Simple_Node_105.Out", "box_Multiple_AND_70.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_MissionLayer_v2_67_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|824628978"
  l0.Out = self.f_box_Get_Player_ID_12_Out
  l0 = self.box_MissionLayer_v2_67
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1049569424", "1049569424", "S10M040_Main", "box_MissionLayer_v2_67.Loaded", "box_Get_Player_ID_12.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_115_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_115
  self.Screen = l0.Data
end
function export:f_box_ListForEach_115_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_115
  self.Screen = l0.Data
end
function export:f_box_ListForEach_115_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_115
  self.Screen = l0.Data
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = self.Screen
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|48758739"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_17_ChannelChanged
  l0.Out = DummyFunction
  l0 = self.box_ListForEach_115
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2017537317", "2017537317", "S10M040_Main", "box_ListForEach_115.GotNext", "box_Dynamic_Media_Controller_17.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_ListForEach_115_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_115
  self.Screen = l0.Data
end
function export:f_box_ListForEach_115_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_115
  self.Screen = l0.Data
end
function export:f_box_MissionMessageController_v3_98_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1121133033"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_13_Out_2
  l0 = self.box_MissionMessageController_v3_98
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|708587032", "708587032", "S10M040_Main", "box_MissionMessageController_v3_98.Out", "box_Ordered_Output_13.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_39_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1053704606"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_101_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_101_Out_1
  l0 = self.box_PhoneCommunicationController_39
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|858948798", "858948798", "S10M040_Main", "box_PhoneCommunicationController_39.OnCommunicationFinished", "box_Ordered_Output_101.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_110_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_107
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_MultipleOR_110
  l1 = self.box_PlaySound_v2_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|282963210", "282963210", "S10M040_Main", "box_MultipleOR_110.Out", "box_PlaySound_v2_107.Play", l0, l1)
  l1:Play()
end
function export:f_box_ConsoleCommand_v2_57_Executed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_102()
  l0 = self.box_ConsoleCommand_v2_57
  l1 = self.box_MultipleOR_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|506076948", "506076948", "S10M040_Main", "box_ConsoleCommand_v2_57.Executed", "box_MultipleOR_102.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Media_System_Custom_Broadcast_Controller_46_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_86()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|456399893", "456399893", "S10M040_Main", "box_Media_System_Custom_Broadcast_Controller_46.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_86.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlaySound_v2_126_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669160"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = 30
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|828554598"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_127_Deactivated
  l0 = self.box_PlaySound_v2_126
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1613881683", "1613881683", "S10M040_Main", "box_PlaySound_v2_126.Out", "box_MissionMusicController_127.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Hackable_Monitor_83_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_77
  l0.Entity = "9223372051047097441"
  l0.IsManagingInteraction = 1
  l0 = self.box_Hackable_Monitor_83
  l1 = self.box_Interact_Gameplay_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|861643012", "861643012", "S10M040_Main", "box_Hackable_Monitor_83.Enabled", "box_Interact_Gameplay_77.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_83_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_83()
  l0 = self.box_Hackable_Monitor_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|735255070", "735255070", "S10M040_Main", "box_Hackable_Monitor_83.HackSuccess", "box_Hackable_Monitor_83.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_23()
  l0 = self.box_Proximity_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1530543290", "1530543290", "S10M040_Main", "box_Simple_Node_51.Out", "box_Proximity_Monitor_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ListForEach_81_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_81
  self.Screen = l0.Data
  self:OnEnter_box_S10M040_SwapController_26()
  l1 = self.box_S10M040_SwapController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|143445543", "143445543", "S10M040_Main", "box_ListForEach_81.EndOfList", "box_S10M040_SwapController_26.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_ListForEach_81_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_81
  self.Screen = l0.Data
end
function export:f_box_ListForEach_81_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_81
  self.Screen = l0.Data
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = self.Screen
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1162596465"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_73_ChannelChanged
  l0.Out = DummyFunction
  l0 = self.box_ListForEach_81
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1662487185", "1662487185", "S10M040_Main", "box_ListForEach_81.GotNext", "box_Dynamic_Media_Controller_73.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_ListForEach_81_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_81
  self.Screen = l0.Data
end
function export:f_box_ListForEach_81_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_81
  self.Screen = l0.Data
end
function export:f_box_S10M040_SwapController_4_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_14
  l0.SoundId = "soundbinary/3970503291.bnk"
  l0 = self.box_S10M040_SwapController_4
  l1 = self.box_PlayDialog_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2069580492", "2069580492", "S10M040_Main", "box_S10M040_SwapController_4.Hidden", "box_PlayDialog_v2_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_S10M040_SwapController_4_Started()
  local l0
  self = self._graph
  self:OnEnter_box_S10M040_SwapController_4()
  l0 = self.box_S10M040_SwapController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|644046495", "644046495", "S10M040_Main", "box_S10M040_SwapController_4.Started", "box_S10M040_SwapController_4.Hide", l0, l0)
  l0:Hide()
end
function export:f_box_OnceOnly_v3_56_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_85
  l0.SpawnPoint = "9223372052388022979"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_OnceOnly_v3_56
  l1 = self.box_Teleport_To_SpawnPoint_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|277446658", "277446658", "S10M040_Main", "box_OnceOnly_v3_56.Out", "box_Teleport_To_SpawnPoint_85.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_103_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|697127699"
  l0.Out = self.f_box_Get_Player_ID_27_Out
  l0 = self.box_MissionLayer_v2_103
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1939343416", "1939343416", "S10M040_Main", "box_MissionLayer_v2_103.Loaded", "box_Get_Player_ID_27.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_72_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|124016610"
  l0.Out = self.f_box_Simple_Node_105_Out
  l0 = self.box_MissionMessageController_v3_72
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|436808652", "436808652", "S10M040_Main", "box_MissionMessageController_v3_72.Out", "box_Simple_Node_105.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_42()
  l0 = self.box_MissionZone_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|500978402", "500978402", "S10M040_Main", "box_Simple_Node_65.Out", "box_MissionZone_42.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MaterialController_111_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_114()
  l0 = self.box_MultipleOR_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1460121101", "1460121101", "S10M040_Main", "box_MaterialController_111.ByIndexSet", "box_MultipleOR_114.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CinematicPrep_21_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1590790096"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_37_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_21
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1929272856", "1929272856", "S10M040_Main", "box_CinematicPrep_21.PostOut", "box_Show_Or_Hide_All_UI_37.Show", l0, l1)
  l1:Show()
end
function export:f_box_MultipleOR_97_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_81
  l0.List = self.List_Screens
  l0 = self.box_MultipleOR_97
  l1 = self.box_ListForEach_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1083115617", "1083115617", "S10M040_Main", "box_MultipleOR_97.Out", "box_ListForEach_81.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_HackableController_v2_131_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_25
  l0.PGTMissionArea = "9223372046951448032"
  l0 = self.box_HackableController_v2_131
  l1 = self.box_PGTController_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1510651963", "1510651963", "S10M040_Main", "box_HackableController_v2_131.Disabled", "box_PGTController_v2_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_Dynamic_Media_Controller_52_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_133()
  l0 = self.box_MultipleOR_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1712100167", "1712100167", "S10M040_Main", "box_Dynamic_Media_Controller_52.ChannelChanged", "box_MultipleOR_133.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_S10_M040_IOP_Main_80_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_96
  l0.SoundId = "soundbinary/2764133111.bnk"
  l0 = self.box_S10_M040_IOP_Main_80
  l1 = self.box_PlayDialog_v2_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|618762906", "618762906", "S10M040_Main", "box_S10_M040_IOP_Main_80.Out", "box_PlayDialog_v2_96.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMusicController_88_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1057520171"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_104_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_104_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1930137594", "1930137594", "S10M040_Main", "box_MissionMusicController_88.Activated", "box_Ordered_Output_104.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_114_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_115
  l0.List = self.List_Screens
  l0 = self.box_MultipleOR_114
  l1 = self.box_ListForEach_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1237434572", "1237434572", "S10M040_Main", "box_MultipleOR_114.Out", "box_ListForEach_115.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_Get_Player_ID_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_131
  l0.HackableEntity = "9223372048344008064"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|916339107", "916339107", "S10M040_Main", "box_Get_Player_ID_27.Out", "box_HackableController_v2_131.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_ListForEach_135_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_135
  self.Screen = l0.Data
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1498743823"
  l0.Out = self.f_box_Simple_Node_117_Out
  l0 = self.box_ListForEach_135
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1658490392", "1658490392", "S10M040_Main", "box_ListForEach_135.EndOfList", "box_Simple_Node_117.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_135_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_135
  self.Screen = l0.Data
end
function export:f_box_ListForEach_135_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_135
  self.Screen = l0.Data
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = self.Screen
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|665099395"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_52_ChannelChanged
  l0.Out = DummyFunction
  l0 = self.box_ListForEach_135
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1162659608", "1162659608", "S10M040_Main", "box_ListForEach_135.GotNext", "box_Dynamic_Media_Controller_52.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_ListForEach_135_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_135
  self.Screen = l0.Data
end
function export:f_box_ListForEach_135_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_135
  self.Screen = l0.Data
end
function export:f_box_MissionCheckpointReach_53_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1256379544"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_55_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_55_Out_1
  l0 = self.box_MissionCheckpointReach_53
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1640382516", "1640382516", "S10M040_Main", "box_MissionCheckpointReach_53.Out", "box_Ordered_Output_55.In", l0, l1)
  l1:In()
end
function export:f_box_Teleport_To_SpawnPoint_85_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_21
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Teleport_To_SpawnPoint_85
  l1 = self.box_CinematicPrep_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1141142501", "1141142501", "S10M040_Main", "box_Teleport_To_SpawnPoint_85.TeleportDone", "box_CinematicPrep_21.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionMessageController_v3_106_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_94()
  l0 = self.box_MissionMessageController_v3_106
  l1 = self.box_Proximity_Monitor_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|652062414", "652062414", "S10M040_Main", "box_MissionMessageController_v3_106.Out", "box_Proximity_Monitor_94.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Interact_Gameplay_77_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  l0.Bool = self.TranceiverPlaced
  l0 = self.box_Interact_Gameplay_77
  l1 = self.box_SetBoolean_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1303455277", "1303455277", "S10M040_Main", "box_Interact_Gameplay_77.Interacted", "box_SetBoolean_v2_48.True", l0, l1)
  l1:True()
end
function export:f_box_Show_Or_Hide_All_UI_84_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_34
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1593007726", "1593007726", "S10M040_Main", "box_Show_Or_Hide_All_UI_84.Hidden", "box_CinematicPrep_34.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_CinematicPrep_89_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_66()
  l0 = self.box_CinematicPrep_89
  l1 = self.box_MultipleOR_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|218550551", "218550551", "S10M040_Main", "box_CinematicPrep_89.PostOut", "box_MultipleOR_66.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_30_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_30()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|133396730", "133396730", "S10M040_Main", "box_Media_System_Custom_Broadcast_Monitor_30.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_30.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_30_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_97()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_30
  l1 = self.box_MultipleOR_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1425311637", "1425311637", "S10M040_Main", "box_Media_System_Custom_Broadcast_Monitor_30.Disabled", "box_MultipleOR_97.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Escape_Gameplay_91_Escaped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_8
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M040.Objectives.Objective060",
    item = "Objective",
    id = "413331"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_Escape_Gameplay_91
  l1 = self.box_MissionMessageController_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1673491376", "1673491376", "S10M040_Main", "box_Escape_Gameplay_91.Escaped", "box_MissionMessageController_v3_8.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Escape_Gameplay_91_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2023557489"
  l0.Out = self.f_box_Simple_Node_92_Out
  l0 = self.box_Escape_Gameplay_91
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|773924512", "773924512", "S10M040_Main", "box_Escape_Gameplay_91.Started", "box_Simple_Node_92.In", l0, l1)
  l1:In()
end
function export:f_box_Hack_Gameplay_20_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Download_Gameplay_75
  l0.TargetEntity = "9223372056315581933"
  l0.LinkedObjective = "ObjectiveSub2"
  l0.Duration = 30
  l0.OverridedRadius = 45
  l0.DownloadingText = {
    section = "HACKING.Interface Messages",
    item = "RetrievingData",
    id = "132264"
  }
  l0.DownloadingPausedText = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.CustomRatio = 0.5
  l0.DetectionOnCustomRatio = 0
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = -1
  l0.FleeOnDownloadDetected = 0
  l0.Affiliation = "AFI"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372073450305528"
  l0.AutoDetectDownload = 1
  l0 = self.box_Hack_Gameplay_20
  l1 = self.box_Download_Gameplay_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1262355439", "1262355439", "S10M040_Main", "box_Hack_Gameplay_20.Hacked", "box_Download_Gameplay_75.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_74_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_87()
  l0 = self.box_PhoneCommunicationController_74
  l1 = self.box_Player_Proximity_Monitor_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1766808916", "1766808916", "S10M040_Main", "box_PhoneCommunicationController_74.OnCommunicationFinished", "box_Player_Proximity_Monitor_87.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Get_Player_ID_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_35
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1296731313", "1296731313", "S10M040_Main", "box_Get_Player_ID_12.Out", "box_CinematicPrep_35.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_MissionMusicController_127_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_59()
  l0 = self.box_Multiple_AND_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|953633924", "953633924", "S10M040_Main", "box_MissionMusicController_127.Deactivated", "box_Multiple_AND_59.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_PlaySound_v2_113_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_112()
  l0 = self.box_PlaySound_v2_113
  l1 = self.box_AISquadStateMonitor_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|399321914", "399321914", "S10M040_Main", "box_PlaySound_v2_113.Out", "box_AISquadStateMonitor_112.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionCheckpointReach_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_47
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M040.Objectives.Objective030",
    item = "Objective",
    id = "496493"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_22
  l1 = self.box_MissionMessageController_v3_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1009263355", "1009263355", "S10M040_Main", "box_MissionCheckpointReach_22.Out", "box_MissionMessageController_v3_47.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PhoneCommunicationController_11_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_70()
  l0 = self.box_PhoneCommunicationController_11
  l1 = self.box_Multiple_AND_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1209720349", "1209720349", "S10M040_Main", "box_PhoneCommunicationController_11.OnCommunicationStarted", "box_Multiple_AND_70.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_118_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_36
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M040.Objectives.Objective010",
    item = "Objective",
    id = "354112"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1087470376", "1087470376", "S10M040_Main", "box_Ordered_Output_118.Out", "box_MissionMessageController_v3_36.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_118_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|41136809"
  l0.Out = self.f_box_Simple_Node_119_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|244657360", "244657360", "S10M040_Main", "box_Ordered_Output_118.Out", "box_Simple_Node_119.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_22
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_66
  l1 = self.box_MissionCheckpointReach_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|320928800", "320928800", "S10M040_Main", "box_MultipleOR_66.Out", "box_MissionCheckpointReach_22.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_120_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_19
  l0.SoundId = "soundbinary/2357083344.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1852061740", "1852061740", "S10M040_Main", "box_Compare_Boolean_v2_120.A_is_False", "box_PlayDialog_v2_19.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ConsoleCommand_v2_57
  l0.Command = "IOP_W4TCHED"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1195012703", "1195012703", "S10M040_Main", "box_Simple_Node_9.Out", "box_ConsoleCommand_v2_57.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CinematicPrep_76_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_CinematicPrep_76
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|312595661", "312595661", "S10M040_Main", "box_CinematicPrep_76.PostOut", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionMessageController_v3_36_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_16
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048344219127"
  l0 = self.box_MissionMessageController_v3_36
  l1 = self.box_PhoneCommunicationController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1290990927", "1290990927", "S10M040_Main", "box_MissionMessageController_v3_36.Out", "box_PhoneCommunicationController_16.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMessageController_v3_54_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_123
  l0.Entity = "9223372066470537808"
  l0.SoundId = "soundbinary/2043213869.bnk"
  l0 = self.box_MissionMessageController_v3_54
  l1 = self.box_PlaySound_v2_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|721504225", "721504225", "S10M040_Main", "box_MissionMessageController_v3_54.Out", "box_PlaySound_v2_123.Play", l0, l1)
  l1:Play()
end
function export:f_box_MapPointController_v4_132_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_38()
  l0 = self.box_MapPointController_v4_132
  l1 = self.box_TriggerMonitor_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|67853812", "67853812", "S10M040_Main", "box_MapPointController_v4_132.Hidden", "box_TriggerMonitor_v2_38.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_132_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_38()
  l0 = self.box_MapPointController_v4_132
  l1 = self.box_TriggerMonitor_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|145854075", "145854075", "S10M040_Main", "box_MapPointController_v4_132.Shown", "box_TriggerMonitor_v2_38.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_134_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_134
  self.List_Screens = l0.Target
  self:OnEnter_box_MultipleOR_133()
  l1 = self.box_MultipleOR_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1953184394", "1953184394", "S10M040_Main", "box_ListWriter_134.Added", "box_MultipleOR_133.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_134_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_134
  self.List_Screens = l0.Target
end
function export:f_box_ListWriter_134_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_134
  self.List_Screens = l0.Target
end
function export:f_box_MissionZone_42_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_102()
  l0 = self.box_MissionZone_42
  l1 = self.box_MultipleOR_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|542733010", "542733010", "S10M040_Main", "box_MissionZone_42.Disabled", "box_MultipleOR_102.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_33
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346367"
  l0 = self.box_MissionMessageController_v3_8
  l1 = self.box_PhoneCommunicationController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1410827570", "1410827570", "S10M040_Main", "box_MissionMessageController_v3_8.Out", "box_PhoneCommunicationController_33.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_101_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_59()
  l0 = self.box_Multiple_AND_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|883522214", "883522214", "S10M040_Main", "box_Ordered_Output_101.Out", "box_Multiple_AND_59.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_101_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_79
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1598380931", "1598380931", "S10M040_Main", "box_Ordered_Output_101.Out", "box_Timer_v2_79.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_104_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1318559176"
  l0.Out = self.f_box_Simple_Node_99_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|542996447", "542996447", "S10M040_Main", "box_Ordered_Output_104.Out", "box_Simple_Node_99.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_104_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_98
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M040.Objectives.Objective030",
    item = "Objective",
    id = "496493"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M040.Objectives.Objective030",
    item = "SubObjective",
    id = "496495"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M040.Objectives.Objective030",
    item = "SubObjective2",
    id = "496496"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1887622685", "1887622685", "S10M040_Main", "box_Ordered_Output_104.Out", "box_MissionMessageController_v3_98.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_PlayDialog_v2_19_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_128
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_PlayDialog_v2_19
  l1 = self.box_PlaySound_v2_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|520748575", "520748575", "S10M040_Main", "box_PlayDialog_v2_19.Finished", "box_PlaySound_v2_128.Play", l0, l1)
  l1:Play()
end
function export:f_box_CinematicPrep_35_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_CinematicPrep_35
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1558371004", "1558371004", "S10M040_Main", "box_CinematicPrep_35.PostOut", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Player_Proximity_Monitor_87_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_41
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346364"
  l0 = self.box_Player_Proximity_Monitor_87
  l1 = self.box_PhoneCommunicationController_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1742970826", "1742970826", "S10M040_Main", "box_Player_Proximity_Monitor_87.Disabled", "box_PhoneCommunicationController_41.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Player_Proximity_Monitor_87_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_87()
  l0 = self.box_Player_Proximity_Monitor_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1298518596", "1298518596", "S10M040_Main", "box_Player_Proximity_Monitor_87.EnterRadius", "box_Player_Proximity_Monitor_87.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionZone_10_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M040.Objectives.Objective040",
    item = "Objective",
    id = "359062"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionZone_10
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1965284512", "1965284512", "S10M040_Main", "box_MissionZone_10.Disabled", "box_MissionMessageController_v3_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_AI_Agent_Zone_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372059468190927"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1543272524"
  l0.Out = self.f_box_AI_Agent_Zone_93_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|737966032", "737966032", "S10M040_Main", "box_AI_Agent_Zone_45.Out", "box_AI_Agent_Zone_93.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetBoolean_v2_48_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.TranceiverPlaced = l0.Target
end
function export:f_box_SetBoolean_v2_48_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.TranceiverPlaced = l0.Target
end
function export:f_box_SetBoolean_v2_48_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.TranceiverPlaced = l0.Target
end
function export:f_box_SetBoolean_v2_48_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.TranceiverPlaced = l0.Target
  l0 = self.box_HackableController_v2_129
  l0.HackableEntity = "9223372048344008064"
  l0 = self.box_SetBoolean_v2_48
  l1 = self.box_HackableController_v2_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|5061571", "5061571", "S10M040_Main", "box_SetBoolean_v2_48.SetTrue", "box_HackableController_v2_129.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_SetBoolean_v2_48_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.TranceiverPlaced = l0.Target
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hack_Gameplay_20
  l0.Entity = "9223372056315581933"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Download",
    id = "189898"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|995834307", "995834307", "S10M040_Main", "box_Ordered_Output_13.Out", "box_Hack_Gameplay_20.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_32
  l0.Entity = "9223372063749657159"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1292686169", "1292686169", "S10M040_Main", "box_Ordered_Output_13.Out", "box_Interact_Gameplay_32.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_13_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1997885425"
  l0.Out = self.f_box_Simple_Node_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|234103150", "234103150", "S10M040_Main", "box_Ordered_Output_13.Out", "box_Simple_Node_1.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_82_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|745655364"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_84_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1816236742", "1816236742", "S10M040_Main", "box_Simple_Node_82.Out", "box_Show_Or_Hide_All_UI_84.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_53
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_5
  l1 = self.box_MissionCheckpointReach_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1534072585", "1534072585", "S10M040_Main", "box_MultipleOR_5.Out", "box_MissionCheckpointReach_53.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_10()
  l0 = self.box_MissionZone_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1185816408", "1185816408", "S10M040_Main", "box_Simple_Node_18.Out", "box_MissionZone_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Dynamic_Media_Controller_73_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_97()
  l0 = self.box_MultipleOR_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|683452500", "683452500", "S10M040_Main", "box_Dynamic_Media_Controller_73.ChannelChanged", "box_MultipleOR_97.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PlaySound_v2_124_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372068885682097"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|7104400"
  l0.Activated = self.f_box_MissionMusicController_125_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_124
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1123078366", "1123078366", "S10M040_Main", "box_PlaySound_v2_124.Out", "box_MissionMusicController_125.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_40_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_28()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|582025100", "582025100", "S10M040_Main", "box_Media_System_Custom_Broadcast_Controller_40.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_28.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_AISquadStateMonitor_112_ArrestState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_110()
  l0 = self.box_AISquadStateMonitor_112
  l1 = self.box_MultipleOR_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|949074340", "949074340", "S10M040_Main", "box_AISquadStateMonitor_112.ArrestState", "box_MultipleOR_110.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_112_CombatState()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_109
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0 = self.box_AISquadStateMonitor_112
  l1 = self.box_PlaySound_v2_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1379776571", "1379776571", "S10M040_Main", "box_AISquadStateMonitor_112.CombatState", "box_PlaySound_v2_109.Play", l0, l1)
  l1:Play()
end
function export:f_box_AISquadStateMonitor_112_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_110()
  l0 = self.box_AISquadStateMonitor_112
  l1 = self.box_MultipleOR_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|794132067", "794132067", "S10M040_Main", "box_AISquadStateMonitor_112.SearchState", "box_MultipleOR_110.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_112_VanishState()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_108
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0 = self.box_AISquadStateMonitor_112
  l1 = self.box_PlaySound_v2_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1366652958", "1366652958", "S10M040_Main", "box_AISquadStateMonitor_112.VanishState", "box_PlaySound_v2_108.Play", l0, l1)
  l1:Play()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_58_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_30()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|685182827", "685182827", "S10M040_Main", "box_Media_System_Custom_Broadcast_Controller_58.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_30.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PhoneCommunicationController_16_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_124
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0 = self.box_PhoneCommunicationController_16
  l1 = self.box_PlaySound_v2_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2011026971", "2011026971", "S10M040_Main", "box_PhoneCommunicationController_16.OnCommunicationFinished", "box_PlaySound_v2_124.Play", l0, l1)
  l1:Play()
end
function export:f_box_PhoneCommunicationController_16_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_83()
  l0 = self.box_PhoneCommunicationController_16
  l1 = self.box_Hackable_Monitor_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1095619562", "1095619562", "S10M040_Main", "box_PhoneCommunicationController_16.OnCommunicationStarted", "box_Hackable_Monitor_83.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_55_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|883632320"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_118_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_118_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2056009235", "2056009235", "S10M040_Main", "box_Ordered_Output_55.Out", "box_Ordered_Output_118.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_55_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|914604865"
  l0.Out = self.f_box_Simple_Node_9_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1668521690", "1668521690", "S10M040_Main", "box_Ordered_Output_55.Out", "box_Simple_Node_9.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_91
  l0.Entity_AreaRadius = 200
  l0.MissionArea = "9223372047095066574"
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
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_Escape_Gameplay_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|356904028", "356904028", "S10M040_Main", "box_MissionMessageController_v3_3.Out", "box_Escape_Gameplay_91.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_24_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_76
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1117618519", "1117618519", "S10M040_Main", "box_Get_Player_ID_24.Out", "box_CinematicPrep_76.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_PlayDialog_v2_14_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_69
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0 = self.box_PlayDialog_v2_14
  l1 = self.box_PlaySound_v2_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|816421819", "816421819", "S10M040_Main", "box_PlayDialog_v2_14.Started", "box_PlaySound_v2_69.Play", l0, l1)
  l1:Play()
end
function export:f_box_Simple_Node_99_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1150432916"
  l0.Out = self.f_box_Simple_Node_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1393373881", "1393373881", "S10M040_Main", "box_Simple_Node_99.Out", "box_Simple_Node_18.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySequence_v5_100_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_56()
  l0 = self.box_PlaySequence_v5_100
  l1 = self.box_OnceOnly_v3_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2078718220", "2078718220", "S10M040_Main", "box_PlaySequence_v5_100.Finished", "box_OnceOnly_v3_56.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_100_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_56()
  l0 = self.box_PlaySequence_v5_100
  l1 = self.box_OnceOnly_v3_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1531967885", "1531967885", "S10M040_Main", "box_PlaySequence_v5_100.Skipped", "box_OnceOnly_v3_56.In", l0, l1)
  l1:In(0)
end
function export:f_box_Simple_Node_121_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1417412285"
  l0.Out = self.f_box_Simple_Node_122_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|282339278", "282339278", "S10M040_Main", "box_Simple_Node_121.Out", "box_Simple_Node_122.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_122_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1983361409", "1983361409", "S10M040_Main", "box_Simple_Node_122.Out", "box_MultipleOR_61.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Proximity_Monitor_23_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1488521419"
  l0.Out = self.f_box_Simple_Node_68_Out
  l0 = self.box_Proximity_Monitor_23
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1719347449", "1719347449", "S10M040_Main", "box_Proximity_Monitor_23.Disabled", "box_Simple_Node_68.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_23_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372060432399862"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = 1
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1222622713"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_58_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Proximity_Monitor_23
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|450395568", "450395568", "S10M040_Main", "box_Proximity_Monitor_23.EnterRadius", "box_Media_System_Custom_Broadcast_Controller_58.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_Proximity_Monitor_23_ExitRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = nil
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1955302849"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = self.f_box_Media_System_Custom_Broadcast_Controller_62_EndedAllCustomMediaBroadcasts
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Proximity_Monitor_23
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1269828051", "1269828051", "S10M040_Main", "box_Proximity_Monitor_23.ExitRadius", "box_Media_System_Custom_Broadcast_Controller_62.EndAllCustomMediaBroadcasts", l0, l1)
  l1:EndAllCustomMediaBroadcasts()
end
function export:f_box_HackableController_v2_130_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_89
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_130
  l1 = self.box_CinematicPrep_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|149470889", "149470889", "S10M040_Main", "box_HackableController_v2_130.Disabled", "box_CinematicPrep_89.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CinematicPrep_7_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_CinematicPrep_7
  l1 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|159368074", "159368074", "S10M040_Main", "box_CinematicPrep_7.PostOut", "box_MultipleOR_61.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_68_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1135949400"
  l0.Out = self.f_box_Simple_Node_82_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1385015345", "1385015345", "S10M040_Main", "box_Simple_Node_68.Out", "box_Simple_Node_82.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_123_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669160"
  l0.UseMusicScoreMode = 0
  l0.EndMusicDelayTime = 0
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1524840721"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_2_Deactivated
  l0 = self.box_PlaySound_v2_123
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|335435609", "335435609", "S10M040_Main", "box_PlaySound_v2_123.Out", "box_MissionMusicController_2.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Simple_Node_117_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_54
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M040.Objectives.Objective030",
    item = "SubObjective2",
    id = "496496"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|62944134", "62944134", "S10M040_Main", "box_Simple_Node_117.Out", "box_MissionMessageController_v3_54.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_Download_Gameplay_75_CustomRatioReached()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_113
  l0.SoundId = "soundbinary/81442961.bnk"
  l0 = self.box_Download_Gameplay_75
  l1 = self.box_PlaySound_v2_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2015242050", "2015242050", "S10M040_Main", "box_Download_Gameplay_75.CustomRatioReached", "box_PlaySound_v2_113.Play", l0, l1)
  l1:Play()
end
function export:f_box_Download_Gameplay_75_DownloadCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372060432399862"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = 1
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|249483182"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_46_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Download_Gameplay_75
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|197071178", "197071178", "S10M040_Main", "box_Download_Gameplay_75.DownloadCompleted", "box_Media_System_Custom_Broadcast_Controller_46.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_Download_Gameplay_75_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372060432399865"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = 1
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1192092999"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_40_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Download_Gameplay_75
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|785078628", "785078628", "S10M040_Main", "box_Download_Gameplay_75.Started", "box_Media_System_Custom_Broadcast_Controller_40.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_MissionMusicController_2_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_11
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346365"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|534769458", "534769458", "S10M040_Main", "box_MissionMusicController_2.Deactivated", "box_PhoneCommunicationController_11.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_MultipleOR_133_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_135
  l0.List = self.List_Screens
  l0 = self.box_MultipleOR_133
  l1 = self.box_ListForEach_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1112093835", "1112093835", "S10M040_Main", "box_MultipleOR_133.Out", "box_ListForEach_135.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_CinematicPrep_34_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_15
  l0.SceneEntity = "9223372047235835170"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S10/S10_FedsFinal_CIN/s10_fedsfinal_cin.seq"
  l0 = self.box_CinematicPrep_34
  l1 = self.box_PlaySequence_v5_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1458372987", "1458372987", "S10M040_Main", "box_CinematicPrep_34.PreOut", "box_PlaySequence_v5_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_61_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_78
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_61
  l1 = self.box_MissionCheckpointReach_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1946879834", "1946879834", "S10M040_Main", "box_MultipleOR_61.Out", "box_MissionCheckpointReach_78.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Agent_Zone_93_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_74
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346363"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|546741639", "546741639", "S10M040_Main", "box_AI_Agent_Zone_93.Out", "box_PhoneCommunicationController_74.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Multiple_AND_59_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_29
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053411615248"
  l0 = self.box_Multiple_AND_59
  l1 = self.box_PhoneCommunicationController_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|414729646", "414729646", "S10M040_Main", "box_Multiple_AND_59.Out", "box_PhoneCommunicationController_29.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Interact_Gameplay_32_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_95
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346366"
  l0 = self.box_Interact_Gameplay_32
  l1 = self.box_PhoneCommunicationController_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|482517031", "482517031", "S10M040_Main", "box_Interact_Gameplay_32.Interacted", "box_PhoneCommunicationController_95.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_HackableController_v2_129_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_126
  l0.SoundId = "soundbinary/81442961.bnk"
  l0 = self.box_HackableController_v2_129
  l1 = self.box_PlaySound_v2_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1362811422", "1362811422", "S10M040_Main", "box_HackableController_v2_129.Disabled", "box_PlaySound_v2_126.Play", l0, l1)
  l1:Play()
end
function export:f_box_Show_Or_Hide_All_UI_37_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_6()
  l0 = self.box_Mission_End_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1011779020", "1011779020", "S10M040_Main", "box_Show_Or_Hide_All_UI_37.Shown", "box_Mission_End_6.End", clone, l0)
  l0:End()
end
function export:f_box_Multiple_AND_70_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_10()
  l0 = self.box_Multiple_AND_70
  l1 = self.box_MissionZone_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1520939502", "1520939502", "S10M040_Main", "box_Multiple_AND_70.Out", "box_MissionZone_10.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PGTController_v2_31_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372057522131569"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1653963571"
  l0.Out = self.f_box_AI_Agent_Zone_49_Out
  l0 = self.box_PGTController_v2_31
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1820273871", "1820273871", "S10M040_Main", "box_PGTController_v2_31.Started", "box_AI_Agent_Zone_49.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_50_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2142400206"
  l0.Out = self.f_box_Get_Player_ID_43_Out
  l0 = self.box_MissionLayer_v2_50
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1428329872", "1428329872", "S10M040_Main", "box_MissionLayer_v2_50.Loaded", "box_Get_Player_ID_43.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Agent_Zone_49_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372059468190925"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1110648461"
  l0.Out = self.f_box_AI_Agent_Zone_45_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1976298614", "1976298614", "S10M040_Main", "box_AI_Agent_Zone_49.Out", "box_AI_Agent_Zone_45.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_AI_Agent_Zone_60_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372059468190927"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1681760369"
  l0.Out = self.f_box_AI_Agent_Zone_90_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1357228979", "1357228979", "S10M040_Main", "box_AI_Agent_Zone_60.Out", "box_AI_Agent_Zone_90.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_AI_Agent_Zone_90_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_7
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|384331629", "384331629", "S10M040_Main", "box_AI_Agent_Zone_90.Out", "box_CinematicPrep_7.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_MissionLayer_v2_71_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1276437447"
  l0.Out = self.f_box_Get_Player_ID_24_Out
  l0 = self.box_MissionLayer_v2_71
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1443703494", "1443703494", "S10M040_Main", "box_MissionLayer_v2_71.Loaded", "box_Get_Player_ID_24.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_95_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_72
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M040.Objectives.Objective030",
    item = "SubObjective",
    id = "496495"
  }
  l0 = self.box_PhoneCommunicationController_95
  l1 = self.box_MissionMessageController_v3_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|701457847", "701457847", "S10M040_Main", "box_PhoneCommunicationController_95.OnCommunicationStarted", "box_MissionMessageController_v3_72.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_PlaySequence_v5_15_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_PlaySequence_v5_15
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|992836448", "992836448", "S10M040_Main", "box_PlaySequence_v5_15.Finished", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_15_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_PlaySequence_v5_15
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2030143636", "2030143636", "S10M040_Main", "box_PlaySequence_v5_15.Skipped", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_96_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_66()
  l0 = self.box_PlayDialog_v2_96
  l1 = self.box_MultipleOR_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|741119600", "741119600", "S10M040_Main", "box_PlayDialog_v2_96.Started", "box_MultipleOR_66.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_47_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Reach_Gameplay_63
  l0.Entity = "9223372049800751311"
  l0.Entity_AreaRadius = 80
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_MissionMessageController_v3_47
  l1 = self.box_Reach_Gameplay_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|897589415", "897589415", "S10M040_Main", "box_MissionMessageController_v3_47.Out", "box_Reach_Gameplay_63.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_116_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_116
  self.List_Screens = l0.Target
  self:OnEnter_box_MultipleOR_114()
  l1 = self.box_MultipleOR_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|885918318", "885918318", "S10M040_Main", "box_ListWriter_116.Added", "box_MultipleOR_114.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_116_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_116
  self.List_Screens = l0.Target
end
function export:f_box_ListWriter_116_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_116
  self.List_Screens = l0.Target
end
function export:f_box_PGTController_v2_25_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372057522131569"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|2057616378"
  l0.Out = self.f_box_AI_Agent_Zone_64_Out
  l0 = self.box_PGTController_v2_25
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1965635721", "1965635721", "S10M040_Main", "box_PGTController_v2_25.AllSpawned", "box_AI_Agent_Zone_64.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_86_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_86()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1893440681", "1893440681", "S10M040_Main", "box_Media_System_Custom_Broadcast_Monitor_86.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_86.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_86_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_134
  l0.Input = self.List_Screens
  l0.Data[0] = "9223372066478407192"
  l0.Data[1] = "9223372066478407194"
  l0.Data[2] = "9223372066478407196"
  l0.Data[3] = "9223372066478407198"
  l0.Data[4] = "9223372066478407200"
  l0.Data[5] = "9223372066478407202"
  l0.Data[6] = "9223372066478407204"
  l0.Data[7] = "9223372066478407206"
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_86
  l1 = self.box_ListWriter_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1187107166", "1187107166", "S10M040_Main", "box_Media_System_Custom_Broadcast_Monitor_86.Disabled", "box_ListWriter_134.Add", l0, l1)
  l1:Add()
end
function export:f_box_Reach_Gameplay_63_Reached()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1387199310"
  l0.Out = self.f_box_Simple_Node_121_Out
  l0 = self.box_Reach_Gameplay_63
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|69878551", "69878551", "S10M040_Main", "box_Reach_Gameplay_63.Reached", "box_Simple_Node_121.In", l0, l1)
  l1:In()
end
function export:f_box_Reach_Gameplay_63_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_31
  l0.PGTMissionArea = "9223372046951448032"
  l0 = self.box_Reach_Gameplay_63
  l1 = self.box_PGTController_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|252393566", "252393566", "S10M040_Main", "box_Reach_Gameplay_63.Started", "box_PGTController_v2_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_79_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TranceiverPlaced
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|903469497"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_120_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_79
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|670526961", "670526961", "S10M040_Main", "box_Timer_v2_79.TimeElapsed", "box_Compare_Boolean_v2_120.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_44_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_100
  l0.SceneEntity = "9223372049887315257"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S10/S10_PGV-FS_VID/s10_pgv-fs_vid.seq"
  l0 = self.box_MultipleOR_44
  l1 = self.box_PlaySequence_v5_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|306723546", "306723546", "S10M040_Main", "box_MultipleOR_44.Out", "box_PlaySequence_v5_100.Start", l0, l1)
  l1:Start()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_62_EndedAllCustomMediaBroadcasts()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S10M040_SwapController_26()
  l0 = self.box_S10M040_SwapController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|647891496", "647891496", "S10M040_Main", "box_Media_System_Custom_Broadcast_Controller_62.EndedAllCustomMediaBroadcasts", "box_S10M040_SwapController_26.Show", clone, l0)
  l0:Show()
end
function export:f_box_PlaySound_v2_69_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669160"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|677343216"
  l0.Activated = self.f_box_MissionMusicController_88_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_69
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|806583445", "806583445", "S10M040_Main", "box_PlaySound_v2_69.Out", "box_MissionMusicController_88.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_28_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_28()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|723871488", "723871488", "S10M040_Main", "box_Media_System_Custom_Broadcast_Monitor_28.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_28.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_28_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_116
  l0.Input = self.List_Screens
  l0.Data[0] = "9223372066478407192"
  l0.Data[1] = "9223372066478407194"
  l0.Data[2] = "9223372066478407196"
  l0.Data[3] = "9223372066478407198"
  l0.Data[4] = "9223372066478407200"
  l0.Data[5] = "9223372066478407202"
  l0.Data[6] = "9223372066478407204"
  l0.Data[7] = "9223372066478407206"
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_28
  l1 = self.box_ListWriter_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|71518089", "71518089", "S10M040_Main", "box_Media_System_Custom_Broadcast_Monitor_28.Disabled", "box_ListWriter_116.Add", l0, l1)
  l1:Add()
end
function export:f_box_Simple_Node_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_112()
  l0 = self.box_AISquadStateMonitor_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|873869100", "873869100", "S10M040_Main", "box_Simple_Node_1.Out", "box_AISquadStateMonitor_112.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionCheckpointReach_78_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S10M040_SwapController_4()
  l0 = self.box_MissionCheckpointReach_78
  l1 = self.box_S10M040_SwapController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|629073639", "629073639", "S10M040_Main", "box_MissionCheckpointReach_78.Out", "box_S10M040_SwapController_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_92_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|390495856"
  l0.Out = self.f_box_Simple_Node_51_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1726972908", "1726972908", "S10M040_Main", "box_Simple_Node_92.Out", "box_Simple_Node_51.In", clone, l0)
  l0:In()
end
function export:f_box_AI_Agent_Zone_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372059468190925"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1659728035"
  l0.Out = self.f_box_AI_Agent_Zone_60_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|482398461", "482398461", "S10M040_Main", "box_AI_Agent_Zone_64.Out", "box_AI_Agent_Zone_60.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Proximity_Monitor_94_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_42()
  l0 = self.box_Proximity_Monitor_94
  l1 = self.box_MissionZone_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|801922772", "801922772", "S10M040_Main", "box_Proximity_Monitor_94.Disabled", "box_MissionZone_42.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Proximity_Monitor_94_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_94()
  l0 = self.box_Proximity_Monitor_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|276698497", "276698497", "S10M040_Main", "box_Proximity_Monitor_94.EnterRadius", "box_Proximity_Monitor_94.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PhoneCommunicationController_33_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_132()
  l0 = self.box_PhoneCommunicationController_33
  l1 = self.box_MapPointController_v4_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|181308740", "181308740", "S10M040_Main", "box_PhoneCommunicationController_33.OnCommunicationStarted", "box_MapPointController_v4_132.Show", l0, l1)
  l1:Show()
end
function export:f_box_Get_Player_ID_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_130
  l0.HackableEntity = "9223372048344008064"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10M040.domino|@S10M040_Main|1868640635", "1868640635", "S10M040_Main", "box_Get_Player_ID_43.Out", "box_HackableController_v2_130.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:OnEnter_box_MultipleOR_102()
end
function export:OnEnter_box_TriggerMonitor_v2_38()
  local l0
  l0 = self.box_TriggerMonitor_v2_38
  l0.Trigger = "9223372049275663916"
end
function export:OnEnter_box_MultipleOR_110()
end
function export:OnEnter_box_Hackable_Monitor_83()
  local l0
  l0 = self.box_Hackable_Monitor_83
  l0.HackableEntity = "9223372049116939181"
end
function export:OnEnter_box_S10M040_SwapController_4()
end
function export:OnEnter_box_OnceOnly_v3_56()
end
function export:OnEnter_box_MultipleOR_97()
end
function export:OnEnter_box_MultipleOR_114()
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_30()
end
function export:OnEnter_box_MultipleOR_66()
end
function export:OnEnter_box_MapPointController_v4_132()
  local l0
  l0 = self.box_MapPointController_v4_132
  l0.MapPoint = "9223372047397800231"
end
function export:OnEnter_box_S10M040_SwapController_26()
end
function export:OnEnter_box_MissionZone_42()
  local l0
  l0 = self.box_MissionZone_42
  l0.MissionArea = "9223372048597500605"
  l0.MissionLayer = "S10M040_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_Player_Proximity_Monitor_87()
  local l0
  l0 = self.box_Player_Proximity_Monitor_87
  l0.TargetEntity = "9223372049800751311"
  l0.Radius = 700
end
function export:OnEnter_box_MissionZone_10()
  local l0
  l0 = self.box_MissionZone_10
  l0.MissionArea = "9223372048597500607"
  l0.MissionLayer = "S10M040_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_5()
end
function export:OnEnter_box_AISquadStateMonitor_112()
  local l0
  l0 = self.box_AISquadStateMonitor_112
  l0.Affiliation = "AFI"
end
function export:OnEnter_box_Proximity_Monitor_23()
  local l0
  l0 = self.box_Proximity_Monitor_23
  l0.Entity1 = "9223372047095066574"
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 100
end
function export:OnEnter_box_MultipleOR_133()
end
function export:OnEnter_box_MultipleOR_61()
end
function export:OnEnter_box_Multiple_AND_59()
end
function export:OnEnter_box_Multiple_AND_70()
end
function export:OnEnter_box_Mission_End_6()
  local l0
  l0 = self.box_Mission_End_6
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S10M040_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_86()
end
function export:OnEnter_box_MultipleOR_44()
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_28()
end
function export:OnEnter_box_Proximity_Monitor_94()
  local l0
  l0 = self.box_Proximity_Monitor_94
  l0.Entity1 = "9223372048597500605"
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 50
  l0.CheckNow = 1
end
_compilerVersion = 4
