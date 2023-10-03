export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIBuddyController.lua")
  cbox:RegisterBox("domino/System/AIBuddyMonitor.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/System/DrawWeapon_v2.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("domino/System/FelonyTargetMonitor.lua")
  cbox:RegisterBox("domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("domino/System/GameplayConversationController_v3.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/InputListenerMonitor.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingMonitor.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayerConflictMonitor.lua")
  cbox:RegisterBox("domino/System/PlayerStateController.lua")
  cbox:RegisterBox("domino/Library/common/MissionSpecificIngredients.PlayerOnlyTriggerNoRCTip.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Bus_Drive.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_hrscolding.S08M010_CIN_HRScolding_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_meetingbrody.S08M010_CIN_MeetingBrody_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_nudledump.S08M010_CIN_NudleDump_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_offthebus.S08M010_CIN_OffTheBus_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_onthebus.S08M010_CIN_OnTheBus_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010_IOP.S08M010_IOP_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_LocateTheCentralServer.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus01.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus02.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_WalkAndTalk.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.SearchArea.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:RegisterBox("domino/System/ToyCarController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingMonitor.lua")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3091844746.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4008843676.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2201325351.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1129789467.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/210957167.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3505892305.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.MissionTarget_GetInBus = "9223372046364939698"
  self.MissionTarget_ReachEscapeDrainPipe = "9223372046446093114"
  self.MissionTarget_ReachElevatorShaft = "9223372046446092886"
  self.MissionStartTrigger_TalktoHoratio = "9223372046446091220"
  self.VehicleState = 4
  self.BusPickupPoint = "9223372046364840713"
  self.HackableEntity_Rehackable_ResolveIOP = "9223372046446093343"
  self.NudleBus = nil
  self.S08_ProximityTrigger_ReachElevatorShaft = "9223372046446092888"
  self.MissionLayer = "S08M010_Main"
  self.MissionTarget_ReachBasement = "9223372046446093106"
  self.S08_ProximityTrigger_BasementDoorlocked = "9223372046446093116"
  self.S08_ProximityTrigger_ReachBasement = "9223372046446093108"
  self.S08_ProximityTrigger_StormDrainExit = "9223372046446093571"
  self.Player_Vehicle = nil
  self.MissionTarget_ResolveIOP = "9223372046446093110"
  self.TriggerEntity = nil
  self.NudleDestination = "9223372046058280831"
  self.MissionTarget_MeetHoratio = "9223372046446091218"
  self.CellPhone_Model_01_HackableAttractorControllerEntity_ManagerID = "9223372046446092876"
  self.MissionTarget_PlantBackdoor = "9223372046446093112"
  self.NudleBusDestination = "9223372046364861263"
  self.DisplayPreObjective = 1
  self.MissionTarget_HackManagerID = "9223372046446092874"
  self.NudleBusCLO = "9223372046058279615"
  self.Mission = "MissionList.9223372045954192521"
  self.S08_ProximityTrigger_DrainPipe = "9223372046446093569"
  self.Default_Checkpoint_2 = "9223372046446091620"
  self.Horatio = nil
  self.S08M010_Tagpoint_FrontLobbyPosition = "9223372046446091624"
  self.S08M010_CheckPoint_2 = "9223372046446091624"
  self.MissionTarget_FollowHoratio = "9223372046880010874"
  self.S08M010_ProximityTrigger_FollowHoratio = "9223372046880010872"
  self.S08M010_TagPoint_CelebrationSpot = "9223372046880011213"
  self.S08M010_ProximityTrigger_Leavethearea = "9223372046880011215"
  self.S08M010_ProximityTrigger_LocateServerRow = "9223372046880036240"
  self.IOP_ChildsPlay_StartCamera_0 = "9223372046347386559"
  self.ConversationUser2 = nil
  self.S08_MissionArea_SearchServerFarm = "9223372047081983903"
  self.s08m010_PGTMissionArea_MapBuilding = "9223372047141878755"
  self.s08m010_PGTMissionArea_ServerFarm = "9223372047141878255"
  self.s08m010_PGTMissionArea_FunOffice = "9223372047141816014"
  self.HoratioBusPassenger_NPC = nil
  self.CLO_HoratioBuddy = "9223372047386745105"
  self.HoratioBuddy_NPC = nil
  self.MissionTarget_ReachNudleMap = "9223372047421952156"
  self.s08m010_MissionArea_leavenudlemap = "9223372047421952659"
  self.s08m010_MissionArea_stealthebus = "9223372047422021227"
  self.S08m010_GenericInteract_Server = "9223372046334026510"
  self.Nudle_Server_GlassDoor_13 = "9223372047081983874"
  self.MissionTarget_EscapeHelper = "9223372047641530460"
  self.s08m010_MissionArea_followHoratio = "9223372047784168787"
  self.MissionTarget_locateServerRow = "9223372047980451414"
  self.Generic_profilable_entity_NOT_HackableEntity_row6 = "9223372047980451416"
  self.test = {}
  self.HoratioCarCLO = "9223372048305644582"
  self.HoratioCar = nil
  self.HackerSpaceLoader = "9223372047131482396"
  self.HackerSpaceLayer = "SF_08_Mission_Central_HMA_Hackerspace"
  self.S08M010_CheckPoint_0 = "9223372046880010532"
  self.S08M010_CheckPoint_1 = "9223372046446091622"
  self.s08m010_ProximityTrigger_ElevatorShaft_TS = "9223372048637112729"
  self.PGTArea = "9223372048120059814"
  self.s08m010_ProximityTrigger_coolingroom_TS = "9223372049908899097"
  self.Data_Container_GenericAnimatedObjectInteractive_wrong_1 = "9223372049981357849"
  self.Data_Container_GenericAnimatedObjectInteractive_wrong_3 = "9223372049981358301"
  self.Data_Container_GenericAnimatedObjectInteractive_wrong_2 = "9223372049981358303"
  self.VR_Loader = "9223372046334026588"
  self.CentralServerRowDoor = "9223372049861396170"
  self.Data_Container_GenericAnimatedObjectInteractive_wrong_4 = "9223372049981463205"
  self.Data_Container_GenericAnimatedObjectInteractive_wrong_5 = "9223372049981463971"
  self.Server_HackableEntity_ServerWrong_03 = "9223372050081565638"
  self.Server_HackableEntity_ServerWrong_04 = "9223372050081565649"
  self.Server_HackableEntity_ServerWrong_02 = "9223372050081565644"
  self.Server_HackableEntity_ServerWrong_01 = "9223372050081565642"
  self.Server_HackableEntity_Server = "9223372050081565640"
  self.HoratioSpawner = "9223372046869148077"
  self.S08M010_CheckPoint_9 = "9223372049782169336"
  self.Default_HRScolding_SpawnPosition = "9223372050203646350"
  self.s08m010_ProximityTrigger_RCPath_TS = "9223372050203866243"
  self.s08m010_ProximityTrigger_MarcusUpdate_TS = "9223372050261137895"
  self.Nudle_Server_Row6Backdoor = "9223372059737395914"
  self.Nudle_Server_Row6FrontDoor = "9223372059217365631"
  self.door_sliding_modern_kit_01_door_01_interactive_2 = "9223372050428188401"
  self.HoratioInstance = nil
  self.BusInstance = nil
  self.player = nil
  self.s08m010_ProximityTrigger_MarcusCloseToBus = "9223372051083190146"
  self.S08M010_Tag_BusDestination = "9223372046364861263"
  self.S08M010_Tag_BusDestination_between = "9223372051294722307"
  self.S08M010_Tag_BusDestination_start = "9223372051294914048"
  self.s08m010_FollowHoration_TagPoint = "9223372052006897018"
  self.LobbyDoor = "9223372056625329037"
  self.s08m010_ProximityTrigger_serverfarm_dooraccess = "9223372052105933200"
  self.ServerFarmKeyPad = "9223372059537922306"
  self.ServerFarm_VR = {}
  self.NudleUpperLMA = "SV_01_OfficePlex_LMA_VisitorsCenter01"
  self.NudleLowerLMA = "SV_01_OfficePlex_LMA_MapsRoom02"
  self.S08M010_ProximityTrigger_Stanford_Destination = "9223372055180270266"
  self.S08M010_Tag_BusDestination_Stanford = "9223372055180270255"
  self.CLO_NudleBus_AtBusStop_Stanford = "9223372055180270277"
  self.CLO_NudleBus_AtBusStop_Downtown = "9223372050140562145"
  self.CLO_HoratioBusPassenger_Downtown = "9223372046679024123"
  self.CLO_HoratioBusPassenger_Stanford = "9223372055180270278"
  self.s08m010_ProximityTrigger_sewer = "9223372055180440153"
  self.S08M010_Tag_MissionEnd_MeetHoratio = "9223372055275678031"
  self.s08m010_ProximityTrigger_WalkTalkDestination = "9223372055275835872"
  self.s08m010_AIAgentZone_NoCarOnHackerSpaceParkingSpot = "9223372048305644580"
  self.S08M010_ProximityTrigger_Stanford_Destination_side_1 = "9223372055811942747"
  self.S08M010_ProximityTrigger_Stanford_Destination_side_2 = "9223372055811942749"
  self.S08M010_ProximityTrigger_Stanford_Destination_side_3 = "9223372055811942751"
  self.S08M010_ProximityTrigger_Stanford_Destination_side_4 = "9223372055811942753"
  self.s08m010_ProximityTrigger_NudleMapEnter = "9223372047421952154"
  self.Default_SpawnPosition_AfterHRScolindCinematic = "9223372055180440156"
  self.S08_AIAgentZone_1stPickup = "9223372052004917118"
  self.S08M010_Tag_BusDestination_DownTown = "9223372046364840713"
  self.S08M010_ProximityTrigger_Downtown_Destination = "9223372056081474096"
  self.CLO_Horatio_ParkingLot = "9223372056081474099"
  self.CLO_Bus_ParkingLot = "9223372046058279615"
  self.s08m010_ProximityTrigger_ElevatorLobby_TS = "9223372056247381524"
  self.s08m010_ProximityTrigger_NudleMapEntrance_TS = "9223372056247381545"
  self.s08m010_ProximityTrigger_NudleMapEntrance01_TS = "9223372056247381545"
  self.NudleMapEntryTrigger = {}
  self.s08m010_ProximityTrigger_NudleMapEntrance02_TS = "9223372056247381595"
  self.ProximityTrigger_LeavingSewer = "9223372047641563036"
  self.HasNudleMapAccess = 0
  self.Elevator_Hackable_Cabin = "9223372055262308411"
  self.Elevator_Hackable_Machinery = "9223372055262308415"
  self.s08m010_ProximityTrigger_ServerFarm_dooraccess = "9223372052105933200"
  self.S08M010_CIN_045 = "9223372056614942523"
  self.Receptionist_CLO = "9223372057008326221"
  self.BusPassengers = {}
  self.CLO_BusPassenger_01 = "9223372057405415377"
  self.CLO_BusPassenger_02 = "9223372057405300556"
  self.CLO_BusPassenger_03 = "9223372057405300557"
  self.CLO_BusPassenger_04 = "9223372057405300558"
  self.CLO_BussPassenger_05 = "9223372057527429097"
  self.CLO_BussPassenger_06 = "9223372057527429098"
  self.CLO_BussPassenger_07 = "9223372057527429099"
  self.CLO_BussPassenger_08 = "9223372057527429100"
  self.Nudle_FlushPanel_0 = "9223372047081836510"
  self.s08m010_MovableHackableEntity_45 = "9223372046334047334"
  self.SlidePipe = "9223372047081835883"
  self.Nudle_CoolingTankPanel_0 = "9223372047081863695"
  self.Nudle_CoolingTankPanel_ControlBox_HackableEntity_0 = "9223372051354573935"
  self.Tablet_HackableEntity_NudleMapCredential = "9223372053062079261"
  self.Nudle_FlushPanel_1 = "9223372057689134533"
  self.S08M010_CIN_048 = "9223372058129035694"
  self.xP = 0
  self.yP = 0
  self.zP = 0
  self.xR = 0
  self.yR = 0
  self.zR = 0
  self.Greeter_CLO = "9223372059160391748"
  self.WalkTalk_LaneRestriction_AroundNudle = "9223372059416331651"
  self.BulletDamage = "$#2873080202"
  self.FunOfficeSlide = "9223372044607609263"
  self.OutsideSlide = "9223372044607609110"
  self.LobbySlide = "9223372047081870292"
  self.ConversationStarted = 0
  self.Nudle_ServerFarm_AccessCodeDoor = "9223372055691227859"
  self.Layer_ServerFarmDump = "S08M010_ServerFarmDump"
  self.MissionTarget_ReachMaintenanceRoom = "9223372067217966232"
  self.s08m010_ProximityTrigger_elevatormaintenanceroom = "9223372067217966233"
  self.HackableEntities = {}
  self.Server_HackableEntity_ServerWrong_05 = "9223372050081565651"
  self.Trigger_PlayerInUtilityRoom = "9223372069060787713"
  self.S08M010_OutsideServerFarmUtilityRoom = "9223372069060787715"
  self.ProximityTrigger_ServerFarm_RCLimit_1 = "9223372068184316365"
  self.ProximityTrigger_ServerFarmLMA_RC_Limit_2 = "9223372069778534139"
  self.FunOfficeDoorPanels = {}
  self.FunOfficeDoorPanel01 = "9223372056625328354"
  self.FunOfficeDoorPanel02 = "9223372056625328366"
  self.FunOfficeDoorPanel03 = "9223372056625328374"
  self.FunOfficeDoorPanel04 = "9223372056625328350"
  self.FunOfficeDoorPanel05 = "9223372056625328362"
  self.FunOfficeDoorPanel06 = "9223372056625328378"
  self.FunOfficeDoorPanel07 = "9223372057066477341"
  self.FunOfficeDoorPanel08 = "9223372057066477337"
  self.Tablet_HackableEntity_FunOffice_Access = "9223372070665899108"
  self.s08m10_AIAgentZone_501_CinematicClean = "9223372071449023383"
  self.VR_SourceNode_51 = "9223372046334026574"
  self.VR_AccessNode_EXT_EntranceNodeEntity_door_04 = "9223372051982758452"
  self.VR_AccessNode_EXT_EntranceNodeEntity_door_01 = "9223372051982758460"
  self.VR_AccessNode_EXT_EntranceNodeEntity_door_07 = "9223372051982758442"
  self.VR_AccessNode_EXT_EntranceNodeEntity_door_10 = "9223372051982758434"
  self.s08m010_ProximityTrigger_MarcusOnly_Tip = "9223372072097325515"
  self._698586 = {
    section = "",
    item = "",
    id = "-1"
  }
  self[15] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_15_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[81] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[81]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_81_Unloaded
  l0.Reseted = DummyFunction
  self[260] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[260]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_260_PostOut
  self[246] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[246]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_246_OnUserInPlace
  self[1] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[1]
  l0._graph = self
  self[367] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[367]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self[101] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[101]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_101_PostOut
  self[223] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[223]
  l0._graph = self
  l0.PreOut = self.f_223_PreOut
  l0.PostOut = DummyFunction
  self[205] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[205]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_205_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_205_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[99] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[99]
  l0._graph = self
  l0.Enabled = self.f_99_Enabled
  l0.Disabled = self.f_99_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_99_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[169] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[169]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_169_Out
  l0.ResetOut = DummyFunction
  self[204] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[204]
  l0._graph = self
  l0.StartCommunicationOut = self.f_204_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[316] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[316]
  l0._graph = self
  l0.Out = self.f_316_Out
  l0.MessageCompleted = DummyFunction
  self[333] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[333]
  l0._graph = self
  l0.StartCommunicationOut = self.f_333_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[162] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[162]
  l0._graph = self
  l0.Enabled = self.f_162_Enabled
  l0.Disabled = self.f_162_Disabled
  l0.Enter = self.f_162_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[211] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[211]
  l0._graph = self
  l0.Shown = self.f_211_Shown
  l0.Hidden = self.f_211_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[433] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[433]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_433_Out
  l0.ResetOut = DummyFunction
  self[175] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[175]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_175_OnUserInPlace
  self[158] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[158]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_158_Out
  self[8] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[8]
  l0._graph = self
  l0.Shown = self.f_8_Shown
  l0.Hidden = self.f_8_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[270] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[270]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_270_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_270_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[247] = cbox:CreateBox("domino/System/FelonyTargetMonitor.lua")
  l0 = self[247]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = self.f_247_None
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = self.f_247_Chasing
  l0.Searching = self.f_247_Searching
  l0.Evaded = self.f_247_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self[410] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[410]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[431] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[431]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[143] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[143]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_143_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_143_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self[425] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[425]
  l0._graph = self
  l0.Enabled = self.f_425_Enabled
  l0.Disabled = self.f_425_Disabled
  l0.Enter = self.f_425_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[409] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[409]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_409_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[20]
  l0._graph = self
  self[372] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[372]
  l0._graph = self
  self[432] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[432]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_432_Out
  l0.ResetOut = DummyFunction
  self[154] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[154]
  l0._graph = self
  self[149] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[149]
  l0._graph = self
  l0.Out = self.f_149_Out
  l0.MessageCompleted = DummyFunction
  self[29] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[29]
  l0._graph = self
  l0.Started = self.f_29_Started
  l0.Stopped = self.f_29_Stopped
  l0.Interacted = self.f_29_Interacted
  self[96] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[96]
  l0._graph = self
  l0.Out = self.f_96_Out
  l0.MessageCompleted = DummyFunction
  self[124] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[124]
  l0._graph = self
  l0.Loaded = self.f_124_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[358] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[358]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_358_Out
  self[259] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[259]
  l0._graph = self
  self[50] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[50]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[56] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[56]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_56_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[212] = cbox:CreateBox("domino/System/InputListenerMonitor.lua")
  l0 = self[212]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_212_Enabled
  l0.Disabled = self.f_212_Disabled
  l0.InputReceived = self.f_212_InputReceived
  self[283] = cbox:CreateBox("domino/Library/common/MissionSpecificIngredients.PlayerOnlyTriggerNoRCTip.lua")
  l0 = self[283]
  l0._graph = self
  l0.Enter = DummyFunction
  self[119] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[119]
  l0._graph = self
  l0.Assigned = self.f_119_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[253] = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self[253]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_253_TimeElapsed
  self[375] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[375]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[127] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[127]
  l0._graph = self
  l0.Loaded = self.f_127_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[140] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[140]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_140_OnUserInPlace
  self[422] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[422]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_422_TeleportDone
  self[17] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[17]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[104] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[104]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_104_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[368] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[368]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_368_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = self.f_368_AnimationFinished
  self[94] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[94]
  l0._graph = self
  l0.Started = self.f_94_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[73] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[73]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_73_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_73_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[177] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[177]
  l0._graph = self
  l0.StartCommunicationOut = self.f_177_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[182] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[182]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_182_Added
  l0.Removed = self.f_182_Removed
  l0.Out = self.f_182_Out
  self[69] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[69]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {
      "Laptop_Opened",
      "Laptop_Opened"
    }
  }
  l0.Started = DummyFunction
  l0.Stopped = self.f_69_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.Laptop_Opened = self.f_69_SPOut__Laptop_Opened_
  l0.SPOut.Laptop_Opened = self.f_69_SPOut__Laptop_Opened_
  self[189] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_onthebus.S08M010_CIN_OnTheBus_Main.lua")
  l0 = self[189]
  l0._graph = self
  l0.out = self.f_189_out
  self[184] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[184]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_184_PostOut
  self[248] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[248]
  l0._graph = self
  self[48] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[48]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_48_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[299] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[299]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_299_Added
  l0.Removed = self.f_299_Removed
  l0.Out = self.f_299_Out
  self[98] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[98]
  l0._graph = self
  l0.Out = self.f_98_Out
  l0.SetTrue = self.f_98_SetTrue
  l0.SetFalse = self.f_98_SetFalse
  l0.Toggled = self.f_98_Toggled
  l0.SetFromBool = self.f_98_SetFromBool
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
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.MessageCompleted = DummyFunction
  self[351] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[351]
  l0._graph = self
  self[418] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[418]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_418_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[40] = cbox:CreateBox("domino/Library/common/MissionIngredients.SearchArea.lua")
  l0 = self[40]
  l0._graph = self
  l0.Enabled = self.f_40_Enabled
  l0.Disabled = self.f_40_Disabled
  l0.Entered = DummyFunction
  self[78] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.lua")
  l0 = self[78]
  l0._graph = self
  l0.Out = self.f_78_Out
  self[366] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[366]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_366_Unloaded
  self[138] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[138]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_138_OnUserInPlace
  self[294] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus01.lua")
  l0 = self[294]
  l0._graph = self
  l0.Completed = self.f_294_Completed
  self[155] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[155]
  l0._graph = self
  l0.Loaded = self.f_155_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[380] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[380]
  l0._graph = self
  l0.Out = self.f_380_Out
  l0.SetTrue = self.f_380_SetTrue
  l0.SetFalse = self.f_380_SetFalse
  l0.Toggled = self.f_380_Toggled
  l0.SetFromBool = self.f_380_SetFromBool
  self[338] = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.lua")
  l0 = self[338]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_338_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self[304] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[304]
  l0._graph = self
  l0.Started = self.f_304_Started
  l0.Stopped = self.f_304_Stopped
  l0.Interacted = DummyFunction
  self[28] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_28_Disabled
  l0.Enter = self.f_28_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[172] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[172]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_172_Disabled
  l0.Enter = self.f_172_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[256] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[256]
  l0._graph = self
  l0.Out = self.f_256_Out
  l0.MessageCompleted = DummyFunction
  self[61] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0.Enabled = self.f_61_Enabled
  l0.Disabled = self.f_61_Disabled
  l0.Enter = self.f_61_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[287] = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self[287]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = self.f_287_IsFollowing
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self[251] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[251]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_251_Out
  l0.ResetOut = DummyFunction
  self[188] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[188]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_188_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[268] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[268]
  l0._graph = self
  l0.Out = self.f_268_Out
  l0.MessageCompleted = DummyFunction
  self[123] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[123]
  l0._graph = self
  self[352] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[352]
  l0._graph = self
  self[271] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[271]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_271_TeleportDone
  self[234] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[234]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_234_Out
  l0.ResetOut = DummyFunction
  self[44] = cbox:CreateBox("domino/System/PlayerConflictMonitor.lua")
  l0 = self[44]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InConflict = self.f_44_InConflict
  l0.NOTInConflict = self.f_44_NOTInConflict
  self[49] = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.lua")
  l0 = self[49]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_49_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self[68] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[68]
  l0._graph = self
  l0.PreOut = self.f_68_PreOut
  l0.PostOut = DummyFunction
  self[411] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[411]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_411_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_411_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[152] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[152]
  l0._graph = self
  l0.Out = self.f_152_Out
  l0.Started = DummyFunction
  l0.Finished = self.f_152_Finished
  self[371] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[371]
  l0._graph = self
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_371_Out
  l0.ResetOut = DummyFunction
  self[322] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[322]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_322_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[67] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[67]
  l0._graph = self
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_67_Added
  l0.Removed = self.f_67_Removed
  l0.Out = self.f_67_Out
  self[313] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[313]
  l0._graph = self
  self[417] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[417]
  l0._graph = self
  l0._DynamicAnchors = {Data = 10}
  l0.Added = self.f_417_Added
  l0.Removed = self.f_417_Removed
  l0.Out = self.f_417_Out
  self[307] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[307]
  l0._graph = self
  l0.Enabled = self.f_307_Enabled
  l0.Disabled = self.f_307_Disabled
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_307_IsUnusable
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[125] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[125]
  l0._graph = self
  l0.Loaded = self.f_125_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[198] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[198]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_198_PostOut
  self[167] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[167]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[100] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[100]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_100_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[41] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_41_Disabled
  l0.Enter = self.f_41_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[194] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[194]
  l0._graph = self
  self[86] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.lua")
  l0 = self[86]
  l0._graph = self
  l0.Out = self.f_86_Out
  self[349] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[349]
  l0._graph = self
  self[255] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[255]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_255_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[279] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[279]
  l0._graph = self
  l0._DynamicAnchors = {
    EntityIn = {"Horatio", "Bus"},
    EntityOut = {"Horatio", "Bus"}
  }
  l0.Started = self.f_279_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_279_Skipped
  l0.Finished = self.f_279_Finished
  self[214] = cbox:CreateBox("domino/System/InputListenerMonitor.lua")
  l0 = self[214]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_214_Enabled
  l0.Disabled = self.f_214_Disabled
  l0.InputReceived = self.f_214_InputReceived
  self[342] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[342]
  l0._graph = self
  l0.Out = self.f_342_Out
  l0.MessageCompleted = DummyFunction
  self[361] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[361]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_361_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_361_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[36] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.lua")
  l0 = self[36]
  l0._graph = self
  l0.Out = self.f_36_Out
  self[32] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[191] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[191]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_191_PostOut
  self[311] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[311]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_311_Enter
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[302] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[302]
  l0._graph = self
  l0.Enabled = self.f_302_Enabled
  l0.Disabled = self.f_302_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_302_Killed
  l0.DBNO = self.f_302_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[102] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[102]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_102_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[263] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[263]
  l0._graph = self
  l0.Out = self.f_263_Out
  l0.SetTrue = self.f_263_SetTrue
  l0.SetFalse = self.f_263_SetFalse
  l0.Toggled = self.f_263_Toggled
  l0.SetFromBool = self.f_263_SetFromBool
  self[166] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[166]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_166_Out
  l0.ResetOut = DummyFunction
  self[277] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[277]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[269] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[269]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_269_Out
  self[346] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[346]
  l0._graph = self
  self[33] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_33_Disabled
  l0.Enter = self.f_33_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[412] = cbox:CreateBox("domino/System/NetworkSurfingMonitor.lua")
  l0 = self[412]
  l0._graph = self
  l0.Enabled = self.f_412_Enabled
  l0.Disabled = self.f_412_Disabled
  l0.OnNetworkSurfingActivated = self.f_412_OnNetworkSurfingActivated
  l0.OnNetworkSurfingDeactivated = DummyFunction
  self[341] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[341]
  l0._graph = self
  l0.Out = self.f_341_Out
  l0.MessageCompleted = DummyFunction
  self[131] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_nudledump.S08M010_CIN_NudleDump_Main.lua")
  l0 = self[131]
  l0._graph = self
  l0.out = self.f_131_out
  self[30] = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self[30]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_30_TimeElapsed
  self[289] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[289]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_289_Out
  self[379] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[379]
  l0._graph = self
  l0.Out = self.f_379_Out
  l0.SetTrue = self.f_379_SetTrue
  l0.SetFalse = self.f_379_SetFalse
  l0.Toggled = self.f_379_Toggled
  l0.SetFromBool = self.f_379_SetFromBool
  self[97] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[97]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[63] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[63]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_63_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_63_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self[413] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[413]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_413_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[321] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[321]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_321_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[347] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[347]
  l0._graph = self
  l0.Assigned = self.f_347_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[437] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[437]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_437_Out
  l0.ResetOut = DummyFunction
  self[42] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_LocateTheCentralServer.lua")
  l0 = self[42]
  l0._graph = self
  l0.Located = self.f_42_Located
  l0.Disabled = self.f_42_Disabled
  self[286] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[286]
  l0._graph = self
  l0.Out = self.f_286_Out
  l0.MessageCompleted = DummyFunction
  self[230] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[230]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_230_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[357] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[357]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_357_Out
  self[183] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[183]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_183_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[388] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[388]
  l0._graph = self
  l0.Out = self.f_388_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[170] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[170]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_170_Out
  l0.ResetOut = DummyFunction
  self[76] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[76]
  l0._graph = self
  l0.Started = self.f_76_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self[52] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[52]
  l0._graph = self
  l0.Shown = self.f_52_Shown
  l0.Hidden = self.f_52_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[190] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_offthebus.S08M010_CIN_OffTheBus_Main.lua")
  l0 = self[190]
  l0._graph = self
  l0.out = self.f_190_out
  self[275] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[275]
  l0._graph = self
  l0.Enabled = self.f_275_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_275_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[70] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010_IOP.S08M010_IOP_Main.lua")
  l0 = self[70]
  l0._graph = self
  l0.Out = self.f_70_Out
  l0.IOP_Loaded = DummyFunction
  self[423] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[423]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_423_Out
  self[319] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[319]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_319_Out
  self[320] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[320]
  l0._graph = self
  l0.Out = self.f_320_Out
  l0.MessageCompleted = DummyFunction
  self[62] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[62]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[24] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Loaded = self.f_24_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[176] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[176]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_176_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[120] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[120]
  l0._graph = self
  l0.Loaded = self.f_120_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[53] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[53]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {
      "Laptop_Opened"
    }
  }
  l0.Started = DummyFunction
  l0.Stopped = self.f_53_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.Laptop_Opened = self.f_53_SPOut__Laptop_Opened_
  self[164] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.lua")
  l0 = self[164]
  l0._graph = self
  l0.Out = self.f_164_Out
  self[389] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[389]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_389_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[7] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Bus_Drive.lua")
  l0 = self[7]
  l0._graph = self
  l0.ObjectiveReachDestination = self.f_7_ObjectiveReachDestination
  l0.StartConversation = self.f_7_StartConversation
  l0.Stopped = self.f_7_Stopped
  l0.PlayerLeftBus = self.f_7_PlayerLeftBus
  l0.EnteringBus = self.f_7_EnteringBus
  l0.BusDestroyed = self.f_7_BusDestroyed
  l0.BuddyConditionFailed = self.f_7_BuddyConditionFailed
  l0.BuddyKilled = self.f_7_BuddyKilled
  l0.PassengersInjured = self.f_7_PassengersInjured
  self[178] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[178]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[9] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_9_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[265] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[265]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_265_OnUserInPlace
  self[430] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[430]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_430_Started
  l0.Stopped = self.f_430_Stopped
  self[288] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[288]
  l0._graph = self
  l0.Out = self.f_288_Out
  l0.MessageCompleted = DummyFunction
  self[64] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[64]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_64_OnUserInPlace
  self[355] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[355]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_355_Out
  self[137] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[137]
  l0._graph = self
  l0.Loaded = self.f_137_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[27] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = self.f_27_Out
  self[12] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.SetTrue = self.f_12_SetTrue
  l0.SetFalse = self.f_12_SetFalse
  l0.Toggled = self.f_12_Toggled
  l0.SetFromBool = self.f_12_SetFromBool
  self[435] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[435]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_435_Out
  l0.ResetOut = DummyFunction
  self[327] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[327]
  l0._graph = self
  l0.Enabled = self.f_327_Enabled
  l0.Disabled = self.f_327_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_327_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[192] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Bus_Drive.lua")
  l0 = self[192]
  l0._graph = self
  l0.ObjectiveReachDestination = self.f_192_ObjectiveReachDestination
  l0.StartConversation = self.f_192_StartConversation
  l0.Stopped = self.f_192_Stopped
  l0.PlayerLeftBus = self.f_192_PlayerLeftBus
  l0.EnteringBus = self.f_192_EnteringBus
  l0.BusDestroyed = self.f_192_BusDestroyed
  l0.BuddyConditionFailed = self.f_192_BuddyConditionFailed
  l0.BuddyKilled = self.f_192_BuddyKilled
  l0.PassengersInjured = self.f_192_PassengersInjured
  self[179] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[179]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_179_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[132] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[132]
  l0._graph = self
  l0.Loaded = self.f_132_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
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
  self[310] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[310]
  l0._graph = self
  self[308] = cbox:CreateBox("domino/System/AIBuddyMonitor.lua")
  l0 = self[308]
  l0._graph = self
  l0.Enabled = self.f_308_Enabled
  l0.Disabled = self.f_308_Disabled
  l0.OnBuddyFollowing = DummyFunction
  l0.OnBuddyInCombat = DummyFunction
  l0.OnBuddyHasNoSeat = DummyFunction
  l0.OnBuddyCantReach = DummyFunction
  l0.OnBuddyNormalRange = DummyFunction
  l0.OnBuddyTooFarBarkRange = DummyFunction
  l0.OnBuddyTooFar = self.f_308_OnBuddyTooFar
  l0.OnBuddyTooFarUnspawnRange = self.f_308_OnBuddyTooFarUnspawnRange
  self[350] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[350]
  l0._graph = self
  self[239] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[239]
  l0._graph = self
  l0.Shown = self.f_239_Shown
  l0.Hidden = self.f_239_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[295] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[295]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_295_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[85] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.lua")
  l0 = self[85]
  l0._graph = self
  l0.Out = self.f_85_Out
  self[282] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[282]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_282_Out
  l0.ResetOut = DummyFunction
  self[187] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_hrscolding.S08M010_CIN_HRScolding_Main.lua")
  l0 = self[187]
  l0._graph = self
  l0.out = self.f_187_out
  self[335] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[335]
  l0._graph = self
  l0.PreOut = self.f_335_PreOut
  l0.PostOut = DummyFunction
  self[224] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[224]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_224_Completed
  self[34] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[34]
  l0._graph = self
  l0.Enabled = self.f_34_Enabled
  l0.Disabled = self.f_34_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_34_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[238] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[238]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_238_Disabled
  l0.Enter = self.f_238_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[421] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[421]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_421_Enter
  l0.Leave = self.f_421_Leave
  l0.Use = DummyFunction
  self[242] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[242]
  l0._graph = self
  l0.Started = self.f_242_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_242_Completed
  self[126] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[126]
  l0._graph = self
  l0.Out = self.f_126_Out
  l0.MessageCompleted = DummyFunction
  self[396] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[396]
  l0._graph = self
  l0.Enabled = self.f_396_Enabled
  l0.Disabled = self.f_396_Disabled
  l0.Enter = self.f_396_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[416] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[416]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_416_Out
  self[317] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[317]
  l0._graph = self
  l0.Out = self.f_317_Out
  l0.MessageCompleted = DummyFunction
  self[258] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[258]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_258_Out
  l0.ResetOut = DummyFunction
  self[147] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[147]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_147_Out
  self[315] = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  l0 = self[315]
  l0._graph = self
  l0.Started = self.f_315_Started
  l0.Stopped = self.f_315_Stopped
  l0.Reached = self.f_315_Reached
  self[369] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[369]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_369_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = self.f_369_AnimationFinished
  self[14] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_14_Completed
  self[250] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[250]
  l0._graph = self
  l0.PreOut = self.f_250_PreOut
  l0.PostOut = DummyFunction
  self[95] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[95]
  l0._graph = self
  l0.Enabled = self.f_95_Enabled
  l0.Disabled = self.f_95_Disabled
  l0.Enter = self.f_95_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[217] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[217]
  l0._graph = self
  self[378] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[378]
  l0._graph = self
  l0.Out = self.f_378_Out
  l0.SetTrue = self.f_378_SetTrue
  l0.SetFalse = self.f_378_SetFalse
  l0.Toggled = self.f_378_Toggled
  l0.SetFromBool = self.f_378_SetFromBool
  self[57] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_57_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = self.f_57_AnimationFinished
  self[112] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.lua")
  l0 = self[112]
  l0._graph = self
  l0.Out = self.f_112_Out
  self[208] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[208]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_208_Executed
  self[148] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[148]
  l0._graph = self
  l0.Shown = self.f_148_Shown
  l0.Hidden = self.f_148_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[122] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[122]
  l0._graph = self
  l0.Loaded = self.f_122_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[373] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[373]
  l0._graph = self
  self[5] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  self[330] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[330]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[103] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[103]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_103_Finished
  self[19] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[19]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_19_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_19_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self[114] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[114]
  l0._graph = self
  l0.Out = self.f_114_Out
  l0.MessageCompleted = DummyFunction
  self[209] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[209]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_209_Out
  self[88] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[88]
  l0._graph = self
  l0.Out = self.f_88_Out
  l0.MessageCompleted = DummyFunction
  self[65] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[65]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_65_Out
  l0.ResetOut = DummyFunction
  self[139] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[139]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_139_OnUserInPlace
  self[31] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[31]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[249] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[249]
  l0._graph = self
  l0.Loaded = self.f_249_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[240] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[240]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_240_PostOut
  self[66] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = self.f_66_Out
  self[326] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[326]
  l0._graph = self
  l0.Out = self.f_326_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[293] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus02.lua")
  l0 = self[293]
  l0._graph = self
  l0.Completed = self.f_293_Completed
  self[128] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[128]
  l0._graph = self
  l0.Loaded = self.f_128_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[60] = cbox:CreateBox("domino/System/GameplayConversationController_v3.lua")
  l0 = self[60]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_60_Started
  l0.Stopped = DummyFunction
  l0.Paused = self.f_60_Paused
  l0.Resumed = self.f_60_Resumed
  l0.Failed = DummyFunction
  l0.Finished = self.f_60_Finished
  self[107] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[107]
  l0._graph = self
  self[133] = cbox:CreateBox("domino/Library/common/MissionIngredients.SearchArea.lua")
  l0 = self[133]
  l0._graph = self
  l0.Enabled = self.f_133_Enabled
  l0.Disabled = self.f_133_Disabled
  l0.Entered = self.f_133_Entered
  self[300] = cbox:CreateBox("domino/System/PlayerConflictMonitor.lua")
  l0 = self[300]
  l0._graph = self
  l0.Enabled = self.f_300_Enabled
  l0.Disabled = self.f_300_Disabled
  l0.InConflict = self.f_300_InConflict
  l0.NOTInConflict = self.f_300_NOTInConflict
  self[285] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[285]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_285_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_285_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self[45] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[45]
  l0._graph = self
  l0.Started = self.f_45_Started
  l0.Stopped = self.f_45_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[51] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[220] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[220]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_220_PostOut
  self[216] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[216]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_216_Disabled
  self[142] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[142]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_142_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[91] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[91]
  l0._graph = self
  l0.Enabled = self.f_91_Enabled
  l0.Disabled = self.f_91_Disabled
  l0.Enter = self.f_91_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[150] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[150]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_150_Disabled
  l0.Enter = self.f_150_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[374] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[374]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_374_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = self.f_374_OnFwdMovementFinished
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[365] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[365]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_365_Out
  self[377] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[377]
  l0._graph = self
  l0.Assigned = self.f_377_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[231] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[231]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[301] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[301]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_301_Out
  self[186] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_meetingbrody.S08M010_CIN_MeetingBrody_Main.lua")
  l0 = self[186]
  l0._graph = self
  l0.out = self.f_186_out
  self[77] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[77]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_77_Unloaded
  self[362] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[362]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_362_Out
  self[110] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[110]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_110_OnUserInPlace
  self[193] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[193]
  l0._graph = self
  l0.PreOut = self.f_193_PreOut
  l0.PostOut = DummyFunction
  self[153] = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self[153]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_153_TimeElapsed
  self[376] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[376]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[291] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus01.lua")
  l0 = self[291]
  l0._graph = self
  l0.Completed = self.f_291_Completed
  self[43] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[43]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_43_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[292] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus02.lua")
  l0 = self[292]
  l0._graph = self
  l0.Completed = self.f_292_Completed
  self[47] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[47]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_47_OnUserInPlace
  self[226] = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  l0 = self[226]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_226_Stopped
  l0.Reached = self.f_226_Reached
  self[206] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[206]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[314] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[314]
  l0._graph = self
  self[108] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[108]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_108_Out
  l0.ResetOut = DummyFunction
  self[343] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[343]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_343_Out
  self[46] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[46]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_46_Skipped
  l0.Finished = self.f_46_Finished
  self[161] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[161]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_161_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[160] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[160]
  l0._graph = self
  l0.Out = self.f_160_Out
  l0.SetTrue = self.f_160_SetTrue
  l0.SetFalse = self.f_160_SetFalse
  l0.Toggled = self.f_160_Toggled
  l0.SetFromBool = self.f_160_SetFromBool
  self[312] = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self[312]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = self.f_312_IsWaiting
  l0.Assigned = DummyFunction
  self[403] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[403]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_403_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[109] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[109]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_109_Out
  self[237] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[237]
  l0._graph = self
  l0.Out = self.f_237_Out
  l0.MessageCompleted = DummyFunction
  self[10] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_10_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_10_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.MessageCompleted = DummyFunction
  self[426] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[426]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_426_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[134] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[134]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_134_Out
  l0.ResetOut = DummyFunction
  self[113] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[113]
  l0._graph = self
  l0.Loaded = self.f_113_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[121] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[121]
  l0._graph = self
  l0.Loaded = self.f_121_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[383] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[383]
  l0._graph = self
  l0.Out = self.f_383_Out
  l0.SetTrue = self.f_383_SetTrue
  l0.SetFalse = self.f_383_SetFalse
  l0.Toggled = self.f_383_Toggled
  l0.SetFromBool = self.f_383_SetFromBool
  self[354] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[354]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_354_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_354_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[89] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[89]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[130] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[130]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_130_Out
  self[90] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[90]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[364] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[364]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_364_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_364_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[135] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[135]
  l0._graph = self
  l0.Out = self.f_135_Out
  l0.MessageCompleted = DummyFunction
  self[75] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[75]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_75_Out
  l0.ResetOut = DummyFunction
  self[38] = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.lua")
  l0 = self[38]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_38_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self[401] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[401]
  l0._graph = self
  l0.Enabled = self.f_401_Enabled
  l0.Disabled = self.f_401_Disabled
  l0.Enter = self.f_401_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[309] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[309]
  l0._graph = self
  self[276] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Bus_Drive.lua")
  l0 = self[276]
  l0._graph = self
  l0.ObjectiveReachDestination = self.f_276_ObjectiveReachDestination
  l0.StartConversation = self.f_276_StartConversation
  l0.Stopped = self.f_276_Stopped
  l0.PlayerLeftBus = self.f_276_PlayerLeftBus
  l0.EnteringBus = self.f_276_EnteringBus
  l0.BusDestroyed = self.f_276_BusDestroyed
  l0.BuddyConditionFailed = self.f_276_BuddyConditionFailed
  l0.BuddyKilled = self.f_276_BuddyKilled
  l0.PassengersInjured = DummyFunction
  self[35] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[35]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_35_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_35_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self[215] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[215]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[232] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[232]
  l0._graph = self
  l0._DynamicAnchors = {
    EntityIn = {"Horatio", "Bus"},
    EntityOut = {"Horatio", "Bus"}
  }
  l0.Started = self.f_232_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_232_Skipped
  l0.Finished = self.f_232_Finished
  self[218] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[218]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_218_Out
  l0.ResetOut = DummyFunction
  self[159] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[159]
  l0._graph = self
  l0.StartCommunicationOut = self.f_159_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[397] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[397]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_397_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[434] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[434]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_434_Out
  l0.ResetOut = DummyFunction
  self[72] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[72]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_72_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_72_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[262] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[262]
  l0._graph = self
  l0.PreOut = self.f_262_PreOut
  l0.PostOut = DummyFunction
  self[196] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[196]
  l0._graph = self
  l0.PreOut = self.f_196_PreOut
  l0.PostOut = DummyFunction
  self[225] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[225]
  l0._graph = self
  l0.Enabled = self.f_225_Enabled
  l0.Disabled = self.f_225_Disabled
  l0.Enter = self.f_225_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[92] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[92]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_92_Disabled
  l0.Enter = self.f_92_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[151] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[151]
  l0._graph = self
  l0.Out = self.f_151_Out
  l0.MessageCompleted = DummyFunction
  self[25] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[136] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[136]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_136_Out
  l0.ResetOut = DummyFunction
  self[303] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[303]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_303_Out
  l0.ResetOut = DummyFunction
  self[284] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.lua")
  l0 = self[284]
  l0._graph = self
  l0.Out = self.f_284_Out
  self[171] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[171]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[54] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus01.lua")
  l0 = self[54]
  l0._graph = self
  l0.Completed = self.f_54_Completed
  self[165] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[165]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[84] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[84]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_84_Added
  l0.Removed = self.f_84_Removed
  l0.Out = self.f_84_Out
  self[22] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[22]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_22_OnUserInPlace
  self[245] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[245]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[348] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[348]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_348_Out
  l0.ResetOut = DummyFunction
  self[359] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[359]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_359_Out
  self[298] = cbox:CreateBox("domino/System/GameplayConversationController_v3.lua")
  l0 = self[298]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_298_Started
  l0.Stopped = DummyFunction
  l0.Paused = self.f_298_Paused
  l0.Resumed = self.f_298_Resumed
  l0.Failed = DummyFunction
  l0.Finished = self.f_298_Finished
  self[116] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_WalkAndTalk.lua")
  l0 = self[116]
  l0._graph = self
  l0.ConversationCompleted = DummyFunction
  l0.Started = DummyFunction
  l0.TalkerDead = self.f_116_TalkerDead
  l0.Disabled = self.f_116_Disabled
  l0.TalkerDestinationReached = self.f_116_TalkerDestinationReached
  l0.CombatStarted = self.f_116_CombatStarted
  l0.PlayerInjured = DummyFunction
  self[37] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = self.f_37_Out
  l0.MessageCompleted = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0.MessageCompleted = DummyFunction
  self[197] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[197]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_197_PostOut
  self[163] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[163]
  l0._graph = self
  l0.Out = self.f_163_Out
  l0.SetTrue = self.f_163_SetTrue
  l0.SetFalse = self.f_163_SetFalse
  l0.Toggled = self.f_163_Toggled
  l0.SetFromBool = self.f_163_SetFromBool
  self[229] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[229]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_229_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[173] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[173]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_173_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[18] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = self.f_18_Out
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
  l0 = self[121]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self[249]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:CheckPoint_10()
  local l0
  l0 = self[132]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:CheckPoint_11()
  local l0
  self:en_107()
  l0 = self[107]
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  l0 = self[155]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  l0 = self[120]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:CheckPoint_4()
  local l0
  l0 = self[113]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:CheckPoint_5()
  local l0
  l0 = self[122]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:CheckPoint_6()
  local l0
  l0 = self[124]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:CheckPoint_7()
  local l0
  l0 = self[125]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:CheckPoint_8()
  local l0
  l0 = self[127]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:CheckPoint_9()
  local l0
  l0 = self[128]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:In()
  local l0
  l0 = self[137]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:f_15_AllSpawned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372060360145259"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = 1
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
  l0.RestrictRail = 0
  l0.RestrictBoat = 0
  l0.RestrictParkedCar = 0
  l0.RestrictParkedBoat = 0
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:In()
end
function export:f_81_Unloaded()
  local l0
  self = self._graph
  l0 = self[375]
  l0.Entity = "9223372055079369230"
  l0.SoundId = "soundbinary/3091844746.bnk"
  l0:Play()
end
function export:f_260_PostOut()
  local l0
  self = self._graph
  self:en_164()
  l0 = self[164]
  l0:GameFlow()
end
function export:f_246_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[246]
  self.NudleBus = l0.UserID
  l0 = self[265]
  l0.CLO = self.CLO_Horatio_ParkingLot
  l0:Activate()
end
function export:f_436_Out()
  local l0
  self = self._graph
  self:en_162()
  l0 = self[162]
  l0:Enable()
end
function export:f_101_PostOut()
  local l0
  self = self._graph
  l0 = self[22]
  l0.CLO = self.NudleBusCLO
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_223_PreOut()
  local l0
  self = self._graph
  l0 = self[77]
  l0.LMALayerName = self.NudleUpperLMA
  l0:Unload()
end
function export:f_205_Disabled()
  local l0
  self = self._graph
  l0 = self[204]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222327000"
  l0:StartCommunication()
end
function export:f_205_HackSuccess()
  local l0
  self = self._graph
  self:en_205()
  l0 = self[205]
  l0:Disable()
end
function export:f_99_Disabled()
  local l0
  self = self._graph
  self:en_99()
  l0 = self[99]
  l0:DisableProfiling()
end
function export:f_99_Enabled()
  local l0
  self = self._graph
  self:en_92()
  l0 = self[92]
  l0:Enable()
end
function export:f_99_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_92()
  l0 = self[92]
  l0:Disable()
end
function export:f_169_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372056247381308"
  l0:StartCommunication()
end
function export:f_204_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[388]
  l0.SoundId = "soundbinary/81442961.bnk"
  l0:Play()
end
function export:f_316_Out()
  local l0
  self = self._graph
  l0 = self[300]
  l0:Enable()
end
function export:f_325_Out()
  local l0
  self = self._graph
  l0 = self[322]
  l0.Seconds = 3
  l0:Start()
end
function export:f_333_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[109]
  l0:Input(0)
end
function export:f_162_Disabled()
  local l0
  self = self._graph
  self:en_161()
  l0 = self[161]
  l0:Hide()
end
function export:f_162_Enabled()
  local l0
  self = self._graph
  self:en_161()
  l0 = self[161]
  l0:Show()
end
function export:f_162_Enter()
  local l0
  self = self._graph
  self:en_162()
  l0 = self[162]
  l0:Disable()
end
function export:f_211_Hidden()
  local l0
  self = self._graph
  self:en_172()
  l0 = self[172]
  l0:Disable()
end
function export:f_211_Shown()
  local l0
  self = self._graph
  self:en_172()
  l0 = self[172]
  l0:Enable()
end
function export:f_433_Out()
  local l0
  self = self._graph
  l0 = self[292]
  l0.PassengerList_In = self.BusPassengers
  l0.CLO05 = self.CLO_BussPassenger_05
  l0.CLO06 = self.CLO_BussPassenger_06
  l0.CLO07 = self.CLO_BussPassenger_07
  l0.CLO08 = self.CLO_BussPassenger_08
  l0.BusVehicle = self.NudleBus
  l0:Start()
end
function export:f_353_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = self[355]
  l0:Input(0)
end
function export:f_353_EntityIsNotInVehicle()
  local l0
  self = self._graph
  self:en_354()
  l0 = self[354]
  l0:Enable()
end
function export:f_175_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[175]
  self.NudleBus = l0.UserID
  l0 = self[110]
  l0.CLO = self.CLO_HoratioBusPassenger_Downtown
  l0:Activate()
end
function export:f_407_Activated()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Checkpoint()
end
function export:f_158_Out()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Stop()
end
function export:f_8_Hidden()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Disable()
end
function export:f_8_Shown()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Enable()
end
function export:f_270_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_174_Out_0
  l0.Out[1] = self.f_174_Out_1
  l0.Out[2] = self.f_174_Out_2
  l0.Out[3] = self.f_174_Out_3
  l0:In()
end
function export:f_270_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_270()
  l0 = self[270]
  l0:DisableHack()
end
function export:f_247_Chasing()
  local l0
  self = self._graph
  l0 = self[289]
  l0:Input(0)
end
function export:f_247_Evaded()
  local l0
  self = self._graph
  l0 = self[277]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective080",
    item = "Objective",
    id = "649119"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_247_None()
  local l0
  self = self._graph
  self:en_226()
  l0 = self[226]
  l0:Start()
end
function export:f_247_Searching()
  local l0
  self = self._graph
  l0 = self[289]
  l0:Input(1)
end
function export:f_384_Removed()
  local l0
  self = self._graph
  l0 = self[316]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective1",
    id = "359128"
  }
  l0:ShowNewObjective()
