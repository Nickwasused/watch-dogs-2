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
  cbox:RegisterBox("domino/System/CameraLockController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LineOfSightMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PatrolPointMonitor_v2.lua")
  cbox:RegisterBox("domino/System/PawnHealthController.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v4.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PGTMonitor_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerStateController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemController_v2.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_DogThreatMonitor.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_ElevatorMonitor.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_SASDoorMonitor.debug.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/StandaloneLoaderController.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerInsideHma.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/ToyCarController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/UIController.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/2119643738.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1583828044.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1519946493.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1332793337.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1948305944.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3624643685.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2304476326.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/590872296.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/795041855.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S11M040_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main"
  self.PlayerEntity = nil
  self.AI_Arena_List = {}
  self.AI_Arena_CombatState = 0
  self.CLODog = nil
  self.CLODogs_List = {}
  self.EntityDog = nil
  self.EntitiesDogs_List = {}
  self.CLOReinforcementAI = nil
  self.CLOReinforcementAIs_List = {}
  self.EntityReinforcementAI = nil
  self.EntitiesReinforcementAIs_List = {}
  self.Pablo = nil
  self.AI_Backalley_List = {}
  self.AI_Arena_0 = nil
  self.AI_Arena_1 = nil
  self.AI_Arena_2 = nil
  self.AI_Arena_3 = nil
  self.AI_Arena_4 = nil
  self.AI_Arena_5 = nil
  self.AI_Arena_6 = nil
  self.AI_Arena_7 = nil
  self.Dog_BoilerRoom = nil
  self.Dog_Arena_1 = nil
  self.Dog_Arena_2 = nil
  self.Dog_Boiler_Room = nil
  self.Dog_Layout_1 = nil
  self.Dog_Layout_2 = nil
  self.Dog_Layout_3 = nil
  self.Collider = nil
  self.AI_BackalleyFelony_1 = nil
  self.AI_BackalleyFelony_2 = nil
  self.AI_BackalleyFelony_3 = nil
  self.AI_BackalleyFelony_4 = nil
  self.Cage_01 = 0
  self.Cage_02 = 0
  self.Cage_03 = 0
  self.Cage_04 = 0
  self.Talker_OutdoorLayout = nil
  self.CarcassHits = 0
  self.From_CheckPoint_1 = 0
  self.Sitara = nil
  self.Wrench = nil
  self.EnemiesToSpawn = 3
  self.Talker_MissionStart = nil
  self.CargoVehicle_Outdoor = nil
  self.DoorCage_List = {}
  self.FromCheckpoint2 = 0
  self.box_S11M040_ElevatorMonitor_117 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_ElevatorMonitor.debug.lua")
  l0 = self.box_S11M040_ElevatorMonitor_117
  l0._graph = self
  l0._name = "box_S11M040_ElevatorMonitor_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|374584"
  l0.WoodenDoor_Opened = DummyFunction
  l0.ElevatorMoving_LowPosition = DummyFunction
  l0.ElevatorMoved_LowPosition = DummyFunction
  l0.ElevatorMoved_HighPosition = DummyFunction
  l0.ElevatorMoving_HighPosition = DummyFunction
  l0.DoorsOpening_ColdRoom = DummyFunction
  l0.DoorsOpened_ColdRoom = DummyFunction
  l0.DoorsClosed_ColdRoom = DummyFunction
  l0.DoorOpening_BoilerRoom = self.f_box_S11M040_ElevatorMonitor_117_DoorOpening_BoilerRoom
  l0.DoorsOpened_BoilerRoom = DummyFunction
  l0.DoorsClosed_BoilerRoom = DummyFunction
  self.box_CLOController_249 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_249
  l0._graph = self
  l0._name = "box_CLOController_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|5505767"
  l0.Activated = self.f_box_CLOController_249_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Multiple_AND_10 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_10
  l0._graph = self
  l0._name = "box_Multiple_AND_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|15720766"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_10_Out
  self.box_CLOMonitor_188 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_188
  l0._graph = self
  l0._name = "box_CLOMonitor_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|45640985"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = DummyFunction
  l0.NotGotUser = DummyFunction
  l0.OnUserInPlace = DummyFunction
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = self.f_box_CLOMonitor_188_OnUserQuit
  l0.OnUserUnspawn = DummyFunction
  self.box_PGTController_v2_3 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_3
  l0._graph = self
  l0._name = "box_PGTController_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|56623849"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_3_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_InteractionScriptMonitor_v2_78 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_78
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|58154083"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InteractionScriptMonitor_v2_78_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = self.f_box_InteractionScriptMonitor_v2_78_AnimationStarted
  l0.AnimationFinished = DummyFunction
  self.box_AISquadStateMonitor_24 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_24
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|78045727"
  l0.Enabled = self.f_box_AISquadStateMonitor_24_Enabled
  l0.Disabled = self.f_box_AISquadStateMonitor_24_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_24_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_PhoneCommunicationController_17 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_17
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|91861697"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_AISquadStateMonitor_58 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_58
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|100191288"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_AISquadStateMonitor_58_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_58_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_Timer_v2_135 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_135
  l0._graph = self
  l0._name = "box_Timer_v2_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|128773449"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_135_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Mission_End_31 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_31
  l0._graph = self
  l0._name = "box_Mission_End_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|156907690"
  self.box_Timer_v2_150 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_150
  l0._graph = self
  l0._name = "box_Timer_v2_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|163259154"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_150_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialog_v2_54 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_54
  l0._graph = self
  l0._name = "box_PlayDialog_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|180177532"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_171 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_171
  l0._graph = self
  l0._name = "box_CLOController_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|185741282"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_171_OnUserInPlace
  self.box_PGTMonitor_v2_23 = cbox:CreateBox("domino/System/PGTMonitor_v2.lua")
  l0 = self.box_PGTMonitor_v2_23
  l0._graph = self
  l0._name = "box_PGTMonitor_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|200792670"
  l0._DynamicAnchors = {
    PGTCLO = 3,
    EntityID = 3,
    CLO = 9
  }
  l0.Enabled = self.f_box_PGTMonitor_v2_23_Enabled
  l0.Disabled = DummyFunction
  l0.PatrolsAssigned = DummyFunction
  l0.AllDead = self.f_box_PGTMonitor_v2_23_AllDead
  l0.GotEntityIDs = self.f_box_PGTMonitor_v2_23_GotEntityIDs
  self.box_Timer_v2_160 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_160
  l0._graph = self
  l0._name = "box_Timer_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|206990957"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_160_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_27 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_27
  l0._graph = self
  l0._name = "box_CLOController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|232262350"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_27_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_TriggerMonitor_v2_181 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_181
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|237813600"
  l0.Enabled = self.f_box_TriggerMonitor_v2_181_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_181_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_181_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_SetBoolean_v2_88 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_88
  l0._graph = self
  l0._name = "box_SetBoolean_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|239119550"
  l0.Out = self.f_box_SetBoolean_v2_88_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_88_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_88_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_88_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_88_SetFromBool
  self.box_AISquadStateController_288 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_288
  l0._graph = self
  l0._name = "box_AISquadStateController_288"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|272728487"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_MultipleOR_244 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_244
  l0._graph = self
  l0._name = "box_MultipleOR_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|273622011"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_244_Out
  self.box_CLOController_252 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_252
  l0._graph = self
  l0._name = "box_CLOController_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|281366364"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_252_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_162 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_162
  l0._graph = self
  l0._name = "box_CLOController_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|283956091"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_162_OnUserInPlace
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|284230712"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_MissionMessageController_v3_13 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_13
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|291047415"
  l0.Out = self.f_box_MissionMessageController_v3_13_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOMonitor_156 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_156
  l0._graph = self
  l0._name = "box_CLOMonitor_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|307157600"
  l0.Enabled = self.f_box_CLOMonitor_156_Enabled
  l0.Disabled = self.f_box_CLOMonitor_156_Disabled
  l0.GotUser = DummyFunction
  l0.NotGotUser = DummyFunction
  l0.OnUserInPlace = DummyFunction
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = self.f_box_CLOMonitor_156_OnProximityActionAnimBegin
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = self.f_box_CLOMonitor_156_OnUserQuit
  l0.OnUserUnspawn = DummyFunction
  self.box_MissionCheckpointReach_53 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_53
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|317213508"
  l0.Out = self.f_box_MissionCheckpointReach_53_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_InteractionScriptMonitor_v2_191 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_191
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|321714822"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_191_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = self.f_box_InteractionScriptMonitor_v2_191_AnimationStarted
  l0.AnimationFinished = DummyFunction
  self.box_Timer_v2_109 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_109
  l0._graph = self
  l0._name = "box_Timer_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|323881732"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_109_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_266 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_266
  l0._graph = self
  l0._name = "box_Timer_v2_266"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|338975299"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_266_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriter_230 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_230
  l0._graph = self
  l0._name = "box_ListWriter_230"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|382530778"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_230_Added
  l0.Removed = self.f_box_ListWriter_230_Removed
  l0.Out = self.f_box_ListWriter_230_Out
  self.box_PhoneCommunicationController_85 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_85
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|399660792"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_S11M040_DogThreatMonitor_166 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_DogThreatMonitor.debug.lua")
  l0 = self.box_S11M040_DogThreatMonitor_166
  l0._graph = self
  l0._name = "box_S11M040_DogThreatMonitor_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|404482386"
  l0.Enabled = self.f_box_S11M040_DogThreatMonitor_166_Enabled
  l0.Disabled = self.f_box_S11M040_DogThreatMonitor_166_Disabled
  self.box_CLOMonitor_14 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_14
  l0._graph = self
  l0._name = "box_CLOMonitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|413623232"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_CLOMonitor_14_Disabled
  l0.GotUser = DummyFunction
  l0.NotGotUser = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOMonitor_14_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_Timer_v2_30 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_30
  l0._graph = self
  l0._name = "box_Timer_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|417710767"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_30_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_S11M040_DogThreatMonitor_161 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_DogThreatMonitor.debug.lua")
  l0 = self.box_S11M040_DogThreatMonitor_161
  l0._graph = self
  l0._name = "box_S11M040_DogThreatMonitor_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|421550483"
  l0.Enabled = self.f_box_S11M040_DogThreatMonitor_161_Enabled
  l0.Disabled = self.f_box_S11M040_DogThreatMonitor_161_Disabled
  self.box_S11M040_ElevatorMonitor_52 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_ElevatorMonitor.debug.lua")
  l0 = self.box_S11M040_ElevatorMonitor_52
  l0._graph = self
  l0._name = "box_S11M040_ElevatorMonitor_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|423531531"
  l0.WoodenDoor_Opened = self.f_box_S11M040_ElevatorMonitor_52_WoodenDoor_Opened
  l0.ElevatorMoving_LowPosition = DummyFunction
  l0.ElevatorMoved_LowPosition = DummyFunction
  l0.ElevatorMoved_HighPosition = DummyFunction
  l0.ElevatorMoving_HighPosition = DummyFunction
  l0.DoorsOpening_ColdRoom = DummyFunction
  l0.DoorsOpened_ColdRoom = DummyFunction
  l0.DoorsClosed_ColdRoom = self.f_box_S11M040_ElevatorMonitor_52_DoorsClosed_ColdRoom
  l0.DoorOpening_BoilerRoom = DummyFunction
  l0.DoorsOpened_BoilerRoom = DummyFunction
  l0.DoorsClosed_BoilerRoom = DummyFunction
  self.box_OnceOnly_v3_92 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_92
  l0._graph = self
  l0._name = "box_OnceOnly_v3_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|438099061"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_92_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_283 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_283
  l0._graph = self
  l0._name = "box_MultipleOR_283"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|452488844"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_283_Out
  self.box_MultipleOR_130 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_130
  l0._graph = self
  l0._name = "box_MultipleOR_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|454009840"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_130_Out
  self.box_GetNPC_55 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_55
  l0._graph = self
  l0._name = "box_GetNPC_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|487478366"
  l0.GotNPCList = self.f_box_GetNPC_55_GotNPCList
  self.box_AISquadRelationshipController_223 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_223
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_223"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|500741964"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_223_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_Multiple_AND_217 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_217
  l0._graph = self
  l0._name = "box_Multiple_AND_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|510803806"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_217_Out
  self.box_InteractionScriptMonitor_v2_129 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_129
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|511004567"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = self.f_box_InteractionScriptMonitor_v2_129_AnimationFinished
  self.box_S11M040_SASDoorMonitor_90 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_SASDoorMonitor.debug.lua")
  l0 = self.box_S11M040_SASDoorMonitor_90
  l0._graph = self
  l0._name = "box_S11M040_SASDoorMonitor_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|516083198"
  l0.Started = self.f_box_S11M040_SASDoorMonitor_90_Started
  l0.HackEnabled = DummyFunction
  l0.HackDisabled = DummyFunction
  l0.MovedBackward = self.f_box_S11M040_SASDoorMonitor_90_MovedBackward
  l0.MovedForward = DummyFunction
  self.box_S11M040_ElevatorMonitor_143 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_ElevatorMonitor.debug.lua")
  l0 = self.box_S11M040_ElevatorMonitor_143
  l0._graph = self
  l0._name = "box_S11M040_ElevatorMonitor_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|517514172"
  l0.WoodenDoor_Opened = DummyFunction
  l0.ElevatorMoving_LowPosition = self.f_box_S11M040_ElevatorMonitor_143_ElevatorMoving_LowPosition
  l0.ElevatorMoved_LowPosition = DummyFunction
  l0.ElevatorMoved_HighPosition = DummyFunction
  l0.ElevatorMoving_HighPosition = DummyFunction
  l0.DoorsOpening_ColdRoom = DummyFunction
  l0.DoorsOpened_ColdRoom = DummyFunction
  l0.DoorsClosed_ColdRoom = DummyFunction
  l0.DoorOpening_BoilerRoom = DummyFunction
  l0.DoorsOpened_BoilerRoom = DummyFunction
  l0.DoorsClosed_BoilerRoom = DummyFunction
  self.box_PlaySound_v2_197 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_197
  l0._graph = self
  l0._name = "box_PlaySound_v2_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|530538203"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_34 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_34
  l0._graph = self
  l0._name = "box_Timer_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|566731442"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_34_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_S11M040_DogThreatMonitor_103 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_DogThreatMonitor.debug.lua")
  l0 = self.box_S11M040_DogThreatMonitor_103
  l0._graph = self
  l0._name = "box_S11M040_DogThreatMonitor_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|570763511"
  l0.Enabled = self.f_box_S11M040_DogThreatMonitor_103_Enabled
  l0.Disabled = self.f_box_S11M040_DogThreatMonitor_103_Disabled
  self.box_OnceOnly_v3_192 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_192
  l0._graph = self
  l0._name = "box_OnceOnly_v3_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|585880637"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_192_Out
  l0.ResetOut = DummyFunction
  self.box_TeleportPlayerInsideHma_64 = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self.box_TeleportPlayerInsideHma_64
  l0._graph = self
  l0._name = "box_TeleportPlayerInsideHma_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|609666577"
  l0.Out = DummyFunction
  l0.Done = self.f_box_TeleportPlayerInsideHma_64_Done
  self.box_PhoneCommunicationController_102 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_102
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|612106561"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_36 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_36
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|627152295"
  l0.Out = self.f_box_MissionCheckpointReach_36_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_LineOfSightMonitor_237 = cbox:CreateBox("domino/System/LineOfSightMonitor.lua")
  l0 = self.box_LineOfSightMonitor_237
  l0._graph = self
  l0._name = "box_LineOfSightMonitor_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|628031537"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LineOfSightMonitor_237_Disabled
  l0.LOSAcquired = DummyFunction
  l0.LOSLost = self.f_box_LineOfSightMonitor_237_LOSLost
  self.box_HackableController_v2_216 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_216
  l0._graph = self
  l0._name = "box_HackableController_v2_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|652624245"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_216_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_UIController_275 = cbox:CreateBox("domino/System/UIController.lua")
  l0 = self.box_UIController_275
  l0._graph = self
  l0._name = "box_UIController_275"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|657506983"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_UIController_275_Disabled
  l0.Out = DummyFunction
  l0.ContextEnabled = DummyFunction
  l0.ContextEnabledFail = DummyFunction
  l0.ContextDisabled = DummyFunction
  l0.ContextDisabledFail = DummyFunction
  self.box_MultipleOR_74 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_74
  l0._graph = self
  l0._name = "box_MultipleOR_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|664356987"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_74_Out
  self.box_CLOController_248 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_248
  l0._graph = self
  l0._name = "box_CLOController_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|665135243"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_248_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Interact_Gameplay_132 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_132
  l0._graph = self
  l0._name = "box_Interact_Gameplay_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|666627107"
  l0.Started = self.f_box_Interact_Gameplay_132_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_132_Interacted
  self.box_Escape_Gameplay_94 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_94
  l0._graph = self
  l0._name = "box_Escape_Gameplay_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|672127710"
  l0.Started = self.f_box_Escape_Gameplay_94_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_94_Escaped
  l0.LeftArea = DummyFunction
  self.box_AISquadStateController_173 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_173
  l0._graph = self
  l0._name = "box_AISquadStateController_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|700253503"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = self.f_box_AISquadStateController_173_TargetedSearchSet
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_PGTController_v2_120 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_120
  l0._graph = self
  l0._name = "box_PGTController_v2_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|712330235"
  l0.Started = DummyFunction
  l0.Aborted = self.f_box_PGTController_v2_120_Aborted
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_SetBoolean_v2_279 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_279
  l0._graph = self
  l0._name = "box_SetBoolean_v2_279"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|717308307"
  l0.Out = self.f_box_SetBoolean_v2_279_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_279_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_279_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_279_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_279_SetFromBool
  self.box_CinematicPrep_67 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_67
  l0._graph = self
  l0._name = "box_CinematicPrep_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|718441385"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_67_PostOut
  self.box_PatrolPointMonitor_v2_163 = cbox:CreateBox("domino/System/PatrolPointMonitor_v2.lua")
  l0 = self.box_PatrolPointMonitor_v2_163
  l0._graph = self
  l0._name = "box_PatrolPointMonitor_v2_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|719377998"
  l0.Enabled = self.f_box_PatrolPointMonitor_v2_163_Enabled
  l0.Disabled = self.f_box_PatrolPointMonitor_v2_163_Disabled
  l0.SpecificPointReached = DummyFunction
  l0.CurrentPointReached = DummyFunction
  l0.EndPointReached = self.f_box_PatrolPointMonitor_v2_163_EndPointReached
  self.box_AISquadStateMonitor_70 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_70
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|728088168"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_AISquadStateMonitor_70_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_70_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_Timer_v2_167 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_167
  l0._graph = self
  l0._name = "box_Timer_v2_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|731689459"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_167_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_273 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_273
  l0._graph = self
  l0._name = "box_Timer_v2_273"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|736734324"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_273_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AISquadRelationshipController_239 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_239
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|745681214"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_239_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_CinematicPrep_72 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_72
  l0._graph = self
  l0._name = "box_CinematicPrep_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|746591565"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_72_PostOut
  self.box_CinematicPrep_115 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_115
  l0._graph = self
  l0._name = "box_CinematicPrep_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|761893563"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_115_PostOut
  self.box_MissionMessageController_v3_51 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_51
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|762739766"
  l0.Out = self.f_box_MissionMessageController_v3_51_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_261 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_261
  l0._graph = self
  l0._name = "box_MultipleOR_261"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|773255243"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_261_Out
  self.box_AISquadRelationshipController_62 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_62
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|776370357"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_62_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_OnceOnly_v3_26 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_26
  l0._graph = self
  l0._name = "box_OnceOnly_v3_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|782289305"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_26_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_37 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_37
  l0._graph = self
  l0._name = "box_PlaySequence_v5_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|795129946"
  l0._DynamicAnchors = {
    SPOut = {"CloseDoor"}
  }
  l0.Started = self.f_box_PlaySequence_v5_37_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_37_Finished
  l0.SPOut.CloseDoor = self.f_box_PlaySequence_v5_37_SPOut__CloseDoor_
  self.box_AISquadRelationshipController_238 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_238
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|820116870"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_238_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_HackableController_v2_152 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_152
  l0._graph = self
  l0._name = "box_HackableController_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|824963210"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_152_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_1 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_1
  l0._graph = self
  l0._name = "box_CLOController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|829690669"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_1_OnUserInPlace
  self.box_CLOMonitor_214 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_214
  l0._graph = self
  l0._name = "box_CLOMonitor_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|853216020"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_CLOMonitor_214_Disabled
  l0.GotUser = self.f_box_CLOMonitor_214_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_214_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_214_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_PlayDialog_v2_105 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_105
  l0._graph = self
  l0._name = "box_PlayDialog_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|899737144"
  l0.Started = self.f_box_PlayDialog_v2_105_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_111 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_111
  l0._graph = self
  l0._name = "box_MissionLayer_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|909584831"
  l0.Loaded = self.f_box_MissionLayer_v2_111_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_TriggerMonitor_v2_222 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_222
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|944999657"
  l0.Enabled = self.f_box_TriggerMonitor_v2_222_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_222_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_222_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_ListWriter_134 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_134
  l0._graph = self
  l0._name = "box_ListWriter_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|947830384"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_134_Added
  l0.Removed = self.f_box_ListWriter_134_Removed
  l0.Out = self.f_box_ListWriter_134_Out
  self.box_S11M040_ElevatorMonitor_119 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_ElevatorMonitor.debug.lua")
  l0 = self.box_S11M040_ElevatorMonitor_119
  l0._graph = self
  l0._name = "box_S11M040_ElevatorMonitor_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|968834612"
  l0.WoodenDoor_Opened = DummyFunction
  l0.ElevatorMoving_LowPosition = DummyFunction
  l0.ElevatorMoved_LowPosition = DummyFunction
  l0.ElevatorMoved_HighPosition = DummyFunction
  l0.ElevatorMoving_HighPosition = DummyFunction
  l0.DoorsOpening_ColdRoom = DummyFunction
  l0.DoorsOpened_ColdRoom = DummyFunction
  l0.DoorsClosed_ColdRoom = DummyFunction
  l0.DoorOpening_BoilerRoom = DummyFunction
  l0.DoorsOpened_BoilerRoom = DummyFunction
  l0.DoorsClosed_BoilerRoom = DummyFunction
  self.box_UIController_278 = cbox:CreateBox("domino/System/UIController.lua")
  l0 = self.box_UIController_278
  l0._graph = self
  l0._name = "box_UIController_278"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|971993625"
  l0.Enabled = self.f_box_UIController_278_Enabled
  l0.Disabled = DummyFunction
  l0.Out = DummyFunction
  l0.ContextEnabled = DummyFunction
  l0.ContextEnabledFail = DummyFunction
  l0.ContextDisabled = DummyFunction
  l0.ContextDisabledFail = DummyFunction
  self.box_MultipleOR_200 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_200
  l0._graph = self
  l0._name = "box_MultipleOR_200"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|973800309"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_200_Out
  self.box_AISquadStateController_287 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_287
  l0._graph = self
  l0._name = "box_AISquadStateController_287"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|979836828"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = self.f_box_AISquadStateController_287_SquadRemoved
  self.box_LineOfSightMonitor_233 = cbox:CreateBox("domino/System/LineOfSightMonitor.lua")
  l0 = self.box_LineOfSightMonitor_233
  l0._graph = self
  l0._name = "box_LineOfSightMonitor_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|990811806"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LineOfSightMonitor_233_Disabled
  l0.LOSAcquired = DummyFunction
  l0.LOSLost = self.f_box_LineOfSightMonitor_233_LOSLost
  self.box_CLOController_148 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_148
  l0._graph = self
  l0._name = "box_CLOController_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1001655810"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_148_OnUserInPlace
  self.box_S11M040_SASDoorMonitor_89 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_SASDoorMonitor.debug.lua")
  l0 = self.box_S11M040_SASDoorMonitor_89
  l0._graph = self
  l0._name = "box_S11M040_SASDoorMonitor_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1004731359"
  l0.Started = self.f_box_S11M040_SASDoorMonitor_89_Started
  l0.HackEnabled = DummyFunction
  l0.HackDisabled = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.MovedForward = DummyFunction
  self.box_CLOController_253 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_253
  l0._graph = self
  l0._name = "box_CLOController_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1005677626"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_253_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_16 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_16
  l0._graph = self
  l0._name = "box_CLOController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1014057388"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_16_OnUserInPlace
  self.box_S11M040_ElevatorMonitor_149 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_ElevatorMonitor.debug.lua")
  l0 = self.box_S11M040_ElevatorMonitor_149
  l0._graph = self
  l0._name = "box_S11M040_ElevatorMonitor_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1023585442"
  l0.WoodenDoor_Opened = DummyFunction
  l0.ElevatorMoving_LowPosition = DummyFunction
  l0.ElevatorMoved_LowPosition = DummyFunction
  l0.ElevatorMoved_HighPosition = DummyFunction
  l0.ElevatorMoving_HighPosition = DummyFunction
  l0.DoorsOpening_ColdRoom = self.f_box_S11M040_ElevatorMonitor_149_DoorsOpening_ColdRoom
  l0.DoorsOpened_ColdRoom = DummyFunction
  l0.DoorsClosed_ColdRoom = DummyFunction
  l0.DoorOpening_BoilerRoom = DummyFunction
  l0.DoorsOpened_BoilerRoom = DummyFunction
  l0.DoorsClosed_BoilerRoom = DummyFunction
  self.box_PGTController_v2_2 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_2
  l0._graph = self
  l0._name = "box_PGTController_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1046255791"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_2_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_Standalone_Loader_Controller_126 = cbox:CreateBox("domino/System/StandaloneLoaderController.lua")
  l0 = self.box_Standalone_Loader_Controller_126
  l0._graph = self
  l0._name = "box_Standalone_Loader_Controller_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1050757336"
  l0.LoadingStarted = self.f_box_Standalone_Loader_Controller_126_LoadingStarted
  l0.Loaded = DummyFunction
  l0.PreviousZoneUnloaded = self.f_box_Standalone_Loader_Controller_126_PreviousZoneUnloaded
  self.box_CLOMonitor_219 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_219
  l0._graph = self
  l0._name = "box_CLOMonitor_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1053699802"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_219_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_219_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_219_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_CinematicPrep_83 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_83
  l0._graph = self
  l0._name = "box_CinematicPrep_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1059129796"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_83_PostOut
  self.box_CLOController_208 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_208
  l0._graph = self
  l0._name = "box_CLOController_208"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1059895989"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_245 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_245
  l0._graph = self
  l0._name = "box_MultipleOR_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1078258494"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_245_Out
  self.box_PlaySound_v2_158 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_158
  l0._graph = self
  l0._name = "box_PlaySound_v2_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1097977241"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_158_Started
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_265 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_265
  l0._graph = self
  l0._name = "box_PlayDialog_v2_265"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1101147152"
  l0.Started = self.f_box_PlayDialog_v2_265_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionZone_59 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_59
  l0._graph = self
  l0._name = "box_MissionZone_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1106498272"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZone_59_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_AISquadRelationshipController_108 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_108
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1122981377"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_108_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_AgentStateMonitor_V2_180 = cbox:CreateBox("domino/System/AgentStateMonitor_v2.lua")
  l0 = self.box_AgentStateMonitor_V2_180
  l0._graph = self
  l0._name = "box_AgentStateMonitor_V2_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1136541823"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_AgentStateMonitor_V2_180_Disabled
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
  l0.DetectionAlertFull = self.f_box_AgentStateMonitor_V2_180_DetectionAlertFull
  l0.IsDistracted = DummyFunction
  self.box_CLOController_136 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_136
  l0._graph = self
  l0._name = "box_CLOController_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1137271817"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_136_OnUserInPlace
  self.box_CinematicPrep_131 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_131
  l0._graph = self
  l0._name = "box_CinematicPrep_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1139008567"
  l0.PreOut = self.f_box_CinematicPrep_131_PreOut
  l0.PostOut = DummyFunction
  self.box_CLOController_125 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_125
  l0._graph = self
  l0._name = "box_CLOController_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1148563178"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_125_OnUserInPlace
  self.box_PGTController_v2_18 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_18
  l0._graph = self
  l0._name = "box_PGTController_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1148924088"
  l0.Started = DummyFunction
  l0.Aborted = self.f_box_PGTController_v2_18_Aborted
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_LineOfSightMonitor_234 = cbox:CreateBox("domino/System/LineOfSightMonitor.lua")
  l0 = self.box_LineOfSightMonitor_234
  l0._graph = self
  l0._name = "box_LineOfSightMonitor_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1149892512"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LineOfSightMonitor_234_Disabled
  l0.LOSAcquired = DummyFunction
  l0.LOSLost = self.f_box_LineOfSightMonitor_234_LOSLost
  self.box_Timer_v2_49 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_49
  l0._graph = self
  l0._name = "box_Timer_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1181781361"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_49_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_106 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_106
  l0._graph = self
  l0._name = "box_CLOController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1188031471"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_106_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlayDialog_v2_270 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_270
  l0._graph = self
  l0._name = "box_PlayDialog_v2_270"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1191691496"
  l0.Started = self.f_box_PlayDialog_v2_270_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_S11M040_ElevatorMonitor_69 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_ElevatorMonitor.debug.lua")
  l0 = self.box_S11M040_ElevatorMonitor_69
  l0._graph = self
  l0._name = "box_S11M040_ElevatorMonitor_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1197770578"
  l0.WoodenDoor_Opened = DummyFunction
  l0.ElevatorMoving_LowPosition = DummyFunction
  l0.ElevatorMoved_LowPosition = DummyFunction
  l0.ElevatorMoved_HighPosition = self.f_box_S11M040_ElevatorMonitor_69_ElevatorMoved_HighPosition
  l0.ElevatorMoving_HighPosition = self.f_box_S11M040_ElevatorMonitor_69_ElevatorMoving_HighPosition
  l0.DoorsOpening_ColdRoom = DummyFunction
  l0.DoorsOpened_ColdRoom = DummyFunction
  l0.DoorsClosed_ColdRoom = DummyFunction
  l0.DoorOpening_BoilerRoom = DummyFunction
  l0.DoorsOpened_BoilerRoom = DummyFunction
  l0.DoorsClosed_BoilerRoom = DummyFunction
  self.box_SetBoolean_v2_65 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_65
  l0._graph = self
  l0._name = "box_SetBoolean_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1200591180"
  l0.Out = self.f_box_SetBoolean_v2_65_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_65_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_65_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_65_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_65_SetFromBool
  self.box_CLOMonitor_226 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_226
  l0._graph = self
  l0._name = "box_CLOMonitor_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1205600266"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_CLOMonitor_226_Disabled
  l0.GotUser = self.f_box_CLOMonitor_226_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_226_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_226_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_Camera_Lock_Controller_229 = cbox:CreateBox("domino/System/CameraLockController.lua")
  l0 = self.box_Camera_Lock_Controller_229
  l0._graph = self
  l0._name = "box_Camera_Lock_Controller_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1209206492"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = self.f_box_Camera_Lock_Controller_229_Finished
  l0.Out = DummyFunction
  self.box_Standalone_Loader_Controller_4 = cbox:CreateBox("domino/System/StandaloneLoaderController.lua")
  l0 = self.box_Standalone_Loader_Controller_4
  l0._graph = self
  l0._name = "box_Standalone_Loader_Controller_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1212617677"
  l0.LoadingStarted = DummyFunction
  l0.Loaded = self.f_box_Standalone_Loader_Controller_4_Loaded
  l0.PreviousZoneUnloaded = DummyFunction
  self.box_Timer_v2_168 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_168
  l0._graph = self
  l0._name = "box_Timer_v2_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1244929922"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_168_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_154 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_154
  l0._graph = self
  l0._name = "box_CLOController_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1249107962"
  l0.Activated = self.f_box_CLOController_154_Activated
  l0.Deactivated = self.f_box_CLOController_154_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySequence_v5_113 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_113
  l0._graph = self
  l0._name = "box_PlaySequence_v5_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1289982777"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_113_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_113_Finished
  self.box_MultipleOR_263 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_263
  l0._graph = self
  l0._name = "box_MultipleOR_263"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1313994672"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_263_Out
  self.box_InteractionScriptMonitor_v2_33 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_33
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1323229800"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InteractionScriptMonitor_v2_33_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_33_InteractionFinished
  l0.AnimationStarted = self.f_box_InteractionScriptMonitor_v2_33_AnimationStarted
  l0.AnimationFinished = DummyFunction
  self.box_Neutralize_Gameplay_5 = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  l0 = self.box_Neutralize_Gameplay_5
  l0._graph = self
  l0._name = "box_Neutralize_Gameplay_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1340697291"
  l0.Started = self.f_box_Neutralize_Gameplay_5_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_Neutralize_Gameplay_5_Neutralized
  self.box_S11M040_DogThreatMonitor_96 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_DogThreatMonitor.debug.lua")
  l0 = self.box_S11M040_DogThreatMonitor_96
  l0._graph = self
  l0._name = "box_S11M040_DogThreatMonitor_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1351971095"
  l0.Enabled = self.f_box_S11M040_DogThreatMonitor_96_Enabled
  l0.Disabled = self.f_box_S11M040_DogThreatMonitor_96_Disabled
  self.box_OnceOnly_v3_225 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_225
  l0._graph = self
  l0._name = "box_OnceOnly_v3_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1399311784"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_225_Out
  l0.ResetOut = DummyFunction
  self.box_ListWriter_155 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_155
  l0._graph = self
  l0._name = "box_ListWriter_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1409603616"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_155_Added
  l0.Removed = self.f_box_ListWriter_155_Removed
  l0.Out = self.f_box_ListWriter_155_Out
  self.box_OnceOnly_v3_231 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_231
  l0._graph = self
  l0._name = "box_OnceOnly_v3_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1424345799"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_231_Out
  l0.ResetOut = DummyFunction
  self.box_S11M040_SASDoorMonitor_76 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_SASDoorMonitor.debug.lua")
  l0 = self.box_S11M040_SASDoorMonitor_76
  l0._graph = self
  l0._name = "box_S11M040_SASDoorMonitor_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1430731583"
  l0.Started = self.f_box_S11M040_SASDoorMonitor_76_Started
  l0.HackEnabled = self.f_box_S11M040_SASDoorMonitor_76_HackEnabled
  l0.HackDisabled = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.MovedForward = DummyFunction
  self.box_S11M040_ElevatorMonitor_116 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_ElevatorMonitor.debug.lua")
  l0 = self.box_S11M040_ElevatorMonitor_116
  l0._graph = self
  l0._name = "box_S11M040_ElevatorMonitor_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1444016512"
  l0.WoodenDoor_Opened = DummyFunction
  l0.ElevatorMoving_LowPosition = DummyFunction
  l0.ElevatorMoved_LowPosition = DummyFunction
  l0.ElevatorMoved_HighPosition = DummyFunction
  l0.ElevatorMoving_HighPosition = DummyFunction
  l0.DoorsOpening_ColdRoom = self.f_box_S11M040_ElevatorMonitor_116_DoorsOpening_ColdRoom
  l0.DoorsOpened_ColdRoom = DummyFunction
  l0.DoorsClosed_ColdRoom = DummyFunction
  l0.DoorOpening_BoilerRoom = DummyFunction
  l0.DoorsOpened_BoilerRoom = DummyFunction
  l0.DoorsClosed_BoilerRoom = DummyFunction
  self.box_OnceOnly_v3_84 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_84
  l0._graph = self
  l0._name = "box_OnceOnly_v3_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1462503888"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_84_Out
  l0.ResetOut = DummyFunction
  self.box_CLOMonitor_122 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_122
  l0._graph = self
  l0._name = "box_CLOMonitor_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1464033533"
  l0.Enabled = self.f_box_CLOMonitor_122_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = DummyFunction
  l0.NotGotUser = DummyFunction
  l0.OnUserInPlace = DummyFunction
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = self.f_box_CLOMonitor_122_OnUserQuit
  l0.OnUserUnspawn = DummyFunction
  self.box_MultipleOR_46 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_46
  l0._graph = self
  l0._name = "box_MultipleOR_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1464882050"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_46_Out
  self.box_MultipleOR_44 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_44
  l0._graph = self
  l0._name = "box_MultipleOR_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1472110486"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_44_Out
  self.box_PawnHealthMonitor_v4_232 = cbox:CreateBox("domino/System/PawnHealthMonitor_v4.lua")
  l0 = self.box_PawnHealthMonitor_v4_232
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v4_232"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1475391891"
  l0.Enabled = self.f_box_PawnHealthMonitor_v4_232_Enabled
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.DamageReceived = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v4_232_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_CLOController_196 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_196
  l0._graph = self
  l0._name = "box_CLOController_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1479602174"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_196_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_HackableController_v2_228 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_228
  l0._graph = self
  l0._name = "box_HackableController_v2_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1516392555"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_228_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_93 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_93
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1526049060"
  l0.Out = self.f_box_MissionMessageController_v3_93_Out
  l0.MessageCompleted = DummyFunction
  self.box_S11M040_ElevatorMonitor_157 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_ElevatorMonitor.debug.lua")
  l0 = self.box_S11M040_ElevatorMonitor_157
  l0._graph = self
  l0._name = "box_S11M040_ElevatorMonitor_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1528535375"
  l0.WoodenDoor_Opened = DummyFunction
  l0.ElevatorMoving_LowPosition = DummyFunction
  l0.ElevatorMoved_LowPosition = DummyFunction
  l0.ElevatorMoved_HighPosition = DummyFunction
  l0.ElevatorMoving_HighPosition = DummyFunction
  l0.DoorsOpening_ColdRoom = DummyFunction
  l0.DoorsOpened_ColdRoom = DummyFunction
  l0.DoorsClosed_ColdRoom = DummyFunction
  l0.DoorOpening_BoilerRoom = DummyFunction
  l0.DoorsOpened_BoilerRoom = DummyFunction
  l0.DoorsClosed_BoilerRoom = self.f_box_S11M040_ElevatorMonitor_157_DoorsClosed_BoilerRoom
  self.box_MissionLayer_v2_104 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_104
  l0._graph = self
  l0._name = "box_MissionLayer_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1534387202"
  l0.Loaded = self.f_box_MissionLayer_v2_104_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_95 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_95
  l0._graph = self
  l0._name = "box_MissionLayer_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1535686334"
  l0.Loaded = self.f_box_MissionLayer_v2_95_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_UIController_272 = cbox:CreateBox("domino/System/UIController.lua")
  l0 = self.box_UIController_272
  l0._graph = self
  l0._name = "box_UIController_272"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1537451147"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Out = DummyFunction
  l0.ContextEnabled = DummyFunction
  l0.ContextEnabledFail = DummyFunction
  l0.ContextDisabled = self.f_box_UIController_272_ContextDisabled
  l0.ContextDisabledFail = DummyFunction
  self.box_MultipleOR_281 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_281
  l0._graph = self
  l0._name = "box_MultipleOR_281"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1543701536"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_281_Out
  self.box_OnceOnly_v3_97 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_97
  l0._graph = self
  l0._name = "box_OnceOnly_v3_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1545635212"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_97_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_185 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_185
  l0._graph = self
  l0._name = "box_MultipleOR_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1585530563"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_185_Out
  self.box_MissionCheckpointReach_100 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_100
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1590669217"
  l0.Out = self.f_box_MissionCheckpointReach_100_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CLOController_250 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_250
  l0._graph = self
  l0._name = "box_CLOController_250"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1599342900"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_UIController_170 = cbox:CreateBox("domino/System/UIController.lua")
  l0 = self.box_UIController_170
  l0._graph = self
  l0._name = "box_UIController_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1604151545"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Out = DummyFunction
  l0.ContextEnabled = self.f_box_UIController_170_ContextEnabled
  l0.ContextEnabledFail = DummyFunction
  l0.ContextDisabled = DummyFunction
  l0.ContextDisabledFail = DummyFunction
  self.box_S11M040_ElevatorMonitor_159 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_ElevatorMonitor.debug.lua")
  l0 = self.box_S11M040_ElevatorMonitor_159
  l0._graph = self
  l0._name = "box_S11M040_ElevatorMonitor_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1636585374"
  l0.WoodenDoor_Opened = DummyFunction
  l0.ElevatorMoving_LowPosition = DummyFunction
  l0.ElevatorMoved_LowPosition = DummyFunction
  l0.ElevatorMoved_HighPosition = DummyFunction
  l0.ElevatorMoving_HighPosition = DummyFunction
  l0.DoorsOpening_ColdRoom = DummyFunction
  l0.DoorsOpened_ColdRoom = DummyFunction
  l0.DoorsClosed_ColdRoom = DummyFunction
  l0.DoorOpening_BoilerRoom = DummyFunction
  l0.DoorsOpened_BoilerRoom = self.f_box_S11M040_ElevatorMonitor_159_DoorsOpened_BoilerRoom
  l0.DoorsClosed_BoilerRoom = DummyFunction
  self.box_MultipleOR_107 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_107
  l0._graph = self
  l0._name = "box_MultipleOR_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1648294801"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_107_Out
  self.box_UIController_276 = cbox:CreateBox("domino/System/UIController.lua")
  l0 = self.box_UIController_276
  l0._graph = self
  l0._name = "box_UIController_276"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1649744699"
  l0.Enabled = self.f_box_UIController_276_Enabled
  l0.Disabled = DummyFunction
  l0.Out = DummyFunction
  l0.ContextEnabled = DummyFunction
  l0.ContextEnabledFail = DummyFunction
  l0.ContextDisabled = DummyFunction
  l0.ContextDisabledFail = DummyFunction
  self.box_Timer_v2_71 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_71
  l0._graph = self
  l0._name = "box_Timer_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1652522548"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_71_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_182 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_182
  l0._graph = self
  l0._name = "box_CLOController_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1674296679"
  l0.Activated = self.f_box_CLOController_182_Activated
  l0.Deactivated = self.f_box_CLOController_182_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PawnHealthMonitor_v4_190 = cbox:CreateBox("domino/System/PawnHealthMonitor_v4.lua")
  l0 = self.box_PawnHealthMonitor_v4_190
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v4_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1690223515"
  l0.Enabled = self.f_box_PawnHealthMonitor_v4_190_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v4_190_Disabled
  l0.Damaged = DummyFunction
  l0.DamageReceived = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v4_190_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_Timer_v2_271 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_271
  l0._graph = self
  l0._name = "box_Timer_v2_271"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1727002668"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_271_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_123 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_123
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1743862102"
  l0.Out = self.f_box_MissionMessageController_v3_123_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_285 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_285
  l0._graph = self
  l0._name = "box_MultipleOR_285"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1753500432"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_285_Out
  self.box_ReinforcementSystemMonitor_v2_256 = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self.box_ReinforcementSystemMonitor_v2_256
  l0._graph = self
  l0._name = "box_ReinforcementSystemMonitor_v2_256"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1756845428"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.None = self.f_box_ReinforcementSystemMonitor_v2_256_None
  l0.Reinforcing = self.f_box_ReinforcementSystemMonitor_v2_256_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_268 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_268
  l0._graph = self
  l0._name = "box_Timer_v2_268"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1758549104"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_268_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Interact_Gameplay_45 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_45
  l0._graph = self
  l0._name = "box_Interact_Gameplay_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1765378002"
  l0.Started = self.f_box_Interact_Gameplay_45_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_45_Interacted
  self.box_CinematicPrep_86 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_86
  l0._graph = self
  l0._name = "box_CinematicPrep_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1789097904"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_86_PostOut
  self.box_Timer_v2_236 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_236
  l0._graph = self
  l0._name = "box_Timer_v2_236"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1812855767"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_236_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListForEach_112 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_112
  l0._graph = self
  l0._name = "box_ListForEach_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1822471176"
  l0.Started = self.f_box_ListForEach_112_Started
  l0.Stopped = self.f_box_ListForEach_112_Stopped
  l0.ForEach = self.f_box_ListForEach_112_ForEach
  l0.GotNext = self.f_box_ListForEach_112_GotNext
  l0.EndOfList = self.f_box_ListForEach_112_EndOfList
  l0.GotFirst = DummyFunction
  self.box_MultipleOR_145 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_145
  l0._graph = self
  l0._name = "box_MultipleOR_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1823667282"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_145_Out
  self.box_PlayDialog_v2_28 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_28
  l0._graph = self
  l0._name = "box_PlayDialog_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1848588039"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_47 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_47
  l0._graph = self
  l0._name = "box_Multiple_AND_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1849466470"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_47_Out
  self.box_CLOController_151 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_151
  l0._graph = self
  l0._name = "box_CLOController_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1849729961"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_151_OnUserInPlace
  self.box_AISquadRelationshipController_224 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_224
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1862833600"
  l0.RelationshipSet = DummyFunction
  l0.RelationshipReset = DummyFunction
  self.box_ListWriter_243 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_243
  l0._graph = self
  l0._name = "box_ListWriter_243"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1874328909"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_243_Added
  l0.Removed = self.f_box_ListWriter_243_Removed
  l0.Out = self.f_box_ListWriter_243_Out
  self.box_PlayDialog_v2_267 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_267
  l0._graph = self
  l0._name = "box_PlayDialog_v2_267"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1886063208"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_110 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_110
  l0._graph = self
  l0._name = "box_Multiple_AND_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1889642314"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_110_Out
  self.box_UIController_277 = cbox:CreateBox("domino/System/UIController.lua")
  l0 = self.box_UIController_277
  l0._graph = self
  l0._name = "box_UIController_277"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1898166367"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_UIController_277_Disabled
  l0.Out = DummyFunction
  l0.ContextEnabled = DummyFunction
  l0.ContextEnabledFail = DummyFunction
  l0.ContextDisabled = DummyFunction
  l0.ContextDisabledFail = DummyFunction
  self.box_ListWriter_241 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_241
  l0._graph = self
  l0._name = "box_ListWriter_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1918245112"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_241_Added
  l0.Removed = self.f_box_ListWriter_241_Removed
  l0.Out = self.f_box_ListWriter_241_Out
  self.box_S11M040_ElevatorMonitor_144 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_ElevatorMonitor.debug.lua")
  l0 = self.box_S11M040_ElevatorMonitor_144
  l0._graph = self
  l0._name = "box_S11M040_ElevatorMonitor_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1926970900"
  l0.WoodenDoor_Opened = DummyFunction
  l0.ElevatorMoving_LowPosition = DummyFunction
  l0.ElevatorMoved_LowPosition = DummyFunction
  l0.ElevatorMoved_HighPosition = DummyFunction
  l0.ElevatorMoving_HighPosition = DummyFunction
  l0.DoorsOpening_ColdRoom = DummyFunction
  l0.DoorsOpened_ColdRoom = self.f_box_S11M040_ElevatorMonitor_144_DoorsOpened_ColdRoom
  l0.DoorsClosed_ColdRoom = DummyFunction
  l0.DoorOpening_BoilerRoom = DummyFunction
  l0.DoorsOpened_BoilerRoom = DummyFunction
  l0.DoorsClosed_BoilerRoom = DummyFunction
  self.box_MissionLayer_v2_124 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_124
  l0._graph = self
  l0._name = "box_MissionLayer_v2_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1971119651"
  l0.Loaded = self.f_box_MissionLayer_v2_124_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_41 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_41
  l0._graph = self
  l0._name = "box_Timer_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1976119363"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_41_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOMonitor_227 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_227
  l0._graph = self
  l0._name = "box_CLOMonitor_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1978657771"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_227_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_227_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_227_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MissionCheckpointReach_101 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_101
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1981517516"
  l0.Out = self.f_box_MissionCheckpointReach_101_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CLOMonitor_255 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_255
  l0._graph = self
  l0._name = "box_CLOMonitor_255"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1996161211"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_CLOMonitor_255_Disabled
  l0.GotUser = self.f_box_CLOMonitor_255_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_255_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_255_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_CLOController_138 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_138
  l0._graph = self
  l0._name = "box_CLOController_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2002569765"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_138_OnUserInPlace
  self.box_AISquadRelationshipController_240 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_240
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2007068645"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_240_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_CLOController_141 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_141
  l0._graph = self
  l0._name = "box_CLOController_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2028575784"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_141_OnUserInPlace
  self.box_MissionLayer_v2_22 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_22
  l0._graph = self
  l0._name = "box_MissionLayer_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2031700594"
  l0.Loaded = self.f_box_MissionLayer_v2_22_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_S11M040_ElevatorMonitor_142 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S11/S11M040/S11M040.S11M040_ElevatorMonitor.debug.lua")
  l0 = self.box_S11M040_ElevatorMonitor_142
  l0._graph = self
  l0._name = "box_S11M040_ElevatorMonitor_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2051956018"
  l0.WoodenDoor_Opened = DummyFunction
  l0.ElevatorMoving_LowPosition = DummyFunction
  l0.ElevatorMoved_LowPosition = DummyFunction
  l0.ElevatorMoved_HighPosition = DummyFunction
  l0.ElevatorMoving_HighPosition = DummyFunction
  l0.DoorsOpening_ColdRoom = DummyFunction
  l0.DoorsOpened_ColdRoom = self.f_box_S11M040_ElevatorMonitor_142_DoorsOpened_ColdRoom
  l0.DoorsClosed_ColdRoom = DummyFunction
  l0.DoorOpening_BoilerRoom = DummyFunction
  l0.DoorsOpened_BoilerRoom = DummyFunction
  l0.DoorsClosed_BoilerRoom = DummyFunction
  self.box_PlaySound_v2_195 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_195
  l0._graph = self
  l0._name = "box_PlaySound_v2_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2055365152"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_29 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_29
  l0._graph = self
  l0._name = "box_PlaySequence_v5_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2061548646"
  l0._DynamicAnchors = {
    SPOut = {
      "Start_Spawning"
    }
  }
  l0.Started = self.f_box_PlaySequence_v5_29_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_29_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_29_Finished
  l0.SPOut.Start_Spawning = DummyFunction
  self.box_Timer_v2_39 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_39
  l0._graph = self
  l0._name = "box_Timer_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2076817157"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_39_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_43 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_43
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2081825929"
  l0.Out = self.f_box_MissionMessageController_v3_43_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_153 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_153
  l0._graph = self
  l0._name = "box_Timer_v2_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2099606730"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_153_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_165 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_165
  l0._graph = self
  l0._name = "box_CLOController_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2104168931"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_165_OnUserInPlace
  self.box_MultipleOR_220 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_220
  l0._graph = self
  l0._name = "box_MultipleOR_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2105132551"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_220_Out
  self.box_PhoneCommunicationController_98 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_98
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2126645883"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_114 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_114
  l0._graph = self
  l0._name = "box_MultipleOR_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2127370496"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_114_Out
  self.box_CinematicPrep_133 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_133
  l0._graph = self
  l0._name = "box_CinematicPrep_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2128019103"
  l0.PreOut = self.f_box_CinematicPrep_133_PreOut
  l0.PostOut = DummyFunction
  self.box_CLOMonitor_254 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_254
  l0._graph = self
  l0._name = "box_CLOMonitor_254"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2147247684"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_CLOMonitor_254_Disabled
  l0.GotUser = self.f_box_CLOMonitor_254_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_254_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_254_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
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
  l0 = self.box_MissionLayer_v2_22
  l0.LayerName = "S11M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1269591146", "1269591146", "S11M040_Main", "CheckPoint_0", "box_MissionLayer_v2_22.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_104
  l0.LayerName = "S11M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|913515487", "913515487", "S11M040_Main", "CheckPoint_1", "box_MissionLayer_v2_104.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_124
  l0.LayerName = "S11M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1544992116", "1544992116", "S11M040_Main", "CheckPoint_2", "box_MissionLayer_v2_124.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  l0 = self.box_MissionLayer_v2_111
  l0.LayerName = "S11M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2025032521", "2025032521", "S11M040_Main", "CheckPoint_3", "box_MissionLayer_v2_111.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_4()
  local l0
  self:OnEnter_box_Mission_End_31()
  l0 = self.box_Mission_End_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1145546748", "1145546748", "S11M040_Main", "CheckPoint_4", "box_Mission_End_31.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_95
  l0.LayerName = "S11M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|262151153", "262151153", "S11M040_Main", "In", "box_MissionLayer_v2_95.Load", self, l0)
  l0:Load()
