export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AgentStateMonitor_v2.lua")
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadRelationshipController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LineOfSightMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
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
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v4.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerStateController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/Library/common/Cinematic.QuickPlayerDeath.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionFlow.Restore_Mission_SubObjectives.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageDoorEntrance.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageLifts.debug.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/StandaloneLoaderController.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/ToyCarController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/1446928543.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3813750540.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2050991331.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2328358207.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1015959666.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2234803984.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/633760902.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2286467389.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1605544607.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/840169351.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2411174878.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4030898685.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S10M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main"
  self.PlayerEntity = nil
  self.VR_AccessNode = "9223372055242061126"
  self.Y_Antenna = "9223372047820394285"
  self.List_AFI_Outside_SpawnedAgent = {}
  self.AFI_Entity_Outside_SpawnedAgent = nil
  self.List_AFI_Outside_CLO = {}
  self.AFI_Entity_Outside_CLO = nil
  self.List_CLO_SAS = {}
  self.CLO_SAS = nil
  self.CLO_SAS_SpawnedCivilian = nil
  self.List_CLO_SAS_SpawnedCivilian = {}
  self.CLO_SAS_Spawned = 0
  self.AI_HMA_InCombat = 0
  self.FelonyInside = 0
  self.Screen = nil
  self.List_PC_Screens_MeetingRoom = {}
  self.List_PC_Screens_OpenSpace = {}
  self.List_PC_Screens_Other = {}
  self.Reinforcement_Outside = 0
  self.Inside_FirstFloor_01 = 0
  self.Inside_FirstFloor_02 = 0
  self.List_ScreenTheatre = {}
  self.List_ScreensSound = {}
  self.CivilianKilled = 0
  self.box_ListForEach_320 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_320
  l0._graph = self
  l0._name = "box_ListForEach_320"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|14429075"
  l0.Started = self.f_box_ListForEach_320_Started
  l0.Stopped = self.f_box_ListForEach_320_Stopped
  l0.ForEach = self.f_box_ListForEach_320_ForEach
  l0.GotNext = self.f_box_ListForEach_320_GotNext
  l0.EndOfList = self.f_box_ListForEach_320_EndOfList
  l0.GotFirst = DummyFunction
  self.box_ListForEach_150 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_150
  l0._graph = self
  l0._name = "box_ListForEach_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|16955466"
  l0.Started = self.f_box_ListForEach_150_Started
  l0.Stopped = self.f_box_ListForEach_150_Stopped
  l0.ForEach = self.f_box_ListForEach_150_ForEach
  l0.GotNext = self.f_box_ListForEach_150_GotNext
  l0.EndOfList = self.f_box_ListForEach_150_EndOfList
  l0.GotFirst = DummyFunction
  self.box_MultipleOR_173 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_173
  l0._graph = self
  l0._name = "box_MultipleOR_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|20950606"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_173_Out
  self.box_CLOController_333 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_333
  l0._graph = self
  l0._name = "box_CLOController_333"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|32354990"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_S10M030_ManageLifts_94 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageLifts.debug.lua")
  l0 = self.box_S10M030_ManageLifts_94
  l0._graph = self
  l0._name = "box_S10M030_ManageLifts_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|36908439"
  l0.OpenDoorsExtLaunched = DummyFunction
  l0.CloseDoorsExtLaunched = self.f_box_S10M030_ManageLifts_94_CloseDoorsExtLaunched
  l0.OpenDoorsElevatorLaunched = DummyFunction
  l0.CloseDoorsElevatorLaunched = DummyFunction
  l0.DoorsElevatorClosed = self.f_box_S10M030_ManageLifts_94_DoorsElevatorClosed
  l0.MoveElevatorUpStarted = DummyFunction
  l0.MoveElevatorUpFinished = DummyFunction
  l0.MoveElevatorDownStarted = DummyFunction
  l0.MoveElevatorDownFinished = DummyFunction
  self.box_Multiple_AND_36 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_36
  l0._graph = self
  l0._name = "box_Multiple_AND_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|52950708"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_36_Out
  self.box_PhoneCommunicationController_25 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_25
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|55077371"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_25_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_267 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_267
  l0._graph = self
  l0._name = "box_MultipleOR_267"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|77130262"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_267_Out
  self.box_MultipleOR_244 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_244
  l0._graph = self
  l0._name = "box_MultipleOR_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|77814181"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_244_Out
  self.box_MultipleOR_321 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_321
  l0._graph = self
  l0._name = "box_MultipleOR_321"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|82740517"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_321_Out
  self.box_Timer_v2_279 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_279
  l0._graph = self
  l0._name = "box_Timer_v2_279"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|89444783"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_279_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_279_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Media_System_Custom_Broadcast_Monitor_49 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_49
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|112575935"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_49_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_49_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_337 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_337
  l0._graph = self
  l0._name = "box_CLOController_337"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|114639648"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Download_Gameplay_132 = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_132
  l0._graph = self
  l0._name = "box_Download_Gameplay_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|115977710"
  l0.Started = self.f_box_Download_Gameplay_132_Started
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_box_Download_Gameplay_132_DownloadCompleted
  l0.Ratio1Reached = self.f_box_Download_Gameplay_132_Ratio1Reached
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self.box_CLOController_246 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_246
  l0._graph = self
  l0._name = "box_CLOController_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|132985171"
  l0.Activated = self.f_box_CLOController_246_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_246_OnUserInPlace
  self.box_AISquadStateMonitor_259 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_259
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|136825253"
  l0.Enabled = self.f_box_AISquadStateMonitor_259_Enabled
  l0.Disabled = self.f_box_AISquadStateMonitor_259_Disabled
  l0.ArrestState = self.f_box_AISquadStateMonitor_259_ArrestState
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_259_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_PGTController_v2_107 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_107
  l0._graph = self
  l0._name = "box_PGTController_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|161945869"
  l0.Started = self.f_box_PGTController_v2_107_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_107_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_Interact_Gameplay_171 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_171
  l0._graph = self
  l0._name = "box_Interact_Gameplay_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|165921594"
  l0.Started = self.f_box_Interact_Gameplay_171_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_171_Interacted
  self.box_CLOController_240 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_240
  l0._graph = self
  l0._name = "box_CLOController_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|166137450"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_240_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_ListWriter_184 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_184
  l0._graph = self
  l0._name = "box_ListWriter_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|168052508"
  l0._DynamicAnchors = {Data = 10}
  l0.Added = self.f_box_ListWriter_184_Added
  l0.Removed = self.f_box_ListWriter_184_Removed
  l0.Out = self.f_box_ListWriter_184_Out
  self.box_EntityLoadingMonitor_278 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_278
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_278"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|171826679"
  l0.Enabled = self.f_box_EntityLoadingMonitor_278_Enabled
  l0.Disabled = self.f_box_EntityLoadingMonitor_278_Disabled
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_278_AllLoaded
  self.box_TriggerMonitor_v2_265 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_265
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_265"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|174881718"
  l0.Enabled = self.f_box_TriggerMonitor_v2_265_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_265_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_265_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_265_Leave
  l0.Use = DummyFunction
  self.box_CLOController_18 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_18
  l0._graph = self
  l0._name = "box_CLOController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|185018217"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_18_OnUserInPlace
  self.box_MultipleOR_35 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_35
  l0._graph = self
  l0._name = "box_MultipleOR_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|189038437"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_35_Out
  self.box_S10M030_ManageLifts_6 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageLifts.debug.lua")
  l0 = self.box_S10M030_ManageLifts_6
  l0._graph = self
  l0._name = "box_S10M030_ManageLifts_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|189424287"
  l0.OpenDoorsExtLaunched = self.f_box_S10M030_ManageLifts_6_OpenDoorsExtLaunched
  l0.CloseDoorsExtLaunched = DummyFunction
  l0.OpenDoorsElevatorLaunched = DummyFunction
  l0.CloseDoorsElevatorLaunched = DummyFunction
  l0.DoorsElevatorClosed = DummyFunction
  l0.MoveElevatorUpStarted = DummyFunction
  l0.MoveElevatorUpFinished = self.f_box_S10M030_ManageLifts_6_MoveElevatorUpFinished
  l0.MoveElevatorDownStarted = DummyFunction
  l0.MoveElevatorDownFinished = DummyFunction
  self.box_MissionMessageController_v3_14 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_14
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|196199770"
  l0.Out = self.f_box_MissionMessageController_v3_14_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_205 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_205
  l0._graph = self
  l0._name = "box_MultipleOR_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|202739893"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_205_Out
  self.box_PawnHealthMonitor_v4_292 = cbox:CreateBox("domino/System/PawnHealthMonitor_v4.lua")
  l0 = self.box_PawnHealthMonitor_v4_292
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v4_292"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|204840048"
  l0.Enabled = self.f_box_PawnHealthMonitor_v4_292_Enabled
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.DamageReceived = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v4_292_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_MissionMessageController_v3_264 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_264
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_264"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|209988825"
  l0.Out = self.f_box_MissionMessageController_v3_264_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_TriggerMonitor_v2_281 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_281
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_281"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|222340405"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_281_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_281_Leave
  l0.Use = DummyFunction
  self.box_PlayDialog_v2_109 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_109
  l0._graph = self
  l0._name = "box_PlayDialog_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|236108086"
  l0.Started = self.f_box_PlayDialog_v2_109_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_S10M030_ManageLifts_175 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageLifts.debug.lua")
  l0 = self.box_S10M030_ManageLifts_175
  l0._graph = self
  l0._name = "box_S10M030_ManageLifts_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|251812032"
  l0.OpenDoorsExtLaunched = DummyFunction
  l0.CloseDoorsExtLaunched = self.f_box_S10M030_ManageLifts_175_CloseDoorsExtLaunched
  l0.OpenDoorsElevatorLaunched = DummyFunction
  l0.CloseDoorsElevatorLaunched = DummyFunction
  l0.DoorsElevatorClosed = self.f_box_S10M030_ManageLifts_175_DoorsElevatorClosed
  l0.MoveElevatorUpStarted = DummyFunction
  l0.MoveElevatorUpFinished = DummyFunction
  l0.MoveElevatorDownStarted = DummyFunction
  l0.MoveElevatorDownFinished = DummyFunction
  self.box_MissionMessageController_v3_224 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_224
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|260542268"
  l0.Out = self.f_box_MissionMessageController_v3_224_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_198 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_198
  l0._graph = self
  l0._name = "box_ListWriter_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|267447929"
  l0._DynamicAnchors = {Data = 10}
  l0.Added = self.f_box_ListWriter_198_Added
  l0.Removed = self.f_box_ListWriter_198_Removed
  l0.Out = self.f_box_ListWriter_198_Out
  self.box_Escape_Gameplay_43 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_43
  l0._graph = self
  l0._name = "box_Escape_Gameplay_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|268196812"
  l0.Started = self.f_box_Escape_Gameplay_43_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_43_Escaped
  l0.LeftArea = DummyFunction
  self.box_ListWriter_164 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_164
  l0._graph = self
  l0._name = "box_ListWriter_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|274415501"
  l0._DynamicAnchors = {Data = 12}
  l0.Added = self.f_box_ListWriter_164_Added
  l0.Removed = self.f_box_ListWriter_164_Removed
  l0.Out = self.f_box_ListWriter_164_Out
  self.box_ListWriter_149 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_149
  l0._graph = self
  l0._name = "box_ListWriter_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|292429307"
  l0._DynamicAnchors = {Data = 12}
  l0.Added = self.f_box_ListWriter_149_Added
  l0.Removed = self.f_box_ListWriter_149_Removed
  l0.Out = self.f_box_ListWriter_149_Out
  self.box_MissionCheckpointReach_68 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_68
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|293658540"
  l0.Out = self.f_box_MissionCheckpointReach_68_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_ListForEach_193 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_193
  l0._graph = self
  l0._name = "box_ListForEach_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|297945976"
  l0.Started = self.f_box_ListForEach_193_Started
  l0.Stopped = self.f_box_ListForEach_193_Stopped
  l0.ForEach = self.f_box_ListForEach_193_ForEach
  l0.GotNext = self.f_box_ListForEach_193_GotNext
  l0.EndOfList = self.f_box_ListForEach_193_EndOfList
  l0.GotFirst = DummyFunction
  self.box_AISquadStateController_146 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_146
  l0._graph = self
  l0._name = "box_AISquadStateController_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|311397874"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = self.f_box_AISquadStateController_146_TargetedSearchSet
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_SetBoolean_v2_160 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_160
  l0._graph = self
  l0._name = "box_SetBoolean_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|312541240"
  l0.Out = self.f_box_SetBoolean_v2_160_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_160_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_160_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_160_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_160_SetFromBool
  self.box_PlaySound_v2_19 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_19
  l0._graph = self
  l0._name = "box_PlaySound_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|336675384"
  l0.Out = self.f_box_PlaySound_v2_19_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Escape_Gameplay_127 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_127
  l0._graph = self
  l0._name = "box_Escape_Gameplay_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|370977763"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_127_Escaped
  l0.LeftArea = DummyFunction
  self.box_PGTController_v2_156 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_156
  l0._graph = self
  l0._name = "box_PGTController_v2_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|380563663"
  l0.Started = DummyFunction
  l0.Aborted = self.f_box_PGTController_v2_156_Aborted
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_PlaySound_v2_221 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_221
  l0._graph = self
  l0._name = "box_PlaySound_v2_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|390637236"
  l0.Out = self.f_box_PlaySound_v2_221_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_104 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_104
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|397847270"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_128 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_128
  l0._graph = self
  l0._name = "box_Multiple_AND_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|422271663"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_128_Out
  self.box_PhoneCommunicationController_3 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_3
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|427234649"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_3_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_316 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_316
  l0._graph = self
  l0._name = "box_OnceOnly_v3_316"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|433161387"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_316_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_332 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_332
  l0._graph = self
  l0._name = "box_CLOController_332"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|436030126"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_332_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySound_v2_21 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_21
  l0._graph = self
  l0._name = "box_PlaySound_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|447347851"
  l0.Out = self.f_box_PlaySound_v2_21_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_S10M030_ManageDoorEntrance_248 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageDoorEntrance.debug.lua")
  l0 = self.box_S10M030_ManageDoorEntrance_248
  l0._graph = self
  l0._name = "box_S10M030_ManageDoorEntrance_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|451497072"
  l0.HackDisabled = DummyFunction
  l0.HackEnabled = DummyFunction
  l0.DoorOpened = DummyFunction
  l0.DoorClosed = DummyFunction
  l0.DoorWithoutHackOpened = self.f_box_S10M030_ManageDoorEntrance_248_DoorWithoutHackOpened
  self.box_PhoneCommunicationController_24 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_24
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|466205949"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_24_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_78 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_78
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|466811455"
  l0.Out = self.f_box_MissionCheckpointReach_78_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_270 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_270
  l0._graph = self
  l0._name = "box_MultipleOR_270"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|467719847"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_270_Out
  self.box_CLOController_331 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_331
  l0._graph = self
  l0._name = "box_CLOController_331"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|467806037"
  l0.Activated = self.f_box_CLOController_331_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_S10M030_ManageDoorEntrance_124 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageDoorEntrance.debug.lua")
  l0 = self.box_S10M030_ManageDoorEntrance_124
  l0._graph = self
  l0._name = "box_S10M030_ManageDoorEntrance_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|490642940"
  l0.HackDisabled = self.f_box_S10M030_ManageDoorEntrance_124_HackDisabled
  l0.HackEnabled = DummyFunction
  l0.DoorOpened = DummyFunction
  l0.DoorClosed = self.f_box_S10M030_ManageDoorEntrance_124_DoorClosed
  l0.DoorWithoutHackOpened = DummyFunction
  self.box_SetBoolean_v2_151 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_151
  l0._graph = self
  l0._name = "box_SetBoolean_v2_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|491806230"
  l0.Out = self.f_box_SetBoolean_v2_151_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_151_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_151_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_151_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_151_SetFromBool
  self.box_AISquadStateMonitor_253 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_253
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|493793649"
  l0.Enabled = self.f_box_AISquadStateMonitor_253_Enabled
  l0.Disabled = self.f_box_AISquadStateMonitor_253_Disabled
  l0.ArrestState = self.f_box_AISquadStateMonitor_253_ArrestState
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_253_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_MultipleOR_102 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_102
  l0._graph = self
  l0._name = "box_MultipleOR_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|494245876"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_102_Out
  self.box_S10M030_ManageDoorEntrance_16 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageDoorEntrance.debug.lua")
  l0 = self.box_S10M030_ManageDoorEntrance_16
  l0._graph = self
  l0._name = "box_S10M030_ManageDoorEntrance_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|496814195"
  l0.HackDisabled = DummyFunction
  l0.HackEnabled = self.f_box_S10M030_ManageDoorEntrance_16_HackEnabled
  l0.DoorOpened = self.f_box_S10M030_ManageDoorEntrance_16_DoorOpened
  l0.DoorClosed = DummyFunction
  l0.DoorWithoutHackOpened = DummyFunction
  self.box_PlaySound_v2_213 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_213
  l0._graph = self
  l0._name = "box_PlaySound_v2_213"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|498151895"
  l0.Out = self.f_box_PlaySound_v2_213_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Teleport_To_SpawnPoint_39 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_39
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|502809930"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_39_TeleportDone
  self.box_S10M030_ManageLifts_7 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageLifts.debug.lua")
  l0 = self.box_S10M030_ManageLifts_7
  l0._graph = self
  l0._name = "box_S10M030_ManageLifts_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|504404784"
  l0.OpenDoorsExtLaunched = DummyFunction
  l0.CloseDoorsExtLaunched = DummyFunction
  l0.OpenDoorsElevatorLaunched = DummyFunction
  l0.CloseDoorsElevatorLaunched = DummyFunction
  l0.DoorsElevatorClosed = DummyFunction
  l0.MoveElevatorUpStarted = DummyFunction
  l0.MoveElevatorUpFinished = DummyFunction
  l0.MoveElevatorDownStarted = self.f_box_S10M030_ManageLifts_7_MoveElevatorDownStarted
  l0.MoveElevatorDownFinished = self.f_box_S10M030_ManageLifts_7_MoveElevatorDownFinished
  self.box_ListWriter_74 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_74
  l0._graph = self
  l0._name = "box_ListWriter_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|507337454"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_74_Added
  l0.Removed = self.f_box_ListWriter_74_Removed
  l0.Out = self.f_box_ListWriter_74_Out
  self.box_CinematicPrep_98 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_98
  l0._graph = self
  l0._name = "box_CinematicPrep_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|525125624"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_98_PostOut
  self.box_PhoneCommunicationController_41 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_41
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|533734360"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_63 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_63
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|535186082"
  l0.Out = self.f_box_MissionCheckpointReach_63_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CLOController_243 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_243
  l0._graph = self
  l0._name = "box_CLOController_243"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|536967800"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_SetBoolean_v2_88 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_88
  l0._graph = self
  l0._name = "box_SetBoolean_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|556997352"
  l0.Out = self.f_box_SetBoolean_v2_88_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_88_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_88_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_88_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_88_SetFromBool
  self.box_MissionController_v4_229 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_229
  l0._graph = self
  l0._name = "box_MissionController_v4_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|568653634"
  self.box_QuickPlayerDeath_228 = cbox:CreateBox("domino/Library/common/Cinematic.QuickPlayerDeath.debug.lua")
  l0 = self.box_QuickPlayerDeath_228
  l0._graph = self
  l0._name = "box_QuickPlayerDeath_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|569216187"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PlayerDead = self.f_box_QuickPlayerDeath_228_PlayerDead
  self.box_PlaySound_v2_314 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_314
  l0._graph = self
  l0._name = "box_PlaySound_v2_314"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|574012272"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_S10M030_ManageLifts_232 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageLifts.debug.lua")
  l0 = self.box_S10M030_ManageLifts_232
  l0._graph = self
  l0._name = "box_S10M030_ManageLifts_232"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|583364965"
  l0.OpenDoorsExtLaunched = self.f_box_S10M030_ManageLifts_232_OpenDoorsExtLaunched
  l0.CloseDoorsExtLaunched = DummyFunction
  l0.OpenDoorsElevatorLaunched = self.f_box_S10M030_ManageLifts_232_OpenDoorsElevatorLaunched
  l0.CloseDoorsElevatorLaunched = DummyFunction
  l0.DoorsElevatorClosed = DummyFunction
  l0.MoveElevatorUpStarted = DummyFunction
  l0.MoveElevatorUpFinished = DummyFunction
  l0.MoveElevatorDownStarted = DummyFunction
  l0.MoveElevatorDownFinished = DummyFunction
  self.box_Multiple_AND_83 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_83
  l0._graph = self
  l0._name = "box_Multiple_AND_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|591424459"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_83_Out
  self.box_S10M030_ManageLifts_45 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageLifts.debug.lua")
  l0 = self.box_S10M030_ManageLifts_45
  l0._graph = self
  l0._name = "box_S10M030_ManageLifts_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|591502262"
  l0.OpenDoorsExtLaunched = DummyFunction
  l0.CloseDoorsExtLaunched = self.f_box_S10M030_ManageLifts_45_CloseDoorsExtLaunched
  l0.OpenDoorsElevatorLaunched = DummyFunction
  l0.CloseDoorsElevatorLaunched = DummyFunction
  l0.DoorsElevatorClosed = self.f_box_S10M030_ManageLifts_45_DoorsElevatorClosed
  l0.MoveElevatorUpStarted = DummyFunction
  l0.MoveElevatorUpFinished = DummyFunction
  l0.MoveElevatorDownStarted = DummyFunction
  l0.MoveElevatorDownFinished = DummyFunction
  self.box_ListForEach_195 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_195
  l0._graph = self
  l0._name = "box_ListForEach_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|599803403"
  l0.Started = self.f_box_ListForEach_195_Started
  l0.Stopped = self.f_box_ListForEach_195_Stopped
  l0.ForEach = self.f_box_ListForEach_195_ForEach
  l0.GotNext = self.f_box_ListForEach_195_GotNext
  l0.EndOfList = self.f_box_ListForEach_195_EndOfList
  l0.GotFirst = DummyFunction
  self.box_MultipleOR_165 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_165
  l0._graph = self
  l0._name = "box_MultipleOR_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|605797587"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_165_Out
  self.box_CLOController_341 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_341
  l0._graph = self
  l0._name = "box_CLOController_341"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|633410297"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_HackableController_v2_303 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_303
  l0._graph = self
  l0._name = "box_HackableController_v2_303"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|648403048"
  l0.Enabled = self.f_box_HackableController_v2_303_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_168 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_168
  l0._graph = self
  l0._name = "box_MultipleOR_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|649675554"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_168_Out
  self.box_MultipleOR_207 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_207
  l0._graph = self
  l0._name = "box_MultipleOR_207"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|670206945"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_207_Out
  self.box_LineOfSightMonitor_40 = cbox:CreateBox("domino/System/LineOfSightMonitor.lua")
  l0 = self.box_LineOfSightMonitor_40
  l0._graph = self
  l0._name = "box_LineOfSightMonitor_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|672695099"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_LineOfSightMonitor_40_Enabled
  l0.Disabled = self.f_box_LineOfSightMonitor_40_Disabled
  l0.LOSAcquired = self.f_box_LineOfSightMonitor_40_LOSAcquired
  l0.LOSLost = DummyFunction
  self.box_OnceOnly_v3_125 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_125
  l0._graph = self
  l0._name = "box_OnceOnly_v3_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|697005122"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_125_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_86 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_86
  l0._graph = self
  l0._name = "box_OnceOnly_v3_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|697413385"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_86_Out
  l0.ResetOut = DummyFunction
  self.box_PlayDialog_v2_105 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_105
  l0._graph = self
  l0._name = "box_PlayDialog_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|697975103"
  l0.Started = self.f_box_PlayDialog_v2_105_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_92 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_92
  l0._graph = self
  l0._name = "box_MultipleOR_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|707898472"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_92_Out
  self.box_SetBoolean_v2_283 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_283
  l0._graph = self
  l0._name = "box_SetBoolean_v2_283"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|708408245"
  l0.Out = self.f_box_SetBoolean_v2_283_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_283_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_283_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_283_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_283_SetFromBool
  self.box_MissionCheckpointReach_59 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_59
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|709267962"
  l0.Out = self.f_box_MissionCheckpointReach_59_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_InteractionScriptMonitor_v2_227 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_227
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|736328909"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_227_InteractionStarted
  l0.InteractionFailed = self.f_box_InteractionScriptMonitor_v2_227_InteractionFailed
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_227_InteractionFinished
  l0.AnimationStarted = self.f_box_InteractionScriptMonitor_v2_227_AnimationStarted
  l0.AnimationFinished = DummyFunction
  self.box_SetBoolean_v2_293 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_293
  l0._graph = self
  l0._name = "box_SetBoolean_v2_293"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|748190857"
  l0.Out = self.f_box_SetBoolean_v2_293_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_293_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_293_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_293_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_293_SetFromBool
  self.box_SetBoolean_v2_87 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_87
  l0._graph = self
  l0._name = "box_SetBoolean_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|749988805"
  l0.Out = self.f_box_SetBoolean_v2_87_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_87_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_87_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_87_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_87_SetFromBool
  self.box_PlaySound_v2_309 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_309
  l0._graph = self
  l0._name = "box_PlaySound_v2_309"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|759473265"
  l0.Out = self.f_box_PlaySound_v2_309_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_245 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_245
  l0._graph = self
  l0._name = "box_CLOController_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|762725596"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_288 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_288
  l0._graph = self
  l0._name = "box_MultipleOR_288"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|764180367"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_288_Out
  self.box_MultipleOR_204 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_204
  l0._graph = self
  l0._name = "box_MultipleOR_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|768214865"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_204_Out
  self.box_ListForEach_71 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_71
  l0._graph = self
  l0._name = "box_ListForEach_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|781793481"
  l0.Started = self.f_box_ListForEach_71_Started
  l0.Stopped = self.f_box_ListForEach_71_Stopped
  l0.ForEach = self.f_box_ListForEach_71_ForEach
  l0.GotNext = self.f_box_ListForEach_71_GotNext
  l0.EndOfList = self.f_box_ListForEach_71_EndOfList
  l0.GotFirst = DummyFunction
  self.box_CinematicPrep_139 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_139
  l0._graph = self
  l0._name = "box_CinematicPrep_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|812121317"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_139_PostOut
  self.box_AISquadStateMonitor_249 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_249
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|842039742"
  l0.Enabled = self.f_box_AISquadStateMonitor_249_Enabled
  l0.Disabled = self.f_box_AISquadStateMonitor_249_Disabled
  l0.ArrestState = self.f_box_AISquadStateMonitor_249_ArrestState
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_249_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_AISquadStateMonitor_179 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_179
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|863261334"
  l0.Enabled = self.f_box_AISquadStateMonitor_179_Enabled
  l0.Disabled = self.f_box_AISquadStateMonitor_179_Disabled
  l0.ArrestState = self.f_box_AISquadStateMonitor_179_ArrestState
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_179_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_CLOController_335 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_335
  l0._graph = self
  l0._name = "box_CLOController_335"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|905878355"
  l0.Activated = self.f_box_CLOController_335_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_335_OnUserInPlace
  self.box_S10M030_ManageLifts_52 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageLifts.debug.lua")
  l0 = self.box_S10M030_ManageLifts_52
  l0._graph = self
  l0._name = "box_S10M030_ManageLifts_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|923679108"
  l0.OpenDoorsExtLaunched = DummyFunction
  l0.CloseDoorsExtLaunched = DummyFunction
  l0.OpenDoorsElevatorLaunched = DummyFunction
  l0.CloseDoorsElevatorLaunched = DummyFunction
  l0.DoorsElevatorClosed = DummyFunction
  l0.MoveElevatorUpStarted = self.f_box_S10M030_ManageLifts_52_MoveElevatorUpStarted
  l0.MoveElevatorUpFinished = self.f_box_S10M030_ManageLifts_52_MoveElevatorUpFinished
  l0.MoveElevatorDownStarted = DummyFunction
  l0.MoveElevatorDownFinished = DummyFunction
  self.box_InteractionScriptMonitor_v2_166 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_166
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|925448726"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_166_InteractionStarted
  l0.InteractionFailed = self.f_box_InteractionScriptMonitor_v2_166_InteractionFailed
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_166_InteractionFinished
  l0.AnimationStarted = self.f_box_InteractionScriptMonitor_v2_166_AnimationStarted
  l0.AnimationFinished = DummyFunction
  self.box_Hackable_Monitor_15 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_15
  l0._graph = self
  l0._name = "box_Hackable_Monitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|933536257"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_15_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_15_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MultipleOR_210 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_210
  l0._graph = self
  l0._name = "box_MultipleOR_210"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|938532973"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_210_Out
  self.box_ListForEach_189 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_189
  l0._graph = self
  l0._name = "box_ListForEach_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|966546795"
  l0.Started = self.f_box_ListForEach_189_Started
  l0.Stopped = self.f_box_ListForEach_189_Stopped
  l0.ForEach = self.f_box_ListForEach_189_ForEach
  l0.GotNext = self.f_box_ListForEach_189_GotNext
  l0.EndOfList = self.f_box_ListForEach_189_EndOfList
  l0.GotFirst = DummyFunction
  self.box_MissionZone_32 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_32
  l0._graph = self
  l0._name = "box_MissionZone_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|976315619"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZone_32_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_MultipleOR_177 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_177
  l0._graph = self
  l0._name = "box_MultipleOR_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1001799085"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_177_Out
  self.box_MultipleOR_258 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_258
  l0._graph = self
  l0._name = "box_MultipleOR_258"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1025909541"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_258_Out
  self.box_Restore_Mission_SubObjectives_254 = cbox:CreateBox("domino/Library/common/MissionFlow.Restore_Mission_SubObjectives.debug.lua")
  l0 = self.box_Restore_Mission_SubObjectives_254
  l0._graph = self
  l0._name = "box_Restore_Mission_SubObjectives_254"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1026215568"
  l0.Restored = self.f_box_Restore_Mission_SubObjectives_254_Restored
  self.box_PlaySound_v2_214 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_214
  l0._graph = self
  l0._name = "box_PlaySound_v2_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1044623424"
  l0.Out = self.f_box_PlaySound_v2_214_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_8 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_8
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1045410962"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_8_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_111 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_111
  l0._graph = self
  l0._name = "box_MultipleOR_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1049670494"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_111_Out
  self.box_PlaySound_v2_323 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_323
  l0._graph = self
  l0._name = "box_PlaySound_v2_323"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1055694832"
  l0.Out = self.f_box_PlaySound_v2_323_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Mission_End_17 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_17
  l0._graph = self
  l0._name = "box_Mission_End_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1056643844"
  self.box_MissionController_v4_154 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_154
  l0._graph = self
  l0._name = "box_MissionController_v4_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1073987147"
  self.box_MultipleOR_295 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_295
  l0._graph = self
  l0._name = "box_MultipleOR_295"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1083253577"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_295_Out
  self.box_Interact_Gameplay_10 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_10
  l0._graph = self
  l0._name = "box_Interact_Gameplay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1115973970"
  l0.Started = self.f_box_Interact_Gameplay_10_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_10_Interacted
  self.box_Interact_Gameplay_44 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_44
  l0._graph = self
  l0._name = "box_Interact_Gameplay_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1116777669"
  l0.Started = self.f_box_Interact_Gameplay_44_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_44_Interacted
  self.box_CLOController_340 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_340
  l0._graph = self
  l0._name = "box_CLOController_340"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1118522527"
  l0.Activated = self.f_box_CLOController_340_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_340_OnUserInPlace
  self.box_ListForEach_191 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_191
  l0._graph = self
  l0._name = "box_ListForEach_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1124168153"
  l0.Started = self.f_box_ListForEach_191_Started
  l0.Stopped = self.f_box_ListForEach_191_Stopped
  l0.ForEach = self.f_box_ListForEach_191_ForEach
  l0.GotNext = self.f_box_ListForEach_191_GotNext
  l0.EndOfList = self.f_box_ListForEach_191_EndOfList
  l0.GotFirst = DummyFunction
  self.box_PlaySound_v2_280 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_280
  l0._graph = self
  l0._name = "box_PlaySound_v2_280"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1127169313"
  l0.Out = self.f_box_PlaySound_v2_280_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Media_System_Custom_Broadcast_Monitor_46 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_46
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1130337224"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_46_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_46_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_ListForEach_167 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_167
  l0._graph = self
  l0._name = "box_ListForEach_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1143101437"
  l0.Started = self.f_box_ListForEach_167_Started
  l0.Stopped = self.f_box_ListForEach_167_Stopped
  l0.ForEach = self.f_box_ListForEach_167_ForEach
  l0.GotNext = self.f_box_ListForEach_167_GotNext
  l0.EndOfList = self.f_box_ListForEach_167_EndOfList
  l0.GotFirst = DummyFunction
  self.box_Media_System_Custom_Broadcast_Monitor_180 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_180
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1146171786"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_180_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_180_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_4 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_4
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1149720233"
  l0.Out = self.f_box_MissionMessageController_v3_4_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_241 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_241
  l0._graph = self
  l0._name = "box_CLOController_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1156589725"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_241_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionMessageController_v3_225 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_225
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1184544541"
  l0.Out = self.f_box_MissionMessageController_v3_225_Out
  l0.MessageCompleted = DummyFunction
  self.box_Multiple_AND_91 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_91
  l0._graph = self
  l0._name = "box_Multiple_AND_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1190184084"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_91_Out
  self.box_MultipleOR_307 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_307
  l0._graph = self
  l0._name = "box_MultipleOR_307"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1191512870"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_307_Out
  self.box_MissionLayer_v2_56 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_56
  l0._graph = self
  l0._name = "box_MissionLayer_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1202786542"
  l0.Loaded = self.f_box_MissionLayer_v2_56_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_ListForEach_185 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_185
  l0._graph = self
  l0._name = "box_ListForEach_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1205574318"
  l0.Started = self.f_box_ListForEach_185_Started
  l0.Stopped = self.f_box_ListForEach_185_Stopped
  l0.ForEach = self.f_box_ListForEach_185_ForEach
  l0.GotNext = self.f_box_ListForEach_185_GotNext
  l0.EndOfList = self.f_box_ListForEach_185_EndOfList
  l0.GotFirst = DummyFunction
  self.box_PlaySound_v2_42 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_42
  l0._graph = self
  l0._name = "box_PlaySound_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1219309973"
  l0.Out = self.f_box_PlaySound_v2_42_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_206 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_206
  l0._graph = self
  l0._name = "box_MultipleOR_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1226207215"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_206_Out
  self.box_ListWriter_163 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_163
  l0._graph = self
  l0._name = "box_ListWriter_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1233062493"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_163_Added
  l0.Removed = self.f_box_ListWriter_163_Removed
  l0.Out = self.f_box_ListWriter_163_Out
  self.box_CLOController_334 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_334
  l0._graph = self
  l0._name = "box_CLOController_334"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1236821378"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_334_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_95 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_95
  l0._graph = self
  l0._name = "box_MultipleOR_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1240170322"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_95_Out
  self.box_CLOController_342 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_342
  l0._graph = self
  l0._name = "box_CLOController_342"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1243518659"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Reach_Gameplay_297 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_297
  l0._graph = self
  l0._name = "box_Reach_Gameplay_297"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1254432103"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Reached = self.f_box_Reach_Gameplay_297_Reached
  self.box_MissionLayer_v2_62 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_62
  l0._graph = self
  l0._name = "box_MissionLayer_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1257997286"
  l0.Loaded = self.f_box_MissionLayer_v2_62_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_v3_9 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_9
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1259960562"
  l0.Out = self.f_box_MissionMessageController_v3_9_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_51 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_51
  l0._graph = self
  l0._name = "box_ListWriter_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1274384963"
  l0._DynamicAnchors = {Data = 12}
  l0.Added = self.f_box_ListWriter_51_Added
  l0.Removed = self.f_box_ListWriter_51_Removed
  l0.Out = self.f_box_ListWriter_51_Out
  self.box_PlaySound_v2_291 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_291
  l0._graph = self
  l0._name = "box_PlaySound_v2_291"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1283991877"
  l0.Out = self.f_box_PlaySound_v2_291_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_162 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_162
  l0._graph = self
  l0._name = "box_CLOController_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1302466002"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_162_OnUserInPlace
  self.box_MultipleOR_48 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_48
  l0._graph = self
  l0._name = "box_MultipleOR_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1303358575"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_48_Out
  self.box_AISquadStateMonitor_129 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_129
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1308279453"
  l0.Enabled = self.f_box_AISquadStateMonitor_129_Enabled
  l0.Disabled = self.f_box_AISquadStateMonitor_129_Disabled
  l0.ArrestState = self.f_box_AISquadStateMonitor_129_ArrestState
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_129_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_ListForEach_159 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_159
  l0._graph = self
  l0._name = "box_ListForEach_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1319138842"
  l0.Started = self.f_box_ListForEach_159_Started
  l0.Stopped = self.f_box_ListForEach_159_Stopped
  l0.ForEach = self.f_box_ListForEach_159_ForEach
  l0.GotNext = self.f_box_ListForEach_159_GotNext
  l0.EndOfList = self.f_box_ListForEach_159_EndOfList
  l0.GotFirst = DummyFunction
  self.box_ListWriter_319 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_319
  l0._graph = self
  l0._name = "box_ListWriter_319"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1319790116"
  l0._DynamicAnchors = {Data = 10}
  l0.Added = self.f_box_ListWriter_319_Added
  l0.Removed = self.f_box_ListWriter_319_Removed
  l0.Out = self.f_box_ListWriter_319_Out
  self.box_PGTController_v2_113 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_113
  l0._graph = self
  l0._name = "box_PGTController_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1345663475"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_113_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_CLOController_211 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_211
  l0._graph = self
  l0._name = "box_CLOController_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1366297987"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_211_OnUserInPlace
  self.box_HackableController_v2_233 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_233
  l0._graph = self
  l0._name = "box_HackableController_v2_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1369095959"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_233_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Proximity_Monitor_116 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_116
  l0._graph = self
  l0._name = "box_Proximity_Monitor_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1370805411"
  l0.Enabled = self.f_box_Proximity_Monitor_116_Enabled
  l0.Disabled = DummyFunction
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_116_ExitRadius
  self.box_S10M030_ManageLifts_308 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageLifts.debug.lua")
  l0 = self.box_S10M030_ManageLifts_308
  l0._graph = self
  l0._name = "box_S10M030_ManageLifts_308"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1381836884"
  l0.OpenDoorsExtLaunched = self.f_box_S10M030_ManageLifts_308_OpenDoorsExtLaunched
  l0.CloseDoorsExtLaunched = self.f_box_S10M030_ManageLifts_308_CloseDoorsExtLaunched
  l0.OpenDoorsElevatorLaunched = DummyFunction
  l0.CloseDoorsElevatorLaunched = self.f_box_S10M030_ManageLifts_308_CloseDoorsElevatorLaunched
  l0.DoorsElevatorClosed = DummyFunction
  l0.MoveElevatorUpStarted = DummyFunction
  l0.MoveElevatorUpFinished = DummyFunction
  l0.MoveElevatorDownStarted = DummyFunction
  l0.MoveElevatorDownFinished = self.f_box_S10M030_ManageLifts_308_MoveElevatorDownFinished
  self.box_PlaySound_v2_311 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_311
  l0._graph = self
  l0._name = "box_PlaySound_v2_311"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1393485301"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_QuickPlayerDeath_170 = cbox:CreateBox("domino/Library/common/Cinematic.QuickPlayerDeath.debug.lua")
  l0 = self.box_QuickPlayerDeath_170
  l0._graph = self
  l0._name = "box_QuickPlayerDeath_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1394514633"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PlayerDead = self.f_box_QuickPlayerDeath_170_PlayerDead
  self.box_S10M030_ManageLifts_144 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageLifts.debug.lua")
  l0 = self.box_S10M030_ManageLifts_144
  l0._graph = self
  l0._name = "box_S10M030_ManageLifts_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1396051310"
  l0.OpenDoorsExtLaunched = self.f_box_S10M030_ManageLifts_144_OpenDoorsExtLaunched
  l0.CloseDoorsExtLaunched = DummyFunction
  l0.OpenDoorsElevatorLaunched = DummyFunction
  l0.CloseDoorsElevatorLaunched = DummyFunction
  l0.DoorsElevatorClosed = DummyFunction
  l0.MoveElevatorUpStarted = DummyFunction
  l0.MoveElevatorUpFinished = self.f_box_S10M030_ManageLifts_144_MoveElevatorUpFinished
  l0.MoveElevatorDownStarted = DummyFunction
  l0.MoveElevatorDownFinished = DummyFunction
  self.box_CLOController_239 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_239
  l0._graph = self
  l0._name = "box_CLOController_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1409271434"
  l0.Activated = self.f_box_CLOController_239_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_ListWriter_181 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_181
  l0._graph = self
  l0._name = "box_ListWriter_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1413483487"
  l0._DynamicAnchors = {Data = 10}
  l0.Added = self.f_box_ListWriter_181_Added
  l0.Removed = self.f_box_ListWriter_181_Removed
  l0.Out = self.f_box_ListWriter_181_Out
  self.box_MissionLayer_v2_67 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_67
  l0._graph = self
  l0._name = "box_MissionLayer_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1414290786"
  l0.Loaded = self.f_box_MissionLayer_v2_67_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_AISquadStateMonitor_310 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_310
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_310"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1417409132"
  l0.Enabled = self.f_box_AISquadStateMonitor_310_Enabled
  l0.Disabled = DummyFunction
  l0.ArrestState = self.f_box_AISquadStateMonitor_310_ArrestState
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_310_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_box_AISquadStateMonitor_310_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_box_AISquadStateMonitor_310_VanishState
  l0.None = DummyFunction
  self.box_MultipleOR_251 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_251
  l0._graph = self
  l0._name = "box_MultipleOR_251"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1427655769"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_251_Out
  self.box_SetBoolean_v2_282 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_282
  l0._graph = self
  l0._name = "box_SetBoolean_v2_282"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1445048112"
  l0.Out = self.f_box_SetBoolean_v2_282_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_282_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_282_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_282_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_282_SetFromBool
  self.box_HackableController_v2_300 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_300
  l0._graph = self
  l0._name = "box_HackableController_v2_300"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1449746039"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_300_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AISquadStateMonitor_108 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_108
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1450199505"
  l0.Enabled = self.f_box_AISquadStateMonitor_108_Enabled
  l0.Disabled = self.f_box_AISquadStateMonitor_108_Disabled
  l0.ArrestState = self.f_box_AISquadStateMonitor_108_ArrestState
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_108_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_MultipleOR_269 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_269
  l0._graph = self
  l0._name = "box_MultipleOR_269"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1450767484"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_269_Out
  self.box_AISquadRelationshipController_100 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_100
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1483574958"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_100_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_MultipleOR_312 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_312
  l0._graph = self
  l0._name = "box_MultipleOR_312"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1487199835"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_312_Out
  self.box_ListWriter_84 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_84
  l0._graph = self
  l0._name = "box_ListWriter_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1496136788"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_84_Added
  l0.Removed = self.f_box_ListWriter_84_Removed
  l0.Out = self.f_box_ListWriter_84_Out
  self.box_CinematicPrep_75 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_75
  l0._graph = self
  l0._name = "box_CinematicPrep_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1520399795"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_75_PostOut
  self.box_CLOController_169 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_169
  l0._graph = self
  l0._name = "box_CLOController_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1542443017"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_169_OnUserInPlace
  self.box_MissionMessageController_v3_11 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_11
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1546734678"
  l0.Out = self.f_box_MissionMessageController_v3_11_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_26 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_26
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1550137912"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_AISquadStateMonitor_134 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_134
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1553269547"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_AISquadStateMonitor_134_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_134_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_SetBoolean_v2_250 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_250
  l0._graph = self
  l0._name = "box_SetBoolean_v2_250"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1574607149"
  l0.Out = self.f_box_SetBoolean_v2_250_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_250_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_250_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_250_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_250_SetFromBool
  self.box_CLOController_242 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_242
  l0._graph = self
  l0._name = "box_CLOController_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1576882800"
  l0.Activated = self.f_box_CLOController_242_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_242_OnUserInPlace
  self.box_CLOController_338 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_338
  l0._graph = self
  l0._name = "box_CLOController_338"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1581296429"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CinematicPrep_66 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_66
  l0._graph = self
  l0._name = "box_CinematicPrep_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1609507205"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_66_PostOut
  self.box_CinematicPrep_61 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_61
  l0._graph = self
  l0._name = "box_CinematicPrep_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1612632893"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_61_PostOut
  self.box_MultipleOR_219 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_219
  l0._graph = self
  l0._name = "box_MultipleOR_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1626708684"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_219_Out
  self.box_S10M030_ManageDoorEntrance_13 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageDoorEntrance.debug.lua")
  l0 = self.box_S10M030_ManageDoorEntrance_13
  l0._graph = self
  l0._name = "box_S10M030_ManageDoorEntrance_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1631947576"
  l0.HackDisabled = self.f_box_S10M030_ManageDoorEntrance_13_HackDisabled
  l0.HackEnabled = DummyFunction
  l0.DoorOpened = DummyFunction
  l0.DoorClosed = self.f_box_S10M030_ManageDoorEntrance_13_DoorClosed
  l0.DoorWithoutHackOpened = DummyFunction
  self.box_SetBoolean_v2_277 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_277
  l0._graph = self
  l0._name = "box_SetBoolean_v2_277"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1638499880"
  l0.Out = self.f_box_SetBoolean_v2_277_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_277_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_277_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_277_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_277_SetFromBool
  self.box_MultipleOR_131 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_131
  l0._graph = self
  l0._name = "box_MultipleOR_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1650697692"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_131_Out
  self.box_ListWriter_183 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_183
  l0._graph = self
  l0._name = "box_ListWriter_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1660530086"
  l0._DynamicAnchors = {Data = 20}
  l0.Added = self.f_box_ListWriter_183_Added
  l0.Removed = self.f_box_ListWriter_183_Removed
  l0.Out = self.f_box_ListWriter_183_Out
  self.box_CinematicPrep_97 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_97
  l0._graph = self
  l0._name = "box_CinematicPrep_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1661266324"
  l0.PreOut = self.f_box_CinematicPrep_97_PreOut
  l0.PostOut = DummyFunction
  self.box_Standalone_Loader_Controller_82 = cbox:CreateBox("domino/System/StandaloneLoaderController.lua")
  l0 = self.box_Standalone_Loader_Controller_82
  l0._graph = self
  l0._name = "box_Standalone_Loader_Controller_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1662761047"
  l0.LoadingStarted = self.f_box_Standalone_Loader_Controller_82_LoadingStarted
  l0.Loaded = self.f_box_Standalone_Loader_Controller_82_Loaded
  l0.PreviousZoneUnloaded = DummyFunction
  self.box_Restore_Mission_SubObjectives_255 = cbox:CreateBox("domino/Library/common/MissionFlow.Restore_Mission_SubObjectives.debug.lua")
  l0 = self.box_Restore_Mission_SubObjectives_255
  l0._graph = self
  l0._name = "box_Restore_Mission_SubObjectives_255"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1687852169"
  l0.Restored = self.f_box_Restore_Mission_SubObjectives_255_Restored
  self.box_AISquadStateController_161 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_161
  l0._graph = self
  l0._name = "box_AISquadStateController_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1694768231"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = self.f_box_AISquadStateController_161_TargetedSearchSet
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_CLOController_275 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_275
  l0._graph = self
  l0._name = "box_CLOController_275"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1703288704"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_275_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Standalone_Loader_Controller_137 = cbox:CreateBox("domino/System/StandaloneLoaderController.lua")
  l0 = self.box_Standalone_Loader_Controller_137
  l0._graph = self
  l0._name = "box_Standalone_Loader_Controller_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1721244522"
  l0.LoadingStarted = self.f_box_Standalone_Loader_Controller_137_LoadingStarted
  l0.Loaded = DummyFunction
  l0.PreviousZoneUnloaded = self.f_box_Standalone_Loader_Controller_137_PreviousZoneUnloaded
  self.box_OnceOnly_v3_55 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_55
  l0._graph = self
  l0._name = "box_OnceOnly_v3_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1730962454"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_55_Out
  l0.ResetOut = DummyFunction
  self.box_HackableController_v2_298 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_298
  l0._graph = self
  l0._name = "box_HackableController_v2_298"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1732713259"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_298_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_336 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_336
  l0._graph = self
  l0._name = "box_CLOController_336"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1738570002"
  l0.Activated = self.f_box_CLOController_336_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_336_OnUserInPlace
  self.box_Proximity_Monitor_260 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_260
  l0._graph = self
  l0._name = "box_Proximity_Monitor_260"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1757065234"
  l0.Enabled = self.f_box_Proximity_Monitor_260_Enabled
  l0.Disabled = DummyFunction
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_260_ExitRadius
  self.box_PlayDialog_v2_54 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_54
  l0._graph = self
  l0._name = "box_PlayDialog_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1790970601"
  l0.Started = self.f_box_PlayDialog_v2_54_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_209 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_209
  l0._graph = self
  l0._name = "box_MultipleOR_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1796268603"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_209_Out
  self.box_MissionMessageController_v3_5 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_5
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1811168349"
  l0.Out = self.f_box_MissionMessageController_v3_5_Out
  l0.MessageCompleted = DummyFunction
  self.box_PGTController_v2_112 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_112
  l0._graph = self
  l0._name = "box_PGTController_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1812500374"
  l0.Started = self.f_box_PGTController_v2_112_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_112_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionLayer_v2_76 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_76
  l0._graph = self
  l0._name = "box_MissionLayer_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1832251766"
  l0.Loaded = self.f_box_MissionLayer_v2_76_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_AgentStateMonitor_V2_145 = cbox:CreateBox("domino/System/AgentStateMonitor_v2.lua")
  l0 = self.box_AgentStateMonitor_V2_145
  l0._graph = self
  l0._name = "box_AgentStateMonitor_V2_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1862241529"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_AgentStateMonitor_V2_145_Disabled
  l0.PauseState = DummyFunction
  l0.InterruptibleCinematicState = DummyFunction
  l0.UnawareState = DummyFunction
  l0.AllInUnawareState = DummyFunction
  l0.AwareState = DummyFunction
  l0.AllInAwareState = DummyFunction
  l0.AlertSoftState = DummyFunction
  l0.AlertHardState = DummyFunction
  l0.FleeState = DummyFunction
  l0.AllInFleeState = DummyFunction
  l0.CombatState = DummyFunction
  l0.ScriptedState = DummyFunction
  l0.InvestigateState = DummyFunction
  l0.PostCombatSearchState = DummyFunction
  l0.CinematicMode_Interrupted = DummyFunction
  l0.DetectionIntuitionStarted = DummyFunction
  l0.DetectionIntuitionStopped = DummyFunction
  l0.DetectionIntuitionFull = DummyFunction
  l0.DetectionAlertStarted = DummyFunction
  l0.DetectionAlertStopped = DummyFunction
  l0.DetectionAlertFull = self.f_box_AgentStateMonitor_V2_145_DetectionAlertFull
  l0.IsDistracted = DummyFunction
  self.box_S10M030_ManageDoorEntrance_261 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageDoorEntrance.debug.lua")
  l0 = self.box_S10M030_ManageDoorEntrance_261
  l0._graph = self
  l0._name = "box_S10M030_ManageDoorEntrance_261"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1862303972"
  l0.HackDisabled = self.f_box_S10M030_ManageDoorEntrance_261_HackDisabled
  l0.HackEnabled = DummyFunction
  l0.DoorOpened = DummyFunction
  l0.DoorClosed = self.f_box_S10M030_ManageDoorEntrance_261_DoorClosed
  l0.DoorWithoutHackOpened = DummyFunction
  self.box_ListForEach_272 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_272
  l0._graph = self
  l0._name = "box_ListForEach_272"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1866800806"
  l0.Started = self.f_box_ListForEach_272_Started
  l0.Stopped = self.f_box_ListForEach_272_Stopped
  l0.ForEach = self.f_box_ListForEach_272_ForEach
  l0.GotNext = self.f_box_ListForEach_272_GotNext
  l0.EndOfList = self.f_box_ListForEach_272_EndOfList
  l0.GotFirst = DummyFunction
  self.box_OnceOnly_v3_313 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_313
  l0._graph = self
  l0._name = "box_OnceOnly_v3_313"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1868041313"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_313_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_238 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_238
  l0._graph = self
  l0._name = "box_CLOController_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1881672076"
  l0.Activated = self.f_box_CLOController_238_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_SetBoolean_v2_284 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_284
  l0._graph = self
  l0._name = "box_SetBoolean_v2_284"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1882273466"
  l0.Out = self.f_box_SetBoolean_v2_284_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_284_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_284_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_284_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_284_SetFromBool
  self.box_Multiple_AND_70 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_70
  l0._graph = self
  l0._name = "box_Multiple_AND_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1897417104"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_70_Out
  self.box_ListForEach_65 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_65
  l0._graph = self
  l0._name = "box_ListForEach_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1903115841"
  l0.Started = self.f_box_ListForEach_65_Started
  l0.Stopped = self.f_box_ListForEach_65_Stopped
  l0.ForEach = self.f_box_ListForEach_65_ForEach
  l0.GotNext = self.f_box_ListForEach_65_GotNext
  l0.EndOfList = self.f_box_ListForEach_65_EndOfList
  l0.GotFirst = DummyFunction
  self.box_MultipleOR_64 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_64
  l0._graph = self
  l0._name = "box_MultipleOR_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1911605949"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_64_Out
  self.box_S10M030_ManageLifts_30 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageLifts.debug.lua")
  l0 = self.box_S10M030_ManageLifts_30
  l0._graph = self
  l0._name = "box_S10M030_ManageLifts_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1914222456"
  l0.OpenDoorsExtLaunched = self.f_box_S10M030_ManageLifts_30_OpenDoorsExtLaunched
  l0.CloseDoorsExtLaunched = DummyFunction
  l0.OpenDoorsElevatorLaunched = self.f_box_S10M030_ManageLifts_30_OpenDoorsElevatorLaunched
  l0.CloseDoorsElevatorLaunched = DummyFunction
  l0.DoorsElevatorClosed = DummyFunction
  l0.MoveElevatorUpStarted = DummyFunction
  l0.MoveElevatorUpFinished = DummyFunction
  l0.MoveElevatorDownStarted = DummyFunction
  l0.MoveElevatorDownFinished = DummyFunction
  self.box_MissionMessageController_v3_226 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_226
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1925886448"
  l0.Out = self.f_box_MissionMessageController_v3_226_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_58 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_58
  l0._graph = self
  l0._name = "box_ListWriter_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1930011711"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_58_Added
  l0.Removed = self.f_box_ListWriter_58_Removed
  l0.Out = self.f_box_ListWriter_58_Out
  self.box_ListWriter_155 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_155
  l0._graph = self
  l0._name = "box_ListWriter_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1931252199"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_155_Added
  l0.Removed = self.f_box_ListWriter_155_Removed
  l0.Out = self.f_box_ListWriter_155_Out
  self.box_HackableController_v2_199 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_199
  l0._graph = self
  l0._name = "box_HackableController_v2_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1935878201"
  l0.Enabled = self.f_box_HackableController_v2_199_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_ListWriter_136 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_136
  l0._graph = self
  l0._name = "box_ListWriter_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1942335588"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_136_Added
  l0.Removed = self.f_box_ListWriter_136_Removed
  l0.Out = self.f_box_ListWriter_136_Out
  self.box_S10M030_ManageDoorEntrance_247 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageDoorEntrance.debug.lua")
  l0 = self.box_S10M030_ManageDoorEntrance_247
  l0._graph = self
  l0._name = "box_S10M030_ManageDoorEntrance_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1963583291"
  l0.HackDisabled = DummyFunction
  l0.HackEnabled = self.f_box_S10M030_ManageDoorEntrance_247_HackEnabled
  l0.DoorOpened = DummyFunction
  l0.DoorClosed = DummyFunction
  l0.DoorWithoutHackOpened = self.f_box_S10M030_ManageDoorEntrance_247_DoorWithoutHackOpened
  self.box_CLOController_72 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_72
  l0._graph = self
  l0._name = "box_CLOController_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1983799270"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_72_OnUserInPlace
  self.box_CLOController_276 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_276
  l0._graph = self
  l0._name = "box_CLOController_276"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1987466314"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_276_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_208 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_208
  l0._graph = self
  l0._name = "box_MultipleOR_208"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2002963913"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_208_Out
  self.box_MultipleOR_286 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_286
  l0._graph = self
  l0._name = "box_MultipleOR_286"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2006539906"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_286_Out
  self.box_ListForEach_187 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_187
  l0._graph = self
  l0._name = "box_ListForEach_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2006789041"
  l0.Started = self.f_box_ListForEach_187_Started
  l0.Stopped = self.f_box_ListForEach_187_Stopped
  l0.ForEach = self.f_box_ListForEach_187_ForEach
  l0.GotNext = self.f_box_ListForEach_187_GotNext
  l0.EndOfList = self.f_box_ListForEach_187_EndOfList
  l0.GotFirst = DummyFunction
  self.box_Interact_Gameplay_117 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_117
  l0._graph = self
  l0._name = "box_Interact_Gameplay_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2021765927"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Interact_Gameplay_117_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_117_Interacted
  self.box_MultipleOR_69 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_69
  l0._graph = self
  l0._name = "box_MultipleOR_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2039902186"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_69_Out
  self.box_MultipleOR_158 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_158
  l0._graph = self
  l0._name = "box_MultipleOR_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2041129984"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_158_Out
  self.box_S10M030_ManageLifts_12 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/s10/s10m030/S10M030.S10M030_ManageLifts.debug.lua")
  l0 = self.box_S10M030_ManageLifts_12
  l0._graph = self
  l0._name = "box_S10M030_ManageLifts_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2054884121"
  l0.OpenDoorsExtLaunched = DummyFunction
  l0.CloseDoorsExtLaunched = self.f_box_S10M030_ManageLifts_12_CloseDoorsExtLaunched
  l0.OpenDoorsElevatorLaunched = DummyFunction
  l0.CloseDoorsElevatorLaunched = DummyFunction
  l0.DoorsElevatorClosed = self.f_box_S10M030_ManageLifts_12_DoorsElevatorClosed
  l0.MoveElevatorUpStarted = DummyFunction
  l0.MoveElevatorUpFinished = DummyFunction
  l0.MoveElevatorDownStarted = DummyFunction
  l0.MoveElevatorDownFinished = DummyFunction
  self.box_PlaySequence_v5_101 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_101
  l0._graph = self
  l0._name = "box_PlaySequence_v5_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2069379986"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_101_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_101_Finished
  self.box_HackableController_v2_90 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_90
  l0._graph = self
  l0._name = "box_HackableController_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2090137752"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_90_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_322 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_322
  l0._graph = self
  l0._name = "box_PlaySound_v2_322"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2101255883"
  l0.Out = self.f_box_PlaySound_v2_322_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AISquadRelationshipController_147 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_147
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2101357383"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_147_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_Interact_Gameplay_133 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_133
  l0._graph = self
  l0._name = "box_Interact_Gameplay_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2102494168"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_133_Interacted
  self.box_CLOController_339 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_339
  l0._graph = self
  l0._name = "box_CLOController_339"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2106940928"
  l0.Activated = self.f_box_CLOController_339_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_339_OnUserInPlace
  self.box_MultipleOR_315 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_315
  l0._graph = self
  l0._name = "box_MultipleOR_315"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2122017177"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_315_Out
  self.box_ListForEach_200 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_200
  l0._graph = self
  l0._name = "box_ListForEach_200"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2125587340"
  l0.Started = self.f_box_ListForEach_200_Started
  l0.Stopped = self.f_box_ListForEach_200_Stopped
  l0.ForEach = self.f_box_ListForEach_200_ForEach
  l0.GotNext = self.f_box_ListForEach_200_GotNext
  l0.EndOfList = self.f_box_ListForEach_200_EndOfList
  l0.GotFirst = DummyFunction
  self.box_OnceOnly_v3_218 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_218
  l0._graph = self
  l0._name = "box_OnceOnly_v3_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2138314113"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_218_Out
  l0.ResetOut = DummyFunction
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
  l0 = self.box_MissionLayer_v2_56
  l0.LayerName = "S10M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1089331614", "1089331614", "S10M030_Main", "CheckPoint_0", "box_MissionLayer_v2_56.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_62
  l0.LayerName = "S10M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|29053746", "29053746", "S10M030_Main", "CheckPoint_1", "box_MissionLayer_v2_62.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_67
  l0.LayerName = "S10M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2100873461", "2100873461", "S10M030_Main", "CheckPoint_2", "box_MissionLayer_v2_67.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  l0 = self.box_MissionLayer_v2_76
  l0.LayerName = "S10M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|187570984", "187570984", "S10M030_Main", "CheckPoint_3", "box_MissionLayer_v2_76.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_4()
  local l0
  self:OnEnter_box_Mission_End_17()
  l0 = self.box_Mission_End_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1209665701", "1209665701", "S10M030_Main", "CheckPoint_4", "box_Mission_End_17.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S10M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1104553538", "1104553538", "S10M030_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_ListForEach_320_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_320
  self.Screen = l0.Data