end
function export:f_393_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
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
  l0:CallBack()
end
function export:f_360_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = self[362]
  l0:Input(0)
end
function export:f_360_EntityIsNotInVehicle()
  local l0
  self = self._graph
  self:en_361()
  l0 = self[361]
  l0:Enable()
end
function export:f_144_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[139]
  l0.CLO = self.CLO_NudleBus_AtBusStop_Stanford
  l0:Activate()
end
function export:f_202_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_202_Out_1()
  local l0
  self = self._graph
  self:en_298()
  l0 = self[298]
  l0:Stop()
end
function export:f_202_Out_2()
  local l0
  self = self._graph
  l0 = self[358]
  l0:Input(0)
end
function export:f_340_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_331_Out
  l0:In()
end
function export:f_143_AbortMoveAndUseSeat()
  local l0
  self = self._graph
  l0 = self[434]
  l0:In(1)
end
function export:f_143_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[434]
  l0:In(0)
end
function export:f_425_Disabled()
  local l0
  self = self._graph
  self:en_212()
  l0 = self[212]
  l0:Disable()
end
function export:f_425_Enabled()
  local l0
  self = self._graph
  self:en_212()
  l0 = self[212]
  l0:Enable()
end
function export:f_425_Enter()
  local l0
  self = self._graph
  l0 = self[269]
  l0:Input(0)