end
function export:f_box_S11M040_ElevatorMonitor_117_DoorOpening_BoilerRoom()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_34
  l0.Seconds = 0.5
  l0 = self.box_S11M040_ElevatorMonitor_117
  l1 = self.box_Timer_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|118751665", "118751665", "S11M040_Main", "box_S11M040_ElevatorMonitor_117.DoorOpening_BoilerRoom", "box_Timer_v2_34.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_249_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_250
  l0.CLO = "9223372068814590734"
  l0 = self.box_CLOController_249
  l1 = self.box_CLOController_250
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1975953339", "1975953339", "S11M040_Main", "box_CLOController_249.Activated", "box_CLOController_250.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Compare_Integers_v2_87_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_195
  l0.Entity = "9223372068348216668"
  l0.SoundId = "soundbinary/1583828044.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|607418300", "607418300", "S11M040_Main", "box_Compare_Integers_v2_87.A_eq_B", "box_PlaySound_v2_195.Play", clone, l0)
  l0:Play()
end
function export:f_box_VisibilityController_v2_247_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_217()
  l0 = self.box_Multiple_AND_217
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1034570272", "1034570272", "S11M040_Main", "box_VisibilityController_v2_247.Hidden", "box_Multiple_AND_217.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Multiple_AND_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Multiple_AND_10
  l1 = self.box_S11M040_ElevatorMonitor_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1491083949", "1491083949", "S11M040_Main", "box_Multiple_AND_10.Out", "box_S11M040_ElevatorMonitor_117.OpenDoors_BoilerRoom", l0, l1)
  l1:OpenDoors_BoilerRoom()