end
function export:f_box_ListForEach_320_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_320
  self.Screen = l0.Data
end
function export:f_box_ListForEach_320_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_320
  self.Screen = l0.Data
  l0 = self.box_PlaySound_v2_309
  l0.Entity = self.Screen
  l0.SoundId = "soundbinary/2328358207.bnk"
  l0 = self.box_ListForEach_320
  l1 = self.box_PlaySound_v2_309
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1377370463", "1377370463", "S10M030_Main", "box_ListForEach_320.GotNext", "box_PlaySound_v2_309.Play", l0, l1)
  l1:Play()
end
function export:f_box_ListForEach_320_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_320
  self.Screen = l0.Data
end
function export:f_box_ListForEach_320_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_320
  self.Screen = l0.Data
end
function export:f_box_ListForEach_150_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_150
  self.AFI_Entity_Outside_CLO = l0.Data
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1867983735"
  l0.Out = self.f_box_Simple_Node_152_Out
  l0 = self.box_ListForEach_150
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1473443848", "1473443848", "S10M030_Main", "box_ListForEach_150.EndOfList", "box_Simple_Node_152.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_150_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_150
  self.AFI_Entity_Outside_CLO = l0.Data
end
function export:f_box_ListForEach_150_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_150
  self.AFI_Entity_Outside_CLO = l0.Data
  l0 = self.box_CLOController_211
  l0.CLO = self.AFI_Entity_Outside_CLO
  l0 = self.box_ListForEach_150
  l1 = self.box_CLOController_211
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1509049172", "1509049172", "S10M030_Main", "box_ListForEach_150.GotNext", "box_CLOController_211.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListForEach_150_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_150
  self.AFI_Entity_Outside_CLO = l0.Data