end
function export:f_39_A_is_False()
  local l0
  self = self._graph
  l0 = self[169]
  l0:In(0)
end
function export:f_39_A_is_True()
  local l0
  self = self._graph
  l0 = self[166]
  l0:In(0)
end
function export:f_409_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[189]
  l0.bus = self.NudleBus
  l0.Horatio = self.Horatio
  l0:In()
end
function export:f_432_Out()
  local l0
  self = self._graph
  l0 = self[191]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_149_Out()
  local l0
  self = self._graph
  self:en_148()
  l0 = self[148]
  l0:Show()
end
function export:f_29_Interacted()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Stop()
end
function export:f_29_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Server_HackableEntity_Server
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientTrigger"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_414_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Remove()
end
function export:f_29_Stopped()
  local l0
  self = self._graph
  self:en_216()
  l0 = self[216]
  l0:Disable()
end
function export:f_96_Out()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:Show()
end
function export:f_124_Loaded()
  local l0
  self = self._graph
  l0 = self[15]
  l0.PGTMissionArea = self.PGTArea
  l0:Start()
end
function export:f_358_Out()
  local l0
  self = self._graph
  self:en_153()
  l0 = self[153]
  l0:Stop()
end
function export:f_405_Out()
  local l0
  self = self._graph
  self:en_396()
  l0 = self[396]
  l0:Enable()