end
function export:f_box_CLOMonitor_188_OnUserQuit()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_192()
  l0 = self.box_CLOMonitor_188
  l1 = self.box_OnceOnly_v3_192
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|554331347", "554331347", "S11M040_Main", "box_CLOMonitor_188.OnUserQuit", "box_OnceOnly_v3_192.In", l0, l1)
  l1:In(0)
end
function export:f_box_PGTController_v2_3_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372046513954016"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|379509435"
  l0.Out = self.f_box_AI_Agent_Zone_19_Out
  l0 = self.box_PGTController_v2_3
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1150340133", "1150340133", "S11M040_Main", "box_PGTController_v2_3.AllSpawned", "box_AI_Agent_Zone_19.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_InteractionScriptMonitor_v2_78_AnimationStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_207"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|193060605"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_207_Hidden
  l0 = self.box_InteractionScriptMonitor_v2_78
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|703540293", "703540293", "S11M040_Main", "box_InteractionScriptMonitor_v2_78.AnimationStarted", "box_Show_Or_Hide_All_UI_207.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_InteractionScriptMonitor_v2_78_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_17
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055265909636"
  l0 = self.box_InteractionScriptMonitor_v2_78
  l1 = self.box_PhoneCommunicationController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1376162879", "1376162879", "S11M040_Main", "box_InteractionScriptMonitor_v2_78.Enabled", "box_PhoneCommunicationController_17.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Show_Or_Hide_All_UI_8_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_31()
  l0 = self.box_Mission_End_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|596954249", "596954249", "S11M040_Main", "box_Show_Or_Hide_All_UI_8.Shown", "box_Mission_End_31.End", clone, l0)
  l0:End()
end
function export:f_box_AISquadStateMonitor_24_CombatState()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateMonitor_24
  l1 = self.box_OnceOnly_v3_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|771364382", "771364382", "S11M040_Main", "box_AISquadStateMonitor_24.CombatState", "box_OnceOnly_v3_97.In", l0, l1)
  l1:In(0)
end
function export:f_box_AISquadStateMonitor_24_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1072995892"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_146_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_146_Out_1
  l0 = self.box_AISquadStateMonitor_24
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|633511471", "633511471", "S11M040_Main", "box_AISquadStateMonitor_24.Disabled", "box_Ordered_Output_146.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateMonitor_24_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1070633041"
  l0.Out = self.f_box_Simple_Node_73_Out
  l0 = self.box_AISquadStateMonitor_24
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|219597124", "219597124", "S11M040_Main", "box_AISquadStateMonitor_24.Enabled", "box_Simple_Node_73.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateMonitor_58_CombatState()
  local l0
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_58()
  l0 = self.box_AISquadStateMonitor_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|173680477", "173680477", "S11M040_Main", "box_AISquadStateMonitor_58.CombatState", "box_AISquadStateMonitor_58.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AISquadStateMonitor_58_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_26()
  l0 = self.box_AISquadStateMonitor_58
  l1 = self.box_OnceOnly_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1257114553", "1257114553", "S11M040_Main", "box_AISquadStateMonitor_58.Disabled", "box_OnceOnly_v3_26.In", l0, l1)
  l1:In(0)
end
function export:f_box_Simple_Node_218_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_220()
  l0 = self.box_MultipleOR_220
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|70034780", "70034780", "S11M040_Main", "box_Simple_Node_218.Out", "box_MultipleOR_220.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Simple_Node_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1242960553"
  l0.Out = self.f_box_Simple_Node_57_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1731967667", "1731967667", "S11M040_Main", "box_Simple_Node_12.Out", "box_Simple_Node_57.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_135_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_18
  l0.PGTMissionArea = "9223372047192585451"
  l0 = self.box_Timer_v2_135
  l1 = self.box_PGTController_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|902208873", "902208873", "S11M040_Main", "box_Timer_v2_135.TimeElapsed", "box_PGTController_v2_18.Abort", l0, l1)
  l1:Abort()
end
function export:f_box_Timer_v2_150_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S11M040_ElevatorMonitor_52()
  l0 = self.box_Timer_v2_150
  l1 = self.box_S11M040_ElevatorMonitor_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2077908470", "2077908470", "S11M040_Main", "box_Timer_v2_150.TimeElapsed", "box_S11M040_ElevatorMonitor_52.MoveElevator_LowPosition", l0, l1)
  l1:MoveElevator_LowPosition()
end
function export:f_box_Simple_Node_199_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_200()
  l0 = self.box_MultipleOR_200
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1041584455", "1041584455", "S11M040_Main", "box_Simple_Node_199.Out", "box_MultipleOR_200.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CLOController_171_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_171
  self.AI_BackalleyFelony_1 = l0.UserID
  l0 = self.box_CLOController_1
  l0.CLO = "9223372049314597600"
  l0 = self.box_CLOController_171
  l1 = self.box_CLOController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1510943964", "1510943964", "S11M040_Main", "box_CLOController_171.OnUserInPlace", "box_CLOController_1.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Show_Or_Hide_All_UI_207_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_30
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|248929591", "248929591", "S11M040_Main", "box_Show_Or_Hide_All_UI_207.Hidden", "box_Timer_v2_30.Start", clone, l0)
  l0:Start()
end
function export:f_box_PGTMonitor_v2_23_AllDead()
  local l0
  self = self._graph
  self:OnEnter_box_PGTMonitor_v2_23()
  l0 = self.box_PGTMonitor_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|745932348", "745932348", "S11M040_Main", "box_PGTMonitor_v2_23.AllDead", "box_PGTMonitor_v2_23.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PGTMonitor_v2_23_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_PGTMonitor_v2_23()
  l0 = self.box_PGTMonitor_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1922492700", "1922492700", "S11M040_Main", "box_PGTMonitor_v2_23.Enabled", "box_PGTMonitor_v2_23.GetEntityIDs", l0, l0)
  l0:GetEntityIDs()