end
function export:f_box_ListForEach_150_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_150
  self.AFI_Entity_Outside_CLO = l0.Data
end
function export:f_box_AI_Agent_Zone_324_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AI_HMA_InCombat
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1837805193"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_115_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_115_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1768604798", "1768604798", "S10M030_Main", "box_AI_Agent_Zone_324.Out", "box_Compare_Boolean_v2_115.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_173_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_272
  l0.List = self.List_CLO_SAS
  l0 = self.box_MultipleOR_173
  l1 = self.box_ListForEach_272
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2041017567", "2041017567", "S10M030_Main", "box_MultipleOR_173.Out", "box_ListForEach_272.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_S10M030_ManageLifts_94_CloseDoorsExtLaunched()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_94()
  l0 = self.box_S10M030_ManageLifts_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1180967677", "1180967677", "S10M030_Main", "box_S10M030_ManageLifts_94.CloseDoorsExtLaunched", "box_S10M030_ManageLifts_94.CloseDoorsElevator", l0, l0)
  l0:CloseDoorsElevator()
end
function export:f_box_S10M030_ManageLifts_94_DoorsElevatorClosed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_91()
  l0 = self.box_S10M030_ManageLifts_94
  l1 = self.box_Multiple_AND_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|152258665", "152258665", "S10M030_Main", "box_S10M030_ManageLifts_94.DoorsElevatorClosed", "box_Multiple_AND_91.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_216_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Reach_Gameplay_297
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372067011051489"
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|19021151", "19021151", "S10M030_Main", "box_Ordered_Output_216.Out", "box_Reach_Gameplay_297.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_216_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_256"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|490606044"
  l0.Out = self.f_box_Simple_Node_256_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1180008525", "1180008525", "S10M030_Main", "box_Ordered_Output_216.Out", "box_Simple_Node_256.In", clone, l0)
  l0:In()
end
function export:f_box_Multiple_AND_36_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1874191063"
  l0.Out = self.f_box_Simple_Node_23_Out
  l0 = self.box_Multiple_AND_36
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1810372666", "1810372666", "S10M030_Main", "box_Multiple_AND_36.Out", "box_Simple_Node_23.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_25_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_273"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1288121609"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_273_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_273_Out_1
  l0 = self.box_PhoneCommunicationController_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1119748237", "1119748237", "S10M030_Main", "box_PhoneCommunicationController_25.StartCommunicationOut", "box_Ordered_Output_273.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_138_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_257"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1085175364"
  l0.Out = self.f_box_Simple_Node_257_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2003021184", "2003021184", "S10M030_Main", "box_Ordered_Output_138.Out", "box_Simple_Node_257.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_138_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S10M030_ManageLifts_144()
  l0 = self.box_S10M030_ManageLifts_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|651304013", "651304013", "S10M030_Main", "box_Ordered_Output_138.Out", "box_S10M030_ManageLifts_144.MoveElevatorUp", clone, l0)
  l0:MoveElevatorUp()
end
function export:f_box_Simple_Node_222_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_219()
  l0 = self.box_MultipleOR_219
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|502083146", "502083146", "S10M030_Main", "box_Simple_Node_222.Out", "box_MultipleOR_219.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_MultipleOR_267_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_117()
  l0 = self.box_MultipleOR_267
  l1 = self.box_Interact_Gameplay_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|234189535", "234189535", "S10M030_Main", "box_MultipleOR_267.Out", "box_Interact_Gameplay_117.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_244_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_78
  l0.Checkpoint = "CheckPoint_3"
  l0 = self.box_MultipleOR_244
  l1 = self.box_MissionCheckpointReach_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1662189067", "1662189067", "S10M030_Main", "box_MultipleOR_244.Out", "box_MissionCheckpointReach_78.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_321_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_320
  l0.List = self.List_ScreensSound
  l0 = self.box_MultipleOR_321
  l1 = self.box_ListForEach_320
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|86200174", "86200174", "S10M030_Main", "box_MultipleOR_321.Out", "box_ListForEach_320.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_Timer_v2_279_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372063005426470"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1773396744"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_Timer_v2_279
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|435574984", "435574984", "S10M030_Main", "box_Timer_v2_279.Stopped", "box_MissionMusicController_215.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Timer_v2_279_TimeElapsed()
  local l0
  self = self._graph
  self:OnEnter_box_Timer_v2_279()
  l0 = self.box_Timer_v2_279
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1756861492", "1756861492", "S10M030_Main", "box_Timer_v2_279.TimeElapsed", "box_Timer_v2_279.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_49_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_49()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1135459156", "1135459156", "S10M030_Main", "box_Media_System_Custom_Broadcast_Monitor_49.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_49.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_49_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1857425169"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_203_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_203_Out_1
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_49
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1680373554", "1680373554", "S10M030_Main", "box_Media_System_Custom_Broadcast_Monitor_49.Disabled", "box_Ordered_Output_203.In", l0, l1)
  l1:In()
end
function export:f_box_Download_Gameplay_132_DownloadCompleted()
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
  l0._name = "box_Media_System_Custom_Broadcast_Controller_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1105830282"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_85_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Download_Gameplay_132
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|112473307", "112473307", "S10M030_Main", "box_Download_Gameplay_132.DownloadCompleted", "box_Media_System_Custom_Broadcast_Controller_85.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_Download_Gameplay_132_Ratio1Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_26
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048359003291"
  l0 = self.box_Download_Gameplay_132
  l1 = self.box_PhoneCommunicationController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|231157718", "231157718", "S10M030_Main", "box_Download_Gameplay_132.Ratio1Reached", "box_PhoneCommunicationController_26.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Download_Gameplay_132_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1494937979"
  l0.Out = self.f_box_Simple_Node_202_Out
  l0 = self.box_Download_Gameplay_132
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1843184686", "1843184686", "S10M030_Main", "box_Download_Gameplay_132.Started", "box_Simple_Node_202.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Agent_Zone_135_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372048778506660"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|147921895"
  l0.Out = self.f_box_AI_Agent_Zone_114_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1067880191", "1067880191", "S10M030_Main", "box_AI_Agent_Zone_135.Out", "box_AI_Agent_Zone_114.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_InteractionScriptController_304_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372051430677101"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = nil
  l0.RestrictParking = 0
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = "CivilianDensity.9223372048779320679"
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = 0
  l0.RestrictAnimal = 0
  l0.RestrictRobot = 0
  l0.RestrictRoadVehicle = 0
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|530467460"
  l0.Out = self.f_box_Lanes_Restrictions_Control_31_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|568705757", "568705757", "S10M030_Main", "box_InteractionScriptController_304.Disabled", "box_Lanes_Restrictions_Control_31.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_246_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_242
  l0.CLO = "9223372070937740368"
  l0 = self.box_CLOController_246
  l1 = self.box_CLOController_242
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1008512834", "1008512834", "S10M030_Main", "box_CLOController_246.Activated", "box_CLOController_242.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_246_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_245
  l0.CLO = "9223372070937740364"
  l0 = self.box_CLOController_246
  l1 = self.box_CLOController_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|176017018", "176017018", "S10M030_Main", "box_CLOController_246.OnUserInPlace", "box_CLOController_245.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_AISquadStateMonitor_259_ArrestState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_251()
  l0 = self.box_AISquadStateMonitor_259
  l1 = self.box_MultipleOR_251
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1157814622", "1157814622", "S10M030_Main", "box_AISquadStateMonitor_259.ArrestState", "box_MultipleOR_251.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_259_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_251()
  l0 = self.box_AISquadStateMonitor_259
  l1 = self.box_MultipleOR_251
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|742215575", "742215575", "S10M030_Main", "box_AISquadStateMonitor_259.CombatState", "box_MultipleOR_251.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_259_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_253()
  l0 = self.box_AISquadStateMonitor_259
  l1 = self.box_AISquadStateMonitor_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|862519025", "862519025", "S10M030_Main", "box_AISquadStateMonitor_259.Disabled", "box_AISquadStateMonitor_253.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AISquadStateMonitor_259_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_253()
  l0 = self.box_AISquadStateMonitor_259
  l1 = self.box_AISquadStateMonitor_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|506447126", "506447126", "S10M030_Main", "box_AISquadStateMonitor_259.Enabled", "box_AISquadStateMonitor_253.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AI_Agent_Zone_114_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372056188763272"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1201905954"
  l0.Out = self.f_box_AI_Agent_Zone_110_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|374294273", "374294273", "S10M030_Main", "box_AI_Agent_Zone_114.Out", "box_AI_Agent_Zone_110.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_223_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Proximity_Monitor_260
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372048359109537"
  l0.Radius = 100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1954878281", "1954878281", "S10M030_Main", "box_Ordered_Output_223.Out", "box_Proximity_Monitor_260.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_223_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|67163263"
  l0.Out = self.f_box_Simple_Node_222_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1118438535", "1118438535", "S10M030_Main", "box_Ordered_Output_223.Out", "box_Simple_Node_222.In", clone, l0)
  l0:In()
end
function export:f_box_PGTController_v2_107_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_336
  l0.CLO = "9223372052502345228"
  l0 = self.box_PGTController_v2_107
  l1 = self.box_CLOController_336
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1200658471", "1200658471", "S10M030_Main", "box_PGTController_v2_107.AllSpawned", "box_CLOController_336.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PGTController_v2_107_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_45()
  l0 = self.box_PGTController_v2_107
  l1 = self.box_S10M030_ManageLifts_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|868332998", "868332998", "S10M030_Main", "box_PGTController_v2_107.Started", "box_S10M030_ManageLifts_45.CloseDoorsExt", l0, l1)
  l1:CloseDoorsExt()
end
function export:f_box_Interact_Gameplay_171_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_166()
  l0 = self.box_Interact_Gameplay_171
  l1 = self.box_InteractionScriptMonitor_v2_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1063494676", "1063494676", "S10M030_Main", "box_Interact_Gameplay_171.Interacted", "box_InteractionScriptMonitor_v2_166.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Interact_Gameplay_171_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_166()
  l0 = self.box_Interact_Gameplay_171
  l1 = self.box_InteractionScriptMonitor_v2_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1941214292", "1941214292", "S10M030_Main", "box_Interact_Gameplay_171.Started", "box_InteractionScriptMonitor_v2_166.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_240_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_241
  l0.CLO = "9223372070937740368"
  l0 = self.box_CLOController_240
  l1 = self.box_CLOController_241
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1983731989", "1983731989", "S10M030_Main", "box_CLOController_240.Deactivated", "box_CLOController_241.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_ListWriter_184_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_184
  self.List_PC_Screens_Other = l0.Target
  l0 = self.box_ListWriter_198
  l0.Input = self.List_ScreenTheatre
  l0.Data[0] = "9223372062906472891"
  l0.Data[1] = "9223372062906472893"
  l0.Data[2] = "9223372062906472895"
  l0.Data[3] = "9223372062906472897"
  l0.Data[4] = "9223372062906472899"
  l0.Data[5] = "9223372062906472901"
  l0.Data[6] = "9223372062906472903"
  l0.Data[7] = "9223372062906472905"
  l0.Data[8] = "9223372062906472907"
  l0.Data[9] = "9223372062906472909"
  l0 = self.box_ListWriter_184
  l1 = self.box_ListWriter_198
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1485405364", "1485405364", "S10M030_Main", "box_ListWriter_184.Added", "box_ListWriter_198.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_184_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_184
  self.List_PC_Screens_Other = l0.Target
end
function export:f_box_ListWriter_184_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_184
  self.List_PC_Screens_Other = l0.Target
end
function export:f_box_MaterialController_192_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_209()
  l0 = self.box_MultipleOR_209
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|16015478", "16015478", "S10M030_Main", "box_MaterialController_192.ByIndexSet", "box_MultipleOR_209.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_EntityLoadingMonitor_278_AllLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_EntityLoadingMonitor_278()
  l0 = self.box_EntityLoadingMonitor_278
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|577591840", "577591840", "S10M030_Main", "box_EntityLoadingMonitor_278.AllLoaded", "box_EntityLoadingMonitor_278.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_EntityLoadingMonitor_278_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372058057899996"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|384697052"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_EntityLoadingMonitor_278
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1200268428", "1200268428", "S10M030_Main", "box_EntityLoadingMonitor_278.Disabled", "box_InteractionScriptController_28.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_EntityLoadingMonitor_278_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Y_Antenna
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_299"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|379010876"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_299_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_EntityLoadingMonitor_278
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1012729411", "1012729411", "S10M030_Main", "box_EntityLoadingMonitor_278.Enabled", "box_InteractionScriptController_299.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_265_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_281()
  l0 = self.box_TriggerMonitor_v2_265
  l1 = self.box_TriggerMonitor_v2_281
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|945234150", "945234150", "S10M030_Main", "box_TriggerMonitor_v2_265.Disabled", "box_TriggerMonitor_v2_281.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_265_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_281()
  l0 = self.box_TriggerMonitor_v2_265
  l1 = self.box_TriggerMonitor_v2_281
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1981034095", "1981034095", "S10M030_Main", "box_TriggerMonitor_v2_265.Enabled", "box_TriggerMonitor_v2_281.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_265_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_265
  l1 = self.box_SetBoolean_v2_282
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|716399709", "716399709", "S10M030_Main", "box_TriggerMonitor_v2_265.Enter", "box_SetBoolean_v2_282.True", l0, l1)
  l1:True()
end
function export:f_box_TriggerMonitor_v2_265_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_265
  l1 = self.box_SetBoolean_v2_277
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1843263156", "1843263156", "S10M030_Main", "box_TriggerMonitor_v2_265.Leave", "box_SetBoolean_v2_277.False", l0, l1)
  l1:False()
end
function export:f_box_Compare_Boolean_v2_290_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_288()
  l0 = self.box_MultipleOR_288
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1119738676", "1119738676", "S10M030_Main", "box_Compare_Boolean_v2_290.A_is_False", "box_MultipleOR_288.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CLOController_18_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_18
  self.AFI_Entity_Outside_SpawnedAgent = l0.UserID
  l0 = self.box_ListWriter_58
  l0.Input = self.List_AFI_Outside_SpawnedAgent
  l0.Data[0] = self.AFI_Entity_Outside_SpawnedAgent
  l0 = self.box_CLOController_18
  l1 = self.box_ListWriter_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|439601064", "439601064", "S10M030_Main", "box_CLOController_18.OnUserInPlace", "box_ListWriter_58.Add", l0, l1)
  l1:Add()
end
function export:f_box_Ordered_Output_317_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_316()
  l0 = self.box_OnceOnly_v3_316
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1026231981", "1026231981", "S10M030_Main", "box_Ordered_Output_317.Out", "box_OnceOnly_v3_316.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_317_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_313()
  l0 = self.box_OnceOnly_v3_313
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|338999111", "338999111", "S10M030_Main", "box_Ordered_Output_317.Out", "box_OnceOnly_v3_313.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_MultipleOR_35_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_150
  l0.List = self.List_AFI_Outside_CLO
  l0 = self.box_MultipleOR_35
  l1 = self.box_ListForEach_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|923514910", "923514910", "S10M030_Main", "box_MultipleOR_35.Out", "box_ListForEach_150.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_S10M030_ManageLifts_6_MoveElevatorUpFinished()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_6()
  l0 = self.box_S10M030_ManageLifts_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|83929194", "83929194", "S10M030_Main", "box_S10M030_ManageLifts_6.MoveElevatorUpFinished", "box_S10M030_ManageLifts_6.OpenDoorsExt", l0, l0)
  l0:OpenDoorsExt()
end
function export:f_box_S10M030_ManageLifts_6_OpenDoorsExtLaunched()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_6()
  l0 = self.box_S10M030_ManageLifts_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|319779226", "319779226", "S10M030_Main", "box_S10M030_ManageLifts_6.OpenDoorsExtLaunched", "box_S10M030_ManageLifts_6.OpenDoorsElevator", l0, l0)
  l0:OpenDoorsElevator()
end
function export:f_box_Player_State_Controller_330_CoverEntered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Restore_Mission_SubObjectives_255
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective011",
    item = "Objective",
    id = "693234"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective010",
    item = "Objective",
    id = "355782"
  }
  l0.IncrementalObjectiveTotalSub1 = 1
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective020",
    item = "Objective",
    id = "395864"
  }
  l0.IncrementalObjectiveTotalSub2 = 1
  l0.IncrementalObjectiveTotalSub3 = 1
  l0.AutoHideObjective = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1979188067", "1979188067", "S10M030_Main", "box_Player_State_Controller_330.CoverEntered", "box_Restore_Mission_SubObjectives_255.Restore", clone, l0)
  l0:Restore()
end
function export:f_box_MissionMessageController_v3_14_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_75
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionMessageController_v3_14
  l1 = self.box_CinematicPrep_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|414323477", "414323477", "S10M030_Main", "box_MissionMessageController_v3_14.Out", "box_CinematicPrep_75.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MultipleOR_205_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_185
  l0.List = self.List_PC_Screens_OpenSpace
  l0 = self.box_MultipleOR_205
  l1 = self.box_ListForEach_185
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1903112933", "1903112933", "S10M030_Main", "box_MultipleOR_205.Out", "box_ListForEach_185.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_PawnHealthMonitor_v4_292_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S10M030_ManageDoorEntrance_13()
  l0 = self.box_PawnHealthMonitor_v4_292
  l1 = self.box_S10M030_ManageDoorEntrance_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1129775723", "1129775723", "S10M030_Main", "box_PawnHealthMonitor_v4_292.Enabled", "box_S10M030_ManageDoorEntrance_13.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PawnHealthMonitor_v4_292_Killed()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v4_292
  l1 = self.box_SetBoolean_v2_293
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|272307356", "272307356", "S10M030_Main", "box_PawnHealthMonitor_v4_292.Killed", "box_SetBoolean_v2_293.True", l0, l1)
  l1:True()