end
function export:f_280_Out()
  local l0
  self = self._graph
  l0 = self[240]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_219_Out()
  local l0
  self = self._graph
  l0 = self[271]
  l0.SpawnPoint = self.S08M010_CheckPoint_0
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_56_AllSpawned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476430"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0.LoadAndPlayRequested = self.f_267_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_427_Out_0()
  local l0
  self = self._graph
  l0 = self[149]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective030",
    item = "Objective2",
    id = "688748"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective040",
    item = "SubObjective1",
    id = "359135"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:ShowNewObjective()
end
function export:f_427_Out_1()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Enable()
end
function export:f_212_Disabled()
  local l0
  self = self._graph
  self:en_239()
  l0 = self[239]
  l0:Hide()
end
function export:f_212_Enabled()
  local l0
  self = self._graph
  self:en_239()
  l0 = self[239]
  l0:Show()
end
function export:f_212_InputReceived()
  local l0
  self = self._graph
  l0 = self[348]
  l0:In(0)
end
function export:f_119_Assigned()
  local l0
  self = self._graph
  l0 = self[102]
  l0:Start()
end
function export:f_253_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[248]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState2",
    id = "359306"
  }
  l0:Fail()
end
function export:f_106_Out()
  local l0
  self = self._graph
  l0 = self[326]
  l0.Entity = self.Nudle_CoolingTankPanel_0
  l0.SoundId = "soundbinary/210957167.bnk"
  l0:Play()
end
function export:f_127_Loaded()
  local l0
  self = self._graph
  l0 = self[56]
  l0.PGTMissionArea = self.PGTArea
  l0:Start()
end
function export:f_140_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[140]
  self.Horatio = l0.UserID
  self:en_27()
  l0 = self[27]
  l0:Checkpoint()
end
function export:f_82_Out_0()
  local l0
  self = self._graph
  self:en_276()
  l0 = self[276]
  l0:Start()
end
function export:f_82_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372072446567155"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_345_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_Server_Row6FrontDoor
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
  l0.Out = self.f_117_Out
  l0:MoveForward()
end
function export:f_345_Out_1()
  local l0
  self = self._graph
  l0 = self[330]
  l0.Entity = "9223372055079369230"
  l0.SoundId = "soundbinary/1129789467.bnk"
  l0:Play()
end
function export:f_422_TeleportDone()
  local l0
  self = self._graph
  l0 = self[423]
  l0:Input(0)
end
function export:f_404_Out()
  local l0
  self = self._graph
  self:en_401()
  l0 = self[401]
  l0:Enable()
end
function export:f_104_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_FlushPanel_1
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
  l0.Out = self.f_168_Out
  l0:MoveBackward()
end
function export:f_368_AnimationFinished()
  local l0
  self = self._graph
  self:en_368()
  l0 = self[368]
  l0:Disable()
end
function export:f_368_Disabled()
  local l0
  self = self._graph
  l0 = self[371]
  l0:In(1)
end
function export:f_94_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
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
  l0.ClimbInteractionAllowedReset = self.f_274_ClimbInteractionAllowedReset
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0:ResetClimbInteractionAllowed()
end
function export:f_73_Disabled()
  local l0
  self = self._graph
  l0 = self[282]
  l0:In(0)
end
function export:f_73_HackSuccess()
  local l0
  self = self._graph
  self:en_73()
  l0 = self[73]
  l0:Disable()
end
function export:f_370_Out_0()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Enable()
end
function export:f_370_Out_1()
  local l0
  self = self._graph
  self:en_368()
  l0 = self[368]
  l0:Enable()
end
function export:f_370_Out_2()
  local l0
  self = self._graph
  self:en_369()
  l0 = self[369]
  l0:Enable()
end
function export:f_177_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[366]
  l0.LMALayerName = self.NudleLowerLMA
  l0:Unload()
end
function export:f_182_Added()
  local l0, l1
  self = self._graph
  l0 = self[182]
  l1 = self[165]
  l1.Users = l0.Target
  self:en_165()
  l1:Start()
end
function export:f_182_Out()
  local l0, l1
  self = self._graph
  l0 = self[182]
  l1 = self[165]
  l1.Users = l0.Target
end
function export:f_182_Removed()
  local l0, l1
  self = self._graph
  l0 = self[182]
  l1 = self[165]
  l1.Users = l0.Target
end
function export:f_69_SPOut__Laptop_Opened_()
  local l0
  self = self._graph
  l0 = self[335]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_69_Stopped()
  local l0
  self = self._graph
  l0 = self[209]
  l0:Input(1)
end
function export:f_189_out()
  local l0
  self = self._graph
  l0 = self[189]
  self.NudleBus = l0.bus_out
  self.Horatio = l0.Horatio_Out
  l0 = self[19]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.Horatio
  l0.CanUseBackSeat = 1
  l0.Seat = "RearPassengerLeft"
  l0:Assign()
end
function export:f_184_PostOut()
  local l0
  self = self._graph
  self:en_85()
  l0 = self[85]
  l0:GameFlow()
end
function export:f_48_AllSpawned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476430"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0.LoadAndPlayRequested = self.f_334_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_58_Out_0()
  local l0
  self = self._graph
  l0 = self[237]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective030",
    item = "Objective2",
    id = "688748"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective040",
    item = "SubObjective1",
    id = "359135"
  }
  l0:ShowNewObjective()
end
function export:f_58_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_235_Out
  l0:In()
end
function export:f_58_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_370_Out_0
  l0.Out[1] = self.f_370_Out_1
  l0.Out[2] = self.f_370_Out_2
  l0:In()
end
function export:f_58_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_329_Out
  l0:In()
end
function export:f_299_Added()
  local l0, l1
  self = self._graph
  l0 = self[299]
  l1 = self[298]
  l1.Users = l0.Target
  self:en_298()
  l1:Start()
end
function export:f_299_Out()
  local l0, l1
  self = self._graph
  l0 = self[299]
  l1 = self[298]
  l1.Users = l0.Target
end
function export:f_299_Removed()
  local l0, l1
  self = self._graph
  l0 = self[299]
  l1 = self[298]
  l1.Users = l0.Target
end
function export:f_98_Out()
  local l0
  self = self._graph
  l0 = self[98]
  self.DisplayPreObjective = l0.Target
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = self.s08m010_AIAgentZone_NoCarOnHackerSpaceParkingSpot
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = 1
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
  l0.Out = self.f_219_Out
  l0:In()
end
function export:f_98_SetFalse()
  local l0
  self = self._graph
  l0 = self[98]
  self.DisplayPreObjective = l0.Target
end
function export:f_98_SetFromBool()
  local l0
  self = self._graph
  l0 = self[98]
  self.DisplayPreObjective = l0.Target
end
function export:f_98_SetTrue()
  local l0
  self = self._graph
  l0 = self[98]
  self.DisplayPreObjective = l0.Target
end
function export:f_98_Toggled()
  local l0
  self = self._graph
  l0 = self[98]
  self.DisplayPreObjective = l0.Target
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
  self:en_99()
  l0 = self[99]
  l0:EnableHack()
end
function export:f_26_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_99()
  l0 = self[99]
  l0:DisableHack()
end
function export:f_185_Out()
  local l0
  self = self._graph
  l0 = self[309]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState1",
    id = "359144"
  }
  l0:Fail()
end
function export:f_324_Moved()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.SlidePipe
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_3_Out()
  local l0
  self = self._graph
  self:en_225()
  l0 = self[225]
  l0:Enable()
end
function export:f_406_Activated()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Checkpoint()
end
function export:f_363_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = self[365]
  l0:Input(0)
end
function export:f_363_EntityIsNotInVehicle()
  local l0
  self = self._graph
  self:en_364()
  l0 = self[364]
  l0:Enable()
end
function export:f_418_Disabled()
  local l0
  self = self._graph
  self:en_78()
  l0 = self[78]
  l0:Checkpoint()
end
function export:f_40_Disabled()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Disable()
end
function export:f_40_Enabled()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Enable()
end
function export:f_78_Out()
  local l0
  self = self._graph
  l0 = self[78]
  self.PlayerEntity = l0.Player
  self:en_275()
  l0 = self[275]
  l0:EnableProfiling()
end
function export:f_366_Unloaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_23_Out_0
  l0.Out[1] = self.f_23_Out_1
  l0:In()
end
function export:f_138_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[138]
  self.Horatio = l0.UserID
  l0 = self[142]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_294_Completed()
  local l0
  self = self._graph
  l0 = self[294]
  self.BusPassengers = l0.PassengerList_Out
  l0 = self[293]
  l0.PassengerList_In = self.BusPassengers
  l0.CLO05 = self.CLO_BussPassenger_05
  l0.CLO06 = self.CLO_BussPassenger_06
  l0.CLO07 = self.CLO_BussPassenger_07
  l0.CLO08 = self.CLO_BussPassenger_08
  l0.BusVehicle = self.NudleBus
  l0:Start()
end
function export:f_233_LoadAndPlayRequested()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Checkpoint()
end
function export:f_181_Out_0()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:Start()
end
function export:f_181_Out_1()
  local l0
  self = self._graph
  l0 = self[108]
  l0:In(0)
end
function export:f_181_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ConversationStarted
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_381_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_155_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_157_Out
  l0:In()
end
function export:f_380_Out()
  local l0
  self = self._graph
  l0 = self[380]
  self.ConversationStarted = l0.Target
end
function export:f_380_SetFalse()
  local l0
  self = self._graph
  l0 = self[380]
  self.ConversationStarted = l0.Target
  self:en_7()
  l0 = self[7]
  l0:Start()
end
function export:f_380_SetFromBool()
  local l0
  self = self._graph
  l0 = self[380]
  self.ConversationStarted = l0.Target
end
function export:f_380_SetTrue()
  local l0
  self = self._graph
  l0 = self[380]
  self.ConversationStarted = l0.Target
end
function export:f_380_Toggled()
  local l0
  self = self._graph
  l0 = self[380]
  self.ConversationStarted = l0.Target
end
function export:f_338_AllDeliveryCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.PlayerEntity
  l0.Vehicle = self.NudleBus
  l0._graph = self
  l0.EntityIsInVehicle = self.f_353_EntityIsInVehicle
  l0.EntityIsNotInVehicle = self.f_353_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0:IsInVehicle()
end
function export:f_304_Started()
  local l0
  self = self._graph
  self:en_311()
  l0 = self[311]
  l0:Enable()
end
function export:f_304_Stopped()
  local l0
  self = self._graph
  self:en_311()
  l0 = self[311]
  l0:Disable()
end
function export:f_332_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_FlushPanel_0
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = self.f_324_Moved
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
  l0:Move()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_Server_Row6FrontDoor
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
  l0.Out = self.f_106_Out
  l0:MoveForward()
end
function export:f_28_Disabled()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:GameFlow()
end
function export:f_28_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_141_Out_0
  l0.Out[1] = self.f_141_Out_1
  l0:In()
end
function export:f_172_Disabled()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Show()
end
function export:f_172_Enter()
  local l0
  self = self._graph
  self:en_61()
  l0 = self[61]
  l0:Disable()
end
function export:f_256_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_261_Out_0
  l0.Out[1] = self.f_261_Out_1
  l0:In()
end
function export:f_61_Disabled()
  local l0
  self = self._graph
  self:en_95()
  l0 = self[95]
  l0:Disable()
end
function export:f_61_Enabled()
  local l0
  self = self._graph
  self:en_95()
  l0 = self[95]
  l0:Enable()
end
function export:f_61_Enter()
  local l0
  self = self._graph
  l0 = self[170]
  l0:In(0)
end
function export:f_287_IsFollowing()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372060360145259"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = 1
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
  l0.RestrictRail = 0
  l0.RestrictBoat = 0
  l0.RestrictParkedCar = 0
  l0.RestrictParkedBoat = 0
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0.Out = self.f_264_Out
  l0:In()
end
function export:f_251_Out()
  local l0
  self = self._graph
  l0 = self[263]
  l0:False()
end
function export:f_188_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[295]
  l0.UserList = self.BusPassengers
  l0:UnspawnUser()
end
function export:f_268_Out()
  local l0
  self = self._graph
  self:en_253()
  l0 = self[253]
  l0:Start()
end
function export:f_271_TeleportDone()
  local l0
  self = self._graph
  l0 = self[47]
  l0.CLO = self.CLO_HoratioBuddy
  l0:Activate()
end
function export:f_234_Out()
  local l0
  self = self._graph
  l0 = self[35]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.Horatio
  l0.CanUseBackSeat = 1
  l0.Seat = "RearPassengerLeft"
  l0:Assign()
end
function export:f_305_Unusable()
  local l0
  self = self._graph
  l0 = self[317]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective3",
    id = "359131"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_44_InConflict()
  local l0
  self = self._graph
  l0 = self[51]
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0:Play()
end
function export:f_44_NOTInConflict()
  local l0
  self = self._graph
  l0 = self[89]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_49_AllDeliveryCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.PlayerEntity
  l0.Vehicle = self.NudleBus
  l0._graph = self
  l0.EntityIsInVehicle = self.f_363_EntityIsInVehicle
  l0.EntityIsNotInVehicle = self.f_363_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0:IsInVehicle()
end
function export:f_59_Out_0()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Text = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.EXTRA.Download Feedback",
    item = "Specific_Download",
    id = "688731"
  }
  l0.TotalTime = 2
  l0:Start()
end
function export:f_59_Out_1()
  local l0
  self = self._graph
  l0 = self[24]
  l0.LayerName = self.Layer_ServerFarmDump
  l0:Load()
end
function export:f_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372060360145259"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = 1
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
  l0.RestrictRail = 0
  l0.RestrictBoat = 0
  l0.RestrictParkedCar = 0
  l0.RestrictParkedBoat = 0
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0.Out = self.f_436_Out
  l0:In()
end
function export:f_23_Out_1()
  local l0
  self = self._graph
  l0 = self[367]
  l0.LMALayerName = self.NudleUpperLMA
  l0:Load()
end
function export:f_68_PreOut()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:Stop()
end
function export:f_318_Out()
  local l0
  self = self._graph
  l0 = self[314]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState4",
    id = "625591"
  }
  l0:Fail()
end
function export:f_274_ClimbInteractionAllowedReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0.CalledBack = self.f_87_CalledBack
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
  l0:CallBack()
end
function export:f_254_Activated()
  local l0
  self = self._graph
  self:en_85()
  l0 = self[85]
  l0:Checkpoint()
end
function export:f_382_A_is_True()
  local l0
  self = self._graph
  self:en_60()
  l0 = self[60]
  l0:Resume()
end
function export:f_411_Stopped()
  local l0
  self = self._graph
  self:en_410()
  l0 = self[410]
  l0:HideNotification()
end
function export:f_411_TimeElapsed()
  local l0
  self = self._graph
  self:en_410()
  l0 = self[410]
  l0:Display()
end
function export:f_244_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0.CalledBack = self.f_243_CalledBack
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
  l0:CallBack()
end
function export:f_152_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372072446567155"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = 1
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Deactivate()
end
function export:f_152_Out()
  local l0
  self = self._graph
  l0 = self[196]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_329_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669158"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_371_Out()
  local l0
  self = self._graph
  l0 = self[50]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050140505935"
  l0:StartCommunication()
end
function export:f_322_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_CoolingTankPanel_0
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = self.f_328_Moved
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
  l0:Move()
end
function export:f_297_Out_0()
  local l0
  self = self._graph
  l0 = self[262]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_297_Out_1()
  local l0
  self = self._graph
  l0 = self[300]
  l0:Disable()
end
function export:f_297_Out_2()
  local l0
  self = self._graph
  l0 = self[431]
  l0.Entity = self.NudleBus
  l0.SoundId = "soundbinary/4008843676.bnk"
  l0:Play()
end
function export:f_67_Added()
  local l0
  self = self._graph
  l0 = self[67]
  self.ServerFarm_VR = l0.Target
  self:en_73()
  l0 = self[73]
  l0:Enable()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = self[67]
  self.ServerFarm_VR = l0.Target
end
function export:f_67_Removed()
  local l0
  self = self._graph
  l0 = self[67]
  self.ServerFarm_VR = l0.Target
end
function export:f_74_Out_0()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:Start()
end
function export:f_74_Out_1()
  local l0
  self = self._graph
  l0 = self[65]
  l0:In(0)
end
function export:f_74_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ConversationStarted
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_382_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_417_Added()
  local l0
  self = self._graph
  l0 = self[417]
  self.HackableEntities = l0.Target
  l0 = self[418]
  l0.HackableEntityList = self.HackableEntities
  l0:DisableHack()
end
function export:f_417_Out()
  local l0
  self = self._graph
  l0 = self[417]
  self.HackableEntities = l0.Target
end
function export:f_417_Removed()
  local l0
  self = self._graph
  l0 = self[417]
  self.HackableEntities = l0.Target
end
function export:f_307_Disabled()
  local l0
  self = self._graph
  self:en_302()
  l0 = self[302]
  l0:Disable()