end
function export:f_box_PGTMonitor_v2_23_GotEntityIDs()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTMonitor_v2_23
  self.AI_Arena_0 = l0.EntityID[0]
  self.AI_Arena_2 = l0.EntityID[1]
  self.Pablo = l0.EntityID[2]
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372047192585371"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1352076921"
  l0.Out = self.f_box_AI_Agent_Zone_25_Out
  l0 = self.box_PGTMonitor_v2_23
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1102328241", "1102328241", "S11M040_Main", "box_PGTMonitor_v2_23.GotEntityIDs", "box_AI_Agent_Zone_25.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_160_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_145()
  l0 = self.box_Timer_v2_160
  l1 = self.box_MultipleOR_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1001699180", "1001699180", "S11M040_Main", "box_Timer_v2_160.TimeElapsed", "box_MultipleOR_145.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Lanes_Restrictions_Control_251_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_151
  l0.CLO = "9223372047302940421"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1472087443", "1472087443", "S11M040_Main", "box_Lanes_Restrictions_Control_251.Out", "box_CLOController_151.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_27_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2047964320"
  l0.CalledBack = self.f_box_Toy_Car_Controller_179_CalledBack
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
  l0 = self.box_CLOController_27
  l1 = Boxes[PathID("domino/System/ToyCarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|523992345", "523992345", "S11M040_Main", "box_CLOController_27.UnspawnedUser", "box_Toy_Car_Controller_179.CallBack", l0, l1)
  l1:CallBack()
end
function export:f_box_TriggerMonitor_v2_181_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_24()
  l0 = self.box_TriggerMonitor_v2_181
  l1 = self.box_AISquadStateMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|665000387", "665000387", "S11M040_Main", "box_TriggerMonitor_v2_181.Disabled", "box_AISquadStateMonitor_24.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_181_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_181
  l1 = self.box_S11M040_ElevatorMonitor_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1607479835", "1607479835", "S11M040_Main", "box_TriggerMonitor_v2_181.Enabled", "box_S11M040_ElevatorMonitor_149.OpenDoors_ColdRoom", l0, l1)
  l1:OpenDoors_ColdRoom()
end
function export:f_box_TriggerMonitor_v2_181_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_181()
  l0 = self.box_TriggerMonitor_v2_181
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|331646421", "331646421", "S11M040_Main", "box_TriggerMonitor_v2_181.Enter", "box_TriggerMonitor_v2_181.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_SetBoolean_v2_88_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_88
  self.From_CheckPoint_1 = l0.Target
end
function export:f_box_SetBoolean_v2_88_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_88
  self.From_CheckPoint_1 = l0.Target
end
function export:f_box_SetBoolean_v2_88_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_88
  self.From_CheckPoint_1 = l0.Target
end
function export:f_box_SetBoolean_v2_88_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_88
  self.From_CheckPoint_1 = l0.Target
  l0 = self.box_CinematicPrep_115
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_SetBoolean_v2_88
  l1 = self.box_CinematicPrep_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1970305081", "1970305081", "S11M040_Main", "box_SetBoolean_v2_88.SetTrue", "box_CinematicPrep_115.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_SetBoolean_v2_88_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_88
  self.From_CheckPoint_1 = l0.Target
end
function export:f_box_Ordered_Output_186_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_214()
  l0 = self.box_CLOMonitor_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1442612356", "1442612356", "S11M040_Main", "box_Ordered_Output_186.Out", "box_CLOMonitor_214.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_Ordered_Output_186_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_226()
  l0 = self.box_CLOMonitor_226
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2091177729", "2091177729", "S11M040_Main", "box_Ordered_Output_186.Out", "box_CLOMonitor_226.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_Ordered_Output_184_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_228
  l0.HackableEntity = "9223372070828183002"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1135598679", "1135598679", "S11M040_Main", "box_Ordered_Output_184.Out", "box_HackableController_v2_228.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_Ordered_Output_184_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOController_182()
  l0 = self.box_CLOController_182
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1760659036", "1760659036", "S11M040_Main", "box_Ordered_Output_184.Out", "box_CLOController_182.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MultipleOR_244_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.EnemiesToSpawn
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|362565891"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_235_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_235_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_235_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_MultipleOR_244
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1494857927", "1494857927", "S11M040_Main", "box_MultipleOR_244.Out", "box_Compare_Integers_v2_235.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_252_UnspawnedUser()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOMonitor_255()
  l0 = self.box_CLOController_252
  l1 = self.box_CLOMonitor_255
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1587794593", "1587794593", "S11M040_Main", "box_CLOController_252.UnspawnedUser", "box_CLOMonitor_255.GetUser", l0, l1)
  l1:GetUser()
end
function export:f_box_CLOController_162_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_162
  self.AI_BackalleyFelony_3 = l0.UserID
  l0 = self.box_CLOController_16
  l0.CLO = "9223372049399659803"
  l0 = self.box_CLOController_162
  l1 = self.box_CLOController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1586827721", "1586827721", "S11M040_Main", "box_CLOController_162.OnUserInPlace", "box_CLOController_16.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_101
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_7
  l1 = self.box_MissionCheckpointReach_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1292926379", "1292926379", "S11M040_Main", "box_MultipleOR_7.Out", "box_MissionCheckpointReach_101.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_201_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|182594482"
  l0.Out = self.f_box_Simple_Node_199_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1858110802", "1858110802", "S11M040_Main", "box_Ordered_Output_201.Out", "box_Simple_Node_199.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_201_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_181()
  l0 = self.box_TriggerMonitor_v2_181
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1276921559", "1276921559", "S11M040_Main", "box_Ordered_Output_201.Out", "box_TriggerMonitor_v2_181.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMessageController_v3_13_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|285783718"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_201_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_201_Out_1
  l0 = self.box_MissionMessageController_v3_13
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2063100072", "2063100072", "S11M040_Main", "box_MissionMessageController_v3_13.Out", "box_Ordered_Output_201.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_139_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_130()
  l0 = self.box_MultipleOR_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1341898071", "1341898071", "S11M040_Main", "box_Ordered_Output_139.Out", "box_MultipleOR_130.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_139_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_168
  l0.Seconds = 1.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2047787331", "2047787331", "S11M040_Main", "box_Ordered_Output_139.Out", "box_Timer_v2_168.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_284_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_268
  l0.Seconds = 8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|374221318", "374221318", "S11M040_Main", "box_Compare_Boolean_v2_284.A_is_False", "box_Timer_v2_268.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOMonitor_156_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_274"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1558748026"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_274_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_274_Out_1
  l0 = self.box_CLOMonitor_156
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1881281005", "1881281005", "S11M040_Main", "box_CLOMonitor_156.Disabled", "box_Ordered_Output_274.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_156_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PatrolPointMonitor_v2_163()
  l0 = self.box_CLOMonitor_156
  l1 = self.box_PatrolPointMonitor_v2_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1433422308", "1433422308", "S11M040_Main", "box_CLOMonitor_156.Enabled", "box_PatrolPointMonitor_v2_163.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_156_OnProximityActionAnimBegin()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_269"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|927647655"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_269_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_269_Out_1
  l0 = self.box_CLOMonitor_156
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1970505159", "1970505159", "S11M040_Main", "box_CLOMonitor_156.OnProximityActionAnimBegin", "box_Ordered_Output_269.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_156_OnUserQuit()
  local l0
  self = self._graph
  self:OnEnter_box_CLOMonitor_156()
  l0 = self.box_CLOMonitor_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1897714601", "1897714601", "S11M040_Main", "box_CLOMonitor_156.OnUserQuit", "box_CLOMonitor_156.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MoveableEntityController_189_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_125
  l0.CLO = "9223372047192526050"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|713981070", "713981070", "S11M040_Main", "box_MoveableEntityController_189.MovedBackward", "box_CLOController_125.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionCheckpointReach_53_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_123
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M040.Objectives.Objective060",
    item = "Objective",
    id = "359334"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_53
  l1 = self.box_MissionMessageController_v3_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|506751575", "506751575", "S11M040_Main", "box_MissionCheckpointReach_53.Out", "box_MissionMessageController_v3_123.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_InteractionScriptMonitor_v2_191_AnimationStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.CarcassHits
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1693889805"
  l0.Out = self.f_box_Integer_Arithmetics_193_Out
  l0 = self.box_InteractionScriptMonitor_v2_191
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|933135235", "933135235", "S11M040_Main", "box_InteractionScriptMonitor_v2_191.AnimationStarted", "box_Integer_Arithmetics_193.Add", l0, l1)
  l1:Add()
end
function export:f_box_InteractionScriptMonitor_v2_191_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_197
  l0.Entity = "9223372068348216668"
  l0.SoundId = "soundbinary/1332793337.bnk"
  l0 = self.box_InteractionScriptMonitor_v2_191
  l1 = self.box_PlaySound_v2_197
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|641876625", "641876625", "S11M040_Main", "box_InteractionScriptMonitor_v2_191.Disabled", "box_PlaySound_v2_197.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_109_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_109
  l1 = self.box_S11M040_ElevatorMonitor_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1404467645", "1404467645", "S11M040_Main", "box_Timer_v2_109.TimeElapsed", "box_S11M040_ElevatorMonitor_144.OpenDoors_ColdRoom", l0, l1)
  l1:OpenDoors_ColdRoom()
end
function export:f_box_SetActionMap_v2_127_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_283()
  l0 = self.box_MultipleOR_283
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|561446687", "561446687", "S11M040_Main", "box_SetActionMap_v2_127.Pushed", "box_MultipleOR_283.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Timer_v2_266_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_265
  l0.SoundId = "soundbinary/590872296.bnk"
  l0 = self.box_Timer_v2_266
  l1 = self.box_PlayDialog_v2_265
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|784378562", "784378562", "S11M040_Main", "box_Timer_v2_266.TimeElapsed", "box_PlayDialog_v2_265.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Integers_v2_235_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LineOfSightMonitor_237()
  l0 = self.box_LineOfSightMonitor_237
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|656099729", "656099729", "S11M040_Main", "box_Compare_Integers_v2_235.A_eq_B", "box_LineOfSightMonitor_237.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Integers_v2_235_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LineOfSightMonitor_234()
  l0 = self.box_LineOfSightMonitor_234
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|229111344", "229111344", "S11M040_Main", "box_Compare_Integers_v2_235.A_gt_B", "box_LineOfSightMonitor_234.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Integers_v2_235_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LineOfSightMonitor_233()
  l0 = self.box_LineOfSightMonitor_233
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|596247081", "596247081", "S11M040_Main", "box_Compare_Integers_v2_235.A_lt_B", "box_LineOfSightMonitor_233.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_AI_Agent_Zone_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_165
  l0.CLO = "9223372048394002381"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|342453587", "342453587", "S11M040_Main", "box_AI_Agent_Zone_19.Out", "box_CLOController_165.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_ListWriter_230_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_230
  self.EntitiesDogs_List = l0.Target
  l0 = self.box_AISquadRelationshipController_238
  l0.Target = self.Dog_Layout_2
  l0.Affiliation = "T_13"
  l0.Relationship = "NotThreat"
  l0 = self.box_ListWriter_230
  l1 = self.box_AISquadRelationshipController_238
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1709594735", "1709594735", "S11M040_Main", "box_ListWriter_230.Added", "box_AISquadRelationshipController_238.SetRelationship", l0, l1)
  l1:SetRelationship()
end
function export:f_box_ListWriter_230_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_230
  self.EntitiesDogs_List = l0.Target
end
function export:f_box_ListWriter_230_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_230
  self.EntitiesDogs_List = l0.Target
end
function export:f_box_S11M040_DogThreatMonitor_166_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S11M040_DogThreatMonitor_103()
  l0 = self.box_S11M040_DogThreatMonitor_166
  l1 = self.box_S11M040_DogThreatMonitor_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1846195764", "1846195764", "S11M040_Main", "box_S11M040_DogThreatMonitor_166.Disabled", "box_S11M040_DogThreatMonitor_103.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_S11M040_DogThreatMonitor_166_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S11M040_DogThreatMonitor_103()
  l0 = self.box_S11M040_DogThreatMonitor_166
  l1 = self.box_S11M040_DogThreatMonitor_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2005103786", "2005103786", "S11M040_Main", "box_S11M040_DogThreatMonitor_166.Enabled", "box_S11M040_DogThreatMonitor_103.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_14_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_54
  l0.Entity = self.AI_Arena_0
  l0.SoundId = "soundbinary/795041855.bnk"
  l0 = self.box_CLOMonitor_14
  l1 = self.box_PlayDialog_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1539749433", "1539749433", "S11M040_Main", "box_CLOMonitor_14.Disabled", "box_PlayDialog_v2_54.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOMonitor_14_OnUserInPlace()
  local l0
  self = self._graph
  self:OnEnter_box_CLOMonitor_14()
  l0 = self.box_CLOMonitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1718263841", "1718263841", "S11M040_Main", "box_CLOMonitor_14.OnUserInPlace", "box_CLOMonitor_14.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_30_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_30
  l1 = self.box_S11M040_ElevatorMonitor_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1697375539", "1697375539", "S11M040_Main", "box_Timer_v2_30.TimeElapsed", "box_S11M040_ElevatorMonitor_157.CloseDoors_BoilerRoom", l0, l1)
  l1:CloseDoors_BoilerRoom()
end
function export:f_box_S11M040_DogThreatMonitor_161_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S11M040_DogThreatMonitor_96()
  l0 = self.box_S11M040_DogThreatMonitor_161
  l1 = self.box_S11M040_DogThreatMonitor_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1031005732", "1031005732", "S11M040_Main", "box_S11M040_DogThreatMonitor_161.Disabled", "box_S11M040_DogThreatMonitor_96.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_S11M040_DogThreatMonitor_161_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S11M040_DogThreatMonitor_96()
  l0 = self.box_S11M040_DogThreatMonitor_161
  l1 = self.box_S11M040_DogThreatMonitor_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|890245325", "890245325", "S11M040_Main", "box_S11M040_DogThreatMonitor_161.Enabled", "box_S11M040_DogThreatMonitor_96.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_S11M040_ElevatorMonitor_52_DoorsClosed_ColdRoom()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_150
  l0.Seconds = 0.5
  l0 = self.box_S11M040_ElevatorMonitor_52
  l1 = self.box_Timer_v2_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1927347444", "1927347444", "S11M040_Main", "box_S11M040_ElevatorMonitor_52.DoorsClosed_ColdRoom", "box_Timer_v2_150.Start", l0, l1)
  l1:Start()
end
function export:f_box_S11M040_ElevatorMonitor_52_WoodenDoor_Opened()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_49
  l0.Seconds = 0.5
  l0 = self.box_S11M040_ElevatorMonitor_52
  l1 = self.box_Timer_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1230359639", "1230359639", "S11M040_Main", "box_S11M040_ElevatorMonitor_52.WoodenDoor_Opened", "box_Timer_v2_49.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_92_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_OnceOnly_v3_92
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|904462503", "904462503", "S11M040_Main", "box_OnceOnly_v3_92.Out", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_283_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOMonitor_156()
  l0 = self.box_MultipleOR_283
  l1 = self.box_CLOMonitor_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|42088396", "42088396", "S11M040_Main", "box_MultipleOR_283.Out", "box_CLOMonitor_156.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_130_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_191()
  l0 = self.box_MultipleOR_130
  l1 = self.box_InteractionScriptMonitor_v2_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|349314567", "349314567", "S11M040_Main", "box_MultipleOR_130.Out", "box_InteractionScriptMonitor_v2_191.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_GetNPC_55_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_55
  self.AI_Arena_List = l0.NPCList
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = "9223372056337494227"
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2061547861"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = self.f_box_Player_State_Controller_75_CoverEntered
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
  l0 = self.box_GetNPC_55
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1023021648", "1023021648", "S11M040_Main", "box_GetNPC_55.GotNPCList", "box_Player_State_Controller_75.EnterCover", l0, l1)
  l1:EnterCover()
end
function export:f_box_Ordered_Output_257_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S11M040_SASDoorMonitor_90()
  l0 = self.box_S11M040_SASDoorMonitor_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|916856142", "916856142", "S11M040_Main", "box_Ordered_Output_257.Out", "box_S11M040_SASDoorMonitor_90.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_Ordered_Output_257_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_110()
  l0 = self.box_Multiple_AND_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1159202024", "1159202024", "S11M040_Main", "box_Ordered_Output_257.Out", "box_Multiple_AND_110.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_AISquadRelationshipController_223_RelationshipSet()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadRelationshipController_224
  l0.Target = self.Dog_Arena_2
  l0.Affiliation = "T_13"
  l0.Relationship = "Threat"
  l0 = self.box_AISquadRelationshipController_223
  l1 = self.box_AISquadRelationshipController_224
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1841355713", "1841355713", "S11M040_Main", "box_AISquadRelationshipController_223.RelationshipSet", "box_AISquadRelationshipController_224.SetRelationship", l0, l1)
  l1:SetRelationship()
end
function export:f_box_Multiple_AND_217_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_113
  l0.SceneEntity = "9223372047779474440"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S11/S11_EyeCelebration_CIN/s11_eyecelebration_cin.seq"
  l0 = self.box_Multiple_AND_217
  l1 = self.box_PlaySequence_v5_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1420829096", "1420829096", "S11M040_Main", "box_Multiple_AND_217.Out", "box_PlaySequence_v5_113.Start", l0, l1)
  l1:Start()
end
function export:f_box_InteractionScriptMonitor_v2_129_AnimationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372056337309020"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1200674311"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_128_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_InteractionScriptMonitor_v2_129
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|372093403", "372093403", "S11M040_Main", "box_InteractionScriptMonitor_v2_129.AnimationFinished", "box_InteractionScriptController_128.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Simple_Node_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S11M040_DogThreatMonitor_166()
  l0 = self.box_S11M040_DogThreatMonitor_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2018873607", "2018873607", "S11M040_Main", "box_Simple_Node_50.Out", "box_S11M040_DogThreatMonitor_166.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_S11M040_SASDoorMonitor_90_MovedBackward()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_158
  l0.SoundId = "soundbinary/2304476326.bnk"
  l0 = self.box_S11M040_SASDoorMonitor_90
  l1 = self.box_PlaySound_v2_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1382405551", "1382405551", "S11M040_Main", "box_S11M040_SASDoorMonitor_90.MovedBackward", "box_PlaySound_v2_158.Play", l0, l1)
  l1:Play()
end
function export:f_box_S11M040_SASDoorMonitor_90_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_257"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|497700105"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_257_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_257_Out_1
  l0 = self.box_S11M040_SASDoorMonitor_90
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1304954975", "1304954975", "S11M040_Main", "box_S11M040_SASDoorMonitor_90.Started", "box_Ordered_Output_257.In", l0, l1)
  l1:In()
end
function export:f_box_S11M040_ElevatorMonitor_143_ElevatorMoving_LowPosition()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_S11M040_ElevatorMonitor_143
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1324254174", "1324254174", "S11M040_Main", "box_S11M040_ElevatorMonitor_143.ElevatorMoving_LowPosition", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_34_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1593672010"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_60_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_Timer_v2_34
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|790006531", "790006531", "S11M040_Main", "box_Timer_v2_34.TimeElapsed", "box_SetActionMap_v2_60.Push", l0, l1)
  l1:Push()
end
function export:f_box_S11M040_DogThreatMonitor_103_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S11M040_DogThreatMonitor_161()
  l0 = self.box_S11M040_DogThreatMonitor_103
  l1 = self.box_S11M040_DogThreatMonitor_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|74264303", "74264303", "S11M040_Main", "box_S11M040_DogThreatMonitor_103.Disabled", "box_S11M040_DogThreatMonitor_161.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_S11M040_DogThreatMonitor_103_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S11M040_DogThreatMonitor_161()
  l0 = self.box_S11M040_DogThreatMonitor_103
  l1 = self.box_S11M040_DogThreatMonitor_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|402296464", "402296464", "S11M040_Main", "box_S11M040_DogThreatMonitor_103.Enabled", "box_S11M040_DogThreatMonitor_161.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_192_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_182()
  l0 = self.box_OnceOnly_v3_192
  l1 = self.box_CLOController_182
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|601851372", "601851372", "S11M040_Main", "box_OnceOnly_v3_192.Out", "box_CLOController_182.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Simple_Node_202_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_45
  l0.Entity = "9223372061323390713"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Use",
    id = "167937"
  }
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|450457157", "450457157", "S11M040_Main", "box_Simple_Node_202.Out", "box_Interact_Gameplay_45.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_176_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S11M040_SASDoorMonitor_76()
  l0 = self.box_S11M040_SASDoorMonitor_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1017721983", "1017721983", "S11M040_Main", "box_Ordered_Output_176.Out", "box_S11M040_SASDoorMonitor_76.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_176_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_171
  l0.CLO = "9223372049314597599"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|571959176", "571959176", "S11M040_Main", "box_Ordered_Output_176.Out", "box_CLOController_171.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_TeleportPlayerInsideHma_64_Done()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|252928391"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_186_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_186_Out_1
  l0 = self.box_TeleportPlayerInsideHma_64
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1905552090", "1905552090", "S11M040_Main", "box_TeleportPlayerInsideHma_64.Done", "box_Ordered_Output_186.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_36_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FromCheckpoint2
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_282"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1748656950"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_282_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_282_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MissionCheckpointReach_36
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1188620360", "1188620360", "S11M040_Main", "box_MissionCheckpointReach_36.Out", "box_Compare_Boolean_v2_282.In", l0, l1)
  l1:In()
end
function export:f_box_LineOfSightMonitor_237_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051797391556"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|317156085"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_box_MoveableEntityController_189_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_LineOfSightMonitor_237
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|463949172", "463949172", "S11M040_Main", "box_LineOfSightMonitor_237.Disabled", "box_MoveableEntityController_189.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_LineOfSightMonitor_237_LOSLost()
  local l0
  self = self._graph
  self:OnEnter_box_LineOfSightMonitor_237()
  l0 = self.box_LineOfSightMonitor_237
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|235913716", "235913716", "S11M040_Main", "box_LineOfSightMonitor_237.LOSLost", "box_LineOfSightMonitor_237.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_68_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_110()
  l0 = self.box_Multiple_AND_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|543743918", "543743918", "S11M040_Main", "box_Simple_Node_68.Out", "box_Multiple_AND_110.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_HackableController_v2_216_HackForced()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_152()
  l0 = self.box_HackableController_v2_216
  l1 = self.box_HackableController_v2_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|543921134", "543921134", "S11M040_Main", "box_HackableController_v2_216.HackForced", "box_HackableController_v2_152.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_UIController_275_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_UIController_277
  l0.UIElement = "Profiler"
  l0 = self.box_UIController_275
  l1 = self.box_UIController_277
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1747812818", "1747812818", "S11M040_Main", "box_UIController_275.Disabled", "box_UIController_277.DisableDisplay", l0, l1)
  l1:DisableDisplay()
end
function export:f_box_VisibilityController_v2_209_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Wrench
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1384341849"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_211_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|378762414", "378762414", "S11M040_Main", "box_VisibilityController_v2_209.Shown", "box_VisibilityController_v2_211.Show", clone, l0)
  l0:Show()
end
function export:f_box_MultipleOR_74_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_100
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_74
  l1 = self.box_MissionCheckpointReach_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1445041195", "1445041195", "S11M040_Main", "box_MultipleOR_74.Out", "box_MissionCheckpointReach_100.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_248_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_249
  l0.CLO = "9223372068814590733"
  l0 = self.box_CLOController_248
  l1 = self.box_CLOController_249
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1941556927", "1941556927", "S11M040_Main", "box_CLOController_248.Deactivated", "box_CLOController_249.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Interact_Gameplay_132_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_78()
  l0 = self.box_Interact_Gameplay_132
  l1 = self.box_InteractionScriptMonitor_v2_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1742774889", "1742774889", "S11M040_Main", "box_Interact_Gameplay_132.Interacted", "box_InteractionScriptMonitor_v2_78.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Interact_Gameplay_132_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_78()
  l0 = self.box_Interact_Gameplay_132
  l1 = self.box_InteractionScriptMonitor_v2_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1324677105", "1324677105", "S11M040_Main", "box_Interact_Gameplay_132.Started", "box_InteractionScriptMonitor_v2_78.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Escape_Gameplay_94_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|766918397"
  l0.Out = self.f_box_Simple_Node_35_Out
  l0 = self.box_Escape_Gameplay_94
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|792531568", "792531568", "S11M040_Main", "box_Escape_Gameplay_94.Escaped", "box_Simple_Node_35.In", l0, l1)
  l1:In()
end
function export:f_box_Escape_Gameplay_94_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S11M040_SASDoorMonitor_76()
  l0 = self.box_Escape_Gameplay_94
  l1 = self.box_S11M040_SASDoorMonitor_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2110542471", "2110542471", "S11M040_Main", "box_Escape_Gameplay_94.Started", "box_S11M040_SASDoorMonitor_76.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_262_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_260"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|949737578"
  l0.Out = self.f_box_Simple_Node_260_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|146869370", "146869370", "S11M040_Main", "box_Ordered_Output_262.Out", "box_Simple_Node_260.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_262_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_263()
  l0 = self.box_MultipleOR_263
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1391826787", "1391826787", "S11M040_Main", "box_Ordered_Output_262.Out", "box_MultipleOR_263.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Integer_Arithmetics_242_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.EnemiesToSpawn = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.EnemiesToSpawn
  l0.B = 0
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1217713979"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_246_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|537251674", "537251674", "S11M040_Main", "box_Integer_Arithmetics_242.Out", "box_Compare_Integers_v2_246.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_286_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_273
  l0.Seconds = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1317255033", "1317255033", "S11M040_Main", "box_Compare_Boolean_v2_286.A_is_False", "box_Timer_v2_273.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_286_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_285()
  l0 = self.box_MultipleOR_285
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|471456406", "471456406", "S11M040_Main", "box_Compare_Boolean_v2_286.A_is_True", "box_MultipleOR_285.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_AISquadStateController_173_TargetedSearchSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1244144097"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_205_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_205_Out_1
  l0 = self.box_AISquadStateController_173
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1758033496", "1758033496", "S11M040_Main", "box_AISquadStateController_173.TargetedSearchSet", "box_Ordered_Output_205.In", l0, l1)
  l1:In()