end
function export:f_box_MissionMessageController_v3_264_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_291
  l0.SoundId = "soundbinary/1605544607.bnk"
  l0 = self.box_MissionMessageController_v3_264
  l1 = self.box_PlaySound_v2_291
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1701857887", "1701857887", "S10M030_Main", "box_MissionMessageController_v3_264.Out", "box_PlaySound_v2_291.Play", l0, l1)
  l1:Play()
end
function export:f_box_Lanes_Restrictions_Control_305_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_113
  l0.PGTMissionArea = "9223372047375740545"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1208309434", "1208309434", "S10M030_Main", "box_Lanes_Restrictions_Control_305.Out", "box_PGTController_v2_113.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|794668992", "794668992", "S10M030_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_281_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_281
  l1 = self.box_SetBoolean_v2_284
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1221912084", "1221912084", "S10M030_Main", "box_TriggerMonitor_v2_281.Enter", "box_SetBoolean_v2_284.True", l0, l1)
  l1:True()
end
function export:f_box_TriggerMonitor_v2_281_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_281
  l1 = self.box_SetBoolean_v2_283
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1321976136", "1321976136", "S10M030_Main", "box_TriggerMonitor_v2_281.Leave", "box_SetBoolean_v2_283.False", l0, l1)
  l1:False()
end
function export:f_box_PlayDialog_v2_109_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S10M030_ManageDoorEntrance_16()
  l0 = self.box_PlayDialog_v2_109
  l1 = self.box_S10M030_ManageDoorEntrance_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1546621613", "1546621613", "S10M030_Main", "box_PlayDialog_v2_109.Started", "box_S10M030_ManageDoorEntrance_16.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Simple_Node_274_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_271"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1421144171"
  l0.Out = self.f_box_Simple_Node_271_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|945260670", "945260670", "S10M030_Main", "box_Simple_Node_274.Out", "box_Simple_Node_271.In", clone, l0)
  l0:In()
end
function export:f_box_S10M030_ManageLifts_175_CloseDoorsExtLaunched()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_21
  l0.SoundId = "soundbinary/4030898685.bnk"
  l0 = self.box_S10M030_ManageLifts_175
  l1 = self.box_PlaySound_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1169821228", "1169821228", "S10M030_Main", "box_S10M030_ManageLifts_175.CloseDoorsExtLaunched", "box_PlaySound_v2_21.Play", l0, l1)
  l1:Play()
end
function export:f_box_S10M030_ManageLifts_175_DoorsElevatorClosed()
  local l0, l1
  self = self._graph
  l0 = self.box_Standalone_Loader_Controller_137
  l0.StandaloneLoader = "9223372047375734381"
  l0 = self.box_S10M030_ManageLifts_175
  l1 = self.box_Standalone_Loader_Controller_137
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1255876573", "1255876573", "S10M030_Main", "box_S10M030_ManageLifts_175.DoorsElevatorClosed", "box_Standalone_Loader_Controller_137.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionMessageController_v3_224_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_MissionMessageController_v3_224
  l1 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1550062557", "1550062557", "S10M030_Main", "box_MissionMessageController_v3_224.Out", "box_MultipleOR_64.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_235_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_267()
  l0 = self.box_MultipleOR_267
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|79530444", "79530444", "S10M030_Main", "box_Ordered_Output_235.Out", "box_MultipleOR_267.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_235_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|999758955"
  l0.Out = self.f_box_Simple_Node_234_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|256536506", "256536506", "S10M030_Main", "box_Ordered_Output_235.Out", "box_Simple_Node_234.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriter_198_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_198
  self.List_ScreenTheatre = l0.Target
  l0 = self.box_ListWriter_319
  l0.Input = self.List_ScreensSound
  l0.Data[0] = "9223372068446502296"
  l0.Data[1] = "9223372068446502298"
  l0.Data[2] = "9223372062906472903"
  l0.Data[3] = "9223372062906472893"
  l0.Data[4] = "9223372068446502300"
  l0.Data[5] = "9223372068446502302"
  l0.Data[6] = "9223372062906472905"
  l0.Data[7] = "9223372068446502304"
  l0.Data[8] = "9223372062906472530"
  l0.Data[9] = "9223372068446502306"
  l0 = self.box_ListWriter_198
  l1 = self.box_ListWriter_319
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|181664617", "181664617", "S10M030_Main", "box_ListWriter_198.Added", "box_ListWriter_319.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_198_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_198
  self.List_ScreenTheatre = l0.Target
end
function export:f_box_ListWriter_198_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_198
  self.List_ScreenTheatre = l0.Target
end
function export:f_box_Escape_Gameplay_43_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1829643389"
  l0.Out = self.f_box_Simple_Node_174_Out
  l0 = self.box_Escape_Gameplay_43
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1477994832", "1477994832", "S10M030_Main", "box_Escape_Gameplay_43.Escaped", "box_Simple_Node_174.In", l0, l1)
  l1:In()
end
function export:f_box_Escape_Gameplay_43_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadRelationshipController_100
  l0.Affiliation = "AFI"
  l0.Relationship = "Threat"
  l0 = self.box_Escape_Gameplay_43
  l1 = self.box_AISquadRelationshipController_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1480449774", "1480449774", "S10M030_Main", "box_Escape_Gameplay_43.Started", "box_AISquadRelationshipController_100.SetRelationship", l0, l1)
  l1:SetRelationship()
end
function export:f_box_ListWriter_164_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_164
  self.List_CLO_SAS = l0.Target
  self:OnEnter_box_MultipleOR_165()
  l1 = self.box_MultipleOR_165
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|116915829", "116915829", "S10M030_Main", "box_ListWriter_164.Added", "box_MultipleOR_165.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_164_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_164
  self.List_CLO_SAS = l0.Target
end
function export:f_box_ListWriter_164_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_164
  self.List_CLO_SAS = l0.Target
end
function export:f_box_AI_Agent_Zone_328_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372056188763272"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_327"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1684860342"
  l0.Out = self.f_box_AI_Agent_Zone_327_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|14178296", "14178296", "S10M030_Main", "box_AI_Agent_Zone_328.Out", "box_AI_Agent_Zone_327.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_287_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_286()
  l0 = self.box_MultipleOR_286
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2073739951", "2073739951", "S10M030_Main", "box_Compare_Boolean_v2_287.A_is_False", "box_MultipleOR_286.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_ListWriter_149_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_149
  self.List_CLO_SAS = l0.Target
  self:OnEnter_box_MultipleOR_168()
  l1 = self.box_MultipleOR_168
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1449653788", "1449653788", "S10M030_Main", "box_ListWriter_149.Added", "box_MultipleOR_168.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_149_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_149
  self.List_CLO_SAS = l0.Target
end
function export:f_box_ListWriter_149_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_149
  self.List_CLO_SAS = l0.Target
end
function export:f_box_MissionCheckpointReach_68_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1514786161"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_220_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_220_Out_1
  l0 = self.box_MissionCheckpointReach_68
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|573636277", "573636277", "S10M030_Main", "box_MissionCheckpointReach_68.Out", "box_Ordered_Output_220.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_193_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_193
  self.Screen = l0.Data
  l0 = self.box_PlaySound_v2_19
  l0.SoundId = "soundbinary/633760902.bnk"
  l0 = self.box_ListForEach_193
  l1 = self.box_PlaySound_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1603675200", "1603675200", "S10M030_Main", "box_ListForEach_193.EndOfList", "box_PlaySound_v2_19.Play", l0, l1)
  l1:Play()
end
function export:f_box_ListForEach_193_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_193
  self.Screen = l0.Data
end
function export:f_box_ListForEach_193_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_193
  self.Screen = l0.Data
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.Screen
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1634659561"
  l0.ByIndexSet = self.f_box_MaterialController_197_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0 = self.box_ListForEach_193
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2115093325", "2115093325", "S10M030_Main", "box_ListForEach_193.GotNext", "box_MaterialController_197.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_ListForEach_193_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_193
  self.Screen = l0.Data
end
function export:f_box_ListForEach_193_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_193
  self.Screen = l0.Data
end
function export:f_box_AISquadStateController_146_TargetedSearchSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1425778442"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_27_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_27_Out_1
  l0 = self.box_AISquadStateController_146
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|779220919", "779220919", "S10M030_Main", "box_AISquadStateController_146.TargetedSearchSet", "box_Ordered_Output_27.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_160_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_160
  self.CLO_SAS_Spawned = l0.Target
end
function export:f_box_SetBoolean_v2_160_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_160
  self.CLO_SAS_Spawned = l0.Target
end
function export:f_box_SetBoolean_v2_160_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_160
  self.CLO_SAS_Spawned = l0.Target
end
function export:f_box_SetBoolean_v2_160_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_160
  self.CLO_SAS_Spawned = l0.Target
  l0 = self.box_CinematicPrep_98
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_SetBoolean_v2_160
  l1 = self.box_CinematicPrep_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1369501800", "1369501800", "S10M030_Main", "box_SetBoolean_v2_160.SetTrue", "box_CinematicPrep_98.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_SetBoolean_v2_160_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_160
  self.CLO_SAS_Spawned = l0.Target
end
function export:f_box_MoveableEntityController_263_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_129()
  l0 = self.box_AISquadStateMonitor_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1517567687", "1517567687", "S10M030_Main", "box_MoveableEntityController_263.Out", "box_AISquadStateMonitor_129.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_182_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_180()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1629363625", "1629363625", "S10M030_Main", "box_Media_System_Custom_Broadcast_Controller_182.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_180.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlaySound_v2_19_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_321()
  l0 = self.box_PlaySound_v2_19
  l1 = self.box_MultipleOR_321
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1162188111", "1162188111", "S10M030_Main", "box_PlaySound_v2_19.Out", "box_MultipleOR_321.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetActionMap_v2_143_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_95()
  l0 = self.box_MultipleOR_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1136944104", "1136944104", "S10M030_Main", "box_SetActionMap_v2_143.Popped", "box_MultipleOR_95.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Simple_Node_230_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_83()
  l0 = self.box_Multiple_AND_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|142533088", "142533088", "S10M030_Main", "box_Simple_Node_230.Out", "box_Multiple_AND_83.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Escape_Gameplay_127_Escaped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_92()
  l0 = self.box_Escape_Gameplay_127
  l1 = self.box_MultipleOR_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|849858138", "849858138", "S10M030_Main", "box_Escape_Gameplay_127.Escaped", "box_MultipleOR_92.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_InteractionScriptController_299_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_298
  l0.HackableEntity = self.VR_AccessNode
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|699393278", "699393278", "S10M030_Main", "box_InteractionScriptController_299.Disabled", "box_HackableController_v2_298.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_PGTController_v2_156_Aborted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372048778496550"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_326"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1068429279"
  l0.Out = self.f_box_AI_Agent_Zone_326_Out
  l0 = self.box_PGTController_v2_156
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1160715775", "1160715775", "S10M030_Main", "box_PGTController_v2_156.Aborted", "box_AI_Agent_Zone_326.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PlaySound_v2_221_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372063005426470"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = 40
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1167410708"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_217_Deactivated
  l0 = self.box_PlaySound_v2_221
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|946370243", "946370243", "S10M030_Main", "box_PlaySound_v2_221.Out", "box_MissionMusicController_217.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Multiple_AND_128_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_230"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|367921338"
  l0.Out = self.f_box_Simple_Node_230_Out
  l0 = self.box_Multiple_AND_128
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|505556561", "505556561", "S10M030_Main", "box_Multiple_AND_128.Out", "box_Simple_Node_230.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_3_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_9
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective030",
    item = "Objective",
    id = "395865"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_PhoneCommunicationController_3
  l1 = self.box_MissionMessageController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|173817221", "173817221", "S10M030_Main", "box_PhoneCommunicationController_3.StartCommunicationOut", "box_MissionMessageController_v3_9.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_OnceOnly_v3_316_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_314
  l0.SoundId = "soundbinary/1605544607.bnk"
  l0 = self.box_OnceOnly_v3_316
  l1 = self.box_PlaySound_v2_314
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1104499507", "1104499507", "S10M030_Main", "box_OnceOnly_v3_316.Out", "box_PlaySound_v2_314.Play", l0, l1)
  l1:Play()
end
function export:f_box_CLOController_332_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_334
  l0.CLO = "9223372069235913635"
  l0 = self.box_CLOController_332
  l1 = self.box_CLOController_334
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1760780096", "1760780096", "S10M030_Main", "box_CLOController_332.Deactivated", "box_CLOController_334.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_PlaySound_v2_21_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_175()
  l0 = self.box_PlaySound_v2_21
  l1 = self.box_S10M030_ManageLifts_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1876530759", "1876530759", "S10M030_Main", "box_PlaySound_v2_21.Out", "box_S10M030_ManageLifts_175.CloseDoorsElevator", l0, l1)
  l1:CloseDoorsElevator()
end
function export:f_box_S10M030_ManageDoorEntrance_248_DoorWithoutHackOpened()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_14
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective040",
    item = "Objective",
    id = "395866"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_S10M030_ManageDoorEntrance_248
  l1 = self.box_MissionMessageController_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1038901619", "1038901619", "S10M030_Main", "box_S10M030_ManageDoorEntrance_248.DoorWithoutHackOpened", "box_MissionMessageController_v3_14.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PhoneCommunicationController_24_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372049376490499"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2011222681"
  l0.Out = self.f_box_AI_Agent_Zone_96_Out
  l0 = self.box_PhoneCommunicationController_24
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|483649107", "483649107", "S10M030_Main", "box_PhoneCommunicationController_24.OnCommunicationStarted", "box_AI_Agent_Zone_96.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_78_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_223"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|155161955"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_223_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_223_Out_1
  l0 = self.box_MissionCheckpointReach_78
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|176571715", "176571715", "S10M030_Main", "box_MissionCheckpointReach_78.Out", "box_Ordered_Output_223.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_270_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_44()
  l0 = self.box_MultipleOR_270
  l1 = self.box_Interact_Gameplay_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1590298255", "1590298255", "S10M030_Main", "box_MultipleOR_270.Out", "box_Interact_Gameplay_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_331_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_333
  l0.CLO = "9223372069235913635"
  l0 = self.box_CLOController_331
  l1 = self.box_CLOController_333
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2085113771", "2085113771", "S10M030_Main", "box_CLOController_331.Activated", "box_CLOController_333.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Simple_Node_256_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_219()
  l0 = self.box_MultipleOR_219
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2059807944", "2059807944", "S10M030_Main", "box_Simple_Node_256.Out", "box_MultipleOR_219.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_S10M030_ManageDoorEntrance_124_DoorClosed()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageDoorEntrance_124()
  l0 = self.box_S10M030_ManageDoorEntrance_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1540640571", "1540640571", "S10M030_Main", "box_S10M030_ManageDoorEntrance_124.DoorClosed", "box_S10M030_ManageDoorEntrance_124.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_S10M030_ManageDoorEntrance_124_HackDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372048359054636"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|224248875"
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
  l0 = self.box_S10M030_ManageDoorEntrance_124
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|839963720", "839963720", "S10M030_Main", "box_S10M030_ManageDoorEntrance_124.HackDisabled", "box_MoveableEntityController_130.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_SetBoolean_v2_151_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_151
  self.FelonyInside = l0.Target
end
function export:f_box_SetBoolean_v2_151_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_151
  self.FelonyInside = l0.Target
end
function export:f_box_SetBoolean_v2_151_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_151
  self.FelonyInside = l0.Target
end
function export:f_box_SetBoolean_v2_151_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_151
  self.FelonyInside = l0.Target
end
function export:f_box_SetBoolean_v2_151_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_151
  self.FelonyInside = l0.Target
end
function export:f_box_AISquadStateMonitor_253_ArrestState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_251()
  l0 = self.box_AISquadStateMonitor_253
  l1 = self.box_MultipleOR_251
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1359339384", "1359339384", "S10M030_Main", "box_AISquadStateMonitor_253.ArrestState", "box_MultipleOR_251.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_AISquadStateMonitor_253_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_251()
  l0 = self.box_AISquadStateMonitor_253
  l1 = self.box_MultipleOR_251
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2130211721", "2130211721", "S10M030_Main", "box_AISquadStateMonitor_253.CombatState", "box_MultipleOR_251.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_AISquadStateMonitor_253_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateMonitor_253
  l1 = self.box_SetBoolean_v2_250
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1334846105", "1334846105", "S10M030_Main", "box_AISquadStateMonitor_253.Disabled", "box_SetBoolean_v2_250.True", l0, l1)
  l1:True()
end
function export:f_box_AISquadStateMonitor_253_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_69()
  l0 = self.box_AISquadStateMonitor_253
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2115347041", "2115347041", "S10M030_Main", "box_AISquadStateMonitor_253.Enabled", "box_MultipleOR_69.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_102_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_108()
  l0 = self.box_MultipleOR_102
  l1 = self.box_AISquadStateMonitor_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|752679565", "752679565", "S10M030_Main", "box_MultipleOR_102.Out", "box_AISquadStateMonitor_108.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AI_Agent_Zone_329_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372048778506660"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_328"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|285906533"
  l0.Out = self.f_box_AI_Agent_Zone_328_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1665563896", "1665563896", "S10M030_Main", "box_AI_Agent_Zone_329.Out", "box_AI_Agent_Zone_328.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_S10M030_ManageDoorEntrance_16_DoorOpened()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_270()
  l0 = self.box_S10M030_ManageDoorEntrance_16
  l1 = self.box_MultipleOR_270
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|891814737", "891814737", "S10M030_Main", "box_S10M030_ManageDoorEntrance_16.DoorOpened", "box_MultipleOR_270.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_S10M030_ManageDoorEntrance_16_HackEnabled()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageDoorEntrance_16()
  l0 = self.box_S10M030_ManageDoorEntrance_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|740639020", "740639020", "S10M030_Main", "box_S10M030_ManageDoorEntrance_16.HackEnabled", "box_S10M030_ManageDoorEntrance_16.OpenDoor", l0, l0)
  l0:OpenDoor()
end
function export:f_box_PlaySound_v2_213_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_214
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0 = self.box_PlaySound_v2_213
  l1 = self.box_PlaySound_v2_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|307166392", "307166392", "S10M030_Main", "box_PlaySound_v2_213.Out", "box_PlaySound_v2_214.Play", l0, l1)
  l1:Play()
end
function export:f_box_Teleport_To_SpawnPoint_39_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_139
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Teleport_To_SpawnPoint_39
  l1 = self.box_CinematicPrep_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1625283051", "1625283051", "S10M030_Main", "box_Teleport_To_SpawnPoint_39.TeleportDone", "box_CinematicPrep_139.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_S10M030_ManageLifts_7_MoveElevatorDownFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_128()
  l0 = self.box_S10M030_ManageLifts_7
  l1 = self.box_Multiple_AND_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1252958278", "1252958278", "S10M030_Main", "box_S10M030_ManageLifts_7.MoveElevatorDownFinished", "box_Multiple_AND_128.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_S10M030_ManageLifts_7_MoveElevatorDownStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1304649913"
  l0.CalledBack = self.f_box_Toy_Car_Controller_119_CalledBack
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  l0 = self.box_S10M030_ManageLifts_7
  l1 = Boxes[PathID("domino/System/ToyCarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1382651204", "1382651204", "S10M030_Main", "box_S10M030_ManageLifts_7.MoveElevatorDownStarted", "box_Toy_Car_Controller_119.CallBack", l0, l1)
  l1:CallBack()
end
function export:f_box_ListWriter_74_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_74
  self.List_CLO_SAS_SpawnedCivilian = l0.Target
  self:OnEnter_box_MultipleOR_111()
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1454853309", "1454853309", "S10M030_Main", "box_ListWriter_74.Added", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListWriter_74_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_74
  self.List_CLO_SAS_SpawnedCivilian = l0.Target
end
function export:f_box_ListWriter_74_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_74
  self.List_CLO_SAS_SpawnedCivilian = l0.Target
end
function export:f_box_CinematicPrep_98_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_95()
  l0 = self.box_CinematicPrep_98
  l1 = self.box_MultipleOR_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|898939326", "898939326", "S10M030_Main", "box_CinematicPrep_98.PostOut", "box_MultipleOR_95.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Lanes_Restrictions_Control_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372060432399862"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = 1
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|895999801"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_176_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1652085372", "1652085372", "S10M030_Main", "box_Lanes_Restrictions_Control_31.Out", "box_Media_System_Custom_Broadcast_Controller_176.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_MissionCheckpointReach_63_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_108()
  l0 = self.box_MissionCheckpointReach_63
  l1 = self.box_AISquadStateMonitor_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|773699759", "773699759", "S10M030_Main", "box_MissionCheckpointReach_63.Out", "box_AISquadStateMonitor_108.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_88_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_88
  self.AI_HMA_InCombat = l0.Target
end
function export:f_box_SetBoolean_v2_88_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_88
  self.AI_HMA_InCombat = l0.Target
end
function export:f_box_SetBoolean_v2_88_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_88
  self.AI_HMA_InCombat = l0.Target
end
function export:f_box_SetBoolean_v2_88_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_88
  self.AI_HMA_InCombat = l0.Target
end
function export:f_box_SetBoolean_v2_88_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_88
  self.AI_HMA_InCombat = l0.Target
end
function export:f_box_QuickPlayerDeath_228_PlayerDead()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_154
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "PlayerKilled",
    id = "199950"
  }
  l0 = self.box_QuickPlayerDeath_228
  l1 = self.box_MissionController_v4_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|38187202", "38187202", "S10M030_Main", "box_QuickPlayerDeath_228.PlayerDead", "box_MissionController_v4_154.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S10M030_ManageLifts_232_OpenDoorsElevatorLaunched()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_332
  l0.CLO = "9223372052502345228"
  l0 = self.box_S10M030_ManageLifts_232
  l1 = self.box_CLOController_332
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|930045351", "930045351", "S10M030_Main", "box_S10M030_ManageLifts_232.OpenDoorsElevatorLaunched", "box_CLOController_332.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_S10M030_ManageLifts_232_OpenDoorsExtLaunched()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_232()
  l0 = self.box_S10M030_ManageLifts_232
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1888353101", "1888353101", "S10M030_Main", "box_S10M030_ManageLifts_232.OpenDoorsExtLaunched", "box_S10M030_ManageLifts_232.OpenDoorsElevator", l0, l0)
  l0:OpenDoorsElevator()
end
function export:f_box_Multiple_AND_83_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S10M030_ManageDoorEntrance_247()
  l0 = self.box_Multiple_AND_83
  l1 = self.box_S10M030_ManageDoorEntrance_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1655088804", "1655088804", "S10M030_Main", "box_Multiple_AND_83.Out", "box_S10M030_ManageDoorEntrance_247.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_S10M030_ManageLifts_45_CloseDoorsExtLaunched()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_45()
  l0 = self.box_S10M030_ManageLifts_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2054891779", "2054891779", "S10M030_Main", "box_S10M030_ManageLifts_45.CloseDoorsExtLaunched", "box_S10M030_ManageLifts_45.CloseDoorsElevator", l0, l0)
  l0:CloseDoorsElevator()
end
function export:f_box_S10M030_ManageLifts_45_DoorsElevatorClosed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_70()
  l0 = self.box_S10M030_ManageLifts_45
  l1 = self.box_Multiple_AND_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1916198303", "1916198303", "S10M030_Main", "box_S10M030_ManageLifts_45.DoorsElevatorClosed", "box_Multiple_AND_70.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_ListForEach_195_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_195
  self.Screen = l0.Data
  self:OnEnter_box_MultipleOR_210()
  l1 = self.box_MultipleOR_210
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2128216938", "2128216938", "S10M030_Main", "box_ListForEach_195.EndOfList", "box_MultipleOR_210.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListForEach_195_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_195
  self.Screen = l0.Data
end
function export:f_box_ListForEach_195_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_195
  self.Screen = l0.Data
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.Screen
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|171651835"
  l0.ByIndexSet = self.f_box_MaterialController_192_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0 = self.box_ListForEach_195
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1515806042", "1515806042", "S10M030_Main", "box_ListForEach_195.GotNext", "box_MaterialController_192.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_ListForEach_195_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_195
  self.Screen = l0.Data
end
function export:f_box_ListForEach_195_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_195
  self.Screen = l0.Data
end
function export:f_box_MultipleOR_165_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_159
  l0.List = self.List_CLO_SAS
  l0 = self.box_MultipleOR_165
  l1 = self.box_ListForEach_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1061288439", "1061288439", "S10M030_Main", "box_MultipleOR_165.Out", "box_ListForEach_159.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_HackableController_v2_303_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_10
  l0.Entity = self.Y_Antenna
  l0.IsManagingInteraction = 1
  l0 = self.box_HackableController_v2_303
  l1 = self.box_Interact_Gameplay_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|645268847", "645268847", "S10M030_Main", "box_HackableController_v2_303.Enabled", "box_Interact_Gameplay_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_168_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_167
  l0.List = self.List_CLO_SAS
  l0 = self.box_MultipleOR_168
  l1 = self.box_ListForEach_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|971442867", "971442867", "S10M030_Main", "box_MultipleOR_168.Out", "box_ListForEach_167.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_MultipleOR_207_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_189
  l0.List = self.List_PC_Screens_Other
  l0 = self.box_MultipleOR_207
  l1 = self.box_ListForEach_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1693995207", "1693995207", "S10M030_Main", "box_MultipleOR_207.Out", "box_ListForEach_189.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_LineOfSightMonitor_40_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_41
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053457325427"
  l0 = self.box_LineOfSightMonitor_40
  l1 = self.box_PhoneCommunicationController_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|370642901", "370642901", "S10M030_Main", "box_LineOfSightMonitor_40.Disabled", "box_PhoneCommunicationController_41.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_LineOfSightMonitor_40_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_133
  l0.Entity = "9223372058057899996"
  l0.IsManagingInteraction = 1
  l0 = self.box_LineOfSightMonitor_40
  l1 = self.box_Interact_Gameplay_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|835540556", "835540556", "S10M030_Main", "box_LineOfSightMonitor_40.Enabled", "box_Interact_Gameplay_133.Start", l0, l1)
  l1:Start()