end
function export:f_307_Enabled()
  local l0
  self = self._graph
  self:en_302()
  l0 = self[302]
  l0:Enable()
end
function export:f_307_IsUnusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_185_Out
  l0:In()
end
function export:f_281_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372068844329190"
  l0.SceneEntity = "9223372047235790533"
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = self.NudleBus
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_419_Out
  l0:CleanZone()
end
function export:f_125_Loaded()
  local l0
  self = self._graph
  l0 = self[76]
  l0.PGTMissionArea = self.PGTArea
  l0:Start()
end
function export:f_198_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = nil
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = self.f_344_EndedAllCustomMediaBroadcasts
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_100_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[46]
  l0.SceneEntity = "9223372050139325985"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_LimpNudle-Dusan-FS_VID/s08_limpnudle-dusan-fs_vid.seq"
  l0:Start()
end
function export:f_157_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[175]
  l0.CLO = self.CLO_NudleBus_AtBusStop_Downtown
  l0:Activate()
end
function export:f_41_Disabled()
  local l0
  self = self._graph
  l0 = self[31]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049908898922"
  l0:StartCommunication()
end
function export:f_41_Enter()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Disable()
end
function export:f_415_Out_0()
  local l0
  self = self._graph
  l0 = self[16]
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective060",
    item = "SubObjective3",
    id = "359142"
  }
  l0:UpdateObjective()
end
function export:f_415_Out_1()
  local l0
  self = self._graph
  l0 = self[416]
  l0:Input(1)
end
function export:f_86_Out()
  local l0
  self = self._graph
  l0 = self[86]
  self.PlayerEntity = l0.Player
  l0 = self[223]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_255_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[285]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.Horatio
  l0.CanUseBackSeat = 1
  l0.Seat = "RearPassengerLeft"
  l0:Assign()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476430"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0.LoadAndPlayRequested = self.f_252_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_279_Finished()
  local l0
  self = self._graph
  l0 = self[258]
  l0:In(1)
end
function export:f_279_Skipped()
  local l0
  self = self._graph
  l0 = self[258]
  l0:In(0)
end
function export:f_279_Started()
  local l0
  self = self._graph
  l0 = self[279]
  self.Horatio = l0.EntityOut.Horatio
  self.NudleBus = l0.EntityOut.Bus
end
function export:f_328_Moved()
  local l0
  self = self._graph
  l0 = self[321]
  l0.Seconds = 2
  l0:Start()
end
function export:f_214_Disabled()
  local l0
  self = self._graph
  self:en_211()
  l0 = self[211]
  l0:Hide()
end
function export:f_214_Enabled()
  local l0
  self = self._graph
  self:en_211()
  l0 = self[211]
  l0:Show()
end
function export:f_214_InputReceived()
  local l0
  self = self._graph
  l0 = self[218]
  l0:In(0)
end
function export:f_342_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Start()
end
function export:f_80_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Sprint"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0.MaxSpeedSet = self.f_222_MaxSpeedSet
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
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
  l0:SetMaxSpeed()
end
function export:f_361_Disabled()
  local l0
  self = self._graph
  l0 = self[362]
  l0:Input(1)
end
function export:f_361_Entered()
  local l0
  self = self._graph
  self:en_361()
  l0 = self[361]
  l0:Disable()
end
function export:f_146_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.NudleBus
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_305_Unusable
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:SetAsUnusable()
end
function export:f_145_Out()
  local l0
  self = self._graph
  l0 = self[158]
  l0:Input(1)
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = self[36]
  self.PlayerEntity = l0.Player
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_203_Out_0
  l0.Out[1] = self.f_203_Out_1
  l0.Out[2] = self.f_203_Out_2
  l0.Out[3] = self.f_203_Out_3
  l0:In()
end
function export:f_191_PostOut()
  local l0
  self = self._graph
  self:en_284()
  l0 = self[284]
  l0:GameFlow()
end
function export:f_311_Enter()
  local l0
  self = self._graph
  l0 = self[312]
  l0.NPC = self.Horatio
  l0:Wait()
end
function export:f_302_DBNO()
  local l0
  self = self._graph
  l0 = self[303]
  l0:In(1)
end
function export:f_302_Disabled()
  local l0
  self = self._graph
  self:en_308()
  l0 = self[308]
  l0:Disable()
end
function export:f_302_Enabled()
  local l0
  self = self._graph
  self:en_308()
  l0 = self[308]
  l0:Enable()
end
function export:f_302_Killed()
  local l0
  self = self._graph
  l0 = self[303]
  l0:In(0)
end
function export:f_102_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = self.S08_AIAgentZone_1stPickup
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
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
  l0.Out = self.f_281_Out
  l0:In()
end
function export:f_71_Out()
  local l0
  self = self._graph
  l0 = self[130]
  l0:Input(1)
end
function export:f_391_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_Server_Row6Backdoor
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
  l0.Out = self.f_55_Out
  l0:MoveForward()
end
function export:f_263_Out()
  local l0
  self = self._graph
  l0 = self[263]
  self.DisplayPreObjective = l0.Target
end
function export:f_263_SetFalse()
  local l0
  self = self._graph
  l0 = self[263]
  self.DisplayPreObjective = l0.Target
end
function export:f_263_SetFromBool()
  local l0
  self = self._graph
  l0 = self[263]
  self.DisplayPreObjective = l0.Target
end
function export:f_263_SetTrue()
  local l0
  self = self._graph
  l0 = self[263]
  self.DisplayPreObjective = l0.Target
end
function export:f_263_Toggled()
  local l0
  self = self._graph
  l0 = self[263]
  self.DisplayPreObjective = l0.Target
end
function export:f_166_Out()
  local l0
  self = self._graph
  l0 = self[171]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048120064783"
  l0:StartCommunication()
end
function export:f_269_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HasNudleMapAccess
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_39_A_is_True
  l0.A_is_False = self.f_39_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_290_Out_0()
  local l0
  self = self._graph
  self:en_86()
  l0 = self[86]
  l0:GameFlow()
end
function export:f_290_Out_1()
  local l0
  self = self._graph
  self:en_247()
  l0 = self[247]
  l0:Stop()
end
function export:f_290_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_402_Out
  l0:In()
end
function export:f_273_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[246]
  l0.CLO = self.CLO_Bus_ParkingLot
  l0:Activate()
end
function export:f_33_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_392_Out_0
  l0.Out[1] = self.f_392_Out_1
  l0:In()
end
function export:f_33_Enter()
  local l0
  self = self._graph
  self:en_40()
  l0 = self[40]
  l0:Disable()
end
function export:f_412_Disabled()
  local l0
  self = self._graph
  self:en_411()
  l0 = self[411]
  l0:Stop()
end
function export:f_412_Enabled()
  local l0
  self = self._graph
  self:en_411()
  l0 = self[411]
  l0:Start()
end
function export:f_412_OnNetworkSurfingActivated()
  local l0
  self = self._graph
  l0 = self[416]
  l0:Input(0)
end
function export:f_341_Out()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Start()
end
function export:f_131_out()
  local l0
  self = self._graph
  l0 = self[100]
  l0.Seconds = 4
  l0:Start()
end
function export:f_30_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[20]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState2",
    id = "359306"
  }
  l0:Fail()
end
function export:f_289_Out()
  local l0
  self = self._graph
  self:en_226()
  l0 = self[226]
  l0:Stop()
end
function export:f_379_Out()
  local l0
  self = self._graph
  l0 = self[379]
  self.ConversationStarted = l0.Target
end
function export:f_379_SetFalse()
  local l0
  self = self._graph
  l0 = self[379]
  self.ConversationStarted = l0.Target
  self:en_192()
  l0 = self[192]
  l0:Start()
end
function export:f_379_SetFromBool()
  local l0
  self = self._graph
  l0 = self[379]
  self.ConversationStarted = l0.Target
end
function export:f_379_SetTrue()
  local l0
  self = self._graph
  l0 = self[379]
  self.ConversationStarted = l0.Target
end
function export:f_379_Toggled()
  local l0
  self = self._graph
  l0 = self[379]
  self.ConversationStarted = l0.Target
end
function export:f_267_LoadAndPlayRequested()
  local l0
  self = self._graph
  self:en_66()
  l0 = self[66]
  l0:Checkpoint()
end
function export:f_195_Out_0()
  local l0
  self = self._graph
  self:en_298()
  l0 = self[298]
  l0:Pause()
end
function export:f_195_Out_1()
  local l0
  self = self._graph
  self:en_153()
  l0 = self[153]
  l0:Start()
end
function export:f_63_AbortMoveAndUseSeat()
  local l0
  self = self._graph
  l0 = self[435]
  l0:In(1)
end
function export:f_63_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[435]
  l0:In(0)
end
function export:f_413_Disabled()
  local l0
  self = self._graph
  l0 = self[286]
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective060",
    item = "SubObjective3",
    id = "359142"
  }
  l0:IncrementObjective()
end
function export:f_321_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_FlushPanel_1
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
  l0.Out = self.f_332_Out
  l0:MoveForward()
end
function export:f_180_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_ServerFarm_AccessCodeDoor
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
  l0.Out = self.f_391_Out
  l0:MoveBackward()
end
function export:f_180_Out_1()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Enable()
end
function export:f_180_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_404_Out
  l0:In()
end
function export:f_347_Assigned()
  local l0
  self = self._graph
  l0 = self[183]
  l0:Start()
end
function export:f_437_Out()
  local l0
  self = self._graph
  self:en_284()
  l0 = self[284]
  l0:Checkpoint()
end
function export:f_42_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_415_Out_0
  l0.Out[1] = self.f_415_Out_1
  l0:In()
end
function export:f_42_Located()
  local l0
  self = self._graph
  self:en_133()
  l0 = self[133]
  l0:Disable()
end
function export:f_286_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Walk"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0.MaxSpeedSet = self.f_227_MaxSpeedSet
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
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
  l0:SetMaxSpeed()
end
function export:f_174_Out_0()
  local l0
  self = self._graph
  l0 = self[114]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective030",
    item = "Objective2",
    id = "688748"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective040",
    item = "SubObjective1",
    id = "359135"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_174_Out_1()
  local l0
  self = self._graph
  self:en_72()
  l0 = self[72]
  l0:Enable()
end
function export:f_174_Out_2()
  local l0
  self = self._graph
  l0 = self[67]
  l0.Input = self.ServerFarm_VR
  l0.Data[0] = "9223372051982758460"
  l0.Data[1] = "9223372051982758452"
  l0.Data[2] = "9223372051982758442"
  l0.Data[3] = "9223372051982758434"
  l0:Add()
end
function export:f_174_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_405_Out
  l0:In()
end
function export:f_230_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[343]
  l0:Condition(1)
end
function export:f_264_Out()
  local l0
  self = self._graph
  l0 = self[197]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_357_Out()
  local l0
  self = self._graph
  self:en_253()
  l0 = self[253]
  l0:Stop()
end
function export:f_183_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055531482590"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
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
  l0.Out = self.f_213_Out
  l0:In()
end
function export:f_257_Out()
  local l0
  self = self._graph
  l0 = self[357]
  l0:Input(1)
end
function export:f_388_Out()
  local l0
  self = self._graph
  l0 = self[389]
  l0.Seconds = 60
  l0:Start()
end
function export:f_170_Out()
  local l0
  self = self._graph
  l0 = self[167]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222327002"
  l0:StartCommunication()
end
function export:f_76_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476430"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0.LoadAndPlayRequested = self.f_266_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_52_Hidden()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:DisableHack()
end
function export:f_52_Shown()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:EnableHack()
end
function export:f_190_out()
  local l0
  self = self._graph
  l0 = self[190]
  self.Horatio = l0.Horatio_Out
  l0 = self[287]
  l0.NPC = self.Horatio
  l0:Follow()
end
function export:f_275_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_180_Out_0
  l0.Out[1] = self.f_180_Out_1
  l0.Out[2] = self.f_180_Out_2
  l0:In()
end
function export:f_275_ProfilingEnabled()
  local l0
  self = self._graph
  self:en_275()
  l0 = self[275]
  l0:EnableHack()
end
function export:f_70_Out()
  local l0
  self = self._graph
  l0 = self[94]
  l0.SceneEntity = self.S08M010_CIN_045
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_ServerFarmDoor_CIN/s08_serverfarmdoor_cin_after.seq"
  l0:Start()
end
function export:f_423_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_424_Out_0
  l0.Out[1] = self.f_424_Out_1
  l0:In()
end
function export:f_319_Out()
  local l0
  self = self._graph
  self:en_304()
  l0 = self[304]
  l0:Start()
end
function export:f_228_MaxSpeedSet()
  local l0
  self = self._graph
  self:en_78()
  l0 = self[78]
  l0:GameFlow()
end
function export:f_320_Out()
  local l0
  self = self._graph
  l0 = self[319]
  l0:Input(2)
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[159]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222326997"
  l0:StartCommunication()
end
function export:f_24_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_345_Out_0
  l0.Out[1] = self.f_345_Out_1
  l0:In()
end
function export:f_176_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[299]
  l0.Input = self.BusPassengers
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Horatio
  l0:Add()
end
function export:f_105_Out_0()
  local l0
  self = self._graph
  l0 = self[220]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_105_Out_1()
  local l0
  self = self._graph
  l0 = self[103]
  l0.SceneEntity = self.S08M010_CIN_048
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_BeforeHRScolding_Cin/s08_beforehrscolding_after.seq"
  l0:Start()
end
function export:f_105_Out_2()
  local l0
  self = self._graph
  l0 = self[229]
  l0.Seconds = 60
  l0:Start()
end
function export:f_105_Out_3()
  local l0
  self = self._graph
  l0 = self[376]
  l0.Entity = "9223372055079369230"
  l0.SoundId = "soundbinary/2201325351.bnk"
  l0:Play()
end
function export:f_105_Out_4()
  local l0
  self = self._graph
  self:en_396()
  l0 = self[396]
  l0:Disable()
end
function export:f_120_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_144_Out
  l0:In()
end
function export:f_210_Out()
  local l0
  self = self._graph
  l0 = self[208]
  l0.Command = "Test_IOP"
  l0:Enable()
end
function export:f_381_A_is_True()
  local l0
  self = self._graph
  self:en_298()
  l0 = self[298]
  l0:Resume()
end
function export:f_53_SPOut__Laptop_Opened_()
  local l0
  self = self._graph
  l0 = self[68]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_53_Stopped()
  local l0
  self = self._graph
  l0 = self[187]
  l0:In()
end
function export:f_394_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
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
  l0:CallBack()
end
function export:f_252_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669158"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_406_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_164_Out()
  local l0
  self = self._graph
  l0 = self[164]
  self.PlayerEntity = l0.Player
  l0 = self[379]
  l0:False()
end
function export:f_389_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669158"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Deactivate()
end
function export:f_7_BuddyConditionFailed()
  local l0
  self = self._graph
  l0 = self[346]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState4",
    id = "625591"
  }
  l0:Fail()
end
function export:f_7_BuddyKilled()
  local l0
  self = self._graph
  l0 = self[352]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState3",
    id = "359307"
  }
  l0:Fail()
end
function export:f_7_BusDestroyed()
  local l0
  self = self._graph
  l0 = self[1]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState1",
    id = "359144"
  }
  l0:Fail()
end
function export:f_7_EnteringBus()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:In()
end
function export:f_7_ObjectiveReachDestination()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective 31",
    id = "653786"
  }
  l0.ShowPreviousObjectiveComplete = self.DisplayPreObjective
  l0:ShowNewObjective()
end
function export:f_7_PassengersInjured()
  local l0
  self = self._graph
  l0 = self[373]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState5",
    id = "691475"
  }
  l0:Fail()
end
function export:f_7_PlayerLeftBus()
  local l0
  self = self._graph
  l0 = self[88]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective2",
    id = "359129"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:ShowNewObjective()
end
function export:f_7_StartConversation()
  local l0
  self = self._graph
  l0 = self[199]
  l0.Seconds = 3
  l0:Start()
end
function export:f_7_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_201_Out_0
  l0.Out[1] = self.f_201_Out_1
  l0.Out[2] = self.f_201_Out_2
  l0:In()
end
function export:f_117_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_Server_Row6Backdoor
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
  l0.Out = self.f_115_Out
  l0:MoveForward()
end
function export:f_9_AllSpawned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372060360145259"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = 1
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
  l0.RestrictRail = 0
  l0.RestrictBoat = 0
  l0.RestrictParkedCar = 0
  l0.RestrictParkedBoat = 0
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0.Out = self.f_280_Out
  l0:In()
end
function export:f_265_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[265]
  self.Horatio = l0.UserID
  l0 = self[255]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_430_Started()
  local l0
  self = self._graph
  self:en_45()
  l0 = self[45]
  l0:Start()
end
function export:f_430_Stopped()
  local l0
  self = self._graph
  self:en_45()
  l0 = self[45]
  l0:Stop()
end
function export:f_288_Out()
  local l0
  self = self._graph
  l0 = self[342]
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective040",
    item = "SubObjective1",
    id = "359135"
  }
  l0:IncrementObjective()
end
function export:f_64_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[64]
  self.HoratioCar = l0.UserID
  l0 = self[101]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_213_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372068844329583"
  l0.SceneEntity = "9223372053761397067"
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = self.NudleBus
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_420_Out
  l0:CleanZone()
end
function export:f_87_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0.CalledBack = self.f_80_CalledBack
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
  l0:CallBack()
end
function export:f_355_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_272_Out_0
  l0.Out[1] = self.f_272_Out_1
  l0.Out[2] = self.f_272_Out_2
  l0:In()
end
function export:f_137_Loaded()
  local l0
  self = self._graph
  self:en_112()
  l0 = self[112]
  l0:GameFlow()