end
function export:f_box_PGTController_v2_120_Aborted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372046513954016"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1365481645"
  l0.Out = self.f_box_AI_Agent_Zone_61_Out
  l0 = self.box_PGTController_v2_120
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1890506838", "1890506838", "S11M040_Main", "box_PGTController_v2_120.Aborted", "box_AI_Agent_Zone_61.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_279_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_279
  self.FromCheckpoint2 = l0.Target
end
function export:f_box_SetBoolean_v2_279_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_279
  self.FromCheckpoint2 = l0.Target
end
function export:f_box_SetBoolean_v2_279_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_279
  self.FromCheckpoint2 = l0.Target
end
function export:f_box_SetBoolean_v2_279_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_279
  self.FromCheckpoint2 = l0.Target
  l1 = self.box_S11M040_ElevatorMonitor_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|5307511", "5307511", "S11M040_Main", "box_SetBoolean_v2_279.SetTrue", "box_S11M040_ElevatorMonitor_143.MoveElevator_LowPosition", l0, l1)
  l1:MoveElevator_LowPosition()
end
function export:f_box_SetBoolean_v2_279_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_279
  self.FromCheckpoint2 = l0.Target
end
function export:f_box_CinematicPrep_67_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FromCheckpoint2
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_280"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|945216042"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_280_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_280_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_CinematicPrep_67
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1456614003", "1456614003", "S11M040_Main", "box_CinematicPrep_67.PostOut", "box_Compare_Boolean_v2_280.In", l0, l1)
  l1:In()
end
function export:f_box_PatrolPointMonitor_v2_163_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_208
  l0.CLO = "9223372063111239887"
  l0 = self.box_PatrolPointMonitor_v2_163
  l1 = self.box_CLOController_208
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|399227760", "399227760", "S11M040_Main", "box_PatrolPointMonitor_v2_163.Disabled", "box_CLOController_208.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PatrolPointMonitor_v2_163_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_155
  l0.Input = self.DoorCage_List
  l0.Data[0] = "9223372051797391556"
  l0.Data[1] = "9223372051797391562"
  l0.Data[2] = "9223372051797391544"
  l0 = self.box_PatrolPointMonitor_v2_163
  l1 = self.box_ListWriter_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1268254553", "1268254553", "S11M040_Main", "box_PatrolPointMonitor_v2_163.Enabled", "box_ListWriter_155.Add", l0, l1)
  l1:Add()
end
function export:f_box_PatrolPointMonitor_v2_163_EndPointReached()
  local l0
  self = self._graph
  self:OnEnter_box_PatrolPointMonitor_v2_163()
  l0 = self.box_PatrolPointMonitor_v2_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2025374812", "2025374812", "S11M040_Main", "box_PatrolPointMonitor_v2_163.EndPointReached", "box_PatrolPointMonitor_v2_163.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AISquadStateMonitor_70_CombatState()
  local l0
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_70()
  l0 = self.box_AISquadStateMonitor_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2100810875", "2100810875", "S11M040_Main", "box_AISquadStateMonitor_70.CombatState", "box_AISquadStateMonitor_70.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AISquadStateMonitor_70_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateMonitor_70
  l1 = self.box_SetBoolean_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|998067349", "998067349", "S11M040_Main", "box_AISquadStateMonitor_70.Disabled", "box_SetBoolean_v2_65.True", l0, l1)
  l1:True()
end
function export:f_box_Timer_v2_167_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_167
  l1 = self.box_S11M040_ElevatorMonitor_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1314440045", "1314440045", "S11M040_Main", "box_Timer_v2_167.TimeElapsed", "box_S11M040_ElevatorMonitor_69.MoveElevator_HighPosition", l0, l1)
  l1:MoveElevator_HighPosition()
end
function export:f_box_Timer_v2_273_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 1
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_264"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1878207579"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_264_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_Timer_v2_273
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|956285984", "956285984", "S11M040_Main", "box_Timer_v2_273.TimeElapsed", "box_SecurityCamController_264.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_AISquadRelationshipController_239_RelationshipSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_245()
  l0 = self.box_AISquadRelationshipController_239
  l1 = self.box_MultipleOR_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|980689868", "980689868", "S11M040_Main", "box_AISquadRelationshipController_239.RelationshipSet", "box_MultipleOR_245.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_CinematicPrep_72_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_13
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M040.Objectives.Objective040",
    item = "Objective",
    id = "403793"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M040.Objectives.Objective010",
    item = "Objective",
    id = "359329"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_CinematicPrep_72
  l1 = self.box_MissionMessageController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1295674817", "1295674817", "S11M040_Main", "box_CinematicPrep_72.PostOut", "box_MissionMessageController_v3_13.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_CinematicPrep_115_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_CinematicPrep_115
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1841600901", "1841600901", "S11M040_Main", "box_CinematicPrep_115.PostOut", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionMessageController_v3_51_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_51
  l1 = self.box_S11M040_ElevatorMonitor_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1642651871", "1642651871", "S11M040_Main", "box_MissionMessageController_v3_51.Out", "box_S11M040_ElevatorMonitor_159.OpenDoors_BoilerRoom", l0, l1)
  l1:OpenDoors_BoilerRoom()
end
function export:f_box_Simple_Node_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemMonitor_v2_256()
  l0 = self.box_ReinforcementSystemMonitor_v2_256
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1053778178", "1053778178", "S11M040_Main", "box_Simple_Node_35.Out", "box_ReinforcementSystemMonitor_v2_256.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_215_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1350007271"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_40_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|584996802", "584996802", "S11M040_Main", "box_Ordered_Output_215.Out", "box_Show_Or_Hide_All_UI_40.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_215_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadStateController_287
  l0.SquadName = "DogBoilerRoom"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2020726173", "2020726173", "S11M040_Main", "box_Ordered_Output_215.Out", "box_AISquadStateController_287.RemoveSquad", clone, l0)
  l0:RemoveSquad()
end
function export:f_box_MultipleOR_261_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_160
  l0.Seconds = 3
  l0 = self.box_MultipleOR_261
  l1 = self.box_Timer_v2_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|754379113", "754379113", "S11M040_Main", "box_MultipleOR_261.Out", "box_Timer_v2_160.Start", l0, l1)
  l1:Start()
end
function export:f_box_AISquadRelationshipController_62_RelationshipSet()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_173
  l0.Affiliation = "T_13"
  l0 = self.box_AISquadRelationshipController_62
  l1 = self.box_AISquadStateController_173
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|686778886", "686778886", "S11M040_Main", "box_AISquadRelationshipController_62.RelationshipSet", "box_AISquadStateController_173.SetInTargetedSearch", l0, l1)
  l1:SetInTargetedSearch()
end
function export:f_box_OnceOnly_v3_26_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemController_v2_172()
  l0 = self.box_OnceOnly_v3_26
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|849015198", "849015198", "S11M040_Main", "box_OnceOnly_v3_26.Out", "box_ReinforcementSystemController_v2_172.StartReinforcing", l0, l1)
  l1:StartReinforcing()
end
function export:f_box_PlaySequence_v5_37_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|635926047"
  l0.Out = self.f_box_Simple_Node_68_Out
  l0 = self.box_PlaySequence_v5_37
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1929857501", "1929857501", "S11M040_Main", "box_PlaySequence_v5_37.Finished", "box_Simple_Node_68.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_37_SPOut__CloseDoor_()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S11M040_SASDoorMonitor_90()
  l0 = self.box_PlaySequence_v5_37
  l1 = self.box_S11M040_SASDoorMonitor_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1745598270", "1745598270", "S11M040_Main", "box_PlaySequence_v5_37.SPOut", "box_S11M040_SASDoorMonitor_90.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_37_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_59()
  l0 = self.box_PlaySequence_v5_37
  l1 = self.box_MissionZone_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|466389134", "466389134", "S11M040_Main", "box_PlaySequence_v5_37.Started", "box_MissionZone_59.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Simple_Node_183_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_185()
  l0 = self.box_MultipleOR_185
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1111187748", "1111187748", "S11M040_Main", "box_Simple_Node_183.Out", "box_MultipleOR_185.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_AISquadRelationshipController_238_RelationshipSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_245()
  l0 = self.box_AISquadRelationshipController_238
  l1 = self.box_MultipleOR_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1146042640", "1146042640", "S11M040_Main", "box_AISquadRelationshipController_238.RelationshipSet", "box_MultipleOR_245.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_HackableController_v2_152_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S11M040_DogThreatMonitor_166()
  l0 = self.box_HackableController_v2_152
  l1 = self.box_S11M040_DogThreatMonitor_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1894896890", "1894896890", "S11M040_Main", "box_HackableController_v2_152.Disabled", "box_S11M040_DogThreatMonitor_166.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_1_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_1
  self.AI_BackalleyFelony_2 = l0.UserID
  l0 = self.box_CLOController_162
  l0.CLO = "9223372049399659802"
  l0 = self.box_CLOController_1
  l1 = self.box_CLOController_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1124117408", "1124117408", "S11M040_Main", "box_CLOController_1.OnUserInPlace", "box_CLOController_162.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Compare_Integers_v2_194_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_InteractionScriptMonitor_v2_129
  l0.InteractionScriptEntity = "9223372056337309020"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1187283435", "1187283435", "S11M040_Main", "box_Compare_Integers_v2_194.A_eq_B", "box_InteractionScriptMonitor_v2_129.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_147_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_47()
  l0 = self.box_Multiple_AND_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1790538118", "1790538118", "S11M040_Main", "box_Simple_Node_147.Out", "box_Multiple_AND_47.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_CLOMonitor_214_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOMonitor_219()
  l0 = self.box_CLOMonitor_214
  l1 = self.box_CLOMonitor_219
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|244193720", "244193720", "S11M040_Main", "box_CLOMonitor_214.Disabled", "box_CLOMonitor_219.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_CLOMonitor_214_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_214
  self.Sitara = l0.UserID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|119671311"
  l0.Out = self.f_box_Simple_Node_218_Out
  l0 = self.box_CLOMonitor_214
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1329569822", "1329569822", "S11M040_Main", "box_CLOMonitor_214.GotUser", "box_Simple_Node_218.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_214_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_214
  self.Sitara = l0.UserID
  self:OnEnter_box_CLOMonitor_219()
  l1 = self.box_CLOMonitor_219
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2056821536", "2056821536", "S11M040_Main", "box_CLOMonitor_214.NotGotUser", "box_CLOMonitor_219.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_214_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_214
  self.Sitara = l0.UserID
end
function export:f_box_PlayDialog_v2_105_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_51
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M040.Objectives.Objective050",
    item = "Objective",
    id = "359333"
  }
  l0 = self.box_PlayDialog_v2_105
  l1 = self.box_MissionMessageController_v3_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|644884705", "644884705", "S11M040_Main", "box_PlayDialog_v2_105.Started", "box_MissionMessageController_v3_51.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionLayer_v2_111_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1718893328"
  l0.Out = self.f_box_Get_Player_ID_38_Out
  l0 = self.box_MissionLayer_v2_111
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1643948455", "1643948455", "S11M040_Main", "box_MissionLayer_v2_111.Loaded", "box_Get_Player_ID_38.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_269_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_153
  l0.Seconds = 43.6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2117331620", "2117331620", "S11M040_Main", "box_Ordered_Output_269.Out", "box_Timer_v2_153.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_269_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FromCheckpoint2
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_284"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|296333822"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_284_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|969592427", "969592427", "S11M040_Main", "box_Ordered_Output_269.Out", "box_Compare_Boolean_v2_284.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_222_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_105
  l0.SoundId = "soundbinary/3624643685.bnk"
  l0 = self.box_TriggerMonitor_v2_222
  l1 = self.box_PlayDialog_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1717376828", "1717376828", "S11M040_Main", "box_TriggerMonitor_v2_222.Disabled", "box_PlayDialog_v2_105.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_222_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v4_190()
  l0 = self.box_TriggerMonitor_v2_222
  l1 = self.box_PawnHealthMonitor_v4_190
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1373344708", "1373344708", "S11M040_Main", "box_TriggerMonitor_v2_222.Enabled", "box_PawnHealthMonitor_v4_190.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_222_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_222
  l1 = self.box_OnceOnly_v3_225
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|110354757", "110354757", "S11M040_Main", "box_TriggerMonitor_v2_222.Enter", "box_OnceOnly_v3_225.In", l0, l1)
  l1:In(0)
end
function export:f_box_Compare_Boolean_v2_280_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_UIController_170
  l0.UIContext = "SecurityCameraCinema"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1408973809", "1408973809", "S11M040_Main", "box_Compare_Boolean_v2_280.A_is_False", "box_UIController_170.EnableUIContext", clone, l0)
  l0:EnableUIContext()
end
function export:f_box_Compare_Boolean_v2_280_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_281()
  l0 = self.box_MultipleOR_281
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1080287516", "1080287516", "S11M040_Main", "box_Compare_Boolean_v2_280.A_is_True", "box_MultipleOR_281.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ListWriter_134_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_134
  self.EntitiesDogs_List = l0.Target
  self:OnEnter_box_MultipleOR_114()
  l1 = self.box_MultipleOR_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1148568755", "1148568755", "S11M040_Main", "box_ListWriter_134.Added", "box_MultipleOR_114.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_134_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_134
  self.EntitiesDogs_List = l0.Target
end
function export:f_box_ListWriter_134_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_134
  self.EntitiesDogs_List = l0.Target
end
function export:f_box_Simple_Node_260_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_261()
  l0 = self.box_MultipleOR_261
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1390036183", "1390036183", "S11M040_Main", "box_Simple_Node_260.Out", "box_MultipleOR_261.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_203_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_200()
  l0 = self.box_MultipleOR_200
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|782345118", "782345118", "S11M040_Main", "box_Ordered_Output_203.Out", "box_MultipleOR_200.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_203_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Standalone_Loader_Controller_4
  l0.StandaloneLoader = "9223372047015820922"
  l0.LayerName = "OAK_02_Chinatown_PacificRP_HMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1348243959", "1348243959", "S11M040_Main", "box_Ordered_Output_203.Out", "box_Standalone_Loader_Controller_4.Load", clone, l0)
  l0:Load()
end
function export:f_box_UIController_278_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_285()
  l0 = self.box_UIController_278
  l1 = self.box_MultipleOR_285
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1325008599", "1325008599", "S11M040_Main", "box_UIController_278.Enabled", "box_MultipleOR_285.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_200_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|591201894"
  l0.Out = self.f_box_Simple_Node_202_Out
  l0 = self.box_MultipleOR_200
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1097311189", "1097311189", "S11M040_Main", "box_MultipleOR_200.Out", "box_Simple_Node_202.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateController_287_SquadRemoved()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_288
  l0.SquadName = "DogFight"
  l0 = self.box_AISquadStateController_287
  l1 = self.box_AISquadStateController_288
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2056725308", "2056725308", "S11M040_Main", "box_AISquadStateController_287.SquadRemoved", "box_AISquadStateController_288.RemoveSquad", l0, l1)
  l1:RemoveSquad()
end
function export:f_box_LineOfSightMonitor_233_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051797391544"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1704060658"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_box_MoveableEntityController_63_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_LineOfSightMonitor_233
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1766820802", "1766820802", "S11M040_Main", "box_LineOfSightMonitor_233.Disabled", "box_MoveableEntityController_63.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_LineOfSightMonitor_233_LOSLost()
  local l0
  self = self._graph
  self:OnEnter_box_LineOfSightMonitor_233()
  l0 = self.box_LineOfSightMonitor_233
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1687755313", "1687755313", "S11M040_Main", "box_LineOfSightMonitor_233.LOSLost", "box_LineOfSightMonitor_233.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Show_Or_Hide_All_UI_42_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_279
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|120878945", "120878945", "S11M040_Main", "box_Show_Or_Hide_All_UI_42.Hidden", "box_SetBoolean_v2_279.True", clone, l0)
  l0:True()
end
function export:f_box_CLOController_148_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_148
  self.Dog_Arena_1 = l0.UserID
  l0 = self.box_CLOController_138
  l0.CLO = "9223372055944866312"
  l0 = self.box_CLOController_148
  l1 = self.box_CLOController_138
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|53848090", "53848090", "S11M040_Main", "box_CLOController_148.OnUserInPlace", "box_CLOController_138.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_S11M040_SASDoorMonitor_89_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1996527201"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_259_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_259_Out_1
  l0 = self.box_S11M040_SASDoorMonitor_89
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|503361341", "503361341", "S11M040_Main", "box_S11M040_SASDoorMonitor_89.Started", "box_Ordered_Output_259.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_253_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1534119999"
  l0.CalledBack = self.f_box_Toy_Car_Controller_174_CalledBack
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
  l0 = self.box_CLOController_253
  l1 = Boxes[PathID("domino/System/ToyCarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1492508878", "1492508878", "S11M040_Main", "box_CLOController_253.UnspawnedUser", "box_Toy_Car_Controller_174.CallBack", l0, l1)
  l1:CallBack()
end
function export:f_box_CLOController_16_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_16
  self.AI_BackalleyFelony_4 = l0.UserID
  l0 = self.box_AISquadRelationshipController_62
  l0.Affiliation = "T_13"
  l0.Relationship = "Threat"
  l0 = self.box_CLOController_16
  l1 = self.box_AISquadRelationshipController_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1799520841", "1799520841", "S11M040_Main", "box_CLOController_16.OnUserInPlace", "box_AISquadRelationshipController_62.SetRelationship", l0, l1)
  l1:SetRelationship()
end
function export:f_box_S11M040_ElevatorMonitor_149_DoorsOpening_ColdRoom()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_24()
  l0 = self.box_S11M040_ElevatorMonitor_149
  l1 = self.box_AISquadStateMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|545780042", "545780042", "S11M040_Main", "box_S11M040_ElevatorMonitor_149.DoorsOpening_ColdRoom", "box_AISquadStateMonitor_24.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PGTController_v2_2_AllSpawned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PGTMonitor_v2_23()
  l0 = self.box_PGTController_v2_2
  l1 = self.box_PGTMonitor_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2027960335", "2027960335", "S11M040_Main", "box_PGTController_v2_2.AllSpawned", "box_PGTMonitor_v2_23.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Standalone_Loader_Controller_126_LoadingStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_135
  l0.Seconds = 8
  l0 = self.box_Standalone_Loader_Controller_126
  l1 = self.box_Timer_v2_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1427728905", "1427728905", "S11M040_Main", "box_Standalone_Loader_Controller_126.LoadingStarted", "box_Timer_v2_135.Start", l0, l1)
  l1:Start()
end
function export:f_box_Standalone_Loader_Controller_126_PreviousZoneUnloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|128696992"
  l0.Out = self.f_box_Simple_Node_12_Out
  l0 = self.box_Standalone_Loader_Controller_126
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1729387808", "1729387808", "S11M040_Main", "box_Standalone_Loader_Controller_126.PreviousZoneUnloaded", "box_Simple_Node_12.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_219_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_219
  self.Sitara = l0.UserID
end
function export:f_box_CLOMonitor_219_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_219
  self.Sitara = l0.UserID
end
function export:f_box_CLOMonitor_219_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_219
  self.Sitara = l0.UserID
  self:OnEnter_box_MultipleOR_220()
  l1 = self.box_MultipleOR_220
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|88400083", "88400083", "S11M040_Main", "box_CLOMonitor_219.OnUserInPlace", "box_MultipleOR_220.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CinematicPrep_83_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_46()
  l0 = self.box_CinematicPrep_83
  l1 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|365549583", "365549583", "S11M040_Main", "box_CinematicPrep_83.PostOut", "box_MultipleOR_46.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_73_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_59()
  l0 = self.box_MissionZone_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|874744953", "874744953", "S11M040_Main", "box_Simple_Node_73.Out", "box_MissionZone_59.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_146_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1743988247"
  l0.Out = self.f_box_Simple_Node_140_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|115196210", "115196210", "S11M040_Main", "box_Ordered_Output_146.Out", "box_Simple_Node_140.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_146_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_71()
  l0 = self.box_Timer_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2096027292", "2096027292", "S11M040_Main", "box_Ordered_Output_146.Out", "box_Timer_v2_71.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_MultipleOR_245_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.EnemiesToSpawn
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|691183861"
  l0.Out = self.f_box_Integer_Arithmetics_242_Out
  l0 = self.box_MultipleOR_245
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|929087072", "929087072", "S11M040_Main", "box_MultipleOR_245.Out", "box_Integer_Arithmetics_242.Sub", l0, l1)
  l1:Sub()
end
function export:f_box_PlaySound_v2_158_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S11M040_SASDoorMonitor_90()
  l0 = self.box_PlaySound_v2_158
  l1 = self.box_S11M040_SASDoorMonitor_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|973247943", "973247943", "S11M040_Main", "box_PlaySound_v2_158.Started", "box_S11M040_SASDoorMonitor_90.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PlayDialog_v2_265_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_32()
  l0 = self.box_PlayDialog_v2_265
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|542959907", "542959907", "S11M040_Main", "box_PlayDialog_v2_265.Started", "box_SecurityCamController_32.SetInitialTarget", l0, l1)
  l1:SetInitialTarget()
end
function export:f_box_Show_Or_Hide_All_UI_82_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AI_Arena_CombatState
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1118808478"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_15_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_15_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|676813993", "676813993", "S11M040_Main", "box_Show_Or_Hide_All_UI_82.Shown", "box_Compare_Boolean_v2_15.In", clone, l0)
  l0:In()