end
function export:f_box_LineOfSightMonitor_40_LOSAcquired()
  local l0
  self = self._graph
  self:OnEnter_box_LineOfSightMonitor_40()
  l0 = self.box_LineOfSightMonitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|525585174", "525585174", "S10M030_Main", "box_LineOfSightMonitor_40.LOSAcquired", "box_LineOfSightMonitor_40.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_347_EndedAllCustomMediaBroadcasts()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1229877443"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_29_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_29_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|284026053", "284026053", "S10M030_Main", "box_Media_System_Custom_Broadcast_Controller_347.EndedAllCustomMediaBroadcasts", "box_Ordered_Output_29.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_125_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemController_v2_118()
  l0 = self.box_OnceOnly_v3_125
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|308268949", "308268949", "S10M030_Main", "box_OnceOnly_v3_125.Out", "box_ReinforcementSystemController_v2_118.StartReinforcing", l0, l1)
  l1:StartReinforcing()
end
function export:f_box_OnceOnly_v3_86_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069557592877"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1159635208"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_38_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_OnceOnly_v3_86
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2039813896", "2039813896", "S10M030_Main", "box_OnceOnly_v3_86.Out", "box_VisibilityController_v2_38.Show", l0, l1)
  l1:Show()
end
function export:f_box_PlayDialog_v2_105_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372065077652598"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|751103855"
  l0.Out = self.f_box_Phys_Zone_Cleanup_148_Out
  l0 = self.box_PlayDialog_v2_105
  l1 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1802216850", "1802216850", "S10M030_Main", "box_PlayDialog_v2_105.Started", "box_Phys_Zone_Cleanup_148.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_92_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_264
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective040",
    item = "Objective",
    id = "395866"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MultipleOR_92
  l1 = self.box_MissionMessageController_v3_264
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|412041258", "412041258", "S10M030_Main", "box_MultipleOR_92.Out", "box_MissionMessageController_v3_264.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_SetBoolean_v2_283_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_283
  self.Inside_FirstFloor_02 = l0.Target
end
function export:f_box_SetBoolean_v2_283_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_283
  self.Inside_FirstFloor_02 = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Inside_FirstFloor_01
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_290"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|180866165"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_290_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_283
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|375504568", "375504568", "S10M030_Main", "box_SetBoolean_v2_283.SetFalse", "box_Compare_Boolean_v2_290.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_283_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_283
  self.Inside_FirstFloor_02 = l0.Target
end
function export:f_box_SetBoolean_v2_283_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_283
  self.Inside_FirstFloor_02 = l0.Target
end
function export:f_box_SetBoolean_v2_283_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_283
  self.Inside_FirstFloor_02 = l0.Target
end
function export:f_box_MissionCheckpointReach_59_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_5
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective011",
    item = "Objective",
    id = "693234"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective010",
    item = "Objective",
    id = "355782"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_59
  l1 = self.box_MissionMessageController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1374708919", "1374708919", "S10M030_Main", "box_MissionCheckpointReach_59.Out", "box_MissionMessageController_v3_5.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_AI_Agent_Zone_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372048778506660"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1763924538"
  l0.Out = self.f_box_AI_Agent_Zone_81_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|527109241", "527109241", "S10M030_Main", "box_AI_Agent_Zone_34.Out", "box_AI_Agent_Zone_81.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_InteractionScriptMonitor_v2_227_AnimationStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372065007674933"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2061110093"
  l0.Out = self.f_box_Phys_Zone_Cleanup_252_Out
  l0 = self.box_InteractionScriptMonitor_v2_227
  l1 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|267409654", "267409654", "S10M030_Main", "box_InteractionScriptMonitor_v2_227.AnimationStarted", "box_Phys_Zone_Cleanup_252.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_InteractionScriptMonitor_v2_227_InteractionFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_158()
  l0 = self.box_InteractionScriptMonitor_v2_227
  l1 = self.box_MultipleOR_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1853858230", "1853858230", "S10M030_Main", "box_InteractionScriptMonitor_v2_227.InteractionFailed", "box_MultipleOR_158.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_InteractionScriptMonitor_v2_227_InteractionFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_158()
  l0 = self.box_InteractionScriptMonitor_v2_227
  l1 = self.box_MultipleOR_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|629772779", "629772779", "S10M030_Main", "box_InteractionScriptMonitor_v2_227.InteractionFinished", "box_MultipleOR_158.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_InteractionScriptMonitor_v2_227_InteractionStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_QuickPlayerDeath_228()
  l0 = self.box_InteractionScriptMonitor_v2_227
  l1 = self.box_QuickPlayerDeath_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1155297885", "1155297885", "S10M030_Main", "box_InteractionScriptMonitor_v2_227.InteractionStarted", "box_QuickPlayerDeath_228.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_293_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_293
  self.CivilianKilled = l0.Target
end
function export:f_box_SetBoolean_v2_293_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_293
  self.CivilianKilled = l0.Target
end
function export:f_box_SetBoolean_v2_293_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_293
  self.CivilianKilled = l0.Target
end
function export:f_box_SetBoolean_v2_293_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_293
  self.CivilianKilled = l0.Target
end
function export:f_box_SetBoolean_v2_293_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_293
  self.CivilianKilled = l0.Target
end
function export:f_box_SetBoolean_v2_87_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.CLO_SAS_Spawned = l0.Target
end
function export:f_box_SetBoolean_v2_87_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.CLO_SAS_Spawned = l0.Target
end
function export:f_box_SetBoolean_v2_87_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.CLO_SAS_Spawned = l0.Target
end
function export:f_box_SetBoolean_v2_87_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.CLO_SAS_Spawned = l0.Target
end
function export:f_box_SetBoolean_v2_87_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.CLO_SAS_Spawned = l0.Target
end
function export:f_box_Phys_Zone_Cleanup_148_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S10M030_ManageLifts_175()
  l0 = self.box_S10M030_ManageLifts_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|509275003", "509275003", "S10M030_Main", "box_Phys_Zone_Cleanup_148.Out", "box_S10M030_ManageLifts_175.CloseDoorsExt", clone, l0)
  l0:CloseDoorsExt()
end
function export:f_box_PlaySound_v2_309_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_321()
  l0 = self.box_PlaySound_v2_309
  l1 = self.box_MultipleOR_321
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|578161965", "578161965", "S10M030_Main", "box_PlaySound_v2_309.Out", "box_MultipleOR_321.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_288_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|266802198"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_235_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_235_Out_1
  l0 = self.box_MultipleOR_288
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1977490858", "1977490858", "S10M030_Main", "box_MultipleOR_288.Out", "box_Ordered_Output_235.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_204_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_200
  l0.List = self.List_ScreenTheatre
  l0 = self.box_MultipleOR_204
  l1 = self.box_ListForEach_200
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1143200496", "1143200496", "S10M030_Main", "box_MultipleOR_204.Out", "box_ListForEach_200.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_ListForEach_71_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_71
  self.CLO_SAS = l0.Data
  l1 = self.box_SetBoolean_v2_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|112072098", "112072098", "S10M030_Main", "box_ListForEach_71.EndOfList", "box_SetBoolean_v2_87.True", l0, l1)
  l1:True()
end
function export:f_box_ListForEach_71_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_71
  self.CLO_SAS = l0.Data
end
function export:f_box_ListForEach_71_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_71
  self.CLO_SAS = l0.Data
  l0 = self.box_CLOController_72
  l0.CLO = self.CLO_SAS
  l0 = self.box_ListForEach_71
  l1 = self.box_CLOController_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1493224514", "1493224514", "S10M030_Main", "box_ListForEach_71.GotNext", "box_CLOController_72.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListForEach_71_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_71
  self.CLO_SAS = l0.Data
end
function export:f_box_ListForEach_71_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_71
  self.CLO_SAS = l0.Data
end
function export:f_box_InteractionScriptController_106_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Y_Antenna
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_301"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|875358795"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_301_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|519224832", "519224832", "S10M030_Main", "box_InteractionScriptController_106.Disabled", "box_InteractionScriptController_301.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CinematicPrep_139_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_86()
  l0 = self.box_CinematicPrep_139
  l1 = self.box_OnceOnly_v3_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|689034971", "689034971", "S10M030_Main", "box_CinematicPrep_139.PostOut", "box_OnceOnly_v3_86.In", l0, l1)
  l1:In(0)
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
  l0 = self.box_ListWriter_51
  l0.Input = self.List_CLO_SAS
  l0.Data[0] = "9223372057989307908"
  l0.Data[1] = "9223372053562781812"
  l0.Data[2] = "9223372053562781814"
  l0.Data[3] = "9223372051576167809"
  l0.Data[4] = "9223372051576167808"
  l0.Data[5] = "9223372053562781815"
  l0.Data[6] = "9223372053562781816"
  l0.Data[7] = "9223372051576167811"
  l0.Data[8] = "9223372051576167810"
  l0.Data[9] = "9223372053562781809"
  l0.Data[10] = "9223372053562781817"
  l0.Data[11] = "9223372053562781818"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|770365942", "770365942", "S10M030_Main", "box_Get_Player_ID_1.Out", "box_ListWriter_51.Add", clone, l0)
  l0:Add()
end
function export:f_box_Show_Or_Hide_All_UI_142_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|353364474"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_143_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|643706445", "643706445", "S10M030_Main", "box_Show_Or_Hide_All_UI_142.Shown", "box_SetActionMap_v2_143.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_AISquadStateMonitor_249_ArrestState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_102()
  l0 = self.box_AISquadStateMonitor_249
  l1 = self.box_MultipleOR_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|849654402", "849654402", "S10M030_Main", "box_AISquadStateMonitor_249.ArrestState", "box_MultipleOR_102.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_AISquadStateMonitor_249_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_102()
  l0 = self.box_AISquadStateMonitor_249
  l1 = self.box_MultipleOR_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|725142792", "725142792", "S10M030_Main", "box_AISquadStateMonitor_249.CombatState", "box_MultipleOR_102.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_AISquadStateMonitor_249_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateMonitor_249
  l1 = self.box_SetBoolean_v2_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1400630670", "1400630670", "S10M030_Main", "box_AISquadStateMonitor_249.Disabled", "box_SetBoolean_v2_88.True", l0, l1)
  l1:True()
end
function export:f_box_AISquadStateMonitor_249_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|40885697"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_216_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_216_Out_1
  l0 = self.box_AISquadStateMonitor_249
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|395310963", "395310963", "S10M030_Main", "box_AISquadStateMonitor_249.Enabled", "box_Ordered_Output_216.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_33_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_32()
  l0 = self.box_MissionZone_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|988782599", "988782599", "S10M030_Main", "box_Simple_Node_33.Out", "box_MissionZone_32.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetActionMap_v2_140_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|971462008"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_141_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1323640188", "1323640188", "S10M030_Main", "box_SetActionMap_v2_140.Pushed", "box_Show_Or_Hide_All_UI_141.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_AISquadStateMonitor_179_ArrestState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_258()
  l0 = self.box_AISquadStateMonitor_179
  l1 = self.box_MultipleOR_258
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2141765881", "2141765881", "S10M030_Main", "box_AISquadStateMonitor_179.ArrestState", "box_MultipleOR_258.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_AISquadStateMonitor_179_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_258()
  l0 = self.box_AISquadStateMonitor_179
  l1 = self.box_MultipleOR_258
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|895354452", "895354452", "S10M030_Main", "box_AISquadStateMonitor_179.CombatState", "box_MultipleOR_258.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_AISquadStateMonitor_179_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateMonitor_179
  l1 = self.box_SetBoolean_v2_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1775944861", "1775944861", "S10M030_Main", "box_AISquadStateMonitor_179.Disabled", "box_SetBoolean_v2_151.True", l0, l1)
  l1:True()
end
function export:f_box_AISquadStateMonitor_179_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|912375115"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_237_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_237_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_237_Out_2
  l0 = self.box_AISquadStateMonitor_179
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|610391616", "610391616", "S10M030_Main", "box_AISquadStateMonitor_179.Enabled", "box_Ordered_Output_237.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_301_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_300
  l0.HackableEntity = self.VR_AccessNode
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1957652424", "1957652424", "S10M030_Main", "box_InteractionScriptController_301.Disabled", "box_HackableController_v2_300.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Compare_Boolean_v2_153_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_177()
  l0 = self.box_MultipleOR_177
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1314975821", "1314975821", "S10M030_Main", "box_Compare_Boolean_v2_153.A_is_False", "box_MultipleOR_177.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_153_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadRelationshipController_147
  l0.Affiliation = "AFI"
  l0.Relationship = "Threat"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2100299130", "2100299130", "S10M030_Main", "box_Compare_Boolean_v2_153.A_is_True", "box_AISquadRelationshipController_147.SetRelationship", clone, l0)
  l0:SetRelationship()
end
function export:f_box_AI_Agent_Zone_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = "9223372068372760264"
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_330"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|190681225"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = self.f_box_Player_State_Controller_330_CoverEntered
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|944446375", "944446375", "S10M030_Main", "box_AI_Agent_Zone_53.Out", "box_Player_State_Controller_330.EnterCover", clone, l0)
  l0:EnterCover()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_176_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_46()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|28981900", "28981900", "S10M030_Main", "box_Media_System_Custom_Broadcast_Controller_176.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_46.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOController_335_Activated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_70()
  l0 = self.box_CLOController_335
  l1 = self.box_Multiple_AND_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|31189052", "31189052", "S10M030_Main", "box_CLOController_335.Activated", "box_Multiple_AND_70.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOController_335_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_337
  l0.CLO = "9223372069235913635"
  l0 = self.box_CLOController_335
  l1 = self.box_CLOController_337
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|61649400", "61649400", "S10M030_Main", "box_CLOController_335.OnUserInPlace", "box_CLOController_337.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Get_Player_ID_60_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372058057899996"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|811016042"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_106_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1674580785", "1674580785", "S10M030_Main", "box_Get_Player_ID_60.Out", "box_InteractionScriptController_106.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_237_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_236"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1508949519"
  l0.Out = self.f_box_Simple_Node_236_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1680252011", "1680252011", "S10M030_Main", "box_Ordered_Output_237.Out", "box_Simple_Node_236.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_237_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_267()
  l0 = self.box_MultipleOR_267
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|915442336", "915442336", "S10M030_Main", "box_Ordered_Output_237.Out", "box_MultipleOR_267.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_237_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_265()
  l0 = self.box_TriggerMonitor_v2_265
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1633264038", "1633264038", "S10M030_Main", "box_Ordered_Output_237.Out", "box_TriggerMonitor_v2_265.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_S10M030_ManageLifts_52_MoveElevatorUpFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_36()
  l0 = self.box_S10M030_ManageLifts_52
  l1 = self.box_Multiple_AND_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1318518430", "1318518430", "S10M030_Main", "box_S10M030_ManageLifts_52.MoveElevatorUpFinished", "box_Multiple_AND_36.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_S10M030_ManageLifts_52_MoveElevatorUpStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_25
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048359002563"
  l0 = self.box_S10M030_ManageLifts_52
  l1 = self.box_PhoneCommunicationController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|737329187", "737329187", "S10M030_Main", "box_S10M030_ManageLifts_52.MoveElevatorUpStarted", "box_PhoneCommunicationController_25.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_InteractionScriptMonitor_v2_166_AnimationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_105
  l0.SoundId = "soundbinary/3813750540.bnk"
  l0 = self.box_InteractionScriptMonitor_v2_166
  l1 = self.box_PlayDialog_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|479921664", "479921664", "S10M030_Main", "box_InteractionScriptMonitor_v2_166.AnimationStarted", "box_PlayDialog_v2_105.Start", l0, l1)
  l1:Start()
end
function export:f_box_InteractionScriptMonitor_v2_166_InteractionFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_131()
  l0 = self.box_InteractionScriptMonitor_v2_166
  l1 = self.box_MultipleOR_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1609048930", "1609048930", "S10M030_Main", "box_InteractionScriptMonitor_v2_166.InteractionFailed", "box_MultipleOR_131.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_InteractionScriptMonitor_v2_166_InteractionFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_131()
  l0 = self.box_InteractionScriptMonitor_v2_166
  l1 = self.box_MultipleOR_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1261437982", "1261437982", "S10M030_Main", "box_InteractionScriptMonitor_v2_166.InteractionFinished", "box_MultipleOR_131.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_InteractionScriptMonitor_v2_166_InteractionStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_QuickPlayerDeath_170()
  l0 = self.box_InteractionScriptMonitor_v2_166
  l1 = self.box_QuickPlayerDeath_170
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1385129756", "1385129756", "S10M030_Main", "box_InteractionScriptMonitor_v2_166.InteractionStarted", "box_QuickPlayerDeath_170.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Monitor_15_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_104
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346371"
  l0 = self.box_Hackable_Monitor_15
  l1 = self.box_PhoneCommunicationController_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|788924219", "788924219", "S10M030_Main", "box_Hackable_Monitor_15.Disabled", "box_PhoneCommunicationController_104.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Hackable_Monitor_15_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_15()
  l0 = self.box_Hackable_Monitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1384295328", "1384295328", "S10M030_Main", "box_Hackable_Monitor_15.HackSuccess", "box_Hackable_Monitor_15.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_80_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_118()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|440078381", "440078381", "S10M030_Main", "box_Simple_Node_80.Out", "box_ReinforcementSystemController_v2_118.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_MultipleOR_210_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_193
  l0.List = self.List_PC_Screens_Other
  l0 = self.box_MultipleOR_210
  l1 = self.box_ListForEach_193
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|287315433", "287315433", "S10M030_Main", "box_MultipleOR_210.Out", "box_ListForEach_193.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_ListForEach_189_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_189
  self.Screen = l0.Data
end
function export:f_box_ListForEach_189_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_189
  self.Screen = l0.Data
end
function export:f_box_ListForEach_189_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_189
  self.Screen = l0.Data
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.Screen
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1752665650"
  l0.ByIndexSet = self.f_box_MaterialController_196_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0 = self.box_ListForEach_189
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1160272312", "1160272312", "S10M030_Main", "box_ListForEach_189.GotNext", "box_MaterialController_196.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_ListForEach_189_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_189
  self.Screen = l0.Data
end
function export:f_box_ListForEach_189_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_189
  self.Screen = l0.Data
end
function export:f_box_Show_Or_Hide_All_UI_141_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069557592877"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|993808633"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_20_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1589436206", "1589436206", "S10M030_Main", "box_Show_Or_Hide_All_UI_141.Hidden", "box_VisibilityController_v2_20.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Simple_Node_121_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|857338680"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_140_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|226597455", "226597455", "S10M030_Main", "box_Simple_Node_121.Out", "box_SetActionMap_v2_140.Push", clone, l0)
  l0:Push()
end
function export:f_box_MissionZone_32_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Standalone_Loader_Controller_82
  l0.StandaloneLoader = "9223372047375734381"
  l0.LayerName = "Oak_01_CivicCenter_DellumTower_HMA"
  l0 = self.box_MissionZone_32
  l1 = self.box_Standalone_Loader_Controller_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1389928145", "1389928145", "S10M030_Main", "box_MissionZone_32.Disabled", "box_Standalone_Loader_Controller_82.Load", l0, l1)
  l1:Load()
end
function export:f_box_VisibilityController_v2_20_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_97
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1134825504", "1134825504", "S10M030_Main", "box_VisibilityController_v2_20.Hidden", "box_CinematicPrep_97.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_Simple_Node_234_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_44()
  l0 = self.box_Interact_Gameplay_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|290932918", "290932918", "S10M030_Main", "box_Simple_Node_234.Out", "box_Interact_Gameplay_44.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_MultipleOR_177_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_4
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective020",
    item = "Objective",
    id = "395864"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MultipleOR_177
  l1 = self.box_MissionMessageController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|530359317", "530359317", "S10M030_Main", "box_MultipleOR_177.Out", "box_MissionMessageController_v3_4.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_Simple_Node_268_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_276
  l0.UserList = self.List_CLO_SAS_SpawnedCivilian
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|233406114", "233406114", "S10M030_Main", "box_Simple_Node_268.Out", "box_CLOController_276.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_MultipleOR_258_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_129()
  l0 = self.box_MultipleOR_258
  l1 = self.box_AISquadStateMonitor_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|695403146", "695403146", "S10M030_Main", "box_MultipleOR_258.Out", "box_AISquadStateMonitor_129.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Restore_Mission_SubObjectives_254_Restored()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_66
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Restore_Mission_SubObjectives_254
  l1 = self.box_CinematicPrep_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|143823030", "143823030", "S10M030_Main", "box_Restore_Mission_SubObjectives_254.Restored", "box_CinematicPrep_66.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_99_EndedAllCustomMediaBroadcasts()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_17()
  l0 = self.box_Mission_End_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1537501772", "1537501772", "S10M030_Main", "box_Media_System_Custom_Broadcast_Controller_99.EndedAllCustomMediaBroadcasts", "box_Mission_End_17.End", clone, l0)
  l0:End()
end
function export:f_box_PlaySound_v2_214_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_280
  l0.SoundId = "soundbinary/633760902.bnk"
  l0 = self.box_PlaySound_v2_214
  l1 = self.box_PlaySound_v2_280
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1108536747", "1108536747", "S10M030_Main", "box_PlaySound_v2_214.Out", "box_PlaySound_v2_280.Play", l0, l1)
  l1:Play()
end
function export:f_box_PhoneCommunicationController_8_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_225
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective030",
    item = "Objective",
    id = "395865"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_PhoneCommunicationController_8
  l1 = self.box_MissionMessageController_v3_225
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1457494878", "1457494878", "S10M030_Main", "box_PhoneCommunicationController_8.OnCommunicationFinished", "box_MissionMessageController_v3_225.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_MultipleOR_111_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_71
  l0.List = self.List_CLO_SAS
  l0 = self.box_MultipleOR_111
  l1 = self.box_ListForEach_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2031528639", "2031528639", "S10M030_Main", "box_MultipleOR_111.Out", "box_ListForEach_71.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_PlaySound_v2_323_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_221
  l0.SoundId = "soundbinary/81442961.bnk"
  l0 = self.box_PlaySound_v2_323
  l1 = self.box_PlaySound_v2_221
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|994001283", "994001283", "S10M030_Main", "box_PlaySound_v2_323.Out", "box_PlaySound_v2_221.Play", l0, l1)
  l1:Play()
end
function export:f_box_Get_Player_ID_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_343"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1832214574"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_343_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_343_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|149337597", "149337597", "S10M030_Main", "box_Get_Player_ID_57.Out", "box_Ordered_Output_343.In", clone, l0)
  l0:In()
end
function export:f_box_AI_Agent_Zone_326_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372048778506660"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_325"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1503812204"
  l0.Out = self.f_box_AI_Agent_Zone_325_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|838853829", "838853829", "S10M030_Main", "box_AI_Agent_Zone_326.Out", "box_AI_Agent_Zone_325.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_295_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372051430677101"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = nil
  l0.RestrictParking = 0
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = "CivilianDensity.9223372048779320679"
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = 0
  l0.RestrictAnimal = 0
  l0.RestrictRobot = 0
  l0.RestrictRoadVehicle = 0
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2109511196"
  l0.Out = self.f_box_Lanes_Restrictions_Control_103_Out
  l0 = self.box_MultipleOR_295
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1258328302", "1258328302", "S10M030_Main", "box_MultipleOR_295.Out", "box_Lanes_Restrictions_Control_103.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_257_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1069935245", "1069935245", "S10M030_Main", "box_Simple_Node_257.Out", "box_MultipleOR_64.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Media_System_Custom_Broadcast_Controller_85_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_49()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1983987347", "1983987347", "S10M030_Main", "box_Media_System_Custom_Broadcast_Controller_85.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_49.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_266_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_109
  l0.SoundId = "soundbinary/1015959666.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|573495572", "573495572", "S10M030_Main", "box_Ordered_Output_266.Out", "box_PlayDialog_v2_109.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_266_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_269()
  l0 = self.box_MultipleOR_269
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1604260716", "1604260716", "S10M030_Main", "box_Ordered_Output_266.Out", "box_MultipleOR_269.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Cinema_Zone_Cleanup_73_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_101
  l0.SceneEntity = "9223372055269049314"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S10/S10_M030MissionStart_CIN/s10_m030missionstart_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|935063415", "935063415", "S10M030_Main", "box_Cinema_Zone_Cleanup_73.Out", "box_PlaySequence_v5_101.Start", clone, l0)
  l0:Start()
end
function export:f_box_Interact_Gameplay_10_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_233
  l0.HackableEntity = self.VR_AccessNode
  l0 = self.box_Interact_Gameplay_10
  l1 = self.box_HackableController_v2_233
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|647203894", "647203894", "S10M030_Main", "box_Interact_Gameplay_10.Interacted", "box_HackableController_v2_233.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Interact_Gameplay_10_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_199
  l0.HackableEntity = self.VR_AccessNode
  l0 = self.box_Interact_Gameplay_10
  l1 = self.box_HackableController_v2_199
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|7275066", "7275066", "S10M030_Main", "box_Interact_Gameplay_10.Started", "box_HackableController_v2_199.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Interact_Gameplay_44_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1485325804"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_178_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_178_Out_1
  l0 = self.box_Interact_Gameplay_44
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|613890106", "613890106", "S10M030_Main", "box_Interact_Gameplay_44.Interacted", "box_Ordered_Output_178.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_44_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_227()
  l0 = self.box_Interact_Gameplay_44
  l1 = self.box_InteractionScriptMonitor_v2_227
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1070126487", "1070126487", "S10M030_Main", "box_Interact_Gameplay_44.Started", "box_InteractionScriptMonitor_v2_227.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_340_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_339
  l0.CLO = "9223372069235913635"
  l0 = self.box_CLOController_340
  l1 = self.box_CLOController_339
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|933834159", "933834159", "S10M030_Main", "box_CLOController_340.Activated", "box_CLOController_339.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_340_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_341
  l0.CLO = "9223372052502345228"
  l0 = self.box_CLOController_340
  l1 = self.box_CLOController_341
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1588840228", "1588840228", "S10M030_Main", "box_CLOController_340.OnUserInPlace", "box_CLOController_341.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_ListForEach_191_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_191
  self.Screen = l0.Data
  self:OnEnter_box_MultipleOR_209()
  l1 = self.box_MultipleOR_209
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|67940993", "67940993", "S10M030_Main", "box_ListForEach_191.EndOfList", "box_MultipleOR_209.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListForEach_191_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_191
  self.Screen = l0.Data
end
function export:f_box_ListForEach_191_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_191
  self.Screen = l0.Data
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.Screen
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2077958093"
  l0.ByIndexSet = self.f_box_MaterialController_194_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0 = self.box_ListForEach_191
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|24604405", "24604405", "S10M030_Main", "box_ListForEach_191.GotNext", "box_MaterialController_194.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_ListForEach_191_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_191
  self.Screen = l0.Data
end
function export:f_box_ListForEach_191_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_191
  self.Screen = l0.Data