end
function export:f_424_Out_0()
  local l0
  self = self._graph
  self:en_421()
  l0 = self[421]
  l0:Disable()
end
function export:f_424_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_105_Out_0
  l0.Out[1] = self.f_105_Out_1
  l0.Out[2] = self.f_105_Out_2
  l0.Out[3] = self.f_105_Out_3
  l0.Out[4] = self.f_105_Out_4
  l0:In()
end
function export:f_236_Out()
  local l0
  self = self._graph
  self:en_165()
  l0 = self[165]
  l0:Stop()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[27]
  self.PlayerEntity = l0.Player
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476430"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0.LoadAndPlayRequested = self.f_93_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[12]
  self.DisplayPreObjective = l0.Target
end
function export:f_12_SetFalse()
  local l0
  self = self._graph
  l0 = self[12]
  self.DisplayPreObjective = l0.Target
end
function export:f_12_SetFromBool()
  local l0
  self = self._graph
  l0 = self[12]
  self.DisplayPreObjective = l0.Target
end
function export:f_12_SetTrue()
  local l0
  self = self._graph
  l0 = self[12]
  self.DisplayPreObjective = l0.Target
end
function export:f_12_Toggled()
  local l0
  self = self._graph
  l0 = self[12]
  self.DisplayPreObjective = l0.Target
end
function export:f_435_Out()
  local l0
  self = self._graph
  l0 = self[54]
  l0.CLO01 = self.CLO_BusPassenger_01
  l0.CLO02 = self.CLO_BusPassenger_02
  l0.CLO03 = self.CLO_BusPassenger_03
  l0.CLO04 = self.CLO_BusPassenger_04
  l0.PassengerList_In = self.BusPassengers
  l0.BusVehicle = self.NudleBus
  l0:Start()
end
function export:f_327_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.s08m010_MovableHackableEntity_45
  l0.CanMoveWithoutPhysics = 1
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
  l0.Out = self.f_325_Out
  l0:Move()
end
function export:f_327_Enabled()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective080",
    item = "Objective",
    id = "649119"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_327_HackSuccess()
  local l0
  self = self._graph
  self:en_327()
  l0 = self[327]
  l0:Disable()
end
function export:f_115_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_ServerFarm_AccessCodeDoor
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
function export:f_192_BuddyConditionFailed()
  local l0
  self = self._graph
  l0 = self[313]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState4",
    id = "625591"
  }
  l0:Fail()
end
function export:f_192_BuddyKilled()
  local l0
  self = self._graph
  l0 = self[351]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState3",
    id = "359307"
  }
  l0:Fail()
end
function export:f_192_BusDestroyed()
  local l0
  self = self._graph
  l0 = self[154]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState1",
    id = "359144"
  }
  l0:Fail()
end
function export:f_192_EnteringBus()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_111_Out
  l0:In()
end
function export:f_192_ObjectiveReachDestination()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective 31",
    id = "653786"
  }
  l0.ShowPreviousObjectiveComplete = self.DisplayPreObjective
  l0:ShowNewObjective()
end
function export:f_192_PassengersInjured()
  local l0
  self = self._graph
  l0 = self[372]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState5",
    id = "691475"
  }
  l0:Fail()
end
function export:f_192_PlayerLeftBus()
  local l0
  self = self._graph
  l0 = self[151]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective2",
    id = "359129"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:ShowNewObjective()
end
function export:f_192_StartConversation()
  local l0
  self = self._graph
  l0 = self[176]
  l0.Seconds = 3
  l0:Start()
end
function export:f_192_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_202_Out_0
  l0.Out[1] = self.f_202_Out_1
  l0.Out[2] = self.f_202_Out_2
  l0:In()
end
function export:f_336_Holstered()
  local l0
  self = self._graph
  self:en_69()
  l0 = self[69]
  l0:Start()
end
function export:f_179_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[63]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.Horatio
  l0.CanUseBackSeat = 1
  l0.Seat = "RearPassengerLeft"
  l0:Assign()
end
function export:f_132_Loaded()
  local l0
  self = self._graph
  self:en_86()
  l0 = self[86]
  l0:Checkpoint()
end
function export:f_199_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[84]
  l0.Input = self.BusPassengers
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Horatio
  l0:Add()
end
function export:f_308_Disabled()
  local l0
  self = self._graph
  self:en_315()
  l0 = self[315]
  l0:Stop()
end
function export:f_308_Enabled()
  local l0
  self = self._graph
  l0 = self[319]
  l0:Input(0)
end
function export:f_308_OnBuddyTooFar()
  local l0
  self = self._graph
  self:en_315()
  l0 = self[315]
  l0:Start()
end
function export:f_308_OnBuddyTooFarUnspawnRange()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_318_Out
  l0:In()
end
function export:f_168_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0.CalledBack = self.f_244_CalledBack
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
  l0:CallBack()
end
function export:f_235_Out()
  local l0
  self = self._graph
  l0 = self[90]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050203866240"
  l0:StartCommunication()
end
function export:f_239_Hidden()
  local l0
  self = self._graph
  self:en_238()
  l0 = self[238]
  l0:Disable()
end
function export:f_239_Shown()
  local l0
  self = self._graph
  self:en_238()
  l0 = self[238]
  l0:Enable()
end
function export:f_295_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[190]
  l0.Bus = self.NudleBus
  l0.NudleUpperLMA = self.NudleUpperLMA
  l0.Horatio = self.Horatio
  l0:In()
end
function export:f_85_Out()
  local l0
  self = self._graph
  l0 = self[380]
  l0:False()
end
function export:f_79_Out_0()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Stop()
end
function export:f_79_Out_1()
  local l0
  self = self._graph
  l0 = self[152]
  l0.SoundId = "soundbinary/3505892305.bnk"
  l0:Play()
end
function export:f_79_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_145_Out
  l0:In()
end
function export:f_306_Usable()
  local l0
  self = self._graph
  l0 = self[320]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective1",
    id = "359128"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:ShowNewObjective()
end
function export:f_282_Out()
  local l0
  self = self._graph
  l0 = self[62]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050140505934"
  l0:StartCommunication()
end
function export:f_187_out()
  local l0
  self = self._graph
  self:en_421()
  l0 = self[421]
  l0:Enable()
end
function export:f_335_PreOut()
  local l0
  self = self._graph
  self:en_69()
  l0 = self[69]
  l0:Stop()
end
function export:f_224_Completed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_59_Out_0
  l0.Out[1] = self.f_59_Out_1
  l0:In()
end
function export:f_34_Disabled()
  local l0
  self = self._graph
  self:en_91()
  l0 = self[91]
  l0:Disable()
end
function export:f_34_Enabled()
  local l0
  self = self._graph
  self:en_91()
  l0 = self[91]
  l0:Enable()
end
function export:f_34_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_21_Out
  l0:In()
end
function export:f_156_Out_0()
  local l0
  self = self._graph
  self:en_192()
  l0 = self[192]
  l0:Stop()
end
function export:f_156_Out_1()
  local l0
  self = self._graph
  l0 = self[193]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_156_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_71_Out
  l0:In()
end
function export:f_238_Disabled()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:GameFlow()
end
function export:f_238_Enter()
  local l0
  self = self._graph
  self:en_34()
  l0 = self[34]
  l0:Disable()
end
function export:f_421_Enter()
  local l0
  self = self._graph
  l0 = self[422]
  l0.SpawnPoint = self.S08M010_OutsideServerFarmUtilityRoom
  l0.UseFadeToBlack = 0
  l0:In()
end
function export:f_421_Leave()
  local l0
  self = self._graph
  l0 = self[423]
  l0:Input(1)
end
function export:f_242_Completed()
  local l0
  self = self._graph
  l0 = self[343]
  l0:Condition(0)
end
function export:f_242_Started()
  local l0
  self = self._graph
  l0 = self[230]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222327001"
  l0:StartCommunication()
end
function export:f_126_Out()
  local l0
  self = self._graph
  self:en_40()
  l0 = self[40]
  l0:Enable()
end
function export:f_396_Disabled()
  local l0
  self = self._graph
  self:en_403()
  l0 = self[403]
  l0:Disable()
end
function export:f_396_Enabled()
  local l0
  self = self._graph
  self:en_403()
  l0 = self[403]
  l0:Enable()
end
function export:f_396_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0.CalledBack = self.f_394_CalledBack
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
  l0:CallBack()
end
function export:f_400_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
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
  l0:CallBack()
end
function export:f_416_Out()
  local l0
  self = self._graph
  self:en_412()
  l0 = self[412]
  l0:Disable()
end
function export:f_222_MaxSpeedSet()
  local l0
  self = self._graph
  self:en_66()
  l0 = self[66]
  l0:GameFlow()
end
function export:f_317_Out()
  local l0
  self = self._graph
  l0 = self[301]
  l0:Input(2)
end
function export:f_419_Out()
  local l0
  self = self._graph
  l0 = self[279]
  l0.SceneEntity = "9223372047235790533"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_OnTheBus_CIN/s08_onthebus_cin.seq"
  l0.EntityIn.Horatio = self.Horatio
  l0.EntityIn.Bus = self.NudleBus
  l0:Start()
end
function export:f_258_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.Horatio
  l0.CanUseBackSeat = 1
  l0.Seat = "RearPassengerLeft"
  l0:Assign()
end
function export:f_147_Out()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Start()
end
function export:f_356_Out_0()
  local l0
  self = self._graph
  self:en_338()
  l0 = self[338]
  l0:Stop()
end
function export:f_356_Out_1()
  local l0
  self = self._graph
  l0 = self[357]
  l0:Input(0)
end
function export:f_315_Reached()
  local l0
  self = self._graph
  l0 = self[319]
  l0:Input(1)
end
function export:f_315_Started()
  local l0
  self = self._graph
  l0 = self[301]
  l0:Input(0)
end
function export:f_315_Stopped()
  local l0
  self = self._graph
  l0 = self[301]
  l0:Input(1)
end
function export:f_369_AnimationFinished()
  local l0
  self = self._graph
  self:en_369()
  l0 = self[369]
  l0:Disable()
end
function export:f_369_Disabled()
  local l0
  self = self._graph
  l0 = self[371]
  l0:In(2)
end
function export:f_14_Completed()
  local l0
  self = self._graph
  l0 = self[242]
  l0.Text = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.EXTRA.Download Feedback",
    item = "Specific_Download3",
    id = "688735"
  }
  l0.TotalTime = 20
  l0:Start()
end
function export:f_141_Out_0()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Hide()
end
function export:f_141_Out_1()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Disable()
end
function export:f_250_PreOut()
  local l0
  self = self._graph
  l0 = self[119]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_95_Disabled()
  local l0
  self = self._graph
  self:en_214()
  l0 = self[214]
  l0:Disable()
end
function export:f_95_Enabled()
  local l0
  self = self._graph
  self:en_214()
  l0 = self[214]
  l0:Enable()
end
function export:f_95_Enter()
  local l0
  self = self._graph
  l0 = self[136]
  l0:In(0)
end
function export:f_378_Out()
  local l0
  self = self._graph
  l0 = self[378]
  self.ConversationStarted = l0.Target
end
function export:f_378_SetFalse()
  local l0
  self = self._graph
  l0 = self[378]
  self.ConversationStarted = l0.Target
end
function export:f_378_SetFromBool()
  local l0
  self = self._graph
  l0 = self[378]
  self.ConversationStarted = l0.Target
end
function export:f_378_SetTrue()
  local l0
  self = self._graph
  l0 = self[378]
  self.ConversationStarted = l0.Target
end
function export:f_378_Toggled()
  local l0
  self = self._graph
  l0 = self[378]
  self.ConversationStarted = l0.Target
end
function export:f_395_Out()
  local l0
  self = self._graph
  l0 = self[409]
  l0.Seconds = 2
  l0:Start()
end
function export:f_57_AnimationFinished()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Disable()
end
function export:f_57_Disabled()
  local l0
  self = self._graph
  l0 = self[371]
  l0:In(0)
end
function export:f_112_Out()
  local l0
  self = self._graph
  l0 = self[112]
  self.PlayerEntity = l0.Player
  l0 = self[98]
  l0:True()
end
function export:f_402_Out()
  local l0
  self = self._graph
  self:en_401()
  l0 = self[401]
  l0:Disable()
end
function export:f_208_Executed()
  local l0
  self = self._graph
  l0 = self[209]
  l0:Input(0)
end
function export:f_148_Hidden()
  local l0
  self = self._graph
  self:en_150()
  l0 = self[150]
  l0:Disable()
end
function export:f_148_Shown()
  local l0
  self = self._graph
  self:en_150()
  l0 = self[150]
  l0:Enable()
end
function export:f_122_Loaded()
  local l0
  self = self._graph
  l0 = self[43]
  l0.PGTMissionArea = self.PGTArea
  l0:Start()
end
function export:f_429_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
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
  l0:CallBack()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[5]
  self.PlayerEntity = l0.Player
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_58_Out_0
  l0.Out[1] = self.f_58_Out_1
  l0.Out[2] = self.f_58_Out_2
  l0.Out[3] = self.f_58_Out_3
  l0:In()
end
function export:f_103_Finished()
  local l0
  self = self._graph
  l0 = self[231]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055360592242"
  l0:StartCommunication()
end
function export:f_19_AbortMoveAndUseSeat()
  local l0
  self = self._graph
  l0 = self[432]
  l0:In(1)
end
function export:f_19_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[432]
  l0:In(0)
end
function export:f_114_Out()
  local l0
  self = self._graph
  self:en_133()
  l0 = self[133]
  l0:Enable()
end
function export:f_209_Out()
  local l0
  self = self._graph
  l0 = self[70]
  l0.NudleUpperLMA = self.NudleUpperLMA
  l0.NudleLowerLMA = self.NudleLowerLMA
  l0:In()
end
function export:f_88_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_83_Out_0
  l0.Out[1] = self.f_83_Out_1
  l0:In()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0:False()
end
function export:f_139_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[139]
  self.NudleBus = l0.UserID
  l0 = self[138]
  l0.CLO = self.CLO_HoratioBusPassenger_Stanford
  l0:Activate()
end
function export:f_249_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_273_Out
  l0:In()
end
function export:f_240_PostOut()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:GameFlow()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[359]
  l0:Input(1)
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[66]
  self.PlayerEntity = l0.Player
  self:en_270()
  l0 = self[270]
  l0:DisableProfiling()
end
function export:f_326_Out()
  local l0
  self = self._graph
  self:en_327()
  l0 = self[327]
  l0:Enable()
end
function export:f_293_Completed()
  local l0
  self = self._graph
  l0 = self[293]
  self.BusPassengers = l0.PassengerList_Out
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372072446567155"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_254_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_334_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = self[417]
  l0.Input = self.HackableEntities
  l0.Data[0] = self.Server_HackableEntity_Server
  l0.Data[1] = self.Server_HackableEntity_ServerWrong_01
  l0.Data[2] = self.Server_HackableEntity_ServerWrong_02
  l0.Data[3] = self.Server_HackableEntity_ServerWrong_03
  l0.Data[4] = self.Server_HackableEntity_ServerWrong_04
  l0.Data[5] = self.Server_HackableEntity_ServerWrong_05
  l0.Data[6] = self.VR_AccessNode_EXT_EntranceNodeEntity_door_01
  l0.Data[7] = self.VR_AccessNode_EXT_EntranceNodeEntity_door_04
  l0.Data[8] = self.VR_AccessNode_EXT_EntranceNodeEntity_door_07
  l0.Data[9] = self.VR_AccessNode_EXT_EntranceNodeEntity_door_10
  l0:Add()
end
function export:f_128_Loaded()
  local l0
  self = self._graph
  l0 = self[48]
  l0.PGTMissionArea = self.PGTArea
  l0:Start()
end
function export:f_243_CalledBack()
  local l0
  self = self._graph
  l0 = self[177]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055360592245"
  l0:StartCommunication()
end
function export:f_60_Finished()
  local l0
  self = self._graph
  l0 = self[147]
  l0:Input(1)
end
function export:f_60_Paused()
  local l0
  self = self._graph
  l0 = self[147]
  l0:Input(0)
end
function export:f_60_Resumed()
  local l0
  self = self._graph
  l0 = self[158]
  l0:Input(0)
end
function export:f_60_Started()
  local l0
  self = self._graph
  l0 = self[383]
  l0:True()
end
function export:f_272_Out_0()
  local l0
  self = self._graph
  self:en_276()
  l0 = self[276]
  l0:Stop()
end
function export:f_272_Out_1()
  local l0
  self = self._graph
  l0 = self[250]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_272_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_236_Out
  l0:In()
end
function export:f_133_Disabled()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Disable()
end
function export:f_133_Enabled()
  local l0
  self = self._graph
  self:en_412()
  l0 = self[412]
  l0:Enable()
end
function export:f_133_Entered()
  local l0
  self = self._graph
  l0 = self[288]
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective060",
    item = "SubObjective2b",
    id = "359141"
  }
  l0:UpdateObjective()
end
function export:f_241_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_356_Out_0
  l0.Out[1] = self.f_356_Out_1
  l0:In()
end
function export:f_300_Disabled()
  local l0
  self = self._graph
  self:en_430()
  l0 = self[430]
  l0:Stop()
end
function export:f_300_Enabled()
  local l0
  self = self._graph
  self:en_430()
  l0 = self[430]
  l0:Start()
end
function export:f_300_InConflict()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_146_Out
  l0:In()
end
function export:f_300_NOTInConflict()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_296_Out
  l0:In()
end
function export:f_339_Activated()
  local l0
  self = self._graph
  self:en_164()
  l0 = self[164]
  l0:Checkpoint()
end
function export:f_285_AbortMoveAndUseSeat()
  local l0
  self = self._graph
  l0 = self[437]
  l0:In(1)