end
function export:f_box_MissionZone_59_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_120
  l0.PGTMissionArea = "9223372046513930445"
  l0 = self.box_MissionZone_59
  l1 = self.box_PGTController_v2_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1302584702", "1302584702", "S11M040_Main", "box_MissionZone_59.Disabled", "box_PGTController_v2_120.Abort", l0, l1)
  l1:Abort()
end
function export:f_box_Compare_Boolean_v2_15_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1748812479"
  l0.Out = self.f_box_Simple_Node_206_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1938151164", "1938151164", "S11M040_Main", "box_Compare_Boolean_v2_15.A_is_False", "box_Simple_Node_206.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_15_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_39
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|251468555", "251468555", "S11M040_Main", "box_Compare_Boolean_v2_15.A_is_True", "box_Timer_v2_39.Start", clone, l0)
  l0:Start()
end
function export:f_box_AISquadRelationshipController_108_RelationshipSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_114()
  l0 = self.box_AISquadRelationshipController_108
  l1 = self.box_MultipleOR_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|656498944", "656498944", "S11M040_Main", "box_AISquadRelationshipController_108.RelationshipSet", "box_MultipleOR_114.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AI_Agent_Zone_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_27
  l0.UserList = self.EntitiesDogs_List
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1391663631", "1391663631", "S11M040_Main", "box_AI_Agent_Zone_77.Out", "box_CLOController_27.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_AgentStateMonitor_V2_180_DetectionAlertFull()
  local l0
  self = self._graph
  self:OnEnter_box_AgentStateMonitor_V2_180()
  l0 = self.box_AgentStateMonitor_V2_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|390137985", "390137985", "S11M040_Main", "box_AgentStateMonitor_V2_180.DetectionAlertFull", "box_AgentStateMonitor_V2_180.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AgentStateMonitor_V2_180_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_26()
  l0 = self.box_AgentStateMonitor_V2_180
  l1 = self.box_OnceOnly_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|877378930", "877378930", "S11M040_Main", "box_AgentStateMonitor_V2_180.Disabled", "box_OnceOnly_v3_26.In", l0, l1)
  l1:In(1)
end
function export:f_box_CLOController_136_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_136
  self.Dog_Layout_3 = l0.UserID
  l0 = self.box_ListWriter_243
  l0.Input = self.EntitiesDogs_List
  l0.Data[0] = self.Dog_Layout_3
  l0 = self.box_CLOController_136
  l1 = self.box_ListWriter_243
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1955846175", "1955846175", "S11M040_Main", "box_CLOController_136.OnUserInPlace", "box_ListWriter_243.Add", l0, l1)
  l1:Add()
end
function export:f_box_CinematicPrep_131_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_TeleportPlayerInsideHma_64
  l0.SpawnPoint = "9223372048542301209"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485440"
  l0 = self.box_CinematicPrep_131
  l1 = self.box_TeleportPlayerInsideHma_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1296858336", "1296858336", "S11M040_Main", "box_CinematicPrep_131.PreOut", "box_TeleportPlayerInsideHma_64.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_125_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_125
  self.Dog_Layout_1 = l0.UserID
  l0 = self.box_ListWriter_241
  l0.Input = self.EntitiesDogs_List
  l0.Data[0] = self.Dog_Layout_1
  l0 = self.box_CLOController_125
  l1 = self.box_ListWriter_241
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|801688048", "801688048", "S11M040_Main", "box_CLOController_125.OnUserInPlace", "box_ListWriter_241.Add", l0, l1)
  l1:Add()
end
function export:f_box_PGTController_v2_18_Aborted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372047192585371"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1126560289"
  l0.Out = self.f_box_AI_Agent_Zone_77_Out
  l0 = self.box_PGTController_v2_18
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|654336682", "654336682", "S11M040_Main", "box_PGTController_v2_18.Aborted", "box_AI_Agent_Zone_77.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_LineOfSightMonitor_234_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051797391562"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1280197457"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_box_MoveableEntityController_212_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_LineOfSightMonitor_234
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1103982385", "1103982385", "S11M040_Main", "box_LineOfSightMonitor_234.Disabled", "box_MoveableEntityController_212.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_LineOfSightMonitor_234_LOSLost()
  local l0
  self = self._graph
  self:OnEnter_box_LineOfSightMonitor_234()
  l0 = self.box_LineOfSightMonitor_234
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1767811708", "1767811708", "S11M040_Main", "box_LineOfSightMonitor_234.LOSLost", "box_LineOfSightMonitor_234.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_49_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_Timer_v2_49
  l1 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|454807709", "454807709", "S11M040_Main", "box_Timer_v2_49.TimeElapsed", "box_Multiple_AND_10.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_258_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_172()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1416680903", "1416680903", "S11M040_Main", "box_Ordered_Output_258.Out", "box_ReinforcementSystemController_v2_172.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_Ordered_Output_258_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_263()
  l0 = self.box_MultipleOR_263
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2107081263", "2107081263", "S11M040_Main", "box_Ordered_Output_258.Out", "box_MultipleOR_263.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CLOController_106_UnspawnedUser()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOMonitor_254()
  l0 = self.box_CLOController_106
  l1 = self.box_CLOMonitor_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|500301985", "500301985", "S11M040_Main", "box_CLOController_106.UnspawnedUser", "box_CLOMonitor_254.GetUser", l0, l1)
  l1:GetUser()
end
function export:f_box_PlayDialog_v2_270_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_271
  l0.Seconds = 1.5
  l0 = self.box_PlayDialog_v2_270
  l1 = self.box_Timer_v2_271
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|623200889", "623200889", "S11M040_Main", "box_PlayDialog_v2_270.Started", "box_Timer_v2_271.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_137_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_145()
  l0 = self.box_MultipleOR_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|971186384", "971186384", "S11M040_Main", "box_Simple_Node_137.Out", "box_MultipleOR_145.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Get_Player_ID_56_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1701707969"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_81_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1221751306", "1221751306", "S11M040_Main", "box_Get_Player_ID_56.Out", "box_SetActionMap_v2_81.Push", clone, l0)
  l0:Push()
end
function export:f_box_S11M040_ElevatorMonitor_69_ElevatorMoved_HighPosition()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1642093647"
  l0.Out = self.f_box_Simple_Node_204_Out
  l0 = self.box_S11M040_ElevatorMonitor_69
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2062377341", "2062377341", "S11M040_Main", "box_S11M040_ElevatorMonitor_69.ElevatorMoved_HighPosition", "box_Simple_Node_204.In", l0, l1)
  l1:In()
end
function export:f_box_S11M040_ElevatorMonitor_69_ElevatorMoving_HighPosition()
  local l0, l1
  self = self._graph
  l0 = self.box_Standalone_Loader_Controller_126
  l0.StandaloneLoader = "9223372047015820922"
  l0 = self.box_S11M040_ElevatorMonitor_69
  l1 = self.box_Standalone_Loader_Controller_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2037471340", "2037471340", "S11M040_Main", "box_S11M040_ElevatorMonitor_69.ElevatorMoving_HighPosition", "box_Standalone_Loader_Controller_126.Load", l0, l1)
  l1:Load()
end
function export:f_box_SetBoolean_v2_65_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_65
  self.AI_Arena_CombatState = l0.Target
end
function export:f_box_SetBoolean_v2_65_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_65
  self.AI_Arena_CombatState = l0.Target
end
function export:f_box_SetBoolean_v2_65_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_65
  self.AI_Arena_CombatState = l0.Target
end
function export:f_box_SetBoolean_v2_65_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_65
  self.AI_Arena_CombatState = l0.Target
end
function export:f_box_SetBoolean_v2_65_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_65
  self.AI_Arena_CombatState = l0.Target
end
function export:f_box_InteractionScriptController_128_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|291976634"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_139_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_139_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1842264812", "1842264812", "S11M040_Main", "box_InteractionScriptController_128.Disabled", "box_Ordered_Output_139.In", clone, l0)
  l0:In()
end
function export:f_box_CLOMonitor_226_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOMonitor_227()
  l0 = self.box_CLOMonitor_226
  l1 = self.box_CLOMonitor_227
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1454143190", "1454143190", "S11M040_Main", "box_CLOMonitor_226.Disabled", "box_CLOMonitor_227.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_CLOMonitor_226_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_226
  self.Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|798952300"
  l0.Out = self.f_box_Simple_Node_183_Out
  l0 = self.box_CLOMonitor_226
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1240941048", "1240941048", "S11M040_Main", "box_CLOMonitor_226.GotUser", "box_Simple_Node_183.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_226_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_226
  self.Wrench = l0.UserID
  self:OnEnter_box_CLOMonitor_227()
  l1 = self.box_CLOMonitor_227
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|198050170", "198050170", "S11M040_Main", "box_CLOMonitor_226.NotGotUser", "box_CLOMonitor_227.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_226_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_226
  self.Wrench = l0.UserID
end
function export:f_box_Camera_Lock_Controller_229_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_67
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Camera_Lock_Controller_229
  l1 = self.box_CinematicPrep_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|775308247", "775308247", "S11M040_Main", "box_Camera_Lock_Controller_229.Finished", "box_CinematicPrep_67.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Simple_Node_48_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_2
  l0.PGTMissionArea = "9223372047192585451"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1456807314", "1456807314", "S11M040_Main", "box_Simple_Node_48.Out", "box_PGTController_v2_2.Start", clone, l0)
  l0:Start()
end
function export:f_box_Standalone_Loader_Controller_4_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1343100688"
  l0.Out = self.f_box_Simple_Node_21_Out
  l0 = self.box_Standalone_Loader_Controller_4
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|648456517", "648456517", "S11M040_Main", "box_Standalone_Loader_Controller_4.Loaded", "box_Simple_Node_21.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_198_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_130()
  l0 = self.box_MultipleOR_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|512793436", "512793436", "S11M040_Main", "box_Ordered_Output_198.Out", "box_MultipleOR_130.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_198_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_41
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1200198751", "1200198751", "S11M040_Main", "box_Ordered_Output_198.Out", "box_Timer_v2_41.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Integers_v2_246_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v4_190()
  l0 = self.box_PawnHealthMonitor_v4_190
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1918396849", "1918396849", "S11M040_Main", "box_Compare_Integers_v2_246.A_eq_B", "box_PawnHealthMonitor_v4_190.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1429457026", "1429457026", "S11M040_Main", "box_Simple_Node_6.Out", "box_Multiple_AND_10.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Simple_Node_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_47()
  l0 = self.box_Multiple_AND_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1442297667", "1442297667", "S11M040_Main", "box_Simple_Node_57.Out", "box_Multiple_AND_47.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_205_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_58()
  l0 = self.box_AISquadStateMonitor_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1618638030", "1618638030", "S11M040_Main", "box_Ordered_Output_205.Out", "box_AISquadStateMonitor_58.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_205_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AgentStateMonitor_V2_180()
  l0 = self.box_AgentStateMonitor_V2_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1908308030", "1908308030", "S11M040_Main", "box_Ordered_Output_205.Out", "box_AgentStateMonitor_V2_180.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_168_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_28
  l0.SoundId = "soundbinary/1519946493.bnk"
  l0 = self.box_Timer_v2_168
  l1 = self.box_PlayDialog_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1361292346", "1361292346", "S11M040_Main", "box_Timer_v2_168.TimeElapsed", "box_PlayDialog_v2_28.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_154_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_122
  l0.CLO = "9223372057015813362"
  l0 = self.box_CLOController_154
  l1 = self.box_CLOMonitor_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|73020865", "73020865", "S11M040_Main", "box_CLOController_154.Activated", "box_CLOMonitor_122.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_154_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_196
  l0.CLO = "9223372063111239887"
  l0 = self.box_CLOController_154
  l1 = self.box_CLOController_196
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|522258330", "522258330", "S11M040_Main", "box_CLOController_154.Deactivated", "box_CLOController_196.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_ReinforcementSystemController_v2_172_ReinforcingStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_172()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|981841695", "981841695", "S11M040_Main", "box_ReinforcementSystemController_v2_172.ReinforcingStarted", "box_ReinforcementSystemController_v2_172.AddScriptedAgents", clone, l0)
  l0:AddScriptedAgents()
end
function export:f_box_ReinforcementSystemController_v2_172_ReinforcingStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_261()
  l0 = self.box_MultipleOR_261
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|234611598", "234611598", "S11M040_Main", "box_ReinforcementSystemController_v2_172.ReinforcingStopped", "box_MultipleOR_261.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_ReinforcementSystemController_v2_172_ScriptedAgentsAdopted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_172()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1235491404", "1235491404", "S11M040_Main", "box_ReinforcementSystemController_v2_172.ScriptedAgentsAdopted", "box_ReinforcementSystemController_v2_172.StopReinforcing", clone, l0)
  l0:StopReinforcing()
end
function export:f_box_MoveableEntityController_212_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_141
  l0.CLO = "9223372047192555757"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|54000574", "54000574", "S11M040_Main", "box_MoveableEntityController_212.MovedBackward", "box_CLOController_141.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_PlaySequence_v5_113_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_84()
  l0 = self.box_PlaySequence_v5_113
  l1 = self.box_OnceOnly_v3_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1738783012", "1738783012", "S11M040_Main", "box_PlaySequence_v5_113.Finished", "box_OnceOnly_v3_84.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_113_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_84()
  l0 = self.box_PlaySequence_v5_113
  l1 = self.box_OnceOnly_v3_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1236154823", "1236154823", "S11M040_Main", "box_PlaySequence_v5_113.Skipped", "box_OnceOnly_v3_84.In", l0, l1)
  l1:In(0)
end
function export:f_box_MultipleOR_263_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemMonitor_v2_256()
  l0 = self.box_MultipleOR_263
  l1 = self.box_ReinforcementSystemMonitor_v2_256
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1337058133", "1337058133", "S11M040_Main", "box_MultipleOR_263.Out", "box_ReinforcementSystemMonitor_v2_256.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_InteractionScriptMonitor_v2_33_AnimationStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1216215335"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_198_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_198_Out_1
  l0 = self.box_InteractionScriptMonitor_v2_33
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|451698010", "451698010", "S11M040_Main", "box_InteractionScriptMonitor_v2_33.AnimationStarted", "box_Ordered_Output_198.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptMonitor_v2_33_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_191()
  l0 = self.box_InteractionScriptMonitor_v2_33
  l1 = self.box_InteractionScriptMonitor_v2_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1855992084", "1855992084", "S11M040_Main", "box_InteractionScriptMonitor_v2_33.Enabled", "box_InteractionScriptMonitor_v2_191.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_InteractionScriptMonitor_v2_33_InteractionFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1936369492"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0 = self.box_InteractionScriptMonitor_v2_33
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2072603372", "2072603372", "S11M040_Main", "box_InteractionScriptMonitor_v2_33.InteractionFinished", "box_Show_Or_Hide_All_UI_169.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Neutralize_Gameplay_5_Neutralized()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|513566517"
  l0.Out = self.f_box_Simple_Node_50_Out
  l0 = self.box_Neutralize_Gameplay_5
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|735234683", "735234683", "S11M040_Main", "box_Neutralize_Gameplay_5.Neutralized", "box_Simple_Node_50.In", l0, l1)
  l1:In()
end
function export:f_box_Neutralize_Gameplay_5_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.Pablo
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1582477257"
  l0.Out = self.f_box_Pawn_Health_Controller_11_Out
  l0 = self.box_Neutralize_Gameplay_5
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|122742938", "122742938", "S11M040_Main", "box_Neutralize_Gameplay_5.Started", "box_Pawn_Health_Controller_11.SetInfiniteDBNO", l0, l1)
  l1:SetInfiniteDBNO()
end
function export:f_box_Simple_Node_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1225412748"
  l0.Out = self.f_box_Simple_Node_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|758202160", "758202160", "S11M040_Main", "box_Simple_Node_21.Out", "box_Simple_Node_6.In", clone, l0)
  l0:In()
end
function export:f_box_Show_Or_Hide_All_UI_40_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_131
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|912485931", "912485931", "S11M040_Main", "box_Show_Or_Hide_All_UI_40.Hidden", "box_CinematicPrep_131.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_S11M040_DogThreatMonitor_96_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_222()
  l0 = self.box_S11M040_DogThreatMonitor_96
  l1 = self.box_TriggerMonitor_v2_222
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|960096402", "960096402", "S11M040_Main", "box_S11M040_DogThreatMonitor_96.Disabled", "box_TriggerMonitor_v2_222.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_S11M040_DogThreatMonitor_96_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_222()
  l0 = self.box_S11M040_DogThreatMonitor_96
  l1 = self.box_TriggerMonitor_v2_222
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|819335995", "819335995", "S11M040_Main", "box_S11M040_DogThreatMonitor_96.Enabled", "box_TriggerMonitor_v2_222.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AI_Agent_Zone_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GetNPC_55
  l0.Group = "AI_Arena_List"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|666718083", "666718083", "S11M040_Main", "box_AI_Agent_Zone_25.Out", "box_GetNPC_55.GetEnemies", clone, l0)
  l0:GetEnemies()
end
function export:f_box_AI_Agent_Zone_61_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_106
  l0.User = self.Talker_OutdoorLayout
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1207536614", "1207536614", "S11M040_Main", "box_AI_Agent_Zone_61.Out", "box_CLOController_106.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_VisibilityController_v2_211_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_236
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1868524978", "1868524978", "S11M040_Main", "box_VisibilityController_v2_211.Shown", "box_Timer_v2_236.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_210_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_217()
  l0 = self.box_Multiple_AND_217
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|838140654", "838140654", "S11M040_Main", "box_VisibilityController_v2_210.Hidden", "box_Multiple_AND_217.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_OnceOnly_v3_225_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadRelationshipController_223
  l0.Target = self.Dog_Arena_1
  l0.Affiliation = "T_13"
  l0.Relationship = "Threat"
  l0 = self.box_OnceOnly_v3_225
  l1 = self.box_AISquadRelationshipController_223
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|36086093", "36086093", "S11M040_Main", "box_OnceOnly_v3_225.Out", "box_AISquadRelationshipController_223.SetRelationship", l0, l1)
  l1:SetRelationship()
end
function export:f_box_ListWriter_155_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_155
  self.DoorCage_List = l0.Target
  self:OnEnter_box_HackableController_v2_152()
  l1 = self.box_HackableController_v2_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1278026864", "1278026864", "S11M040_Main", "box_ListWriter_155.Added", "box_HackableController_v2_152.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_155_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_155
  self.DoorCage_List = l0.Target
end
function export:f_box_ListWriter_155_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_155
  self.DoorCage_List = l0.Target
end
function export:f_box_OnceOnly_v3_231_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|257313950"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_184_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_184_Out_1
  l0 = self.box_OnceOnly_v3_231
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1052709787", "1052709787", "S11M040_Main", "box_OnceOnly_v3_231.Out", "box_Ordered_Output_184.In", l0, l1)
  l1:In()
end
function export:f_box_S11M040_SASDoorMonitor_76_HackEnabled()
  local l0
  self = self._graph
  self:OnEnter_box_S11M040_SASDoorMonitor_76()
  l0 = self.box_S11M040_SASDoorMonitor_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1878237793", "1878237793", "S11M040_Main", "box_S11M040_SASDoorMonitor_76.HackEnabled", "box_S11M040_SASDoorMonitor_76.MoveForward", l0, l0)
  l0:MoveForward()
end
function export:f_box_S11M040_SASDoorMonitor_76_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|598565946"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_176_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_176_Out_1
  l0 = self.box_S11M040_SASDoorMonitor_76
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|904477554", "904477554", "S11M040_Main", "box_S11M040_SASDoorMonitor_76.Started", "box_Ordered_Output_176.In", l0, l1)
  l1:In()
end
function export:f_box_Flying_Drone_Controller_178_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1101478983"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_82_Shown
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1105444732", "1105444732", "S11M040_Main", "box_Flying_Drone_Controller_178.CalledBack", "box_Show_Or_Hide_All_UI_82.Show", clone, l0)
  l0:Show()
end
function export:f_box_S11M040_ElevatorMonitor_116_DoorsOpening_ColdRoom()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S11M040_SASDoorMonitor_89()
  l0 = self.box_S11M040_ElevatorMonitor_116
  l1 = self.box_S11M040_SASDoorMonitor_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1537613392", "1537613392", "S11M040_Main", "box_S11M040_ElevatorMonitor_116.DoorsOpening_ColdRoom", "box_S11M040_SASDoorMonitor_89.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_99_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_74()
  l0 = self.box_MultipleOR_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1081696285", "1081696285", "S11M040_Main", "box_Get_Player_ID_99.Out", "box_MultipleOR_74.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_OnceOnly_v3_84_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Sitara
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|663146786"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_209_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_OnceOnly_v3_84
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|374343051", "374343051", "S11M040_Main", "box_OnceOnly_v3_84.Out", "box_VisibilityController_v2_209.Show", l0, l1)
  l1:Show()