end
function export:f_box_PlaySound_v2_280_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_279()
  l0 = self.box_PlaySound_v2_280
  l1 = self.box_Timer_v2_279
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2058187243", "2058187243", "S10M030_Main", "box_PlaySound_v2_280.Out", "box_Timer_v2_279.Start", l0, l1)
  l1:Start()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_46_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_46()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|764986723", "764986723", "S10M030_Main", "box_Media_System_Custom_Broadcast_Monitor_46.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_46.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_46_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372049376490499"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1688676002"
  l0.Out = self.f_box_AI_Agent_Zone_157_Out
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_46
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2126829016", "2126829016", "S10M030_Main", "box_Media_System_Custom_Broadcast_Monitor_46.Disabled", "box_AI_Agent_Zone_157.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListForEach_167_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_167
  self.CLO_SAS = l0.Data
end
function export:f_box_ListForEach_167_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_167
  self.CLO_SAS = l0.Data
end
function export:f_box_ListForEach_167_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_167
  self.CLO_SAS = l0.Data
  l0 = self.box_CLOController_169
  l0.CLO = self.CLO_SAS
  l0 = self.box_ListForEach_167
  l1 = self.box_CLOController_169
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1776312396", "1776312396", "S10M030_Main", "box_ListForEach_167.GotNext", "box_CLOController_169.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListForEach_167_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_167
  self.CLO_SAS = l0.Data
end
function export:f_box_ListForEach_167_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_167
  self.CLO_SAS = l0.Data
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_180_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_180()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1148634721", "1148634721", "S10M030_Main", "box_Media_System_Custom_Broadcast_Monitor_180.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_180.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_180_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_204()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_180
  l1 = self.box_MultipleOR_204
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1187370902", "1187370902", "S10M030_Main", "box_Media_System_Custom_Broadcast_Monitor_180.Disabled", "box_MultipleOR_204.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_224
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective010",
    item = "Objective",
    id = "355782"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionMessageController_v3_4
  l1 = self.box_MissionMessageController_v3_224
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1565816583", "1565816583", "S10M030_Main", "box_MissionMessageController_v3_4.Out", "box_MissionMessageController_v3_224.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_CLOController_241_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_244()
  l0 = self.box_CLOController_241
  l1 = self.box_MultipleOR_244
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|824004432", "824004432", "S10M030_Main", "box_CLOController_241.Deactivated", "box_MultipleOR_244.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VisibilityController_v2_38_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|818986146"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_142_Shown
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1465715586", "1465715586", "S10M030_Main", "box_VisibilityController_v2_38.Shown", "box_Show_Or_Hide_All_UI_142.Show", clone, l0)
  l0:Show()
end
function export:f_box_Flying_Drone_Controller_120_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_156
  l0.PGTMissionArea = "9223372047375740545"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|837707616", "837707616", "S10M030_Main", "box_Flying_Drone_Controller_120.CalledBack", "box_PGTController_v2_156.Abort", clone, l0)
  l0:Abort()
end
function export:f_box_MissionMusicController_217_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = nil
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1026231985"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = self.f_box_Media_System_Custom_Broadcast_Controller_99_EndedAllCustomMediaBroadcasts
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1976277810", "1976277810", "S10M030_Main", "box_MissionMusicController_217.Deactivated", "box_Media_System_Custom_Broadcast_Controller_99.EndAllCustomMediaBroadcasts", clone, l0)
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_box_Ordered_Output_190_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LineOfSightMonitor_40()
  l0 = self.box_LineOfSightMonitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1246455964", "1246455964", "S10M030_Main", "box_Ordered_Output_190.Out", "box_LineOfSightMonitor_40.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_190_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1728853307"
  l0.Out = self.f_box_Simple_Node_212_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|502656424", "502656424", "S10M030_Main", "box_Ordered_Output_190.Out", "box_Simple_Node_212.In", clone, l0)
  l0:In()
end
function export:f_box_InteractionScriptController_302_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_303
  l0.HackableEntity = self.VR_AccessNode
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1233549023", "1233549023", "S10M030_Main", "box_InteractionScriptController_302.Enabled", "box_HackableController_v2_303.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_MissionMessageController_v3_225_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_226
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective020",
    item = "Objective",
    id = "395864"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionMessageController_v3_225
  l1 = self.box_MissionMessageController_v3_226
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1787816555", "1787816555", "S10M030_Main", "box_MissionMessageController_v3_225.Out", "box_MissionMessageController_v3_226.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Multiple_AND_91_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372048778496550"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_329"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|495213001"
  l0.Out = self.f_box_AI_Agent_Zone_329_Out
  l0 = self.box_Multiple_AND_91
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1401350132", "1401350132", "S10M030_Main", "box_Multiple_AND_91.Out", "box_AI_Agent_Zone_329.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_307_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_240
  l0.CLO = "9223372070937740364"
  l0 = self.box_MultipleOR_307
  l1 = self.box_CLOController_240
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1356345353", "1356345353", "S10M030_Main", "box_MultipleOR_307.Out", "box_CLOController_240.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_AI_Agent_Zone_110_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_331
  l0.CLO = "9223372052502345228"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|422876670", "422876670", "S10M030_Main", "box_AI_Agent_Zone_110.Out", "box_CLOController_331.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionLayer_v2_56_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1067458519"
  l0.Out = self.f_box_Get_Player_ID_57_Out
  l0 = self.box_MissionLayer_v2_56
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1997494765", "1997494765", "S10M030_Main", "box_MissionLayer_v2_56.Loaded", "box_Get_Player_ID_57.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_185_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_185
  self.Screen = l0.Data
  self:OnEnter_box_MultipleOR_206()
  l1 = self.box_MultipleOR_206
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|268407533", "268407533", "S10M030_Main", "box_ListForEach_185.EndOfList", "box_MultipleOR_206.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListForEach_185_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_185
  self.Screen = l0.Data
end
function export:f_box_ListForEach_185_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_185
  self.Screen = l0.Data
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.Screen
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1440681027"
  l0.ByIndexSet = self.f_box_MaterialController_186_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0 = self.box_ListForEach_185
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|175958141", "175958141", "S10M030_Main", "box_ListForEach_185.GotNext", "box_MaterialController_186.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_ListForEach_185_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_185
  self.Screen = l0.Data
end
function export:f_box_ListForEach_185_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_185
  self.Screen = l0.Data
end
function export:f_box_PlaySound_v2_42_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_311
  l0.SoundId = "soundbinary/2411174878.bnk"
  l0 = self.box_PlaySound_v2_42
  l1 = self.box_PlaySound_v2_311
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1544732571", "1544732571", "S10M030_Main", "box_PlaySound_v2_42.Out", "box_PlaySound_v2_311.Play", l0, l1)
  l1:Play()
end
function export:f_box_MultipleOR_206_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_187
  l0.List = self.List_PC_Screens_MeetingRoom
  l0 = self.box_MultipleOR_206
  l1 = self.box_ListForEach_187
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|797633582", "797633582", "S10M030_Main", "box_MultipleOR_206.Out", "box_ListForEach_187.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_Ordered_Output_29_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372051430677101"
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
  l0.RestrictHumanOnFoot = 0
  l0.RestrictHumanPassenger = 0
  l0.RestrictAnimal = 0
  l0.RestrictRobot = 0
  l0.RestrictRoadVehicle = 0
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_306"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1241363692"
  l0.Out = self.f_box_Lanes_Restrictions_Control_306_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|755843185", "755843185", "S10M030_Main", "box_Ordered_Output_29.Out", "box_Lanes_Restrictions_Control_306.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_29_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_149
  l0.Input = self.List_CLO_SAS
  l0.Data[0] = "9223372057989307908"
  l0.Data[1] = "9223372053562781812"
  l0.Data[2] = "9223372053562781814"
  l0.Data[3] = "9223372051576167809"
  l0.Data[4] = "9223372051576167808"
  l0.Data[5] = "9223372053562781815"
  l0.Data[6] = "9223372053562781816"
  l0.Data[7] = "9223372051576167811"
  l0.Data[8] = "9223372051576167810"
  l0.Data[9] = "9223372053562781809"
  l0.Data[10] = "9223372053562781817"
  l0.Data[11] = "9223372053562781818"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1817890356", "1817890356", "S10M030_Main", "box_Ordered_Output_29.Out", "box_ListWriter_149.Add", clone, l0)
  l0:Add()
end
function export:f_box_ListWriter_163_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_163
  self.List_CLO_SAS_SpawnedCivilian = l0.Target
  self:OnEnter_box_MultipleOR_165()
  l1 = self.box_MultipleOR_165
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|216437382", "216437382", "S10M030_Main", "box_ListWriter_163.Added", "box_MultipleOR_165.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListWriter_163_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_163
  self.List_CLO_SAS_SpawnedCivilian = l0.Target
end
function export:f_box_ListWriter_163_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_163
  self.List_CLO_SAS_SpawnedCivilian = l0.Target
end
function export:f_box_CLOController_334_Deactivated()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FelonyInside
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|891786179"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_153_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_153_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_CLOController_334
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|760434816", "760434816", "S10M030_Main", "box_CLOController_334.Deactivated", "box_Compare_Boolean_v2_153.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_95_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_59
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_95
  l1 = self.box_MissionCheckpointReach_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|885476771", "885476771", "S10M030_Main", "box_MultipleOR_95.Out", "box_MissionCheckpointReach_59.In", l0, l1)
  l1:In()
end
function export:f_box_Lanes_Restrictions_Control_306_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_55()
  l0 = self.box_OnceOnly_v3_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|148369678", "148369678", "S10M030_Main", "box_Lanes_Restrictions_Control_306.Out", "box_OnceOnly_v3_55.In", clone, l0)
  l0:In(1)
end
function export:f_box_Ordered_Output_93_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_259()
  l0 = self.box_AISquadStateMonitor_259
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|880209982", "880209982", "S10M030_Main", "box_Ordered_Output_93.Out", "box_AISquadStateMonitor_259.Enable", clone, l0)
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
  self:OnEnter_box_S10M030_ManageLifts_6()
  l0 = self.box_S10M030_ManageLifts_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1198006423", "1198006423", "S10M030_Main", "box_Ordered_Output_93.Out", "box_S10M030_ManageLifts_6.MoveElevatorUp", clone, l0)
  l0:MoveElevatorUp()
end
function export:f_box_InteractionScriptController_126_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047820393255"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_304"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|124835506"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_304_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|843135638", "843135638", "S10M030_Main", "box_InteractionScriptController_126.Disabled", "box_InteractionScriptController_304.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Reach_Gameplay_297_Reached()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Y_Antenna
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_302"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1180473161"
  l0.Enabled = self.f_box_InteractionScriptController_302_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Reach_Gameplay_297
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|347716924", "347716924", "S10M030_Main", "box_Reach_Gameplay_297.Reached", "box_InteractionScriptController_302.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_62_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|907939395"
  l0.Out = self.f_box_Get_Player_ID_60_Out
  l0 = self.box_MissionLayer_v2_62
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1592223982", "1592223982", "S10M030_Main", "box_MissionLayer_v2_62.Loaded", "box_Get_Player_ID_60.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_11
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective040",
    item = "Objective",
    id = "395866"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionMessageController_v3_9
  l1 = self.box_MissionMessageController_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2019900118", "2019900118", "S10M030_Main", "box_MissionMessageController_v3_9.Out", "box_MissionMessageController_v3_11.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_ListWriter_51_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_51
  self.List_CLO_SAS = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1328599566"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  l0 = self.box_ListWriter_51
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|955299602", "955299602", "S10M030_Main", "box_ListWriter_51.Added", "box_Ordered_Output_22.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_51_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_51
  self.List_CLO_SAS = l0.Target
end
function export:f_box_ListWriter_51_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_51
  self.List_CLO_SAS = l0.Target
end
function export:f_box_PlaySound_v2_291_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_323
  l0.SoundId = "soundbinary/840169351.bnk"
  l0 = self.box_PlaySound_v2_291
  l1 = self.box_PlaySound_v2_323
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|940487823", "940487823", "S10M030_Main", "box_PlaySound_v2_291.Out", "box_PlaySound_v2_323.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_273_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_268"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1019174161"
  l0.Out = self.f_box_Simple_Node_268_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1645816498", "1645816498", "S10M030_Main", "box_Ordered_Output_273.Out", "box_Simple_Node_268.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_273_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1682447725"
  l0.CalledBack = self.f_box_Toy_Car_Controller_47_CalledBack
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|434461741", "434461741", "S10M030_Main", "box_Ordered_Output_273.Out", "box_Toy_Car_Controller_47.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_CLOController_162_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_162
  self.CLO_SAS_SpawnedCivilian = l0.UserID
  l0 = self.box_ListWriter_163
  l0.Input = self.List_CLO_SAS_SpawnedCivilian
  l0.Data[0] = self.CLO_SAS_SpawnedCivilian
  l0 = self.box_CLOController_162
  l1 = self.box_ListWriter_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1101989413", "1101989413", "S10M030_Main", "box_CLOController_162.OnUserInPlace", "box_ListWriter_163.Add", l0, l1)
  l1:Add()
end
function export:f_box_MultipleOR_48_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_65
  l0.List = self.List_AFI_Outside_CLO
  l0 = self.box_MultipleOR_48
  l1 = self.box_ListForEach_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1782304294", "1782304294", "S10M030_Main", "box_MultipleOR_48.Out", "box_ListForEach_65.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_Toy_Car_Controller_119_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Flying_Drone_Controller_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1162831253"
  l0.CalledBack = self.f_box_Flying_Drone_Controller_120_CalledBack
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2035539739", "2035539739", "S10M030_Main", "box_Toy_Car_Controller_119.CalledBack", "box_Flying_Drone_Controller_120.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_AISquadStateMonitor_129_ArrestState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_258()
  l0 = self.box_AISquadStateMonitor_129
  l1 = self.box_MultipleOR_258
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1345792516", "1345792516", "S10M030_Main", "box_AISquadStateMonitor_129.ArrestState", "box_MultipleOR_258.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_129_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_258()
  l0 = self.box_AISquadStateMonitor_129
  l1 = self.box_MultipleOR_258
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|891181814", "891181814", "S10M030_Main", "box_AISquadStateMonitor_129.CombatState", "box_MultipleOR_258.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_129_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_179()
  l0 = self.box_AISquadStateMonitor_129
  l1 = self.box_AISquadStateMonitor_179
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1355997834", "1355997834", "S10M030_Main", "box_AISquadStateMonitor_129.Disabled", "box_AISquadStateMonitor_179.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AISquadStateMonitor_129_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_179()
  l0 = self.box_AISquadStateMonitor_129
  l1 = self.box_AISquadStateMonitor_179
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|158571905", "158571905", "S10M030_Main", "box_AISquadStateMonitor_129.Enabled", "box_AISquadStateMonitor_179.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Boolean_v2_285_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_286()
  l0 = self.box_MultipleOR_286
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1365668004", "1365668004", "S10M030_Main", "box_Compare_Boolean_v2_285.A_is_False", "box_MultipleOR_286.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_296_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2053804870"
  l0.Out = self.f_box_Simple_Node_172_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1082241379", "1082241379", "S10M030_Main", "box_Compare_Boolean_v2_296.A_is_False", "box_Simple_Node_172.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_296_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_307()
  l0 = self.box_MultipleOR_307
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1889378088", "1889378088", "S10M030_Main", "box_Compare_Boolean_v2_296.A_is_True", "box_MultipleOR_307.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ListForEach_159_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_159
  self.CLO_SAS = l0.Data
  l1 = self.box_SetBoolean_v2_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|704411445", "704411445", "S10M030_Main", "box_ListForEach_159.EndOfList", "box_SetBoolean_v2_160.True", l0, l1)
  l1:True()
end
function export:f_box_ListForEach_159_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_159
  self.CLO_SAS = l0.Data
end
function export:f_box_ListForEach_159_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_159
  self.CLO_SAS = l0.Data
  l0 = self.box_CLOController_162
  l0.CLO = self.CLO_SAS
  l0 = self.box_ListForEach_159
  l1 = self.box_CLOController_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|829274312", "829274312", "S10M030_Main", "box_ListForEach_159.GotNext", "box_CLOController_162.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListForEach_159_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_159
  self.CLO_SAS = l0.Data
end
function export:f_box_ListForEach_159_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_159
  self.CLO_SAS = l0.Data
end
function export:f_box_ListWriter_319_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_319
  self.List_ScreensSound = l0.Target
end
function export:f_box_ListWriter_319_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_319
  self.List_ScreensSound = l0.Target
end
function export:f_box_ListWriter_319_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_319
  self.List_ScreensSound = l0.Target
end
function export:f_box_Ordered_Output_22_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|750720798", "750720798", "S10M030_Main", "box_Ordered_Output_22.Out", "box_MultipleOR_111.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|974843906"
  l0.Out = self.f_box_Simple_Node_121_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1241124601", "1241124601", "S10M030_Main", "box_Ordered_Output_22.Out", "box_Simple_Node_121.In", clone, l0)
  l0:In()
end
function export:f_box_PGTController_v2_113_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372048778496550"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|119855935"
  l0.Out = self.f_box_AI_Agent_Zone_135_Out
  l0 = self.box_PGTController_v2_113
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1734160630", "1734160630", "S10M030_Main", "box_PGTController_v2_113.AllSpawned", "box_AI_Agent_Zone_135.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Boolean_v2_289_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_288()
  l0 = self.box_MultipleOR_288
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1602492441", "1602492441", "S10M030_Main", "box_Compare_Boolean_v2_289.A_is_False", "box_MultipleOR_288.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CLOController_211_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_211
  self.AFI_Entity_Outside_SpawnedAgent = l0.UserID
  l0 = self.box_ListWriter_136
  l0.Input = self.List_AFI_Outside_SpawnedAgent
  l0.Data[0] = self.AFI_Entity_Outside_SpawnedAgent
  l0 = self.box_CLOController_211
  l1 = self.box_ListWriter_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|681132647", "681132647", "S10M030_Main", "box_CLOController_211.OnUserInPlace", "box_ListWriter_136.Add", l0, l1)
  l1:Add()
end
function export:f_box_HackableController_v2_233_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_8
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048359003293"
  l0 = self.box_HackableController_v2_233
  l1 = self.box_PhoneCommunicationController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1248607683", "1248607683", "S10M030_Main", "box_HackableController_v2_233.Disabled", "box_PhoneCommunicationController_8.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Proximity_Monitor_116_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_127
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372048359109537"
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
  l0 = self.box_Proximity_Monitor_116
  l1 = self.box_Escape_Gameplay_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1940373339", "1940373339", "S10M030_Main", "box_Proximity_Monitor_116.Enabled", "box_Escape_Gameplay_127.Start", l0, l1)
  l1:Start()
end
function export:f_box_Proximity_Monitor_116_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S10M030_ManageDoorEntrance_124()
  l0 = self.box_Proximity_Monitor_116
  l1 = self.box_S10M030_ManageDoorEntrance_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1341670450", "1341670450", "S10M030_Main", "box_Proximity_Monitor_116.ExitRadius", "box_S10M030_ManageDoorEntrance_124.CloseDoor", l0, l1)
  l1:CloseDoor()
end
function export:f_box_S10M030_ManageLifts_308_CloseDoorsElevatorLaunched()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_308()
  l0 = self.box_S10M030_ManageLifts_308
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1448245939", "1448245939", "S10M030_Main", "box_S10M030_ManageLifts_308.CloseDoorsElevatorLaunched", "box_S10M030_ManageLifts_308.MoveElevatorDown", l0, l0)
  l0:MoveElevatorDown()
end
function export:f_box_S10M030_ManageLifts_308_CloseDoorsExtLaunched()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_308()
  l0 = self.box_S10M030_ManageLifts_308
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|650412532", "650412532", "S10M030_Main", "box_S10M030_ManageLifts_308.CloseDoorsExtLaunched", "box_S10M030_ManageLifts_308.CloseDoorsElevator", l0, l0)
  l0:CloseDoorsElevator()
end
function export:f_box_S10M030_ManageLifts_308_MoveElevatorDownFinished()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_308()
  l0 = self.box_S10M030_ManageLifts_308
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|482297071", "482297071", "S10M030_Main", "box_S10M030_ManageLifts_308.MoveElevatorDownFinished", "box_S10M030_ManageLifts_308.OpenDoorsExt", l0, l0)
  l0:OpenDoorsExt()
end
function export:f_box_S10M030_ManageLifts_308_OpenDoorsExtLaunched()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_308()
  l0 = self.box_S10M030_ManageLifts_308
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|425569607", "425569607", "S10M030_Main", "box_S10M030_ManageLifts_308.OpenDoorsExtLaunched", "box_S10M030_ManageLifts_308.OpenDoorsElevator", l0, l0)
  l0:OpenDoorsElevator()
end
function export:f_box_QuickPlayerDeath_170_PlayerDead()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_229
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "PlayerKilled",
    id = "199950"
  }
  l0 = self.box_QuickPlayerDeath_170
  l1 = self.box_MissionController_v4_229
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1396892833", "1396892833", "S10M030_Main", "box_QuickPlayerDeath_170.PlayerDead", "box_MissionController_v4_229.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_MaterialController_188_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_206()
  l0 = self.box_MultipleOR_206
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|316422709", "316422709", "S10M030_Main", "box_MaterialController_188.ByIndexSet", "box_MultipleOR_206.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_S10M030_ManageLifts_144_MoveElevatorUpFinished()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_144()
  l0 = self.box_S10M030_ManageLifts_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1203723355", "1203723355", "S10M030_Main", "box_S10M030_ManageLifts_144.MoveElevatorUpFinished", "box_S10M030_ManageLifts_144.OpenDoorsExt", l0, l0)
  l0:OpenDoorsExt()
end
function export:f_box_S10M030_ManageLifts_144_OpenDoorsExtLaunched()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_144()
  l0 = self.box_S10M030_ManageLifts_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1870794784", "1870794784", "S10M030_Main", "box_S10M030_ManageLifts_144.OpenDoorsExtLaunched", "box_S10M030_ManageLifts_144.OpenDoorsElevator", l0, l0)
  l0:OpenDoorsElevator()
end
function export:f_box_CLOController_239_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_238
  l0.CLO = "9223372070937740368"
  l0 = self.box_CLOController_239
  l1 = self.box_CLOController_238
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|168777503", "168777503", "S10M030_Main", "box_CLOController_239.Activated", "box_CLOController_238.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListWriter_181_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_181
  self.List_PC_Screens_MeetingRoom = l0.Target
  l0 = self.box_ListWriter_184
  l0.Input = self.List_PC_Screens_Other
  l0.Data[0] = "9223372062906472496"
  l0.Data[1] = "9223372062906472570"
  l0.Data[2] = "9223372062906472566"
  l0.Data[3] = "9223372062906472562"
  l0.Data[4] = "9223372062906472560"
  l0.Data[5] = "9223372062906472554"
  l0.Data[6] = "9223372062906472558"
  l0.Data[7] = "9223372062906472556"
  l0.Data[8] = "9223372062906472564"
  l0.Data[9] = "9223372062906472568"
  l0 = self.box_ListWriter_181
  l1 = self.box_ListWriter_184
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1608360810", "1608360810", "S10M030_Main", "box_ListWriter_181.Added", "box_ListWriter_184.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_181_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_181
  self.List_PC_Screens_MeetingRoom = l0.Target
end
function export:f_box_ListWriter_181_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_181
  self.List_PC_Screens_MeetingRoom = l0.Target
end
function export:f_box_MissionLayer_v2_67_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2099407261"
  l0.Out = self.f_box_Get_Player_ID_79_Out
  l0 = self.box_MissionLayer_v2_67
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|313935626", "313935626", "S10M030_Main", "box_MissionLayer_v2_67.Loaded", "box_Get_Player_ID_79.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateMonitor_310_ArrestState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_312()
  l0 = self.box_AISquadStateMonitor_310
  l1 = self.box_MultipleOR_312
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|180333175", "180333175", "S10M030_Main", "box_AISquadStateMonitor_310.ArrestState", "box_MultipleOR_312.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_310_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_312()
  l0 = self.box_AISquadStateMonitor_310
  l1 = self.box_MultipleOR_312
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1985602795", "1985602795", "S10M030_Main", "box_AISquadStateMonitor_310.CombatState", "box_MultipleOR_312.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_310_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_213
  l0.SoundId = "soundbinary/1446928543.bnk"
  l0 = self.box_AISquadStateMonitor_310
  l1 = self.box_PlaySound_v2_213
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1790333298", "1790333298", "S10M030_Main", "box_AISquadStateMonitor_310.Enabled", "box_PlaySound_v2_213.Play", l0, l1)
  l1:Play()
end
function export:f_box_AISquadStateMonitor_310_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_315()
  l0 = self.box_AISquadStateMonitor_310
  l1 = self.box_MultipleOR_315
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|221820520", "221820520", "S10M030_Main", "box_AISquadStateMonitor_310.SearchState", "box_MultipleOR_315.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_310_VanishState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_315()
  l0 = self.box_AISquadStateMonitor_310
  l1 = self.box_MultipleOR_315
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1495537428", "1495537428", "S10M030_Main", "box_AISquadStateMonitor_310.VanishState", "box_MultipleOR_315.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_271_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_270()
  l0 = self.box_MultipleOR_270
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|424764640", "424764640", "S10M030_Main", "box_Simple_Node_271.Out", "box_MultipleOR_270.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_27_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_134()
  l0 = self.box_AISquadStateMonitor_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1238506688", "1238506688", "S10M030_Main", "box_Ordered_Output_27.Out", "box_AISquadStateMonitor_134.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_27_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AgentStateMonitor_V2_145()
  l0 = self.box_AgentStateMonitor_V2_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|451986071", "451986071", "S10M030_Main", "box_Ordered_Output_27.Out", "box_AgentStateMonitor_V2_145.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_251_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_259()
  l0 = self.box_MultipleOR_251
  l1 = self.box_AISquadStateMonitor_259
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|250390233", "250390233", "S10M030_Main", "box_MultipleOR_251.Out", "box_AISquadStateMonitor_259.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Compare_Boolean_v2_294_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = nil
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_347"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|675758164"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = self.f_box_Media_System_Custom_Broadcast_Controller_347_EndedAllCustomMediaBroadcasts
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1678624686", "1678624686", "S10M030_Main", "box_Compare_Boolean_v2_294.A_is_False", "box_Media_System_Custom_Broadcast_Controller_347.EndAllCustomMediaBroadcasts", clone, l0)
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_box_Compare_Boolean_v2_294_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_295()
  l0 = self.box_MultipleOR_295
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|367747944", "367747944", "S10M030_Main", "box_Compare_Boolean_v2_294.A_is_True", "box_MultipleOR_295.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MaterialController_186_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_205()
  l0 = self.box_MultipleOR_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1133676042", "1133676042", "S10M030_Main", "box_MaterialController_186.ByIndexSet", "box_MultipleOR_205.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_SetBoolean_v2_282_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_282
  self.Inside_FirstFloor_01 = l0.Target