end
function export:f_285_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[437]
  l0:In(0)
end
function export:f_45_Started()
  local l0
  self = self._graph
  self:en_307()
  l0 = self[307]
  l0:Enable()
end
function export:f_45_Stopped()
  local l0
  self = self._graph
  self:en_307()
  l0 = self[307]
  l0:Disable()
end
function export:f_344_EndedAllCustomMediaBroadcasts()
  local l0
  self = self._graph
  self:en_107()
  l0 = self[107]
  l0:End()
end
function export:f_261_Out_0()
  local l0
  self = self._graph
  self:en_338()
  l0 = self[338]
  l0:Start()
end
function export:f_261_Out_1()
  local l0
  self = self._graph
  l0 = self[251]
  l0:In(0)
end
function export:f_220_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Sprint"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0.MaxSpeedSet = self.f_228_MaxSpeedSet
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
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
  l0:SetMaxSpeed()
end
function export:f_203_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_210_Out
  l0:In()
end
function export:f_203_Out_1()
  local l0
  self = self._graph
  l0 = self[96]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective030",
    item = "Objective2",
    id = "688748"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective040",
    item = "SubObjective1",
    id = "359135"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:ShowNewObjective()
end
function export:f_203_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_340_Out
  l0:In()
end
function export:f_203_Out_3()
  local l0
  self = self._graph
  self:en_205()
  l0 = self[205]
  l0:Enable()
end
function export:f_216_Disabled()
  local l0
  self = self._graph
  l0 = self[413]
  l0.HackableEntity = self.Server_HackableEntity_Server
  l0:DisableHack()
end
function export:f_142_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[143]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.Horatio
  l0.CanUseBackSeat = 1
  l0.Seat = "RearPassengerLeft"
  l0:Assign()
end
function export:f_221_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = 0
  l0._graph = self
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = self.f_118_ClimbInteractionAllowedSet
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0:SetClimbInteractionAllowed()
end
function export:f_91_Disabled()
  local l0
  self = self._graph
  self:en_425()
  l0 = self[425]
  l0:Disable()
end
function export:f_91_Enabled()
  local l0
  self = self._graph
  self:en_425()
  l0 = self[425]
  l0:Enable()
end
function export:f_91_Enter()
  local l0
  self = self._graph
  l0 = self[269]
  l0:Input(1)
end
function export:f_150_Disabled()
  local l0
  self = self._graph
  self:en_61()
  l0 = self[61]
  l0:Enable()
end
function export:f_150_Enter()
  local l0
  self = self._graph
  self:en_148()
  l0 = self[148]
  l0:Hide()
end
function export:f_374_Disabled()
  local l0
  self = self._graph
  l0 = self[126]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective030",
    item = "Objective2",
    id = "688748"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective040",
    item = "SubObjective1",
    id = "359135"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_374_OnFwdMovementFinished()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:Hide()
end
function export:f_365_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_79_Out_0
  l0.Out[1] = self.f_79_Out_1
  l0.Out[2] = self.f_79_Out_2
  l0:In()
end
function export:f_377_Assigned()
  local l0
  self = self._graph
  l0 = self[188]
  l0:Start()
end
function export:f_301_Out()
  local l0
  self = self._graph
  self:en_304()
  l0 = self[304]
  l0:Stop()
end
function export:f_186_out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.PGTMissionArea = self.PGTArea
  l0:Start()
end
function export:f_77_Unloaded()
  local l0
  self = self._graph
  l0 = self[131]
  l0:In()
end
function export:f_362_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_156_Out_0
  l0.Out[1] = self.f_156_Out_1
  l0.Out[2] = self.f_156_Out_2
  l0:In()
end
function export:f_110_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[110]
  self.Horatio = l0.UserID
  l0 = self[179]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_193_PreOut()
  local l0
  self = self._graph
  l0 = self[347]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_414_Removed()
  local l0
  self = self._graph
  self:en_216()
  l0 = self[216]
  l0:Enable()
end
function export:f_153_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[194]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState2",
    id = "359306"
  }
  l0:Fail()
end
function export:f_291_Completed()
  local l0
  self = self._graph
  l0 = self[291]
  self.BusPassengers = l0.PassengerList_Out
  l0 = self[260]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_43_AllSpawned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476430"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0.LoadAndPlayRequested = self.f_233_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_292_Completed()
  local l0
  self = self._graph
  l0 = self[292]
  self.BusPassengers = l0.PassengerList_Out
  l0 = self[184]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_47_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[47]
  self.Horatio = l0.UserID
  l0 = self[64]
  l0.CLO = self.HoratioCarCLO
  l0:Activate()
end
function export:f_226_Reached()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_290_Out_0
  l0.Out[1] = self.f_290_Out_1
  l0.Out[2] = self.f_290_Out_2
  l0:In()
end
function export:f_226_Stopped()
  local l0
  self = self._graph
  l0 = self[245]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective3",
    id = "359131"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:ShowNewObjective()
end
function export:f_108_Out()
  local l0
  self = self._graph
  l0 = self[160]
  l0:False()
end
function export:f_343_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DrawWeapon_v2.lua")]
  l0.Pawn = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Holstered = self.f_337_Holstered
  l0.HandgunEquipped = DummyFunction
  l0.AssaultEquipped = DummyFunction
  l0.ShotGunEquipped = DummyFunction
  l0.SniperEquipped = DummyFunction
  l0.GrenadeLauncherEquipped = DummyFunction
  l0:Holster()
end
function export:f_46_Finished()
  local l0
  self = self._graph
  l0 = self[75]
  l0:In(1)
end
function export:f_46_Skipped()
  local l0
  self = self._graph
  l0 = self[75]
  l0:In(0)
end
function export:f_161_Hidden()
  local l0
  self = self._graph
  self:en_247()
  l0 = self[247]
  l0:Start()
end
function export:f_160_Out()
  local l0
  self = self._graph
  l0 = self[160]
  self.DisplayPreObjective = l0.Target
end
function export:f_160_SetFalse()
  local l0
  self = self._graph
  l0 = self[160]
  self.DisplayPreObjective = l0.Target
end
function export:f_160_SetFromBool()
  local l0
  self = self._graph
  l0 = self[160]
  self.DisplayPreObjective = l0.Target
end
function export:f_160_SetTrue()
  local l0
  self = self._graph
  l0 = self[160]
  self.DisplayPreObjective = l0.Target
end
function export:f_160_Toggled()
  local l0
  self = self._graph
  l0 = self[160]
  self.DisplayPreObjective = l0.Target
end
function export:f_201_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0:In()
end
function export:f_201_Out_1()
  local l0
  self = self._graph
  self:en_60()
  l0 = self[60]
  l0:Stop()
end
function export:f_201_Out_2()
  local l0
  self = self._graph
  l0 = self[359]
  l0:Input(0)
end
function export:f_111_Out()
  local l0
  self = self._graph
  l0 = self[358]
  l0:Input(1)
end
function export:f_312_IsWaiting()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_297_Out_0
  l0.Out[1] = self.f_297_Out_1
  l0.Out[2] = self.f_297_Out_2
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:Stop()
end
function export:f_337_Holstered()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:Start()
end
function export:f_266_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669158"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_407_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_403_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0.CalledBack = self.f_429_CalledBack
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
  l0:CallBack()
end
function export:f_109_Out()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Start()
end
function export:f_237_Out()
  local l0
  self = self._graph
  self:en_34()
  l0 = self[34]
  l0:Enable()
end
function export:f_10_AbortMoveAndUseSeat()
  local l0
  self = self._graph
  l0 = self[134]
  l0:In(1)
end
function export:f_10_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[134]
  l0:In(0)
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_74_Out_0
  l0.Out[1] = self.f_74_Out_1
  l0.Out[2] = self.f_74_Out_2
  l0:In()
end
function export:f_426_HackForced()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:GameFlow()
end
function export:f_134_Out()
  local l0
  self = self._graph
  l0 = self[291]
  l0.CLO01 = self.CLO_BusPassenger_01
  l0.CLO02 = self.CLO_BusPassenger_02
  l0.CLO03 = self.CLO_BusPassenger_03
  l0.CLO04 = self.CLO_BusPassenger_04
  l0.PassengerList_In = self.BusPassengers
  l0.BusVehicle = self.NudleBus
  l0:Start()
end
function export:f_93_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = self[135]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective020",
    item = "Objective",
    id = "359133"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:ShowNewObjective()
end
function export:f_420_Out()
  local l0
  self = self._graph
  l0 = self[232]
  l0.SceneEntity = "9223372053761397067"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_OnTheBusStop_CIN/s08_onthebusstop_cin.seq"
  l0.EntityIn.Horatio = self.Horatio
  l0.EntityIn.Bus = self.NudleBus
  l0:Start()
end
function export:f_113_Loaded()
  local l0
  self = self._graph
  l0 = self[140]
  l0.CLO = self.HoratioSpawner
  l0:Activate()
end
function export:f_392_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Walk"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0.MaxSpeedSet = self.f_221_MaxSpeedSet
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
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
  l0:SetMaxSpeed()
end
function export:f_392_Out_1()
  local l0
  self = self._graph
  self:en_283()
  l0 = self[283]
  l0:Disable()
end
function export:f_296_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.NudleBus
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = self.f_306_Usable
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:SetAsUsable()
end
function export:f_121_Loaded()
  local l0
  self = self._graph
  self:en_112()
  l0 = self[112]
  l0:Checkpoint()
end
function export:f_383_Out()
  local l0
  self = self._graph
  l0 = self[383]
  self.ConversationStarted = l0.Target
end
function export:f_383_SetFalse()
  local l0
  self = self._graph
  l0 = self[383]
  self.ConversationStarted = l0.Target
end
function export:f_383_SetFromBool()
  local l0
  self = self._graph
  l0 = self[383]
  self.ConversationStarted = l0.Target
end
function export:f_383_SetTrue()
  local l0
  self = self._graph
  l0 = self[383]
  self.ConversationStarted = l0.Target
end
function export:f_383_Toggled()
  local l0
  self = self._graph
  l0 = self[383]
  self.ConversationStarted = l0.Target
end
function export:f_354_Disabled()
  local l0
  self = self._graph
  l0 = self[355]
  l0:Input(1)
end
function export:f_354_Entered()
  local l0
  self = self._graph
  self:en_354()
  l0 = self[354]
  l0:Disable()
end
function export:f_130_Out()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Stop()
end
function export:f_364_Disabled()
  local l0
  self = self._graph
  l0 = self[365]
  l0:Input(1)
end
function export:f_364_Entered()
  local l0
  self = self._graph
  self:en_364()
  l0 = self[364]
  l0:Disable()
end
function export:f_135_Out()
  local l0
  self = self._graph
  self:en_116()
  l0 = self[116]
  l0:Start()
end
function export:f_75_Out()
  local l0
  self = self._graph
  l0 = self[198]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_38_AllDeliveryCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.PlayerEntity
  l0.Vehicle = self.NudleBus
  l0._graph = self
  l0.EntityIsInVehicle = self.f_360_EntityIsInVehicle
  l0.EntityIsNotInVehicle = self.f_360_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0:IsInVehicle()
end
function export:f_401_Disabled()
  local l0
  self = self._graph
  self:en_397()
  l0 = self[397]
  l0:Disable()
end
function export:f_401_Enabled()
  local l0
  self = self._graph
  self:en_397()
  l0 = self[397]
  l0:Enable()
end
function export:f_401_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0.CalledBack = self.f_400_CalledBack
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
  l0:CallBack()
end
function export:f_276_BuddyConditionFailed()
  local l0
  self = self._graph
  l0 = self[217]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState4",
    id = "625591"
  }
  l0:Fail()
end
function export:f_276_BuddyKilled()
  local l0
  self = self._graph
  l0 = self[350]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState3",
    id = "359307"
  }
  l0:Fail()
end
function export:f_276_BusDestroyed()
  local l0
  self = self._graph
  l0 = self[259]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState1",
    id = "359144"
  }
  l0:Fail()
end
function export:f_276_EnteringBus()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_257_Out
  l0:In()
end
function export:f_276_ObjectiveReachDestination()
  local l0
  self = self._graph
  l0 = self[256]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective 31",
    id = "653786"
  }
  l0.ShowPreviousObjectiveComplete = self.DisplayPreObjective
  l0:ShowNewObjective()
end
function export:f_276_PlayerLeftBus()
  local l0
  self = self._graph
  l0 = self[268]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective2",
    id = "359129"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:ShowNewObjective()
end
function export:f_276_StartConversation()
  local l0
  self = self._graph
  l0 = self[182]
  l0.Input = {}
  l0.Data[0] = self.Horatio
  l0:Add()
end
function export:f_276_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_241_Out
  l0:In()
end
function export:f_35_AbortMoveAndUseSeat()
  local l0
  self = self._graph
  l0 = self[433]
  l0:In(1)
end
function export:f_35_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[433]
  l0:In(0)
end
function export:f_118_ClimbInteractionAllowedSet()
  local l0
  self = self._graph
  l0 = self[173]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222326999"
  l0:StartCommunication()
end
function export:f_232_Finished()
  local l0
  self = self._graph
  l0 = self[234]
  l0:In(1)
end
function export:f_232_Skipped()
  local l0
  self = self._graph
  l0 = self[234]
  l0:In(0)
end
function export:f_232_Started()
  local l0
  self = self._graph
  l0 = self[232]
  self.Horatio = l0.EntityOut.Horatio
  self.NudleBus = l0.EntityOut.Bus
end
function export:f_218_Out()
  local l0
  self = self._graph
  l0 = self[206]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055079368289"
  l0:StartCommunication()
end
function export:f_159_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[163]
  l0.Bool = self.HasNudleMapAccess
  l0:True()
end
function export:f_227_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = self[224]
  l0.Text = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.EXTRA.Download Feedback",
    item = "Specific_Download2",
    id = "688734"
  }
  l0.TotalTime = 3
  l0:Start()
end
function export:f_397_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0.CalledBack = self.f_393_CalledBack
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
  l0:CallBack()
end
function export:f_434_Out()
  local l0
  self = self._graph
  l0 = self[294]
  l0.CLO01 = self.CLO_BusPassenger_01
  l0.CLO02 = self.CLO_BusPassenger_02
  l0.CLO03 = self.CLO_BusPassenger_03
  l0.CLO04 = self.CLO_BusPassenger_04
  l0.PassengerList_In = self.BusPassengers
  l0.BusVehicle = self.NudleBus
  l0:Start()
end
function export:f_72_Disabled()
  local l0
  self = self._graph
  l0 = self[178]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048120064785"
  l0:StartCommunication()
end
function export:f_72_InteractionFinished()
  local l0
  self = self._graph
  self:en_72()
  l0 = self[72]
  l0:Disable()
end
function export:f_262_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = self.s08m10_AIAgentZone_501_CinematicClean
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = 0
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
  l0.RestrictRail = 0
  l0.RestrictBoat = 0
  l0.RestrictParkedCar = 0
  l0.RestrictParkedBoat = 0
  l0.RestrictWorldAI = 1
  l0.RestrictReinforcementAI = 1
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0.Out = self.f_387_Out
  l0:In()
end
function export:f_196_PreOut()
  local l0
  self = self._graph
  l0 = self[377]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_225_Disabled()
  local l0
  self = self._graph
  self:en_104()
  l0 = self[104]
  l0:Hide()
end
function export:f_225_Enabled()
  local l0
  self = self._graph
  self:en_104()
  l0 = self[104]
  l0:Show()
end
function export:f_225_Enter()
  local l0
  self = self._graph
  self:en_225()
  l0 = self[225]
  l0:Disable()
end
function export:f_92_Disabled()
  local l0
  self = self._graph
  self:en_374()
  l0 = self[374]
  l0:Disable()
end
function export:f_92_Enter()
  local l0
  self = self._graph
  self:en_374()
  l0 = self[374]
  l0:Enable()
end
function export:f_83_Out_0()
  local l0
  self = self._graph
  self:en_60()
  l0 = self[60]
  l0:Pause()
end
function export:f_83_Out_1()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Start()
end
function export:f_151_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_195_Out_0
  l0.Out[1] = self.f_195_Out_1
  l0:In()
end
function export:f_136_Out()
  local l0
  self = self._graph
  l0 = self[97]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050203866241"
  l0:StartCommunication()
end
function export:f_303_Out()
  local l0
  self = self._graph
  l0 = self[310]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState3",
    id = "359307"
  }
  l0:Fail()
end
function export:f_284_Out()
  local l0
  self = self._graph
  l0 = self[284]
  self.PlayerEntity = l0.Player
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_82_Out_0
  l0.Out[1] = self.f_82_Out_1
  l0:In()
end
function export:f_331_Out()
  local l0
  self = self._graph
  self:en_283()
  l0 = self[283]
  l0:Enable()
end
function export:f_54_Completed()
  local l0
  self = self._graph
  l0 = self[54]
  self.BusPassengers = l0.PassengerList_Out
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372072446567155"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_339_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_84_Added()
  local l0, l1
  self = self._graph
  l0 = self[84]
  l1 = self[60]
  l1.Users = l0.Target
  self:en_60()
  l1:Start()
end
function export:f_84_Out()
  local l0, l1
  self = self._graph
  l0 = self[84]
  l1 = self[60]
  l1.Users = l0.Target
end
function export:f_84_Removed()
  local l0, l1
  self = self._graph
  l0 = self[84]
  l1 = self[60]
  l1.Users = l0.Target
end
function export:f_387_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 8
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_395_Out
  l0:SetTimeOfDay()
end
function export:f_22_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[22]
  self.NudleBus = l0.UserID
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.NudleBus
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "LockLeftWheel"
  l0.HackCategoryType[1] = "LockRightWheel"
  l0.HackCategoryType[2] = "LockBrakes"
  l0.HackCategoryType[3] = "EngineOverheat"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_384_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Remove()