end
function export:f_box_CLOMonitor_122_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_188
  l0.CLO = "9223372057015813361"
  l0 = self.box_CLOMonitor_122
  l1 = self.box_CLOMonitor_188
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1458321860", "1458321860", "S11M040_Main", "box_CLOMonitor_122.Enabled", "box_CLOMonitor_188.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_122_OnUserQuit()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_192()
  l0 = self.box_CLOMonitor_122
  l1 = self.box_OnceOnly_v3_192
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2015320009", "2015320009", "S11M040_Main", "box_CLOMonitor_122.OnUserQuit", "box_OnceOnly_v3_192.In", l0, l1)
  l1:In(1)
end
function export:f_box_MultipleOR_46_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_53
  l0.Checkpoint = "CheckPoint_3"
  l0 = self.box_MultipleOR_46
  l1 = self.box_MissionCheckpointReach_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|957035323", "957035323", "S11M040_Main", "box_MultipleOR_46.Out", "box_MissionCheckpointReach_53.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_44_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372070306831964"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = "CivilianDensity.9223372048779320679"
  l0.ParkedCarsDensityDbObject = "ParkedCarsDensity.9223372048779323572"
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
  l0._name = "box_Lanes_Restrictions_Control_251"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|217804890"
  l0.Out = self.f_box_Lanes_Restrictions_Control_251_Out
  l0 = self.box_MultipleOR_44
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1971310674", "1971310674", "S11M040_Main", "box_MultipleOR_44.Out", "box_Lanes_Restrictions_Control_251.In", l0, l1)
  l1:In()
end
function export:f_box_PawnHealthMonitor_v4_232_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOMonitor_14()
  l0 = self.box_PawnHealthMonitor_v4_232
  l1 = self.box_CLOMonitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|161961681", "161961681", "S11M040_Main", "box_PawnHealthMonitor_v4_232.Enabled", "box_CLOMonitor_14.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PawnHealthMonitor_v4_232_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_244()
  l0 = self.box_PawnHealthMonitor_v4_232
  l1 = self.box_MultipleOR_244
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1090527761", "1090527761", "S11M040_Main", "box_PawnHealthMonitor_v4_232.Killed", "box_MultipleOR_244.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOController_196_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_248
  l0.CLO = "9223372061002943092"
  l0 = self.box_CLOController_196
  l1 = self.box_CLOController_248
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1313000804", "1313000804", "S11M040_Main", "box_CLOController_196.Deactivated", "box_CLOController_248.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Ordered_Output_79_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CarcassHits
  l0.B = 1
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|6910263"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_87_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1540029009", "1540029009", "S11M040_Main", "box_Ordered_Output_79.Out", "box_Compare_Integers_v2_87.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_79_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CarcassHits
  l0.B = 3
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|844303361"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_194_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1735400374", "1735400374", "S11M040_Main", "box_Ordered_Output_79.Out", "box_Compare_Integers_v2_194.In", clone, l0)
  l0:In()
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
  l0._name = "box_Simple_Node_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1192195325"
  l0.Out = self.f_box_Simple_Node_137_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1609995824", "1609995824", "S11M040_Main", "box_Simple_Node_121.Out", "box_Simple_Node_137.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S11M040_ElevatorMonitor_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1448506896", "1448506896", "S11M040_Main", "box_Get_Player_ID_20.Out", "box_S11M040_ElevatorMonitor_116.OpenDoors_ColdRoom", clone, l0)
  l0:OpenDoors_ColdRoom()
end
function export:f_box_HackableController_v2_228_HackForced()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_216
  l0.HackableEntity = "9223372070828183004"
  l0 = self.box_HackableController_v2_228
  l1 = self.box_HackableController_v2_216
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1338060977", "1338060977", "S11M040_Main", "box_HackableController_v2_228.HackForced", "box_HackableController_v2_216.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_MissionMessageController_v3_93_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_107()
  l0 = self.box_MissionMessageController_v3_93
  l1 = self.box_MultipleOR_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|690495119", "690495119", "S11M040_Main", "box_MissionMessageController_v3_93.Out", "box_MultipleOR_107.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Cinema_Zone_Cleanup_175_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_37
  l0.SceneEntity = "9223372050727482374"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S11/S11_LockDoor_CIN/s11_lockdoor_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1776124214", "1776124214", "S11M040_Main", "box_Cinema_Zone_Cleanup_175.Out", "box_PlaySequence_v5_37.Start", clone, l0)
  l0:Start()
end
function export:f_box_S11M040_ElevatorMonitor_157_DoorsClosed_BoilerRoom()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_167
  l0.Seconds = 0.5
  l0 = self.box_S11M040_ElevatorMonitor_157
  l1 = self.box_Timer_v2_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|93484852", "93484852", "S11M040_Main", "box_S11M040_ElevatorMonitor_157.DoorsClosed_BoilerRoom", "box_Timer_v2_167.Start", l0, l1)
  l1:Start()
end
function export:f_box_Toy_Car_Controller_174_CalledBack()
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
  l0._name = "box_Flying_Drone_Controller_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1394402615"
  l0.CalledBack = DummyFunction
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1596839734", "1596839734", "S11M040_Main", "box_Toy_Car_Controller_174.CalledBack", "box_Flying_Drone_Controller_177.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_MissionLayer_v2_104_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1513780909"
  l0.Out = self.f_box_Get_Player_ID_20_Out
  l0 = self.box_MissionLayer_v2_104
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|339986937", "339986937", "S11M040_Main", "box_MissionLayer_v2_104.Loaded", "box_Get_Player_ID_20.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_95_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2029535182"
  l0.Out = self.f_box_Get_Player_ID_80_Out
  l0 = self.box_MissionLayer_v2_95
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|270627705", "270627705", "S11M040_Main", "box_MissionLayer_v2_95.Loaded", "box_Get_Player_ID_80.In", l0, l1)
  l1:In()
end
function export:f_box_UIController_272_ContextDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_UIController_276
  l0.UIElement = "MessageBox"
  l0 = self.box_UIController_272
  l1 = self.box_UIController_276
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|349181321", "349181321", "S11M040_Main", "box_UIController_272.ContextDisabled", "box_UIController_276.EnableDisplay", l0, l1)
  l1:EnableDisplay()
end
function export:f_box_Compare_Boolean_v2_91_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_107()
  l0 = self.box_MultipleOR_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1855736437", "1855736437", "S11M040_Main", "box_Compare_Boolean_v2_91.A_is_False", "box_MultipleOR_107.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_91_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_93
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M040.Objectives.Objective040",
    item = "Objective",
    id = "403793"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M040.Objectives.Objective010",
    item = "Objective",
    id = "359329"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|445487223", "445487223", "S11M040_Main", "box_Compare_Boolean_v2_91.A_is_True", "box_MissionMessageController_v3_93.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MultipleOR_281_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_36
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_281
  l1 = self.box_MissionCheckpointReach_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1558038577", "1558038577", "S11M040_Main", "box_MultipleOR_281.Out", "box_MissionCheckpointReach_36.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_97_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_71()
  l0 = self.box_OnceOnly_v3_97
  l1 = self.box_Timer_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1558758825", "1558758825", "S11M040_Main", "box_OnceOnly_v3_97.Out", "box_Timer_v2_71.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_274_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FromCheckpoint2
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_286"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|692478699"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_286_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_286_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|660182033", "660182033", "S11M040_Main", "box_Ordered_Output_274.Out", "box_Compare_Boolean_v2_286.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_274_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_231()
  l0 = self.box_OnceOnly_v3_231
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1961938226", "1961938226", "S11M040_Main", "box_Ordered_Output_274.Out", "box_OnceOnly_v3_231.In", clone, l0)
  l0:In(0)
end
function export:f_box_Pawn_Health_Controller_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_70()
  l0 = self.box_AISquadStateMonitor_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1995796704", "1995796704", "S11M040_Main", "box_Pawn_Health_Controller_11.Out", "box_AISquadStateMonitor_70.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_185_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1585676311"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_187_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_187_Out_1
  l0 = self.box_MultipleOR_185
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|322244942", "322244942", "S11M040_Main", "box_MultipleOR_185.Out", "box_Ordered_Output_187.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_187_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Wrench
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|8065967"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_247_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1127960272", "1127960272", "S11M040_Main", "box_Ordered_Output_187.Out", "box_VisibilityController_v2_247.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_187_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_226()
  l0 = self.box_CLOMonitor_226
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|866921267", "866921267", "S11M040_Main", "box_Ordered_Output_187.Out", "box_CLOMonitor_226.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_100_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_3
  l0.PGTMissionArea = "9223372046513930445"
  l0 = self.box_MissionCheckpointReach_100
  l1 = self.box_PGTController_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|139389385", "139389385", "S11M040_Main", "box_MissionCheckpointReach_100.Out", "box_PGTController_v2_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetActionMap_v2_60_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_133
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|536614632", "536614632", "S11M040_Main", "box_SetActionMap_v2_60.Pushed", "box_CinematicPrep_133.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_UIController_170_ContextEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_UIController_275
  l0.UIElement = "MessageBox"
  l0 = self.box_UIController_170
  l1 = self.box_UIController_275
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|987365291", "987365291", "S11M040_Main", "box_UIController_170.ContextEnabled", "box_UIController_275.DisableDisplay", l0, l1)
  l1:DisableDisplay()
end
function export:f_box_S11M040_ElevatorMonitor_159_DoorsOpened_BoilerRoom()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_132
  l0.Entity = "9223372061323390713"
  l0.MarkerLocId = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M040.Objectives.Objective050",
    item = "Objective",
    id = "359333"
  }
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  l0 = self.box_S11M040_ElevatorMonitor_159
  l1 = self.box_Interact_Gameplay_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2068804650", "2068804650", "S11M040_Main", "box_S11M040_ElevatorMonitor_159.DoorsOpened_BoilerRoom", "box_Interact_Gameplay_132.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_204_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|849949806"
  l0.Out = self.f_box_Simple_Node_147_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1452289840", "1452289840", "S11M040_Main", "box_Simple_Node_204.Out", "box_Simple_Node_147.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_107_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|969616872"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_203_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_203_Out_1
  l0 = self.box_MultipleOR_107
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|683019493", "683019493", "S11M040_Main", "box_MultipleOR_107.Out", "box_Ordered_Output_203.In", l0, l1)
  l1:In()
end
function export:f_box_UIController_276_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_UIController_278
  l0.UIElement = "Profiler"
  l0 = self.box_UIController_276
  l1 = self.box_UIController_278
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1165298059", "1165298059", "S11M040_Main", "box_UIController_276.Enabled", "box_UIController_278.EnableDisplay", l0, l1)
  l1:EnableDisplay()
end
function export:f_box_Timer_v2_71_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_98
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051626201302"
  l0 = self.box_Timer_v2_71
  l1 = self.box_PhoneCommunicationController_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1004389724", "1004389724", "S11M040_Main", "box_Timer_v2_71.TimeElapsed", "box_PhoneCommunicationController_98.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_CLOController_182_Activated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_154()
  l0 = self.box_CLOController_182
  l1 = self.box_CLOController_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|969255269", "969255269", "S11M040_Main", "box_CLOController_182.Activated", "box_CLOController_154.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_182_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_154()
  l0 = self.box_CLOController_182
  l1 = self.box_CLOController_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|770975511", "770975511", "S11M040_Main", "box_CLOController_182.Deactivated", "box_CLOController_154.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Ordered_Output_221_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Sitara
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_210"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1390741038"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_210_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|906230348", "906230348", "S11M040_Main", "box_Ordered_Output_221.Out", "box_VisibilityController_v2_210.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_221_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_214()
  l0 = self.box_CLOMonitor_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1199521045", "1199521045", "S11M040_Main", "box_Ordered_Output_221.Out", "box_CLOMonitor_214.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PawnHealthMonitor_v4_190_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v4_232()
  l0 = self.box_PawnHealthMonitor_v4_190
  l1 = self.box_PawnHealthMonitor_v4_232
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|369748130", "369748130", "S11M040_Main", "box_PawnHealthMonitor_v4_190.Disabled", "box_PawnHealthMonitor_v4_232.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PawnHealthMonitor_v4_190_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v4_232()
  l0 = self.box_PawnHealthMonitor_v4_190
  l1 = self.box_PawnHealthMonitor_v4_232
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1379028905", "1379028905", "S11M040_Main", "box_PawnHealthMonitor_v4_190.Enabled", "box_PawnHealthMonitor_v4_232.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PawnHealthMonitor_v4_190_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_244()
  l0 = self.box_PawnHealthMonitor_v4_190
  l1 = self.box_MultipleOR_244
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2063690041", "2063690041", "S11M040_Main", "box_PawnHealthMonitor_v4_190.Killed", "box_MultipleOR_244.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Integer_Arithmetics_193_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.CarcassHits = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1480394049"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_79_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_79_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2137426246", "2137426246", "S11M040_Main", "box_Integer_Arithmetics_193.Out", "box_Ordered_Output_79.In", clone, l0)
  l0:In()
end
function export:f_box_SetActionMap_v2_81_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1000329255"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_42_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1970879069", "1970879069", "S11M040_Main", "box_SetActionMap_v2_81.Pushed", "box_Show_Or_Hide_All_UI_42.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_MoveableEntityController_63_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_136
  l0.CLO = "9223372047192555758"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1199813425", "1199813425", "S11M040_Main", "box_MoveableEntityController_63.MovedBackward", "box_CLOController_136.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_SetActionMap_v2_164_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_270
  l0.SoundId = "soundbinary/1948305944.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|50160832", "50160832", "S11M040_Main", "box_SetActionMap_v2_164.Popped", "box_PlayDialog_v2_270.Start", clone, l0)
  l0:Start()
end
function export:f_box_AI_Agent_Zone_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Escape_Gameplay_94
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372048542301207"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|439162187", "439162187", "S11M040_Main", "box_AI_Agent_Zone_9.Out", "box_Escape_Gameplay_94.Start", clone, l0)
  l0:Start()
end
function export:f_box_Get_Player_ID_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S11M040_ElevatorMonitor_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1221161640", "1221161640", "S11M040_Main", "box_Get_Player_ID_38.Out", "box_S11M040_ElevatorMonitor_142.OpenDoors_ColdRoom", clone, l0)
  l0:OpenDoors_ColdRoom()
end
function export:f_box_Timer_v2_271_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_UIController_272
  l0.UIContext = "SecurityCameraCinema"
  l0 = self.box_Timer_v2_271
  l1 = self.box_UIController_272
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|881934632", "881934632", "S11M040_Main", "box_Timer_v2_271.TimeElapsed", "box_UIController_272.DisableUIContext", l0, l1)
  l1:DisableUIContext()
end
function export:f_box_MissionMessageController_v3_123_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372046513954016"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1718173800"
  l0.Out = self.f_box_AI_Agent_Zone_9_Out
  l0 = self.box_MissionMessageController_v3_123
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|260092634", "260092634", "S11M040_Main", "box_MissionMessageController_v3_123.Out", "box_AI_Agent_Zone_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_140_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372059582107983"
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
  l0._name = "box_Cinema_Zone_Cleanup_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1528476085"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_175_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1029994269", "1029994269", "S11M040_Main", "box_Simple_Node_140.Out", "box_Cinema_Zone_Cleanup_175.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Compare_Boolean_v2_282_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_266
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|694371556", "694371556", "S11M040_Main", "box_Compare_Boolean_v2_282.A_is_False", "box_Timer_v2_266.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_282_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_213"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1913044322"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_213_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1660114664", "1660114664", "S11M040_Main", "box_Compare_Boolean_v2_282.A_is_True", "box_SetActionMap_v2_213.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_Simple_Node_206_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_85
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346361"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|474037318", "474037318", "S11M040_Main", "box_Simple_Node_206.Out", "box_PhoneCommunicationController_85.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_MultipleOR_285_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_43
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M040.Objectives.Objective040",
    item = "Objective",
    id = "403793"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MultipleOR_285
  l1 = self.box_MissionMessageController_v3_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|675801360", "675801360", "S11M040_Main", "box_MultipleOR_285.Out", "box_MissionMessageController_v3_43.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_ReinforcementSystemMonitor_v2_256_None()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_262"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|685513015"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_262_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_262_Out_1
  l0 = self.box_ReinforcementSystemMonitor_v2_256
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|294727750", "294727750", "S11M040_Main", "box_ReinforcementSystemMonitor_v2_256.None", "box_Ordered_Output_262.In", l0, l1)
  l1:In()
end
function export:f_box_ReinforcementSystemMonitor_v2_256_Reinforcing()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_258"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1184796620"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_258_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_258_Out_1
  l0 = self.box_ReinforcementSystemMonitor_v2_256
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1645510127", "1645510127", "S11M040_Main", "box_ReinforcementSystemMonitor_v2_256.Reinforcing", "box_Ordered_Output_258.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_268_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_267
  l0.SoundId = "soundbinary/2119643738.bnk"
  l0 = self.box_Timer_v2_268
  l1 = self.box_PlayDialog_v2_267
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1123019020", "1123019020", "S11M040_Main", "box_Timer_v2_268.TimeElapsed", "box_PlayDialog_v2_267.Start", l0, l1)
  l1:Start()
end
function export:f_box_Interact_Gameplay_45_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_33()
  l0 = self.box_Interact_Gameplay_45
  l1 = self.box_InteractionScriptMonitor_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|453428810", "453428810", "S11M040_Main", "box_Interact_Gameplay_45.Interacted", "box_InteractionScriptMonitor_v2_33.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Interact_Gameplay_45_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_33()
  l0 = self.box_Interact_Gameplay_45
  l1 = self.box_InteractionScriptMonitor_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1467955956", "1467955956", "S11M040_Main", "box_Interact_Gameplay_45.Started", "box_InteractionScriptMonitor_v2_33.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CinematicPrep_86_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|73115604"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_8_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_86
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1280947184", "1280947184", "S11M040_Main", "box_CinematicPrep_86.PostOut", "box_Show_Or_Hide_All_UI_8.Show", l0, l1)
  l1:Show()
end
function export:f_box_Timer_v2_236_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_86
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_236
  l1 = self.box_CinematicPrep_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1825979380", "1825979380", "S11M040_Main", "box_Timer_v2_236.TimeElapsed", "box_CinematicPrep_86.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_ListForEach_112_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_112
  self.EntityDog = l0.Data
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1211104001"
  l0.Out = self.f_box_Simple_Node_48_Out
  l0 = self.box_ListForEach_112
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|491368065", "491368065", "S11M040_Main", "box_ListForEach_112.EndOfList", "box_Simple_Node_48.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_112_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_112
  self.EntityDog = l0.Data
end
function export:f_box_ListForEach_112_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_112
  self.EntityDog = l0.Data
  l0 = self.box_AISquadRelationshipController_108
  l0.Target = self.EntityDog
  l0.Affiliation = "T_13"
  l0.Relationship = "NotThreat"
  l0 = self.box_ListForEach_112
  l1 = self.box_AISquadRelationshipController_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1291174928", "1291174928", "S11M040_Main", "box_ListForEach_112.GotNext", "box_AISquadRelationshipController_108.SetRelationship", l0, l1)
  l1:SetRelationship()
end
function export:f_box_ListForEach_112_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_112
  self.EntityDog = l0.Data
end
function export:f_box_ListForEach_112_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_112
  self.EntityDog = l0.Data
end
function export:f_box_MultipleOR_145_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|772268556"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_215_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_215_Out_1
  l0 = self.box_MultipleOR_145
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1559642285", "1559642285", "S11M040_Main", "box_MultipleOR_145.Out", "box_Ordered_Output_215.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_47_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_109
  l0.Seconds = 0.5
  l0 = self.box_Multiple_AND_47
  l1 = self.box_Timer_v2_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1922842271", "1922842271", "S11M040_Main", "box_Multiple_AND_47.Out", "box_Timer_v2_109.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_151_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_151
  self.Dog_Boiler_Room = l0.UserID
  l0 = self.box_CLOController_148
  l0.CLO = "9223372055944866311"
  l0 = self.box_CLOController_151
  l1 = self.box_CLOController_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|399187301", "399187301", "S11M040_Main", "box_CLOController_151.OnUserInPlace", "box_CLOController_148.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListWriter_243_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_243
  self.EntitiesDogs_List = l0.Target
  l0 = self.box_AISquadRelationshipController_239
  l0.Target = self.Dog_Layout_3
  l0.Affiliation = "T_13"
  l0.Relationship = "NotThreat"
  l0 = self.box_ListWriter_243
  l1 = self.box_AISquadRelationshipController_239
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|939202523", "939202523", "S11M040_Main", "box_ListWriter_243.Added", "box_AISquadRelationshipController_239.SetRelationship", l0, l1)
  l1:SetRelationship()
end
function export:f_box_ListWriter_243_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_243
  self.EntitiesDogs_List = l0.Target
end
function export:f_box_ListWriter_243_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_243
  self.EntitiesDogs_List = l0.Target