end
function export:f_box_SetBoolean_v2_282_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_282
  self.Inside_FirstFloor_01 = l0.Target
end
function export:f_box_SetBoolean_v2_282_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_282
  self.Inside_FirstFloor_01 = l0.Target
end
function export:f_box_SetBoolean_v2_282_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_282
  self.Inside_FirstFloor_01 = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Inside_FirstFloor_02
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_287"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|288952140"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_287_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_282
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|196770011", "196770011", "S10M030_Main", "box_SetBoolean_v2_282.SetTrue", "box_Compare_Boolean_v2_287.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_282_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_282
  self.Inside_FirstFloor_01 = l0.Target
end
function export:f_box_HackableController_v2_300_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372056328054925"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1849770283"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_122_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_300
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|846198740", "846198740", "S10M030_Main", "box_HackableController_v2_300.Disabled", "box_InteractionScriptController_122.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AISquadStateMonitor_108_ArrestState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_102()
  l0 = self.box_AISquadStateMonitor_108
  l1 = self.box_MultipleOR_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|926525526", "926525526", "S10M030_Main", "box_AISquadStateMonitor_108.ArrestState", "box_MultipleOR_102.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_108_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_102()
  l0 = self.box_AISquadStateMonitor_108
  l1 = self.box_MultipleOR_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1085433548", "1085433548", "S10M030_Main", "box_AISquadStateMonitor_108.CombatState", "box_MultipleOR_102.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_108_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_249()
  l0 = self.box_AISquadStateMonitor_108
  l1 = self.box_AISquadStateMonitor_249
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1443176268", "1443176268", "S10M030_Main", "box_AISquadStateMonitor_108.Disabled", "box_AISquadStateMonitor_249.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AISquadStateMonitor_108_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_249()
  l0 = self.box_AISquadStateMonitor_108
  l1 = self.box_AISquadStateMonitor_249
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2039605630", "2039605630", "S10M030_Main", "box_AISquadStateMonitor_108.Enabled", "box_AISquadStateMonitor_249.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_269_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_265()
  l0 = self.box_MultipleOR_269
  l1 = self.box_TriggerMonitor_v2_265
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1075109943", "1075109943", "S10M030_Main", "box_MultipleOR_269.Out", "box_TriggerMonitor_v2_265.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AISquadRelationshipController_100_RelationshipSet()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_146
  l0.Affiliation = "AFI"
  l0 = self.box_AISquadRelationshipController_100
  l1 = self.box_AISquadStateController_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|400543549", "400543549", "S10M030_Main", "box_AISquadRelationshipController_100.RelationshipSet", "box_AISquadStateController_146.SetInTargetedSearch", l0, l1)
  l1:SetInTargetedSearch()
end
function export:f_box_Ordered_Output_178_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_227()
  l0 = self.box_InteractionScriptMonitor_v2_227
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|527526122", "527526122", "S10M030_Main", "box_Ordered_Output_178.Out", "box_InteractionScriptMonitor_v2_227.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_178_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_269()
  l0 = self.box_MultipleOR_269
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|951806769", "951806769", "S10M030_Main", "box_Ordered_Output_178.Out", "box_MultipleOR_269.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_312_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_318"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1717434130"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_318_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_318_Out_1
  l0 = self.box_MultipleOR_312
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|586005407", "586005407", "S10M030_Main", "box_MultipleOR_312.Out", "box_Ordered_Output_318.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_202_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372060432399865"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = 1
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|326821141"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_182_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|430774302", "430774302", "S10M030_Main", "box_Simple_Node_202.Out", "box_Media_System_Custom_Broadcast_Controller_182.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_ListWriter_84_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_84
  self.List_AFI_Outside_CLO = l0.Target
  self:OnEnter_box_MultipleOR_48()
  l1 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1722514612", "1722514612", "S10M030_Main", "box_ListWriter_84.Added", "box_MultipleOR_48.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_84_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_84
  self.List_AFI_Outside_CLO = l0.Target
end
function export:f_box_ListWriter_84_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_84
  self.List_AFI_Outside_CLO = l0.Target
end
function export:f_box_AI_Agent_Zone_325_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372056188763272"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_324"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|18178753"
  l0.Out = self.f_box_AI_Agent_Zone_324_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|184006982", "184006982", "S10M030_Main", "box_AI_Agent_Zone_325.Out", "box_AI_Agent_Zone_324.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_236_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|846767849"
  l0.Out = self.f_box_Simple_Node_33_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1765343207", "1765343207", "S10M030_Main", "box_Simple_Node_236.Out", "box_Simple_Node_33.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_220_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1178671818"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_190_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_190_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|134615591", "134615591", "S10M030_Main", "box_Ordered_Output_220.Out", "box_Ordered_Output_190.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_220_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_219()
  l0 = self.box_MultipleOR_219
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|173477391", "173477391", "S10M030_Main", "box_Ordered_Output_220.Out", "box_MultipleOR_219.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CinematicPrep_75_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_244()
  l0 = self.box_CinematicPrep_75
  l1 = self.box_MultipleOR_244
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2002414407", "2002414407", "S10M030_Main", "box_CinematicPrep_75.PostOut", "box_MultipleOR_244.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CLOController_169_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_169
  self.CLO_SAS_SpawnedCivilian = l0.UserID
  self:OnEnter_box_MultipleOR_168()
  l1 = self.box_MultipleOR_168
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|941702180", "941702180", "S10M030_Main", "box_CLOController_169.OnUserInPlace", "box_MultipleOR_168.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionMessageController_v3_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_171
  l0.Entity = "9223372056328054925"
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  l0 = self.box_MissionMessageController_v3_11
  l1 = self.box_Interact_Gameplay_171
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|751760887", "751760887", "S10M030_Main", "box_MissionMessageController_v3_11.Out", "box_Interact_Gameplay_171.Start", l0, l1)
  l1:Start()
end
function export:f_box_AISquadStateMonitor_134_CombatState()
  local l0
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_134()
  l0 = self.box_AISquadStateMonitor_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1279252618", "1279252618", "S10M030_Main", "box_AISquadStateMonitor_134.CombatState", "box_AISquadStateMonitor_134.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AISquadStateMonitor_134_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_125()
  l0 = self.box_AISquadStateMonitor_134
  l1 = self.box_OnceOnly_v3_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|759765266", "759765266", "S10M030_Main", "box_AISquadStateMonitor_134.Disabled", "box_OnceOnly_v3_125.In", l0, l1)
  l1:In(0)
end
function export:f_box_SetBoolean_v2_250_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_250
  self.AI_HMA_InCombat = l0.Target
end
function export:f_box_SetBoolean_v2_250_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_250
  self.AI_HMA_InCombat = l0.Target
end
function export:f_box_SetBoolean_v2_250_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_250
  self.AI_HMA_InCombat = l0.Target
end
function export:f_box_SetBoolean_v2_250_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_250
  self.AI_HMA_InCombat = l0.Target
end
function export:f_box_SetBoolean_v2_250_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_250
  self.AI_HMA_InCombat = l0.Target
end
function export:f_box_CLOController_242_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_242
  l1 = self.box_S10M030_ManageDoorEntrance_248
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1250571356", "1250571356", "S10M030_Main", "box_CLOController_242.Activated", "box_S10M030_ManageDoorEntrance_248.OpenDoorWithoutHack", l0, l1)
  l1:OpenDoorWithoutHack()
end
function export:f_box_CLOController_242_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_243
  l0.CLO = "9223372070937740368"
  l0 = self.box_CLOController_242
  l1 = self.box_CLOController_243
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2004571148", "2004571148", "S10M030_Main", "box_CLOController_242.OnUserInPlace", "box_CLOController_243.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Flying_Drone_Controller_37_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_EntityLoadingMonitor_278()
  l0 = self.box_EntityLoadingMonitor_278
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|67044664", "67044664", "S10M030_Main", "box_Flying_Drone_Controller_37.CalledBack", "box_EntityLoadingMonitor_278.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CinematicPrep_66_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1252847325"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_93_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_93_Out_1
  l0 = self.box_CinematicPrep_66
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|987970965", "987970965", "S10M030_Main", "box_CinematicPrep_66.PostOut", "box_Ordered_Output_93.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_61_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|59464874"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_138_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_138_Out_1
  l0 = self.box_CinematicPrep_61
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|953781442", "953781442", "S10M030_Main", "box_CinematicPrep_61.PostOut", "box_Ordered_Output_138.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_219_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_219
  l1 = self.box_OnceOnly_v3_218
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|631337831", "631337831", "S10M030_Main", "box_MultipleOR_219.Out", "box_OnceOnly_v3_218.In", l0, l1)
  l1:In(0)
end
function export:f_box_S10M030_ManageDoorEntrance_13_DoorClosed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372048359054636"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_263"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|324367330"
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
  l0.Out = self.f_box_MoveableEntityController_263_Out
  l0 = self.box_S10M030_ManageDoorEntrance_13
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1017542979", "1017542979", "S10M030_Main", "box_S10M030_ManageDoorEntrance_13.DoorClosed", "box_MoveableEntityController_263.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_S10M030_ManageDoorEntrance_13_HackDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageDoorEntrance_13()
  l0 = self.box_S10M030_ManageDoorEntrance_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|834256864", "834256864", "S10M030_Main", "box_S10M030_ManageDoorEntrance_13.HackDisabled", "box_S10M030_ManageDoorEntrance_13.CloseDoor", l0, l0)
  l0:CloseDoor()
end
function export:f_box_MaterialController_197_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_210()
  l0 = self.box_MultipleOR_210
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|399858891", "399858891", "S10M030_Main", "box_MaterialController_197.ByIndexSet", "box_MultipleOR_210.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_SetBoolean_v2_277_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_277
  self.Inside_FirstFloor_01 = l0.Target
end
function export:f_box_SetBoolean_v2_277_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_277
  self.Inside_FirstFloor_01 = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Inside_FirstFloor_02
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_289"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1346579297"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_289_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_277
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1900382800", "1900382800", "S10M030_Main", "box_SetBoolean_v2_277.SetFalse", "box_Compare_Boolean_v2_289.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_277_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_277
  self.Inside_FirstFloor_01 = l0.Target
end
function export:f_box_SetBoolean_v2_277_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_277
  self.Inside_FirstFloor_01 = l0.Target
end
function export:f_box_SetBoolean_v2_277_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_277
  self.Inside_FirstFloor_01 = l0.Target
end
function export:f_box_MultipleOR_131_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_QuickPlayerDeath_170()
  l0 = self.box_MultipleOR_131
  l1 = self.box_QuickPlayerDeath_170
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1405377724", "1405377724", "S10M030_Main", "box_MultipleOR_131.Out", "box_QuickPlayerDeath_170.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MaterialController_201_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_204()
  l0 = self.box_MultipleOR_204
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|850299414", "850299414", "S10M030_Main", "box_MaterialController_201.ByIndexSet", "box_MultipleOR_204.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ListWriter_183_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_183
  self.List_PC_Screens_OpenSpace = l0.Target
  l0 = self.box_ListWriter_181
  l0.Input = self.List_PC_Screens_MeetingRoom
  l0.Data[0] = "9223372062906472536"
  l0.Data[1] = "9223372062906472540"
  l0.Data[2] = "9223372062906472548"
  l0.Data[3] = "9223372062906472546"
  l0.Data[4] = "9223372062906472542"
  l0.Data[5] = "9223372062906472534"
  l0.Data[6] = "9223372062906472552"
  l0.Data[7] = "9223372062906472544"
  l0.Data[8] = "9223372062906472538"
  l0.Data[9] = "9223372062906472550"
  l0 = self.box_ListWriter_183
  l1 = self.box_ListWriter_181
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|461222443", "461222443", "S10M030_Main", "box_ListWriter_183.Added", "box_ListWriter_181.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_183_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_183
  self.List_PC_Screens_OpenSpace = l0.Target
end
function export:f_box_ListWriter_183_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_183
  self.List_PC_Screens_OpenSpace = l0.Target
end
function export:f_box_CinematicPrep_97_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372059682170185"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = "9223372067098843107"
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1113394993"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_73_Out
  l0 = self.box_CinematicPrep_97
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1741046008", "1741046008", "S10M030_Main", "box_CinematicPrep_97.PreOut", "box_Cinema_Zone_Cleanup_73.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_Standalone_Loader_Controller_82_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_36()
  l0 = self.box_Standalone_Loader_Controller_82
  l1 = self.box_Multiple_AND_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|811325366", "811325366", "S10M030_Main", "box_Standalone_Loader_Controller_82.Loaded", "box_Multiple_AND_36.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Standalone_Loader_Controller_82_LoadingStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_Standalone_Loader_Controller_82
  l1 = self.box_S10M030_ManageLifts_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|223133100", "223133100", "S10M030_Main", "box_Standalone_Loader_Controller_82.LoadingStarted", "box_S10M030_ManageLifts_52.MoveElevatorUp", l0, l1)
  l1:MoveElevatorUp()
end
function export:f_box_Toy_Car_Controller_47_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Flying_Drone_Controller_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1606075466"
  l0.CalledBack = self.f_box_Flying_Drone_Controller_37_CalledBack
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|532167427", "532167427", "S10M030_Main", "box_Toy_Car_Controller_47.CalledBack", "box_Flying_Drone_Controller_37.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_AI_Agent_Zone_327_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Restore_Mission_SubObjectives_254
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective011",
    item = "Objective",
    id = "693234"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective010",
    item = "Objective",
    id = "355782"
  }
  l0.IncrementalObjectiveTotalSub1 = 1
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective020",
    item = "Objective",
    id = "395864"
  }
  l0.IncrementalObjectiveTotalSub2 = 1
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M030.Objectives.Objective030",
    item = "Objective",
    id = "395865"
  }
  l0.IncrementalObjectiveTotalSub3 = 1
  l0.AutoHideObjective = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|315913656", "315913656", "S10M030_Main", "box_AI_Agent_Zone_327.Out", "box_Restore_Mission_SubObjectives_254.Restore", clone, l0)
  l0:Restore()
end
function export:f_box_Restore_Mission_SubObjectives_255_Restored()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_61
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Restore_Mission_SubObjectives_255
  l1 = self.box_CinematicPrep_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1293751335", "1293751335", "S10M030_Main", "box_Restore_Mission_SubObjectives_255.Restored", "box_CinematicPrep_61.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_AI_Agent_Zone_157_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_155
  l0.Input = self.List_AFI_Outside_CLO
  l0.Data[0] = "9223372049376433200"
  l0.Data[1] = "9223372049376433199"
  l0.Data[2] = "9223372055641097967"
  l0.Data[3] = "9223372049376433207"
  l0.Data[4] = "9223372049376433206"
  l0.Data[5] = "9223372070937739860"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|414410333", "414410333", "S10M030_Main", "box_AI_Agent_Zone_157.Out", "box_ListWriter_155.Add", clone, l0)
  l0:Add()
end
function export:f_box_AISquadStateController_161_TargetedSearchSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_177()
  l0 = self.box_AISquadStateController_161
  l1 = self.box_MultipleOR_177
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1671876688", "1671876688", "S10M030_Main", "box_AISquadStateController_161.TargetedSearchSet", "box_MultipleOR_177.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOController_275_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_173()
  l0 = self.box_CLOController_275
  l1 = self.box_MultipleOR_173
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2129284974", "2129284974", "S10M030_Main", "box_CLOController_275.Deactivated", "box_MultipleOR_173.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_InteractionScriptController_123_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_112
  l0.PGTMissionArea = "9223372047375740545"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2011989600", "2011989600", "S10M030_Main", "box_InteractionScriptController_123.Disabled", "box_PGTController_v2_112.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_318_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_313()
  l0 = self.box_OnceOnly_v3_313
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|759634448", "759634448", "S10M030_Main", "box_Ordered_Output_318.Out", "box_OnceOnly_v3_313.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_318_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_316()
  l0 = self.box_OnceOnly_v3_316
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1334132255", "1334132255", "S10M030_Main", "box_Ordered_Output_318.Out", "box_OnceOnly_v3_316.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Standalone_Loader_Controller_137_LoadingStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_Standalone_Loader_Controller_137
  l1 = self.box_S10M030_ManageLifts_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|429886323", "429886323", "S10M030_Main", "box_Standalone_Loader_Controller_137.LoadingStarted", "box_S10M030_ManageLifts_7.MoveElevatorDown", l0, l1)
  l1:MoveElevatorDown()
end
function export:f_box_Standalone_Loader_Controller_137_PreviousZoneUnloaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_128()
  l0 = self.box_Standalone_Loader_Controller_137
  l1 = self.box_Multiple_AND_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|28354174", "28354174", "S10M030_Main", "box_Standalone_Loader_Controller_137.PreviousZoneUnloaded", "box_Multiple_AND_128.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Simple_Node_212_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_183
  l0.Input = self.List_PC_Screens_OpenSpace
  l0.Data[0] = "9223372062906472522"
  l0.Data[1] = "9223372062906472498"
  l0.Data[2] = "9223372062906472506"
  l0.Data[3] = "9223372062906472572"
  l0.Data[4] = "9223372062906472514"
  l0.Data[5] = "9223372062906472524"
  l0.Data[6] = "9223372062906472512"
  l0.Data[7] = "9223372062906472510"
  l0.Data[8] = "9223372062906472502"
  l0.Data[9] = "9223372062906472530"
  l0.Data[10] = "9223372062906472532"
  l0.Data[11] = "9223372062906472520"
  l0.Data[12] = "9223372062906472518"
  l0.Data[13] = "9223372062906472516"
  l0.Data[14] = "9223372062906472508"
  l0.Data[15] = "9223372062906472504"
  l0.Data[16] = "9223372062906472528"
  l0.Data[17] = "9223372062906472526"
  l0.Data[18] = "9223372070584509169"
  l0.Data[19] = "9223372070584509177"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|985630858", "985630858", "S10M030_Main", "box_Simple_Node_212.Out", "box_ListWriter_183.Add", clone, l0)
  l0:Add()
end
function export:f_box_OnceOnly_v3_55_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_83()
  l0 = self.box_OnceOnly_v3_55
  l1 = self.box_Multiple_AND_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|402781103", "402781103", "S10M030_Main", "box_OnceOnly_v3_55.Out", "box_Multiple_AND_83.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_HackableController_v2_298_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372051430677101"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = nil
  l0.RestrictParking = 0
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = "CivilianDensity.9223372048779320679"
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = 0
  l0.RestrictAnimal = 0
  l0.RestrictRobot = 0
  l0.RestrictRoadVehicle = 0
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_305"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|211402699"
  l0.Out = self.f_box_Lanes_Restrictions_Control_305_Out
  l0 = self.box_HackableController_v2_298
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1330840254", "1330840254", "S10M030_Main", "box_HackableController_v2_298.Disabled", "box_Lanes_Restrictions_Control_305.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_336_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_335
  l0.CLO = "9223372069235913635"
  l0 = self.box_CLOController_336
  l1 = self.box_CLOController_335
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1801385157", "1801385157", "S10M030_Main", "box_CLOController_336.Activated", "box_CLOController_335.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_336_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_338
  l0.CLO = "9223372052502345228"
  l0 = self.box_CLOController_336
  l1 = self.box_CLOController_338
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|678293308", "678293308", "S10M030_Main", "box_CLOController_336.OnUserInPlace", "box_CLOController_338.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_MaterialController_196_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_207()
  l0 = self.box_MultipleOR_207
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|121054717", "121054717", "S10M030_Main", "box_MaterialController_196.ByIndexSet", "box_MultipleOR_207.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Proximity_Monitor_260_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_43
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372048359109537"
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
  l0 = self.box_Proximity_Monitor_260
  l1 = self.box_Escape_Gameplay_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1500267579", "1500267579", "S10M030_Main", "box_Proximity_Monitor_260.Enabled", "box_Escape_Gameplay_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_Proximity_Monitor_260_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S10M030_ManageDoorEntrance_261()
  l0 = self.box_Proximity_Monitor_260
  l1 = self.box_S10M030_ManageDoorEntrance_261
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|979715736", "979715736", "S10M030_Main", "box_Proximity_Monitor_260.ExitRadius", "box_S10M030_ManageDoorEntrance_261.CloseDoor", l0, l1)
  l1:CloseDoor()
end
function export:f_box_AI_Agent_Zone_81_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372056188763272"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|893321532"
  l0.Out = self.f_box_AI_Agent_Zone_53_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|191986147", "191986147", "S10M030_Main", "box_AI_Agent_Zone_81.Out", "box_AI_Agent_Zone_53.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlayDialog_v2_54_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_32()
  l0 = self.box_PlayDialog_v2_54
  l1 = self.box_MissionZone_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2140617331", "2140617331", "S10M030_Main", "box_PlayDialog_v2_54.Started", "box_MissionZone_32.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_209_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_195
  l0.List = self.List_PC_Screens_MeetingRoom
  l0 = self.box_MultipleOR_209
  l1 = self.box_ListForEach_195
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1369094407", "1369094407", "S10M030_Main", "box_MultipleOR_209.Out", "box_ListForEach_195.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_MissionMessageController_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v4_292
  l0.PawnList = self.List_CLO_SAS_SpawnedCivilian
  l0 = self.box_MissionMessageController_v3_5
  l1 = self.box_PawnHealthMonitor_v4_292
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1237465234", "1237465234", "S10M030_Main", "box_MissionMessageController_v3_5.Out", "box_PawnHealthMonitor_v4_292.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PGTController_v2_112_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_340
  l0.CLO = "9223372052502345228"
  l0 = self.box_PGTController_v2_112
  l1 = self.box_CLOController_340
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|861608404", "861608404", "S10M030_Main", "box_PGTController_v2_112.AllSpawned", "box_CLOController_340.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PGTController_v2_112_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_94()
  l0 = self.box_PGTController_v2_112
  l1 = self.box_S10M030_ManageLifts_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|368952404", "368952404", "S10M030_Main", "box_PGTController_v2_112.Started", "box_S10M030_ManageLifts_94.CloseDoorsExt", l0, l1)
  l1:CloseDoorsExt()
end
function export:f_box_Simple_Node_174_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|933553229"
  l0.Out = self.f_box_Simple_Node_80_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|289674431", "289674431", "S10M030_Main", "box_Simple_Node_174.Out", "box_Simple_Node_80.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_343_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_164
  l0.Input = self.List_CLO_SAS
  l0.Data[0] = "9223372057989307908"
  l0.Data[1] = "9223372053562781812"
  l0.Data[2] = "9223372053562781814"
  l0.Data[3] = "9223372051576167809"
  l0.Data[4] = "9223372051576167808"
  l0.Data[5] = "9223372053562781815"
  l0.Data[6] = "9223372053562781816"
  l0.Data[7] = "9223372051576167811"
  l0.Data[8] = "9223372051576167810"
  l0.Data[9] = "9223372053562781809"
  l0.Data[10] = "9223372053562781817"
  l0.Data[11] = "9223372053562781818"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|505733490", "505733490", "S10M030_Main", "box_Ordered_Output_343.Out", "box_ListWriter_164.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_343_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S10M030_ManageLifts_308()
  l0 = self.box_S10M030_ManageLifts_308
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1358180316", "1358180316", "S10M030_Main", "box_Ordered_Output_343.Out", "box_S10M030_ManageLifts_308.CloseDoorsExt", clone, l0)
  l0:CloseDoorsExt()
end
function export:f_box_MissionLayer_v2_76_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2061006714"
  l0.Out = self.f_box_Get_Player_ID_77_Out
  l0 = self.box_MissionLayer_v2_76
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2136650909", "2136650909", "S10M030_Main", "box_MissionLayer_v2_76.Loaded", "box_Get_Player_ID_77.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_115_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.CivilianKilled
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_294"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1437276500"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_294_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_294_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1196708505", "1196708505", "S10M030_Main", "box_Compare_Boolean_v2_115.A_is_False", "box_Compare_Boolean_v2_294.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_115_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_295()
  l0 = self.box_MultipleOR_295
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|963765969", "963765969", "S10M030_Main", "box_Compare_Boolean_v2_115.A_is_True", "box_MultipleOR_295.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_InteractionScriptController_122_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_107
  l0.PGTMissionArea = "9223372047375740545"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2041411585", "2041411585", "S10M030_Main", "box_InteractionScriptController_122.Disabled", "box_PGTController_v2_107.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_203_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_3
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048359003292"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|717108011", "717108011", "S10M030_Main", "box_Ordered_Output_203.Out", "box_PhoneCommunicationController_3.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_203_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_208()
  l0 = self.box_MultipleOR_208
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|905658167", "905658167", "S10M030_Main", "box_Ordered_Output_203.Out", "box_MultipleOR_208.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_AgentStateMonitor_V2_145_DetectionAlertFull()
  local l0
  self = self._graph
  self:OnEnter_box_AgentStateMonitor_V2_145()
  l0 = self.box_AgentStateMonitor_V2_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|48288197", "48288197", "S10M030_Main", "box_AgentStateMonitor_V2_145.DetectionAlertFull", "box_AgentStateMonitor_V2_145.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AgentStateMonitor_V2_145_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_125()
  l0 = self.box_AgentStateMonitor_V2_145
  l1 = self.box_OnceOnly_v3_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1395821931", "1395821931", "S10M030_Main", "box_AgentStateMonitor_V2_145.Disabled", "box_OnceOnly_v3_125.In", l0, l1)
  l1:In(1)
end
function export:f_box_S10M030_ManageDoorEntrance_261_DoorClosed()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageDoorEntrance_261()
  l0 = self.box_S10M030_ManageDoorEntrance_261
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|359312681", "359312681", "S10M030_Main", "box_S10M030_ManageDoorEntrance_261.DoorClosed", "box_S10M030_ManageDoorEntrance_261.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_S10M030_ManageDoorEntrance_261_HackDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372048359054636"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_262"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|266053057"
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
  l0 = self.box_S10M030_ManageDoorEntrance_261
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|204370408", "204370408", "S10M030_Main", "box_S10M030_ManageDoorEntrance_261.HackDisabled", "box_MoveableEntityController_262.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_ListForEach_272_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_272
  self.CLO_SAS = l0.Data
end
function export:f_box_ListForEach_272_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_272
  self.CLO_SAS = l0.Data
end
function export:f_box_ListForEach_272_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_272
  self.CLO_SAS = l0.Data
  l0 = self.box_CLOController_275
  l0.CLO = self.CLO_SAS
  l0 = self.box_ListForEach_272
  l1 = self.box_CLOController_275
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|680411247", "680411247", "S10M030_Main", "box_ListForEach_272.GotNext", "box_CLOController_275.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_ListForEach_272_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_272
  self.CLO_SAS = l0.Data
end
function export:f_box_ListForEach_272_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_272
  self.CLO_SAS = l0.Data