end
function export:f_348_Out()
  local l0
  self = self._graph
  l0 = self[215]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055079368286"
  l0:StartCommunication()
end
function export:f_359_Out()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Stop()
end
function export:f_298_Finished()
  local l0
  self = self._graph
  l0 = self[333]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050140505936"
  l0:StartCommunication()
end
function export:f_298_Paused()
  local l0
  self = self._graph
  l0 = self[109]
  l0:Input(1)
end
function export:f_298_Resumed()
  local l0
  self = self._graph
  l0 = self[130]
  l0:Input(0)
end
function export:f_298_Started()
  local l0
  self = self._graph
  l0 = self[378]
  l0:True()
end
function export:f_4_Out()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:Stop()
end
function export:f_116_CombatStarted()
  local l0
  self = self._graph
  l0 = self[349]
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "Mission failed",
    id = "165440"
  }
  l0:Fail()
end
function export:f_116_Disabled()
  local l0
  self = self._graph
  l0 = self[186]
  l0.Horatio = self.Horatio
  l0:In()
end
function export:f_116_TalkerDead()
  local l0
  self = self._graph
  l0 = self[123]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState3",
    id = "359307"
  }
  l0:Fail()
end
function export:f_116_TalkerDestinationReached()
  local l0
  self = self._graph
  self:en_116()
  l0 = self[116]
  l0:Disable()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_181_Out_0
  l0.Out[1] = self.f_181_Out_1
  l0.Out[2] = self.f_181_Out_2
  l0:In()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[341]
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective060",
    item = "SubObjective2b",
    id = "359141"
  }
  l0:IncrementObjective()
end
function export:f_197_PostOut()
  local l0
  self = self._graph
  l0 = self[426]
  l0.HackableEntity = self.Tablet_HackableEntity_FunOffice_Access
  l0:ForceHack()
end
function export:f_163_Out()
  local l0
  self = self._graph
  l0 = self[163]
  self.HasNudleMapAccess = l0.Target
end
function export:f_163_SetFalse()
  local l0
  self = self._graph
  l0 = self[163]
  self.HasNudleMapAccess = l0.Target
end
function export:f_163_SetFromBool()
  local l0
  self = self._graph
  l0 = self[163]
  self.HasNudleMapAccess = l0.Target
end
function export:f_163_SetTrue()
  local l0
  self = self._graph
  l0 = self[163]
  self.HasNudleMapAccess = l0.Target
end
function export:f_163_Toggled()
  local l0
  self = self._graph
  l0 = self[163]
  self.HasNudleMapAccess = l0.Target
end
function export:f_229_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[81]
  l0.LayerName = self.Layer_ServerFarmDump
  l0:Unload()
end
function export:f_173_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DrawWeapon_v2.lua")]
  l0.Pawn = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Holstered = self.f_336_Holstered
  l0.HandgunEquipped = DummyFunction
  l0.AssaultEquipped = DummyFunction
  l0.ShotGunEquipped = DummyFunction
  l0.SniperEquipped = DummyFunction
  l0.GrenadeLauncherEquipped = DummyFunction
  l0:Holster()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[18]
  self.PlayerEntity = l0.Player
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_427_Out_0
  l0.Out[1] = self.f_427_Out_1
  l0:In()
end
function export:en_205()
  local l0
  l0 = self[205]
  l0.HackableEntity = self.Elevator_Hackable_Machinery
end
function export:en_99()
  local l0
  l0 = self[99]
  l0.HackableEntity = self.Elevator_Hackable_Cabin
end
function export:en_162()
  local l0
  l0 = self[162]
  l0.Trigger = self.ProximityTrigger_LeavingSewer
  l0.CheckNow = 1
end
function export:en_211()
  local l0
  l0 = self[211]
  l0.MapPoint = self.MissionTarget_ReachMaintenanceRoom
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.MapPoint = self.MissionTarget_ReachElevatorShaft
end
function export:en_270()
  local l0
  l0 = self[270]
  l0.HackableEntity = self.Nudle_CoolingTankPanel_ControlBox_HackableEntity_0
end
function export:en_247()
  local l0
  l0 = self[247]
  l0.FelonyType = "Police"
  l0.CheckNow = 1
end
function export:en_410()
  local l0
  l0 = self[410]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NetHackOpen",
    item = "Description",
    id = "340376"
  }
  l0.Duration = -1
end
function export:en_425()
  local l0
  l0 = self[425]
  l0.Trigger = self.s08m010_ProximityTrigger_NudleMapEntrance02_TS
  l0.CheckNow = 1
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.Entity = self.S08m010_GenericInteract_Server
  l0.IsManagingInteraction = 1
end
function export:en_212()
  local l0
  l0 = self[212]
  l0.Input = "fire_trigger_press"
end
function export:en_283()
  local l0
  l0 = self[283]
  l0.Trigger = self.s08m010_ProximityTrigger_MarcusOnly_Tip
end
function export:en_253()
  local l0
  l0 = self[253]
  l0.Seconds = 30
end
function export:en_104()
  local l0
  l0 = self[104]
  l0.MapPoint = self.MissionTarget_EscapeHelper
end
function export:en_368()
  local l0
  l0 = self[368]
  l0.InteractionScriptEntity = self.OutsideSlide
end
function export:en_73()
  local l0
  l0 = self[73]
  l0.HackableEntityList = self.ServerFarm_VR
end
function export:en_69()
  local l0
  l0 = self[69]
  l0.SceneEntity = self.S08M010_CIN_045
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_ServerFarmDoor_CIN/s08_serverfarmdoor_cin.seq"
end
function export:en_26()
  local l0
  l0 = self[26]
  l0.HackableEntity = self.Elevator_Hackable_Machinery
end
function export:en_40()
  local l0
  l0 = self[40]
  l0.MissionArea = self.S08_MissionArea_SearchServerFarm
end
function export:en_78()
  local l0
  l0 = self[78]
  l0.CheckPointName = "CheckPoint_9"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 1
end
function export:en_338()
  local l0
  l0 = self[338]
  l0.VehicleEntity = self.NudleBus
  l0.DestinationTrigger = self.S08M010_ProximityTrigger_Downtown_Destination
  l0.NbToDeliver = 1
  l0.AcceptedReliability = "Broken"
  l0.VehicleMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.DestinationMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.GetOutToComplete = 0
  l0.ForceStopAtDestination = 1
  l0.ForceStopBrake = "Soft"
  l0.PostEscape_InVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective 31",
    id = "653786"
  }
end
function export:en_304()
  local l0
  l0 = self[304]
  l0.Entity = self.NudleBus
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0.IsManagingInteraction = 0
end
function export:en_28()
  local l0
  l0 = self[28]
  l0.Trigger = self.S08_ProximityTrigger_ReachElevatorShaft
end
function export:en_172()
  local l0
  l0 = self[172]
  l0.Trigger = self.s08m010_ProximityTrigger_elevatormaintenanceroom
end
function export:en_61()
  local l0
  l0 = self[61]
  l0.Trigger = self.s08m010_ProximityTrigger_ElevatorLobby_TS
  l0.CheckNow = 1
  l0.AutoDisable = 1
end
function export:en_49()
  local l0
  l0 = self[49]
  l0.VehicleEntity = self.NudleBus
  l0.DestinationTrigger = "9223372046058280833"
  l0.NbToDeliver = 1
  l0.AcceptedReliability = "Broken"
  l0.VehicleMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.DestinationMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.GetOutToComplete = 0
  l0.ForceStopAtDestination = 1
  l0.ForceStopBrake = "Soft"
  l0.PostEscape_InVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective 31",
    id = "653786"
  }
end
function export:en_411()
  local l0
  l0 = self[411]
  l0.Seconds = 60
end
function export:en_307()
  local l0
  l0 = self[307]
  l0.Vehicle = self.NudleBus
end
function export:en_41()
  local l0
  l0 = self[41]
  l0.Trigger = self.s08m010_ProximityTrigger_coolingroom_TS
end
function export:en_86()
  local l0
  l0 = self[86]
  l0.CheckPointName = "CheckPoint_10"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 1
end
function export:en_214()
  local l0
  l0 = self[214]
  l0.Input = "fire_trigger_press"
end
function export:en_361()
  local l0
  l0 = self[361]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.CheckNow = 1
end
function export:en_36()
  local l0
  l0 = self[36]
  l0.CheckPointName = "CheckPoint_7"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 1
end
function export:en_32()
  local l0
  l0 = self[32]
  l0.Users = self.BusPassengers
  l0.RuleConfig = "GameplayConversationSettings.9223372056743429782"
end
function export:en_311()
  local l0
  l0 = self[311]
  l0.Vehicle = self.NudleBus
  l0.CheckNow = 1
end
function export:en_302()
  local l0
  l0 = self[302]
  l0.Pawn = self.Horatio
end
function export:en_33()
  local l0
  l0 = self[33]
  l0.Trigger = self.s08m010_ProximityTrigger_serverfarm_dooraccess
end
function export:en_412()
  local l0
  l0 = self[412]
  l0.CheckNow = 1
end
function export:en_30()
  local l0
  l0 = self[30]
  l0.Seconds = 30
end
function export:en_52()
  local l0
  l0 = self[52]
  l0.MapPoint = self.MissionTarget_ReachBasement
end
function export:en_275()
  local l0
  l0 = self[275]
  l0.HackableEntity = self.Nudle_CoolingTankPanel_ControlBox_HackableEntity_0
end
function export:en_53()
  local l0
  l0 = self[53]
  l0.SceneEntity = self.S08M010_CIN_048
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_BeforeHRScolding_Cin/s08_beforehrscolding.seq"
end
function export:en_164()
  local l0
  l0 = self[164]
  l0.CheckPointName = "CheckPoint_2"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 0
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Vehicle = self.NudleBus
  l0.Passengers = self.BusPassengers
  l0.BuddyNPC = self.Horatio
end
function export:en_430()
  local l0
  l0 = self[430]
  l0.User1 = self.Horatio
  l0.User2 = self.PlayerEntity
  l0.RuleConfig = "GameplayConversationSettings.9223372059416333809"
end
function export:en_27()
  local l0
  l0 = self[27]
  l0.CheckPointName = "CheckPoint_4"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 0
end
function export:en_327()
  local l0
  l0 = self[327]
  l0.HackableEntity = self.Nudle_CoolingTankPanel_ControlBox_HackableEntity_0
end
function export:en_192()
  local l0
  l0 = self[192]
  l0.Vehicle = self.NudleBus
  l0.Passengers = self.BusPassengers
  l0.BuddyNPC = self.Horatio
end
function export:en_308()
  local l0
  l0 = self[308]
  l0.BuddyNPC = self.Horatio
end
function export:en_239()
  local l0
  l0 = self[239]
  l0.MapPoint = self.MissionTarget_ReachMaintenanceRoom
end
function export:en_85()
  local l0
  l0 = self[85]
  l0.CheckPointName = "CheckPoint_3"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 0
end
function export:en_34()
  local l0
  l0 = self[34]
  l0.HackableEntity = self.CellPhone_Model_01_HackableAttractorControllerEntity_ManagerID
end
function export:en_238()
  local l0
  l0 = self[238]
  l0.Trigger = self.s08m010_ProximityTrigger_NudleMapEnter
end
function export:en_421()
  local l0
  l0 = self[421]
  l0.Trigger = self.Trigger_PlayerInUtilityRoom
  l0.CheckNow = 1
end
function export:en_396()
  local l0
  l0 = self[396]
  l0.Trigger = self.ProximityTrigger_ServerFarm_RCLimit_1
  l0.CheckNow = 1
end
function export:en_315()
  local l0
  l0 = self[315]
  l0.Entity = self.Horatio
  l0.Entity_AreaRadius = 0
  l0.AutoGPS = 0
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:en_369()
  local l0
  l0 = self[369]
  l0.InteractionScriptEntity = self.LobbySlide
end
function export:en_95()
  local l0
  l0 = self[95]
  l0.Trigger = self.s08m010_ProximityTrigger_MarcusUpdate_TS
  l0.CheckNow = 1
  l0.AutoDisable = 1
end
function export:en_57()
  local l0
  l0 = self[57]
  l0.InteractionScriptEntity = self.FunOfficeSlide
end
function export:en_112()
  local l0
  l0 = self[112]
  l0.CheckPointName = "CheckPoint_0"
  l0.FadeFromBlack = 0
  l0.EnableNudleMissionArea = 0
end
function export:en_148()
  local l0
  l0 = self[148]
  l0.MapPoint = self.MissionTarget_ReachMaintenanceRoom
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.CheckPointName = "CheckPoint_5"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 1
end
function export:en_66()
  local l0
  l0 = self[66]
  l0.CheckPointName = "CheckPoint_8"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 1
end
function export:en_60()
  local l0
  l0 = self[60]
  l0.Conversation = "ConversationSetting.9223372057527428575"
  l0.RuleConfig = "GameplayConversationSettings.9223372056743429782"
end
function export:en_107()
  local l0
  l0 = self[107]
  l0.Checkpoint = "CheckPoint_11"
  l0.MissionLayer = self.MissionLayer
  l0.ShowMissionComplete = 1
end
function export:en_133()
  local l0
  l0 = self[133]
  l0.MissionArea = self.S08_MissionArea_SearchServerFarm
end
function export:en_45()
  local l0
  l0 = self[45]
  l0.Pawn1 = self.Horatio
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048566785267"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372059416333809"
end
function export:en_216()
  local l0
  l0 = self[216]
  l0.Entity = self.Server_HackableEntity_Server
end
function export:en_91()
  local l0
  l0 = self[91]
  l0.Trigger = self.s08m010_ProximityTrigger_NudleMapEntrance01_TS
  l0.CheckNow = 1
end
function export:en_150()
  local l0
  l0 = self[150]
  l0.Trigger = self.s08m010_ProximityTrigger_NudleMapEnter
  l0.CheckNow = 1
end
function export:en_374()
  local l0
  l0 = self[374]
  l0.MoveableEntity = self.Elevator_Hackable_Cabin
  l0.CheckNow = 1
end
function export:en_153()
  local l0
  l0 = self[153]
  l0.Seconds = 30
end
function export:en_226()
  local l0
  l0 = self[226]
  l0.Entity = self.S08M010_Tag_MissionEnd_MeetHoratio
  l0.Entity_AreaRadius = 0
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:en_161()
  local l0
  l0 = self[161]
  l0.MapPoint = self.MissionTarget_EscapeHelper
end
function export:en_403()
  local l0
  l0 = self[403]
  l0.Trigger = self.ProximityTrigger_ServerFarmLMA_RC_Limit_2
  l0.CheckNow = 1
end
function export:en_354()
  local l0
  l0 = self[354]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.CheckNow = 1
end
function export:en_364()
  local l0
  l0 = self[364]
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.CheckNow = 1
end
function export:en_38()
  local l0
  l0 = self[38]
  l0.VehicleEntity = self.NudleBus
  l0.DestinationTrigger = self.S08M010_ProximityTrigger_Stanford_Destination
  l0.NbToDeliver = 1
  l0.AcceptedReliability = "Broken"
  l0.VehicleMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.DestinationMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.GetOutToComplete = 0
  l0.ForceStopAtDestination = 1
  l0.ForceStopBrake = "Soft"
  l0.PostEscape_InVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective 31",
    id = "653786"
  }
end
function export:en_401()
  local l0
  l0 = self[401]
  l0.Trigger = self.ProximityTrigger_ServerFarm_RCLimit_1
  l0.CheckNow = 1
end
function export:en_276()
  local l0
  l0 = self[276]
  l0.Vehicle = self.NudleBus
  l0.Passengers = self.BusPassengers
  l0.BuddyNPC = self.Horatio
end
function export:en_397()
  local l0
  l0 = self[397]
  l0.Trigger = self.ProximityTrigger_ServerFarmLMA_RC_Limit_2
  l0.CheckNow = 1
end
function export:en_72()
  local l0
  l0 = self[72]
  l0.InteractionScriptEntity = self.ServerFarmKeyPad
end
function export:en_225()
  local l0
  l0 = self[225]
  l0.Trigger = self.s08m010_ProximityTrigger_sewer
end
function export:en_92()
  local l0
  l0 = self[92]
  l0.Trigger = self.S08_ProximityTrigger_ReachBasement
end
function export:en_25()
  local l0
  l0 = self[25]
  l0.Users = self.BusPassengers
  l0.RuleConfig = "GameplayConversationSettings.9223372056743429782"
end
function export:en_284()
  local l0
  l0 = self[284]
  l0.CheckPointName = "CheckPoint_1"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 0
end
function export:en_165()
  local l0
  l0 = self[165]
  l0.RuleConfig = "GameplayConversationSettings.9223372059416333809"
end
function export:en_298()
  local l0
  l0 = self[298]
  l0.Conversation = "ConversationSetting.9223372048566785268"
  l0.RuleConfig = "GameplayConversationSettings.9223372056743429782"
end
function export:en_116()
  local l0
  l0 = self[116]
  l0.Player = self.PlayerEntity
  l0.Talker = self.Horatio
  l0.MoveSpeed = "Walk"
  l0.DestinationTrigger = self.s08m010_ProximityTrigger_WalkTalkDestination
  l0.Debug = 1
  l0.MissionArea = self.s08m010_MissionArea_followHoratio
  l0.MissionLayer = self.MissionLayer
  l0.Conversation = "ConversationSetting.9223372048566785266"
  l0.WalkPatrolPath = "9223372052006823569"
  l0.Receptionist = self.Receptionist_CLO
  l0.Greeter = self.Greeter_CLO
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.CheckPointName = "CheckPoint_6"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 1
end
_compilerVersion = 4