end
function export:f_box_SecurityCamController_264_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_NoMovement_CamOnly"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1706478891"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_164_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1561012804", "1561012804", "S11M040_Main", "box_SecurityCamController_264.CanExitSet", "box_SetActionMap_v2_164.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_Multiple_AND_110_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_Multiple_AND_110
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|997674583", "997674583", "S11M040_Main", "box_Multiple_AND_110.Out", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_UIController_277_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_281()
  l0 = self.box_UIController_277
  l1 = self.box_MultipleOR_281
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1611485682", "1611485682", "S11M040_Main", "box_UIController_277.Disabled", "box_MultipleOR_281.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetActionMap_v2_213_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_283()
  l0 = self.box_MultipleOR_283
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|364066704", "364066704", "S11M040_Main", "box_SetActionMap_v2_213.Popped", "box_MultipleOR_283.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_ListWriter_241_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_241
  self.EntitiesDogs_List = l0.Target
  l0 = self.box_AISquadRelationshipController_240
  l0.Target = self.Dog_Layout_1
  l0.Affiliation = "T_13"
  l0.Relationship = "NotThreat"
  l0 = self.box_ListWriter_241
  l1 = self.box_AISquadRelationshipController_240
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|447141398", "447141398", "S11M040_Main", "box_ListWriter_241.Added", "box_AISquadRelationshipController_240.SetRelationship", l0, l1)
  l1:SetRelationship()
end
function export:f_box_ListWriter_241_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_241
  self.EntitiesDogs_List = l0.Target
end
function export:f_box_ListWriter_241_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_241
  self.EntitiesDogs_List = l0.Target
end
function export:f_box_S11M040_ElevatorMonitor_144_DoorsOpened_ColdRoom()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AI_Arena_CombatState
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2144369266"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_66_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_66_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_S11M040_ElevatorMonitor_144
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1900472168", "1900472168", "S11M040_Main", "box_S11M040_ElevatorMonitor_144.DoorsOpened_ColdRoom", "box_Compare_Boolean_v2_66.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_124_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1196512776"
  l0.Out = self.f_box_Get_Player_ID_56_Out
  l0 = self.box_MissionLayer_v2_124
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1411593772", "1411593772", "S11M040_Main", "box_MissionLayer_v2_124.Loaded", "box_Get_Player_ID_56.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_41_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S11M040_ElevatorMonitor_52()
  l0 = self.box_Timer_v2_41
  l1 = self.box_S11M040_ElevatorMonitor_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|162433294", "162433294", "S11M040_Main", "box_Timer_v2_41.TimeElapsed", "box_S11M040_ElevatorMonitor_52.CloseDoors_ColdRoom", l0, l1)
  l1:CloseDoors_ColdRoom()
end
function export:f_box_SetActionMap_v2_118_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_NoMovement_CamOnly"
  l0.ActionMapName = nil
  l0.ActionMapPriority = "DominoAboveNormal"
  l0._graph = self
  l0._name = "box_SetActionMap_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|338400289"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_127_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|554216269", "554216269", "S11M040_Main", "box_SetActionMap_v2_118.Popped", "box_SetActionMap_v2_127.Push", clone, l0)
  l0:Push()
end
function export:f_box_CLOMonitor_227_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_227
  self.Wrench = l0.UserID
end
function export:f_box_CLOMonitor_227_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_227
  self.Wrench = l0.UserID
end
function export:f_box_CLOMonitor_227_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_227
  self.Wrench = l0.UserID
  self:OnEnter_box_MultipleOR_185()
  l1 = self.box_MultipleOR_185
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|434908880", "434908880", "S11M040_Main", "box_CLOMonitor_227.OnUserInPlace", "box_MultipleOR_185.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionCheckpointReach_101_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.From_CheckPoint_1
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1537758168"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_91_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_91_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MissionCheckpointReach_101
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1982626905", "1982626905", "S11M040_Main", "box_MissionCheckpointReach_101.Out", "box_Compare_Boolean_v2_91.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_255_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_253
  l0.User = self.CargoVehicle_Outdoor
  l0 = self.box_CLOMonitor_255
  l1 = self.box_CLOController_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1727496747", "1727496747", "S11M040_Main", "box_CLOMonitor_255.Disabled", "box_CLOController_253.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_CLOMonitor_255_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_255
  self.CargoVehicle_Outdoor = l0.UserID
  self:OnEnter_box_CLOMonitor_255()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1357977241", "1357977241", "S11M040_Main", "box_CLOMonitor_255.GotUser", "box_CLOMonitor_255.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOMonitor_255_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_255
  self.CargoVehicle_Outdoor = l0.UserID
end
function export:f_box_CLOMonitor_255_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_255
  self.CargoVehicle_Outdoor = l0.UserID
end
function export:f_box_Ordered_Output_259_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S11M040_SASDoorMonitor_89()
  l0 = self.box_S11M040_SASDoorMonitor_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1809255447", "1809255447", "S11M040_Main", "box_Ordered_Output_259.Out", "box_S11M040_SASDoorMonitor_89.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_259_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2097703230", "2097703230", "S11M040_Main", "box_Ordered_Output_259.Out", "box_SetBoolean_v2_88.True", clone, l0)
  l0:True()
end
function export:f_box_CLOController_138_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_138
  self.Dog_Arena_2 = l0.UserID
  l0 = self.box_ListWriter_134
  l0.Input = self.EntitiesDogs_List
  l0.Data[0] = self.Dog_Boiler_Room
  l0.Data[1] = self.Dog_Arena_1
  l0.Data[2] = self.Dog_Arena_2
  l0 = self.box_CLOController_138
  l1 = self.box_ListWriter_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1240163150", "1240163150", "S11M040_Main", "box_CLOController_138.OnUserInPlace", "box_ListWriter_134.Add", l0, l1)
  l1:Add()
end
function export:f_box_AISquadRelationshipController_240_RelationshipSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_245()
  l0 = self.box_AISquadRelationshipController_240
  l1 = self.box_MultipleOR_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1279371217", "1279371217", "S11M040_Main", "box_AISquadRelationshipController_240.RelationshipSet", "box_MultipleOR_245.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CLOController_141_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_141
  self.Dog_Layout_2 = l0.UserID
  l0 = self.box_ListWriter_230
  l0.Input = self.EntitiesDogs_List
  l0.Data[0] = self.Dog_Layout_2
  l0 = self.box_CLOController_141
  l1 = self.box_ListWriter_230
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1032307189", "1032307189", "S11M040_Main", "box_CLOController_141.OnUserInPlace", "box_ListWriter_230.Add", l0, l1)
  l1:Add()
end
function export:f_box_Get_Player_ID_80_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_74()
  l0 = self.box_MultipleOR_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1655794595", "1655794595", "S11M040_Main", "box_Get_Player_ID_80.Out", "box_MultipleOR_74.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_SecurityCamController_32_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1978398799"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_118_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1435073941", "1435073941", "S11M040_Main", "box_SecurityCamController_32.CanExitSet", "box_SetActionMap_v2_118.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_SecurityCamController_32_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_32()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|750446207", "750446207", "S11M040_Main", "box_SecurityCamController_32.EnterForced", "box_SecurityCamController_32.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_SecurityCamController_32_InitialTargetSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_32()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|247257227", "247257227", "S11M040_Main", "box_SecurityCamController_32.InitialTargetSet", "box_SecurityCamController_32.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_MissionLayer_v2_22_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1455645379"
  l0.Out = self.f_box_Get_Player_ID_99_Out
  l0 = self.box_MissionLayer_v2_22
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1267237815", "1267237815", "S11M040_Main", "box_MissionLayer_v2_22.Loaded", "box_Get_Player_ID_99.In", l0, l1)
  l1:In()
end
function export:f_box_Toy_Car_Controller_179_CalledBack()
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
  l0._name = "box_Flying_Drone_Controller_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1432816257"
  l0.CalledBack = self.f_box_Flying_Drone_Controller_178_CalledBack
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|869231853", "869231853", "S11M040_Main", "box_Toy_Car_Controller_179.CalledBack", "box_Flying_Drone_Controller_178.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_S11M040_ElevatorMonitor_142_DoorsOpened_ColdRoom()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_83
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_S11M040_ElevatorMonitor_142
  l1 = self.box_CinematicPrep_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1812994025", "1812994025", "S11M040_Main", "box_S11M040_ElevatorMonitor_142.DoorsOpened_ColdRoom", "box_CinematicPrep_83.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Player_State_Controller_75_CoverEntered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Camera_Lock_Controller_229
  l0.BlendInTime = 0
  l0.BlendOutTime = 0
  l0.Target = "9223372060206073083"
  l0.Duration = 0.1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|965185676", "965185676", "S11M040_Main", "box_Player_State_Controller_75.CoverEntered", "box_Camera_Lock_Controller_229.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySequence_v5_29_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_92()
  l0 = self.box_PlaySequence_v5_29
  l1 = self.box_OnceOnly_v3_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|546016055", "546016055", "S11M040_Main", "box_PlaySequence_v5_29.Finished", "box_OnceOnly_v3_92.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_29_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_92()
  l0 = self.box_PlaySequence_v5_29
  l1 = self.box_OnceOnly_v3_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1850898086", "1850898086", "S11M040_Main", "box_PlaySequence_v5_29.Skipped", "box_OnceOnly_v3_92.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_29_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_29
  l1 = self.box_S11M040_ElevatorMonitor_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1828226872", "1828226872", "S11M040_Main", "box_PlaySequence_v5_29.Started", "box_S11M040_ElevatorMonitor_119.CloseDoors_BoilerRoom", l0, l1)
  l1:CloseDoors_BoilerRoom()
end
function export:f_box_Timer_v2_39_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_102
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052435893031"
  l0 = self.box_Timer_v2_39
  l1 = self.box_PhoneCommunicationController_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2017209680", "2017209680", "S11M040_Main", "box_Timer_v2_39.TimeElapsed", "box_PhoneCommunicationController_102.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMessageController_v3_43_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Neutralize_Gameplay_5
  l0.Entity = self.Pablo
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 1
  l0 = self.box_MissionMessageController_v3_43
  l1 = self.box_Neutralize_Gameplay_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1371836673", "1371836673", "S11M040_Main", "box_MissionMessageController_v3_43.Out", "box_Neutralize_Gameplay_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_153_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_231()
  l0 = self.box_Timer_v2_153
  l1 = self.box_OnceOnly_v3_231
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1653111933", "1653111933", "S11M040_Main", "box_Timer_v2_153.TimeElapsed", "box_OnceOnly_v3_231.In", l0, l1)
  l1:In(1)
end
function export:f_box_CLOController_165_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_165
  self.Talker_OutdoorLayout = l0.UserID
  l0 = self.box_CinematicPrep_72
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CLOController_165
  l1 = self.box_CinematicPrep_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1811860692", "1811860692", "S11M040_Main", "box_CLOController_165.OnUserInPlace", "box_CinematicPrep_72.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MultipleOR_220_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1683849209"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_221_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_221_Out_1
  l0 = self.box_MultipleOR_220
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|504444590", "504444590", "S11M040_Main", "box_MultipleOR_220.Out", "box_Ordered_Output_221.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_114_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_112
  l0.List = self.EntitiesDogs_List
  l0 = self.box_MultipleOR_114
  l1 = self.box_ListForEach_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|561097069", "561097069", "S11M040_Main", "box_MultipleOR_114.Out", "box_ListForEach_112.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_CinematicPrep_133_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_29
  l0.SceneEntity = "9223372047683038295"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S11/S11_GiveUpWeapon_CIN/s11_giveupweapon_cin.seq"
  l0 = self.box_CinematicPrep_133
  l1 = self.box_PlaySequence_v5_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|68145788", "68145788", "S11M040_Main", "box_CinematicPrep_133.PreOut", "box_PlaySequence_v5_29.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Boolean_v2_66_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1503138124"
  l0.Out = self.f_box_Simple_Node_121_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|16244623", "16244623", "S11M040_Main", "box_Compare_Boolean_v2_66.A_is_False", "box_Simple_Node_121.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_66_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_46()
  l0 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1393125218", "1393125218", "S11M040_Main", "box_Compare_Boolean_v2_66.A_is_True", "box_MultipleOR_46.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CLOMonitor_254_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_252
  l0.User = self.Talker_MissionStart
  l0 = self.box_CLOMonitor_254
  l1 = self.box_CLOController_252
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|571418204", "571418204", "S11M040_Main", "box_CLOMonitor_254.Disabled", "box_CLOController_252.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_CLOMonitor_254_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_254
  self.Talker_MissionStart = l0.UserID
  self:OnEnter_box_CLOMonitor_254()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|178558968", "178558968", "S11M040_Main", "box_CLOMonitor_254.GotUser", "box_CLOMonitor_254.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOMonitor_254_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_254
  self.Talker_MissionStart = l0.UserID
end
function export:f_box_CLOMonitor_254_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_254
  self.Talker_MissionStart = l0.UserID
end
function export:OnEnter_box_Multiple_AND_10()
end
function export:OnEnter_box_InteractionScriptMonitor_v2_78()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_78
  l0.InteractionScriptEntity = "9223372061323390713"
end
function export:OnEnter_box_AISquadStateMonitor_24()
  local l0
  l0 = self.box_AISquadStateMonitor_24
  l0.Affiliation = "T_13"
end
function export:OnEnter_box_AISquadStateMonitor_58()
  local l0
  l0 = self.box_AISquadStateMonitor_58
  l0.Affiliation = "T_13"
end
function export:OnEnter_box_Mission_End_31()
  local l0
  l0 = self.box_Mission_End_31
  l0.Checkpoint = "CheckPoint_4"
  l0.MissionLayer = "S11M040_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_PGTMonitor_v2_23()
  local l0
  l0 = self.box_PGTMonitor_v2_23
  l0.PGTCLO[0] = "9223372047302940784"
  l0.PGTCLO[1] = "9223372051626072270"
  l0.PGTCLO[2] = "9223372047192585483"
  l0.PGTMissionArea = "9223372047192585451"
end
function export:OnEnter_box_TriggerMonitor_v2_181()
  local l0
  l0 = self.box_TriggerMonitor_v2_181
  l0.Trigger = "9223372050727542837"
end
function export:OnEnter_box_MultipleOR_244()
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_CLOMonitor_156()
  local l0
  l0 = self.box_CLOMonitor_156
  l0.CLO = "9223372047192585483"
end
function export:OnEnter_box_InteractionScriptMonitor_v2_191()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_191
  l0.InteractionScriptEntity = "9223372056337309020"
end
function export:OnEnter_box_S11M040_DogThreatMonitor_166()
  local l0
  l0 = self.box_S11M040_DogThreatMonitor_166
  l0.Cage = "9223372060206073083"
  l0.Trigger = "9223372057621198930"
  l0.Boolean = self.Cage_01
end
function export:OnEnter_box_CLOMonitor_14()
  local l0
  l0 = self.box_CLOMonitor_14
  l0.CLO = "9223372058510060045"
end
function export:OnEnter_box_S11M040_DogThreatMonitor_161()
  local l0
  l0 = self.box_S11M040_DogThreatMonitor_161
  l0.Cage = "9223372051797391544"
  l0.Trigger = "9223372057855038920"
  l0.Boolean = self.Cage_03
end
function export:OnEnter_box_S11M040_ElevatorMonitor_52()
end
function export:OnEnter_box_OnceOnly_v3_92()
end
function export:OnEnter_box_MultipleOR_283()
end
function export:OnEnter_box_MultipleOR_130()
end
function export:OnEnter_box_Multiple_AND_217()
end
function export:OnEnter_box_S11M040_SASDoorMonitor_90()
end
function export:OnEnter_box_S11M040_DogThreatMonitor_103()
  local l0
  l0 = self.box_S11M040_DogThreatMonitor_103
  l0.Cage = "9223372051797391562"
  l0.Trigger = "9223372057855038918"
  l0.Boolean = self.Cage_02
end
function export:OnEnter_box_OnceOnly_v3_192()
end
function export:OnEnter_box_LineOfSightMonitor_237()
  local l0
  l0 = self.box_LineOfSightMonitor_237
  l0.Target = "9223372057855038922"
end
function export:OnEnter_box_MultipleOR_74()
end
function export:OnEnter_box_PatrolPointMonitor_v2_163()
  local l0
  l0 = self.box_PatrolPointMonitor_v2_163
  l0.NPC = self.AI_Arena_2
end
function export:OnEnter_box_AISquadStateMonitor_70()
  local l0
  l0 = self.box_AISquadStateMonitor_70
  l0.Affiliation = "T_13"
end
function export:OnEnter_box_MultipleOR_261()
end
function export:OnEnter_box_OnceOnly_v3_26()
end
function export:OnEnter_box_HackableController_v2_152()
  local l0
  l0 = self.box_HackableController_v2_152
  l0.HackableEntityList = self.DoorCage_List
end
function export:OnEnter_box_CLOMonitor_214()
  local l0
  l0 = self.box_CLOMonitor_214
  l0.CLO = "9223372047464636836"
end
function export:OnEnter_box_TriggerMonitor_v2_222()
  local l0
  l0 = self.box_TriggerMonitor_v2_222
  l0.Trigger = "9223372064183595204"
end
function export:OnEnter_box_MultipleOR_200()
end
function export:OnEnter_box_LineOfSightMonitor_233()
  local l0
  l0 = self.box_LineOfSightMonitor_233
  l0.Target = "9223372057855038920"
end
function export:OnEnter_box_S11M040_SASDoorMonitor_89()
end
function export:OnEnter_box_CLOMonitor_219()
  local l0
  l0 = self.box_CLOMonitor_219
  l0.CLO = "9223372047464636836"
end
function export:OnEnter_box_MultipleOR_245()
end
function export:OnEnter_box_MissionZone_59()
  local l0
  l0 = self.box_MissionZone_59
  l0.MissionArea = "9223372048542301207"
  l0.MissionLayer = "S11M040_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_AgentStateMonitor_V2_180()
  local l0
  l0 = self.box_AgentStateMonitor_V2_180
  l0.NPC = self.AI_BackalleyFelony_4
end
function export:OnEnter_box_LineOfSightMonitor_234()
  local l0
  l0 = self.box_LineOfSightMonitor_234
  l0.Target = "9223372057855038918"
end
function export:OnEnter_box_CLOMonitor_226()
  local l0
  l0 = self.box_CLOMonitor_226
  l0.CLO = "9223372047464636840"
end
function export:OnEnter_box_CLOController_154()
  local l0
  l0 = self.box_CLOController_154
  l0.CLO = "9223372057015813361"
end
function export:OnEnter_box_ReinforcementSystemController_v2_172()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "T_13"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372043023253486"
  l0.AgentList = self.EntitiesReinforcementAIs_List
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|1264772084"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_box_ReinforcementSystemController_v2_172_ReinforcingStarted
  l0.ReinforcingStopped = self.f_box_ReinforcementSystemController_v2_172_ReinforcingStopped
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = self.f_box_ReinforcementSystemController_v2_172_ScriptedAgentsAdopted
end
function export:OnEnter_box_MultipleOR_263()
end
function export:OnEnter_box_InteractionScriptMonitor_v2_33()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_33
  l0.InteractionScriptEntity = "9223372061323390713"
end
function export:OnEnter_box_S11M040_DogThreatMonitor_96()
  local l0
  l0 = self.box_S11M040_DogThreatMonitor_96
  l0.Cage = "9223372051797391556"
  l0.Trigger = "9223372057855038922"
  l0.Boolean = self.Cage_04
end
function export:OnEnter_box_OnceOnly_v3_231()
end
function export:OnEnter_box_S11M040_SASDoorMonitor_76()
end
function export:OnEnter_box_OnceOnly_v3_84()
end
function export:OnEnter_box_MultipleOR_46()
end
function export:OnEnter_box_MultipleOR_44()
end
function export:OnEnter_box_PawnHealthMonitor_v4_232()
  local l0
  l0 = self.box_PawnHealthMonitor_v4_232
  l0.PawnList = self.AI_Arena_List
end
function export:OnEnter_box_MultipleOR_281()
end
function export:OnEnter_box_MultipleOR_185()
end
function export:OnEnter_box_MultipleOR_107()
end
function export:OnEnter_box_Timer_v2_71()
  local l0
  l0 = self.box_Timer_v2_71
  l0.Seconds = 2
end
function export:OnEnter_box_CLOController_182()
  local l0
  l0 = self.box_CLOController_182
  l0.CLO = "9223372057015813362"
end
function export:OnEnter_box_PawnHealthMonitor_v4_190()
  local l0
  l0 = self.box_PawnHealthMonitor_v4_190
  l0.PawnList = self.EntitiesDogs_List
end
function export:OnEnter_box_MultipleOR_285()
end
function export:OnEnter_box_ReinforcementSystemMonitor_v2_256()
  local l0
  l0 = self.box_ReinforcementSystemMonitor_v2_256
  l0.Affiliation = "T_13"
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_145()
end
function export:OnEnter_box_Multiple_AND_47()
end
function export:OnEnter_box_Multiple_AND_110()
end
function export:OnEnter_box_CLOMonitor_227()
  local l0
  l0 = self.box_CLOMonitor_227
  l0.CLO = "9223372047464636840"
end
function export:OnEnter_box_CLOMonitor_255()
  local l0
  l0 = self.box_CLOMonitor_255
  l0.CLO = "9223372052565217356"
end
function export:OnEnter_box_SecurityCamController_32()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372060502394980"
  l0.CameraEntityList = nil
  l0.TargetEntity = "9223372047192585483"
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M040\\S11M040.domino|@S11M040_Main|2030870255"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_32_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_32_EnterForced
  l0.InitialTargetSet = self.f_box_SecurityCamController_32_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_MultipleOR_220()
end
function export:OnEnter_box_MultipleOR_114()
end
function export:OnEnter_box_CLOMonitor_254()
  local l0
  l0 = self.box_CLOMonitor_254
  l0.CLO = "9223372047620714388"
end
_compilerVersion = 4