end
function export:f_box_Simple_Node_152_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_246
  l0.CLO = "9223372070937740364"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1919913489", "1919913489", "S10M030_Main", "box_Simple_Node_152.Out", "box_CLOController_246.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_OnceOnly_v3_313_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_42
  l0.SoundId = "soundbinary/2234803984.bnk"
  l0 = self.box_OnceOnly_v3_313
  l1 = self.box_PlaySound_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|819042966", "819042966", "S10M030_Main", "box_OnceOnly_v3_313.Out", "box_PlaySound_v2_42.Play", l0, l1)
  l1:Play()
end
function export:f_box_Simple_Node_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S10M030_ManageLifts_232()
  l0 = self.box_S10M030_ManageLifts_232
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|149779627", "149779627", "S10M030_Main", "box_Simple_Node_23.Out", "box_S10M030_ManageLifts_232.OpenDoorsExt", clone, l0)
  l0:OpenDoorsExt()
end
function export:f_box_CLOController_238_Activated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_55()
  l0 = self.box_CLOController_238
  l1 = self.box_OnceOnly_v3_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|347914042", "347914042", "S10M030_Main", "box_CLOController_238.Activated", "box_OnceOnly_v3_55.In", l0, l1)
  l1:In(0)
end
function export:f_box_SetBoolean_v2_284_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_284
  self.Inside_FirstFloor_02 = l0.Target
end
function export:f_box_SetBoolean_v2_284_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_284
  self.Inside_FirstFloor_02 = l0.Target
end
function export:f_box_SetBoolean_v2_284_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_284
  self.Inside_FirstFloor_02 = l0.Target
end
function export:f_box_SetBoolean_v2_284_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_284
  self.Inside_FirstFloor_02 = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Inside_FirstFloor_01
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_285"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1314165386"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_285_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_284
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1044300323", "1044300323", "S10M030_Main", "box_SetBoolean_v2_284.SetTrue", "box_Compare_Boolean_v2_285.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_284_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_284
  self.Inside_FirstFloor_02 = l0.Target
end
function export:f_box_Multiple_AND_70_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372048778496550"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|720988889"
  l0.Out = self.f_box_AI_Agent_Zone_34_Out
  l0 = self.box_Multiple_AND_70
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1026332472", "1026332472", "S10M030_Main", "box_Multiple_AND_70.Out", "box_AI_Agent_Zone_34.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Boolean_v2_231_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.CivilianKilled
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_296"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1316242168"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_296_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_296_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|312771704", "312771704", "S10M030_Main", "box_Compare_Boolean_v2_231.A_is_False", "box_Compare_Boolean_v2_296.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_231_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_307()
  l0 = self.box_MultipleOR_307
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|46441434", "46441434", "S10M030_Main", "box_Compare_Boolean_v2_231.A_is_True", "box_MultipleOR_307.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_ListForEach_65_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_65
  self.AFI_Entity_Outside_CLO = l0.Data
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2017872226"
  l0.Out = self.f_box_Simple_Node_50_Out
  l0 = self.box_ListForEach_65
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|512221460", "512221460", "S10M030_Main", "box_ListForEach_65.EndOfList", "box_Simple_Node_50.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_65_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_65
  self.AFI_Entity_Outside_CLO = l0.Data
end
function export:f_box_ListForEach_65_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_65
  self.AFI_Entity_Outside_CLO = l0.Data
  l0 = self.box_CLOController_18
  l0.CLO = self.AFI_Entity_Outside_CLO
  l0 = self.box_ListForEach_65
  l1 = self.box_CLOController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1584540953", "1584540953", "S10M030_Main", "box_ListForEach_65.GotNext", "box_CLOController_18.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListForEach_65_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_65
  self.AFI_Entity_Outside_CLO = l0.Data
end
function export:f_box_ListForEach_65_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_65
  self.AFI_Entity_Outside_CLO = l0.Data
end
function export:f_box_MultipleOR_64_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_63
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_64
  l1 = self.box_MissionCheckpointReach_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|818905468", "818905468", "S10M030_Main", "box_MultipleOR_64.Out", "box_MissionCheckpointReach_63.In", l0, l1)
  l1:In()
end
function export:f_box_S10M030_ManageLifts_30_OpenDoorsElevatorLaunched()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_30()
  l0 = self.box_S10M030_ManageLifts_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|950032788", "950032788", "S10M030_Main", "box_S10M030_ManageLifts_30.OpenDoorsElevatorLaunched", "box_S10M030_ManageLifts_30.OpenDoorsExt", l0, l0)
  l0:OpenDoorsExt()
end
function export:f_box_S10M030_ManageLifts_30_OpenDoorsExtLaunched()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AI_HMA_InCombat
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1898957167"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_231_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_231_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_S10M030_ManageLifts_30
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1666499943", "1666499943", "S10M030_Main", "box_S10M030_ManageLifts_30.OpenDoorsExtLaunched", "box_Compare_Boolean_v2_231.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_226_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_69()
  l0 = self.box_MissionMessageController_v3_226
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1774203094", "1774203094", "S10M030_Main", "box_MissionMessageController_v3_226.Out", "box_MultipleOR_69.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_58_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_58
  self.List_AFI_Outside_SpawnedAgent = l0.Target
  self:OnEnter_box_MultipleOR_48()
  l1 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1915612408", "1915612408", "S10M030_Main", "box_ListWriter_58.Added", "box_MultipleOR_48.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListWriter_58_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_58
  self.List_AFI_Outside_SpawnedAgent = l0.Target
end
function export:f_box_ListWriter_58_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_58
  self.List_AFI_Outside_SpawnedAgent = l0.Target
end
function export:f_box_ListWriter_155_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_155
  self.List_AFI_Outside_CLO = l0.Target
  self:OnEnter_box_MultipleOR_35()
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1611328772", "1611328772", "S10M030_Main", "box_ListWriter_155.Added", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_155_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_155
  self.List_AFI_Outside_CLO = l0.Target
end
function export:f_box_ListWriter_155_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_155
  self.List_AFI_Outside_CLO = l0.Target
end
function export:f_box_HackableController_v2_199_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_15()
  l0 = self.box_HackableController_v2_199
  l1 = self.box_Hackable_Monitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1152820654", "1152820654", "S10M030_Main", "box_HackableController_v2_199.Enabled", "box_Hackable_Monitor_15.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_136_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_136
  self.List_AFI_Outside_SpawnedAgent = l0.Target
  self:OnEnter_box_MultipleOR_35()
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1370092693", "1370092693", "S10M030_Main", "box_ListWriter_136.Added", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListWriter_136_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_136
  self.List_AFI_Outside_SpawnedAgent = l0.Target
end
function export:f_box_ListWriter_136_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_136
  self.List_AFI_Outside_SpawnedAgent = l0.Target
end
function export:f_box_S10M030_ManageDoorEntrance_247_DoorWithoutHackOpened()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_30()
  l0 = self.box_S10M030_ManageDoorEntrance_247
  l1 = self.box_S10M030_ManageLifts_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1122477839", "1122477839", "S10M030_Main", "box_S10M030_ManageDoorEntrance_247.DoorWithoutHackOpened", "box_S10M030_ManageLifts_30.OpenDoorsElevator", l0, l1)
  l1:OpenDoorsElevator()
end
function export:f_box_S10M030_ManageDoorEntrance_247_HackEnabled()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageDoorEntrance_247()
  l0 = self.box_S10M030_ManageDoorEntrance_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|565686579", "565686579", "S10M030_Main", "box_S10M030_ManageDoorEntrance_247.HackEnabled", "box_S10M030_ManageDoorEntrance_247.OpenDoorWithoutHack", l0, l0)
  l0:OpenDoorWithoutHack()
end
function export:f_box_CLOController_72_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_72
  self.CLO_SAS_SpawnedCivilian = l0.UserID
  l0 = self.box_ListWriter_74
  l0.Input = self.List_CLO_SAS_SpawnedCivilian
  l0.Data[0] = self.CLO_SAS_SpawnedCivilian
  l0 = self.box_CLOController_72
  l1 = self.box_ListWriter_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1085209592", "1085209592", "S10M030_Main", "box_CLOController_72.OnUserInPlace", "box_ListWriter_74.Add", l0, l1)
  l1:Add()
end
function export:f_box_CLOController_276_UnspawnedUser()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_173()
  l0 = self.box_CLOController_276
  l1 = self.box_MultipleOR_173
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|612092575", "612092575", "S10M030_Main", "box_CLOController_276.UnspawnedUser", "box_MultipleOR_173.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_208_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_191
  l0.List = self.List_PC_Screens_OpenSpace
  l0 = self.box_MultipleOR_208
  l1 = self.box_ListForEach_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1331898557", "1331898557", "S10M030_Main", "box_MultipleOR_208.Out", "box_ListForEach_191.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_MultipleOR_286_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_117()
  l0 = self.box_MultipleOR_286
  l1 = self.box_Interact_Gameplay_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|771039265", "771039265", "S10M030_Main", "box_MultipleOR_286.Out", "box_Interact_Gameplay_117.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_ListForEach_187_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_187
  self.Screen = l0.Data
  self:OnEnter_box_MultipleOR_207()
  l1 = self.box_MultipleOR_207
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1859890910", "1859890910", "S10M030_Main", "box_ListForEach_187.EndOfList", "box_MultipleOR_207.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListForEach_187_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_187
  self.Screen = l0.Data
end
function export:f_box_ListForEach_187_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_187
  self.Screen = l0.Data
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.Screen
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1394667931"
  l0.ByIndexSet = self.f_box_MaterialController_188_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0 = self.box_ListForEach_187
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1472006101", "1472006101", "S10M030_Main", "box_ListForEach_187.GotNext", "box_MaterialController_188.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_ListForEach_187_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_187
  self.Screen = l0.Data
end
function export:f_box_ListForEach_187_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_187
  self.Screen = l0.Data
end
function export:f_box_AI_Agent_Zone_96_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_84
  l0.Input = self.List_AFI_Outside_CLO
  l0.Data[0] = "9223372049376433200"
  l0.Data[1] = "9223372049376433199"
  l0.Data[2] = "9223372055641097967"
  l0.Data[3] = "9223372049376433207"
  l0.Data[4] = "9223372049376433206"
  l0.Data[5] = "9223372070937739860"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|950451843", "950451843", "S10M030_Main", "box_AI_Agent_Zone_96.Out", "box_ListWriter_84.Add", clone, l0)
  l0:Add()
end
function export:f_box_Simple_Node_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_239
  l0.CLO = "9223372070937740364"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|559583779", "559583779", "S10M030_Main", "box_Simple_Node_50.Out", "box_CLOController_239.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Interact_Gameplay_117_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_266"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1112139217"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_266_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_266_Out_1
  l0 = self.box_Interact_Gameplay_117
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1877084447", "1877084447", "S10M030_Main", "box_Interact_Gameplay_117.Interacted", "box_Ordered_Output_266.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_117_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_274"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|237760149"
  l0.Out = self.f_box_Simple_Node_274_Out
  l0 = self.box_Interact_Gameplay_117
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|331791521", "331791521", "S10M030_Main", "box_Interact_Gameplay_117.Stopped", "box_Simple_Node_274.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_89_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_90
  l0.HackableEntity = self.VR_AccessNode
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1373313766", "1373313766", "S10M030_Main", "box_InteractionScriptController_89.Disabled", "box_HackableController_v2_90.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_MultipleOR_69_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_68
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_69
  l1 = self.box_MissionCheckpointReach_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1800371788", "1800371788", "S10M030_Main", "box_MultipleOR_69.Out", "box_MissionCheckpointReach_68.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_158_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_QuickPlayerDeath_228()
  l0 = self.box_MultipleOR_158
  l1 = self.box_QuickPlayerDeath_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1353925061", "1353925061", "S10M030_Main", "box_MultipleOR_158.Out", "box_QuickPlayerDeath_228.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Simple_Node_172_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Proximity_Monitor_116
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372048359109537"
  l0.Radius = 100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|369639034", "369639034", "S10M030_Main", "box_Simple_Node_172.Out", "box_Proximity_Monitor_116.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_S10M030_ManageLifts_12_CloseDoorsExtLaunched()
  local l0
  self = self._graph
  self:OnEnter_box_S10M030_ManageLifts_12()
  l0 = self.box_S10M030_ManageLifts_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1610608184", "1610608184", "S10M030_Main", "box_S10M030_ManageLifts_12.CloseDoorsExtLaunched", "box_S10M030_ManageLifts_12.CloseDoorsElevator", l0, l0)
  l0:CloseDoorsElevator()
end
function export:f_box_S10M030_ManageLifts_12_DoorsElevatorClosed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_54
  l0.SoundId = "soundbinary/2050991331.bnk"
  l0 = self.box_S10M030_ManageLifts_12
  l1 = self.box_PlayDialog_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|7368528", "7368528", "S10M030_Main", "box_S10M030_ManageLifts_12.DoorsElevatorClosed", "box_PlayDialog_v2_54.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372056328054925"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1252933938"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_126_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1581784227", "1581784227", "S10M030_Main", "box_Get_Player_ID_77.Out", "box_InteractionScriptController_126.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Phys_Zone_Cleanup_252_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S10M030_ManageLifts_12()
  l0 = self.box_S10M030_ManageLifts_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1258299443", "1258299443", "S10M030_Main", "box_Phys_Zone_Cleanup_252.Out", "box_S10M030_ManageLifts_12.CloseDoorsExt", clone, l0)
  l0:CloseDoorsExt()
end
function export:f_box_PlaySequence_v5_101_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_86()
  l0 = self.box_PlaySequence_v5_101
  l1 = self.box_OnceOnly_v3_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1636352882", "1636352882", "S10M030_Main", "box_PlaySequence_v5_101.Finished", "box_OnceOnly_v3_86.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_101_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_39
  l0.SpawnPoint = "9223372059496877468"
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_PlaySequence_v5_101
  l1 = self.box_Teleport_To_SpawnPoint_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1628408235", "1628408235", "S10M030_Main", "box_PlaySequence_v5_101.Skipped", "box_Teleport_To_SpawnPoint_39.In", l0, l1)
  l1:In()
end
function export:f_box_MaterialController_194_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_208()
  l0 = self.box_MultipleOR_208
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1028600029", "1028600029", "S10M030_Main", "box_MaterialController_194.ByIndexSet", "box_MultipleOR_208.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_HackableController_v2_90_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372056328054925"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1711622732"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_123_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_90
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|700737095", "700737095", "S10M030_Main", "box_HackableController_v2_90.Disabled", "box_InteractionScriptController_123.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Get_Player_ID_79_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Y_Antenna
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2024549652"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_89_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1364391589", "1364391589", "S10M030_Main", "box_Get_Player_ID_79.Out", "box_InteractionScriptController_89.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PlaySound_v2_322_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateMonitor_310
  l0.Affiliation = "AFI"
  l0 = self.box_PlaySound_v2_322
  l1 = self.box_AISquadStateMonitor_310
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|108447246", "108447246", "S10M030_Main", "box_PlaySound_v2_322.Out", "box_AISquadStateMonitor_310.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AISquadRelationshipController_147_RelationshipSet()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_161
  l0.Affiliation = "AFI"
  l0 = self.box_AISquadRelationshipController_147
  l1 = self.box_AISquadStateController_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|119764150", "119764150", "S10M030_Main", "box_AISquadRelationshipController_147.RelationshipSet", "box_AISquadStateController_161.SetInTargetedSearch", l0, l1)
  l1:SetInTargetedSearch()
end
function export:f_box_Interact_Gameplay_133_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_Download_Gameplay_132
  l0.TargetEntity = "9223372058057899996"
  l0.LinkedObjective = "Objective"
  l0.Duration = 35
  l0.OverridedRadius = 90
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
  l0.DetectionOnCustomRatio = 1
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = -1
  l0.FleeOnDownloadDetected = 0
  l0.Affiliation = "AFI"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372073450305528"
  l0.AutoDetectDownload = 1
  l0 = self.box_Interact_Gameplay_133
  l1 = self.box_Download_Gameplay_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1296183938", "1296183938", "S10M030_Main", "box_Interact_Gameplay_133.Interacted", "box_Download_Gameplay_132.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_339_Activated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_91()
  l0 = self.box_CLOController_339
  l1 = self.box_Multiple_AND_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|804880940", "804880940", "S10M030_Main", "box_CLOController_339.Activated", "box_Multiple_AND_91.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOController_339_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_342
  l0.CLO = "9223372069235913635"
  l0 = self.box_CLOController_339
  l1 = self.box_CLOController_342
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|433552675", "433552675", "S10M030_Main", "box_CLOController_339.OnUserInPlace", "box_CLOController_342.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Lanes_Restrictions_Control_103_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_24
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346368"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1587158835", "1587158835", "S10M030_Main", "box_Lanes_Restrictions_Control_103.Out", "box_PhoneCommunicationController_24.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_MultipleOR_315_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_317"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|187919907"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_317_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_317_Out_1
  l0 = self.box_MultipleOR_315
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|397447329", "397447329", "S10M030_Main", "box_MultipleOR_315.Out", "box_Ordered_Output_317.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_200_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_200
  self.Screen = l0.Data
  self:OnEnter_box_MultipleOR_205()
  l1 = self.box_MultipleOR_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|270524039", "270524039", "S10M030_Main", "box_ListForEach_200.EndOfList", "box_MultipleOR_205.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListForEach_200_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_200
  self.Screen = l0.Data
end
function export:f_box_ListForEach_200_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_200
  self.Screen = l0.Data
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.Screen
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1656918878"
  l0.ByIndexSet = self.f_box_MaterialController_201_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0 = self.box_ListForEach_200
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|867487927", "867487927", "S10M030_Main", "box_ListForEach_200.GotNext", "box_MaterialController_201.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_ListForEach_200_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_200
  self.Screen = l0.Data
end
function export:f_box_ListForEach_200_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_200
  self.Screen = l0.Data
end
function export:f_box_OnceOnly_v3_218_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_322
  l0.SoundId = "soundbinary/840169351.bnk"
  l0 = self.box_OnceOnly_v3_218
  l1 = self.box_PlaySound_v2_322
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|862726377", "862726377", "S10M030_Main", "box_OnceOnly_v3_218.Out", "box_PlaySound_v2_322.Play", l0, l1)
  l1:Play()
end
function export:f_box_ReinforcementSystemController_v2_118_ReinforcingStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_118()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1627626716", "1627626716", "S10M030_Main", "box_ReinforcementSystemController_v2_118.ReinforcingStarted", "box_ReinforcementSystemController_v2_118.AddScriptedAgents", clone, l0)
  l0:AddScriptedAgents()
end
function export:f_box_ReinforcementSystemController_v2_118_ReinforcingStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_92()
  l0 = self.box_MultipleOR_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1815975847", "1815975847", "S10M030_Main", "box_ReinforcementSystemController_v2_118.ReinforcingStopped", "box_MultipleOR_92.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ReinforcementSystemController_v2_118_ScriptedAgentsAdopted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_118()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|1302552225", "1302552225", "S10M030_Main", "box_ReinforcementSystemController_v2_118.ScriptedAgentsAdopted", "box_ReinforcementSystemController_v2_118.StopReinforcing", clone, l0)
  l0:StopReinforcing()
end
function export:OnEnter_box_MultipleOR_173()
end
function export:OnEnter_box_S10M030_ManageLifts_94()
end
function export:OnEnter_box_Multiple_AND_36()
end
function export:OnEnter_box_MultipleOR_267()
end
function export:OnEnter_box_MultipleOR_244()
end
function export:OnEnter_box_MultipleOR_321()
end
function export:OnEnter_box_Timer_v2_279()
  local l0
  l0 = self.box_Timer_v2_279
  l0.Seconds = 3
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_49()
end
function export:OnEnter_box_AISquadStateMonitor_259()
  local l0
  l0 = self.box_AISquadStateMonitor_259
  l0.Affiliation = "AFI"
end
function export:OnEnter_box_EntityLoadingMonitor_278()
  local l0
  l0 = self.box_EntityLoadingMonitor_278
  l0.Entity = "9223372058057899996"
end
function export:OnEnter_box_TriggerMonitor_v2_265()
  local l0
  l0 = self.box_TriggerMonitor_v2_265
  l0.Trigger = "9223372065788648115"
end
function export:OnEnter_box_MultipleOR_35()
end
function export:OnEnter_box_S10M030_ManageLifts_6()
end
function export:OnEnter_box_MultipleOR_205()
end
function export:OnEnter_box_TriggerMonitor_v2_281()
  local l0
  l0 = self.box_TriggerMonitor_v2_281
  l0.Trigger = "9223372065788648631"
end
function export:OnEnter_box_S10M030_ManageLifts_175()
end
function export:OnEnter_box_Multiple_AND_128()
end
function export:OnEnter_box_OnceOnly_v3_316()
end
function export:OnEnter_box_MultipleOR_270()
end
function export:OnEnter_box_S10M030_ManageDoorEntrance_124()
end
function export:OnEnter_box_AISquadStateMonitor_253()
  local l0
  l0 = self.box_AISquadStateMonitor_253
  l0.Affiliation = "OPD"
end
function export:OnEnter_box_MultipleOR_102()
end
function export:OnEnter_box_S10M030_ManageDoorEntrance_16()
end
function export:OnEnter_box_QuickPlayerDeath_228()
end
function export:OnEnter_box_S10M030_ManageLifts_232()
end
function export:OnEnter_box_Multiple_AND_83()
end
function export:OnEnter_box_S10M030_ManageLifts_45()
end
function export:OnEnter_box_MultipleOR_165()
end
function export:OnEnter_box_MultipleOR_168()
end
function export:OnEnter_box_MultipleOR_207()
end
function export:OnEnter_box_LineOfSightMonitor_40()
  local l0
  l0 = self.box_LineOfSightMonitor_40
  l0.Target = "9223372058057899996"
end
function export:OnEnter_box_OnceOnly_v3_125()
end
function export:OnEnter_box_OnceOnly_v3_86()
end
function export:OnEnter_box_MultipleOR_92()
end
function export:OnEnter_box_InteractionScriptMonitor_v2_227()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_227
  l0.InteractionScriptEntity = "9223372056328054925"
end
function export:OnEnter_box_MultipleOR_288()
end
function export:OnEnter_box_MultipleOR_204()
end
function export:OnEnter_box_AISquadStateMonitor_249()
  local l0
  l0 = self.box_AISquadStateMonitor_249
  l0.Affiliation = "OPD"
end
function export:OnEnter_box_AISquadStateMonitor_179()
  local l0
  l0 = self.box_AISquadStateMonitor_179
  l0.Affiliation = "OPD"
end
function export:OnEnter_box_InteractionScriptMonitor_v2_166()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_166
  l0.InteractionScriptEntity = "9223372056328054925"
end
function export:OnEnter_box_Hackable_Monitor_15()
  local l0
  l0 = self.box_Hackable_Monitor_15
  l0.HackableEntity = self.VR_AccessNode
end
function export:OnEnter_box_MultipleOR_210()
end
function export:OnEnter_box_MissionZone_32()
  local l0
  l0 = self.box_MissionZone_32
  l0.MissionArea = "9223372048359109537"
  l0.MissionLayer = "S10M030_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_177()
end
function export:OnEnter_box_MultipleOR_258()
end
function export:OnEnter_box_MultipleOR_111()
end
function export:OnEnter_box_Mission_End_17()
  local l0
  l0 = self.box_Mission_End_17
  l0.Checkpoint = "CheckPoint_4"
  l0.MissionLayer = "S10M030_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_MultipleOR_295()
end
function export:OnEnter_box_Interact_Gameplay_44()
  local l0
  l0 = self.box_Interact_Gameplay_44
  l0.Entity = "9223372056328054925"
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_46()
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_180()
end
function export:OnEnter_box_Multiple_AND_91()
end
function export:OnEnter_box_MultipleOR_307()
end
function export:OnEnter_box_MultipleOR_206()
end
function export:OnEnter_box_MultipleOR_95()
end
function export:OnEnter_box_MultipleOR_48()
end
function export:OnEnter_box_AISquadStateMonitor_129()
  local l0
  l0 = self.box_AISquadStateMonitor_129
  l0.Affiliation = "AFI"
end
function export:OnEnter_box_S10M030_ManageLifts_308()
end
function export:OnEnter_box_QuickPlayerDeath_170()
end
function export:OnEnter_box_S10M030_ManageLifts_144()
end
function export:OnEnter_box_MultipleOR_251()
end
function export:OnEnter_box_AISquadStateMonitor_108()
  local l0
  l0 = self.box_AISquadStateMonitor_108
  l0.Affiliation = "AFI"
end
function export:OnEnter_box_MultipleOR_269()
end
function export:OnEnter_box_MultipleOR_312()
end
function export:OnEnter_box_AISquadStateMonitor_134()
  local l0
  l0 = self.box_AISquadStateMonitor_134
  l0.Affiliation = "AFI"
end
function export:OnEnter_box_MultipleOR_219()
end
function export:OnEnter_box_S10M030_ManageDoorEntrance_13()
end
function export:OnEnter_box_MultipleOR_131()
end
function export:OnEnter_box_OnceOnly_v3_55()
end
function export:OnEnter_box_MultipleOR_209()
end
function export:OnEnter_box_AgentStateMonitor_V2_145()
  local l0
  l0 = self.box_AgentStateMonitor_V2_145
  l0.NPCList = self.List_AFI_Outside_SpawnedAgent
end
function export:OnEnter_box_S10M030_ManageDoorEntrance_261()
end
function export:OnEnter_box_OnceOnly_v3_313()
end
function export:OnEnter_box_Multiple_AND_70()
end
function export:OnEnter_box_MultipleOR_64()
end
function export:OnEnter_box_S10M030_ManageLifts_30()
end
function export:OnEnter_box_S10M030_ManageDoorEntrance_247()
end
function export:OnEnter_box_MultipleOR_208()
end
function export:OnEnter_box_MultipleOR_286()
end
function export:OnEnter_box_Interact_Gameplay_117()
  local l0
  l0 = self.box_Interact_Gameplay_117
  l0.Entity = "9223372047820393255"
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
end
function export:OnEnter_box_MultipleOR_69()
end
function export:OnEnter_box_MultipleOR_158()
end
function export:OnEnter_box_S10M030_ManageLifts_12()
end
function export:OnEnter_box_MultipleOR_315()
end
function export:OnEnter_box_ReinforcementSystemController_v2_118()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "AFI"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372043023253487"
  l0.AgentList = self.List_AFI_Outside_SpawnedAgent
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\s10m030\\S10M030.domino|@S10M030_Main|2141256155"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_box_ReinforcementSystemController_v2_118_ReinforcingStarted
  l0.ReinforcingStopped = self.f_box_ReinforcementSystemController_v2_118_ReinforcingStopped
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = self.f_box_ReinforcementSystemController_v2_118_ScriptedAgentsAdopted
end
_compilerVersion = 4
