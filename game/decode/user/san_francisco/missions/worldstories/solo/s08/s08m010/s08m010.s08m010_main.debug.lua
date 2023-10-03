export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIBuddyController.lua")
  cbox:RegisterBox("domino/System/AIBuddyMonitor.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/System/DrawWeapon_v2.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/FelonyTargetMonitor.lua")
  cbox:RegisterBox("domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("domino/System/GameplayConversationController_v3.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/InputListenerMonitor.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
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
  cbox:RegisterBox("domino/Library/common/MissionSpecificIngredients.PlayerOnlyTriggerNoRCTip.debug.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Bus_Drive.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_hrscolding.S08M010_CIN_HRScolding_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_meetingbrody.S08M010_CIN_MeetingBrody_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_nudledump.S08M010_CIN_NudleDump_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_offthebus.S08M010_CIN_OffTheBus_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_onthebus.S08M010_CIN_OnTheBus_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010_IOP.S08M010_IOP_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_LocateTheCentralServer.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus01.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus02.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_WalkAndTalk.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.SearchArea.debug.lua")
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
  self._name = "S08M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main"
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
  self.box_PGTController_v2_15 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_15
  l0._graph = self
  l0._name = "box_PGTController_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2041726"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_15_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionLayer_v2_81 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_81
  l0._graph = self
  l0._name = "box_MissionLayer_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|6297196"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_81_Unloaded
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_260 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_260
  l0._graph = self
  l0._name = "box_CinematicPrep_260"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|9991046"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_260_PostOut
  self.box_CLOController_246 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_246
  l0._graph = self
  l0._name = "box_CLOController_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|10271977"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_246_OnUserInPlace
  self.box_MissionController_v4_1 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_1
  l0._graph = self
  l0._name = "box_MissionController_v4_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|17829631"
  self.box_LMA_Layer_Controller_367 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_367
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_367"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|25918154"
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_CinematicPrep_101 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_101
  l0._graph = self
  l0._name = "box_CinematicPrep_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|26502189"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_101_PostOut
  self.box_CinematicPrep_223 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_223
  l0._graph = self
  l0._name = "box_CinematicPrep_223"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|27280674"
  l0.PreOut = self.f_box_CinematicPrep_223_PreOut
  l0.PostOut = DummyFunction
  self.box_Hackable_Monitor_205 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_205
  l0._graph = self
  l0._name = "box_Hackable_Monitor_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|30774620"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_205_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_205_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_99 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_99
  l0._graph = self
  l0._name = "box_HackableController_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|33039295"
  l0.Enabled = self.f_box_HackableController_v2_99_Enabled
  l0.Disabled = self.f_box_HackableController_v2_99_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_99_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_169 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_169
  l0._graph = self
  l0._name = "box_OnceOnly_v3_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|34068191"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_169_Out
  l0.ResetOut = DummyFunction
  self.box_PhoneCommunicationController_204 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_204
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|36633705"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_204_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_316 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_316
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_316"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|37258377"
  l0.Out = self.f_box_MissionMessageController_v3_316_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_333 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_333
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_333"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|45461178"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_333_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_162 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_162
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|46200659"
  l0.Enabled = self.f_box_TriggerMonitor_v2_162_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_162_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_162_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MapPointController_v4_211 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_211
  l0._graph = self
  l0._name = "box_MapPointController_v4_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|46480973"
  l0.Shown = self.f_box_MapPointController_v4_211_Shown
  l0.Hidden = self.f_box_MapPointController_v4_211_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_OnceOnly_v3_433 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_433
  l0._graph = self
  l0._name = "box_OnceOnly_v3_433"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|46645444"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_433_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_175 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_175
  l0._graph = self
  l0._name = "box_CLOController_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|64200584"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_175_OnUserInPlace
  self.box_MultipleOR_158 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_158
  l0._graph = self
  l0._name = "box_MultipleOR_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|80706224"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_158_Out
  self.box_MapPointController_v4_8 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_8
  l0._graph = self
  l0._name = "box_MapPointController_v4_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|86213679"
  l0.Shown = self.f_box_MapPointController_v4_8_Shown
  l0.Hidden = self.f_box_MapPointController_v4_8_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_HackableController_v2_270 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_270
  l0._graph = self
  l0._name = "box_HackableController_v2_270"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|93219346"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_270_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_270_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_FelonyTargetMonitor_247 = cbox:CreateBox("domino/System/FelonyTargetMonitor.lua")
  l0 = self.box_FelonyTargetMonitor_247
  l0._graph = self
  l0._name = "box_FelonyTargetMonitor_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|93226819"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = self.f_box_FelonyTargetMonitor_247_None
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = self.f_box_FelonyTargetMonitor_247_Chasing
  l0.Searching = self.f_box_FelonyTargetMonitor_247_Searching
  l0.Evaded = self.f_box_FelonyTargetMonitor_247_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self.box_TutorialController_410 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_410
  l0._graph = self
  l0._name = "box_TutorialController_410"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|135122258"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_431 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_431
  l0._graph = self
  l0._name = "box_PlaySound_v2_431"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|155515259"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_VehicleSeatingController_143 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_143
  l0._graph = self
  l0._name = "box_VehicleSeatingController_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|176962018"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_143_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_143_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_425 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_425
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_425"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|193181183"
  l0.Enabled = self.f_box_TriggerMonitor_v2_425_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_425_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_425_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Timer_v2_409 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_409
  l0._graph = self
  l0._name = "box_Timer_v2_409"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|203527095"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_409_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionController_v4_20 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_20
  l0._graph = self
  l0._name = "box_MissionController_v4_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|205368648"
  self.box_MissionController_v4_372 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_372
  l0._graph = self
  l0._name = "box_MissionController_v4_372"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|208636807"
  self.box_OnceOnly_v3_432 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_432
  l0._graph = self
  l0._name = "box_OnceOnly_v3_432"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|217957262"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_432_Out
  l0.ResetOut = DummyFunction
  self.box_MissionController_v4_154 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_154
  l0._graph = self
  l0._name = "box_MissionController_v4_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|217978068"
  self.box_MissionMessageController_v3_149 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_149
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|225201562"
  l0.Out = self.f_box_MissionMessageController_v3_149_Out
  l0.MessageCompleted = DummyFunction
  self.box_Interact_Gameplay_29 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_29
  l0._graph = self
  l0._name = "box_Interact_Gameplay_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|228993082"
  l0.Started = self.f_box_Interact_Gameplay_29_Started
  l0.Stopped = self.f_box_Interact_Gameplay_29_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_29_Interacted
  self.box_MissionMessageController_v3_96 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_96
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|234549808"
  l0.Out = self.f_box_MissionMessageController_v3_96_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_124 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_124
  l0._graph = self
  l0._name = "box_MissionLayer_v2_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|240691149"
  l0.Loaded = self.f_box_MissionLayer_v2_124_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_358 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_358
  l0._graph = self
  l0._name = "box_MultipleOR_358"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|255573982"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_358_Out
  self.box_MissionController_v4_259 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_259
  l0._graph = self
  l0._name = "box_MissionController_v4_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|260555389"
  self.box_PhoneCommunicationController_50 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_50
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|262854993"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PGTController_v2_56 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_56
  l0._graph = self
  l0._name = "box_PGTController_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|299326386"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_56_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_InputListener_Monitor_212 = cbox:CreateBox("domino/System/InputListenerMonitor.lua")
  l0 = self.box_InputListener_Monitor_212
  l0._graph = self
  l0._name = "box_InputListener_Monitor_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|302556728"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InputListener_Monitor_212_Enabled
  l0.Disabled = self.f_box_InputListener_Monitor_212_Disabled
  l0.InputReceived = self.f_box_InputListener_Monitor_212_InputReceived
  self.box_PlayerOnlyTriggerNoRCTip_283 = cbox:CreateBox("domino/Library/common/MissionSpecificIngredients.PlayerOnlyTriggerNoRCTip.debug.lua")
  l0 = self.box_PlayerOnlyTriggerNoRCTip_283
  l0._graph = self
  l0._name = "box_PlayerOnlyTriggerNoRCTip_283"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|303967923"
  l0.Enter = DummyFunction
  self.box_VehicleSeatingController_119 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_119
  l0._graph = self
  l0._name = "box_VehicleSeatingController_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|307392548"
  l0.Assigned = self.f_box_VehicleSeatingController_119_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_TimerToScreen_253 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_253
  l0._graph = self
  l0._name = "box_TimerToScreen_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|310681041"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_253_TimeElapsed
  self.box_PlaySound_v2_375 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_375
  l0._graph = self
  l0._name = "box_PlaySound_v2_375"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|314362945"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_127 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_127
  l0._graph = self
  l0._name = "box_MissionLayer_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|317511837"
  l0.Loaded = self.f_box_MissionLayer_v2_127_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_140 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_140
  l0._graph = self
  l0._name = "box_CLOController_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|322342011"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_140_OnUserInPlace
  self.box_Teleport_To_SpawnPoint_422 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_422
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_422"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|328663596"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_422_TeleportDone
  self.box_PhoneCommunicationController_17 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_17
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|333079382"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MapPointController_v4_104 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_104
  l0._graph = self
  l0._name = "box_MapPointController_v4_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|345376208"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_104_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_InteractionScriptMonitor_v2_368 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_368
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_368"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|347675699"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_368_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = self.f_box_InteractionScriptMonitor_v2_368_AnimationFinished
  self.box_PlaySequence_v5_94 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_94
  l0._graph = self
  l0._name = "box_PlaySequence_v5_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|357314416"
  l0.Started = self.f_box_PlaySequence_v5_94_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_73 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_73
  l0._graph = self
  l0._name = "box_Hackable_Monitor_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|357413887"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_73_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_73_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PhoneCommunicationController_177 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_177
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|363129766"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_177_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriter_182 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_182
  l0._graph = self
  l0._name = "box_ListWriter_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|368685752"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_182_Added
  l0.Removed = self.f_box_ListWriter_182_Removed
  l0.Out = self.f_box_ListWriter_182_Out
  self.box_PlaySequence_v5_69 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_69
  l0._graph = self
  l0._name = "box_PlaySequence_v5_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|372664138"
  l0._DynamicAnchors = {
    SPOut = {
      "Laptop_Opened",
      "Laptop_Opened"
    }
  }
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_PlaySequence_v5_69_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.Laptop_Opened = self.f_box_PlaySequence_v5_69_SPOut__Laptop_Opened_
  l0.SPOut.Laptop_Opened = self.f_box_PlaySequence_v5_69_SPOut__Laptop_Opened_
  self.box_S08M010_CIN_OnTheBus_Main_189 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_onthebus.S08M010_CIN_OnTheBus_Main.debug.lua")
  l0 = self.box_S08M010_CIN_OnTheBus_Main_189
  l0._graph = self
  l0._name = "box_S08M010_CIN_OnTheBus_Main_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|373323899"
  l0.out = self.f_box_S08M010_CIN_OnTheBus_Main_189_out
  self.box_CinematicPrep_184 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_184
  l0._graph = self
  l0._name = "box_CinematicPrep_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|373746874"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_184_PostOut
  self.box_MissionController_v4_248 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_248
  l0._graph = self
  l0._name = "box_MissionController_v4_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|374710387"
  self.box_PGTController_v2_48 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_48
  l0._graph = self
  l0._name = "box_PGTController_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|374942880"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_48_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_ListWriter_299 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_299
  l0._graph = self
  l0._name = "box_ListWriter_299"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|387445354"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_299_Added
  l0.Removed = self.f_box_ListWriter_299_Removed
  l0.Out = self.f_box_ListWriter_299_Out
  self.box_SetBoolean_v2_98 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_98
  l0._graph = self
  l0._name = "box_SetBoolean_v2_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|398336883"
  l0.Out = self.f_box_SetBoolean_v2_98_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_98_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_98_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_98_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_98_SetFromBool
  self.box_HackableController_v2_26 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_26
  l0._graph = self
  l0._name = "box_HackableController_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|402144036"
  l0.Enabled = self.f_box_HackableController_v2_26_Enabled
  l0.Disabled = self.f_box_HackableController_v2_26_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_26_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|410551827"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionController_v4_351 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_351
  l0._graph = self
  l0._name = "box_MissionController_v4_351"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|413184873"
  self.box_HackableController_v2_418 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_418
  l0._graph = self
  l0._name = "box_HackableController_v2_418"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|419563403"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_418_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_SearchArea_40 = cbox:CreateBox("domino/Library/common/MissionIngredients.SearchArea.debug.lua")
  l0 = self.box_SearchArea_40
  l0._graph = self
  l0._name = "box_SearchArea_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|423541048"
  l0.Enabled = self.f_box_SearchArea_40_Enabled
  l0.Disabled = self.f_box_SearchArea_40_Disabled
  l0.Entered = DummyFunction
  self.box_S08M010_Checkpoint_78 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.debug.lua")
  l0 = self.box_S08M010_Checkpoint_78
  l0._graph = self
  l0._name = "box_S08M010_Checkpoint_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|425930039"
  l0.Out = self.f_box_S08M010_Checkpoint_78_Out
  self.box_LMA_Layer_Controller_366 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_366
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_366"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|427460041"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_366_Unloaded
  self.box_CLOController_138 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_138
  l0._graph = self
  l0._name = "box_CLOController_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|433782264"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_138_OnUserInPlace
  self.box_S08M010_SpawnAndAssignCLOtoBus01_294 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus01.debug.lua")
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus01_294
  l0._graph = self
  l0._name = "box_S08M010_SpawnAndAssignCLOtoBus01_294"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|438889327"
  l0.Completed = self.f_box_S08M010_SpawnAndAssignCLOtoBus01_294_Completed
  self.box_MissionLayer_v2_155 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_155
  l0._graph = self
  l0._name = "box_MissionLayer_v2_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|456462560"
  l0.Loaded = self.f_box_MissionLayer_v2_155_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_SetBoolean_v2_380 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_380
  l0._graph = self
  l0._name = "box_SetBoolean_v2_380"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|457079306"
  l0.Out = self.f_box_SetBoolean_v2_380_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_380_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_380_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_380_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_380_SetFromBool
  self.box_Delivery_Gameplay_338 = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  l0 = self.box_Delivery_Gameplay_338
  l0._graph = self
  l0._name = "box_Delivery_Gameplay_338"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|458574016"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_box_Delivery_Gameplay_338_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self.box_Interact_Gameplay_304 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_304
  l0._graph = self
  l0._name = "box_Interact_Gameplay_304"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|460516488"
  l0.Started = self.f_box_Interact_Gameplay_304_Started
  l0.Stopped = self.f_box_Interact_Gameplay_304_Stopped
  l0.Interacted = DummyFunction
  self.box_TriggerMonitor_v2_28 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_28
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|465481305"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_28_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_28_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_172 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_172
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|472569550"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_172_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_172_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_256 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_256
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_256"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|476110987"
  l0.Out = self.f_box_MissionMessageController_v3_256_Out
  l0.MessageCompleted = DummyFunction
  self.box_TriggerMonitor_v2_61 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_61
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|476575284"
  l0.Enabled = self.f_box_TriggerMonitor_v2_61_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_61_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_61_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_AI_Buddy_Controller_287 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_287
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_287"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|477040308"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = self.f_box_AI_Buddy_Controller_287_IsFollowing
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self.box_OnceOnly_v3_251 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_251
  l0._graph = self
  l0._name = "box_OnceOnly_v3_251"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|480431745"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_251_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_188 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_188
  l0._graph = self
  l0._name = "box_Timer_v2_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|483915323"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_188_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_268 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_268
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_268"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|496091052"
  l0.Out = self.f_box_MissionMessageController_v3_268_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionController_v4_123 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_123
  l0._graph = self
  l0._name = "box_MissionController_v4_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|507083239"
  self.box_MissionController_v4_352 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_352
  l0._graph = self
  l0._name = "box_MissionController_v4_352"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|510599134"
  self.box_Teleport_To_SpawnPoint_271 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_271
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_271"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|512847111"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_271_TeleportDone
  self.box_OnceOnly_v3_234 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_234
  l0._graph = self
  l0._name = "box_OnceOnly_v3_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|521174429"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_234_Out
  l0.ResetOut = DummyFunction
  self.box_Player_Conflict_Monitor_44 = cbox:CreateBox("domino/System/PlayerConflictMonitor.lua")
  l0 = self.box_Player_Conflict_Monitor_44
  l0._graph = self
  l0._name = "box_Player_Conflict_Monitor_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|527572420"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InConflict = self.f_box_Player_Conflict_Monitor_44_InConflict
  l0.NOTInConflict = self.f_box_Player_Conflict_Monitor_44_NOTInConflict
  self.box_Delivery_Gameplay_49 = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  l0 = self.box_Delivery_Gameplay_49
  l0._graph = self
  l0._name = "box_Delivery_Gameplay_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|533654007"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_box_Delivery_Gameplay_49_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self.box_CinematicPrep_68 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_68
  l0._graph = self
  l0._name = "box_CinematicPrep_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|554889582"
  l0.PreOut = self.f_box_CinematicPrep_68_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_411 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_411
  l0._graph = self
  l0._name = "box_Timer_v2_411"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|576553166"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_411_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_411_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_152 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_152
  l0._graph = self
  l0._name = "box_PlaySound_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|586412327"
  l0.Out = self.f_box_PlaySound_v2_152_Out
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_152_Finished
  self.box_OnceOnly_v3_371 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_371
  l0._graph = self
  l0._name = "box_OnceOnly_v3_371"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|598381421"
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_box_OnceOnly_v3_371_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_322 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_322
  l0._graph = self
  l0._name = "box_Timer_v2_322"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|616010593"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_322_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriter_67 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_67
  l0._graph = self
  l0._name = "box_ListWriter_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|619741401"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_67_Added
  l0.Removed = self.f_box_ListWriter_67_Removed
  l0.Out = self.f_box_ListWriter_67_Out
  self.box_MissionController_v4_313 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_313
  l0._graph = self
  l0._name = "box_MissionController_v4_313"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|628711700"
  self.box_ListWriter_417 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_417
  l0._graph = self
  l0._name = "box_ListWriter_417"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|658658955"
  l0._DynamicAnchors = {Data = 10}
  l0.Added = self.f_box_ListWriter_417_Added
  l0.Removed = self.f_box_ListWriter_417_Removed
  l0.Out = self.f_box_ListWriter_417_Out
  self.box_VehicleMonitor_v3_307 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_307
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_307"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|661535751"
  l0.Enabled = self.f_box_VehicleMonitor_v3_307_Enabled
  l0.Disabled = self.f_box_VehicleMonitor_v3_307_Disabled
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
  l0.IsUnusable = self.f_box_VehicleMonitor_v3_307_IsUnusable
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
  self.box_MissionLayer_v2_125 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_125
  l0._graph = self
  l0._name = "box_MissionLayer_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|675040334"
  l0.Loaded = self.f_box_MissionLayer_v2_125_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_198 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_198
  l0._graph = self
  l0._name = "box_CinematicPrep_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|679280444"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_198_PostOut
  self.box_PhoneCommunicationController_167 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_167
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|679687035"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_100 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_100
  l0._graph = self
  l0._name = "box_Timer_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|685145280"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_100_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TriggerMonitor_v2_41 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_41
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|703766343"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_41_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_41_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionController_v4_194 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_194
  l0._graph = self
  l0._name = "box_MissionController_v4_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|706336516"
  self.box_S08M010_Checkpoint_86 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.debug.lua")
  l0 = self.box_S08M010_Checkpoint_86
  l0._graph = self
  l0._name = "box_S08M010_Checkpoint_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|708657049"
  l0.Out = self.f_box_S08M010_Checkpoint_86_Out
  self.box_MissionController_v4_349 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_349
  l0._graph = self
  l0._name = "box_MissionController_v4_349"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|717395129"
  self.box_VehicleSeatingController_255 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_255
  l0._graph = self
  l0._name = "box_VehicleSeatingController_255"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|720365864"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_255_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_279 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_279
  l0._graph = self
  l0._name = "box_PlaySequence_v5_279"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|731564470"
  l0._DynamicAnchors = {
    EntityIn = {"Horatio", "Bus"},
    EntityOut = {"Horatio", "Bus"}
  }
  l0.Started = self.f_box_PlaySequence_v5_279_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_279_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_279_Finished
  self.box_InputListener_Monitor_214 = cbox:CreateBox("domino/System/InputListenerMonitor.lua")
  l0 = self.box_InputListener_Monitor_214
  l0._graph = self
  l0._name = "box_InputListener_Monitor_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|735820627"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InputListener_Monitor_214_Enabled
  l0.Disabled = self.f_box_InputListener_Monitor_214_Disabled
  l0.InputReceived = self.f_box_InputListener_Monitor_214_InputReceived
  self.box_MissionMessageController_v3_342 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_342
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_342"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|754571274"
  l0.Out = self.f_box_MissionMessageController_v3_342_Out
  l0.MessageCompleted = DummyFunction
  self.box_VehicleMonitor_v3_361 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_361
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_361"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|756239961"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v3_361_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_361_Entered
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
  self.box_S08M010_Checkpoint_36 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.debug.lua")
  l0 = self.box_S08M010_Checkpoint_36
  l0._graph = self
  l0._name = "box_S08M010_Checkpoint_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|769344665"
  l0.Out = self.f_box_S08M010_Checkpoint_36_Out
  self.box_GameplayInteractionController_32 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_32
  l0._graph = self
  l0._name = "box_GameplayInteractionController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|783211504"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_CinematicPrep_191 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_191
  l0._graph = self
  l0._name = "box_CinematicPrep_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|783682836"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_191_PostOut
  self.box_VehicleMonitor_v3_311 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_311
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_311"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|785398436"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_VehicleMonitor_v3_311_Enter
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
  self.box_PawnHealthMonitor_v3_302 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_302
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_302"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|793693484"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_302_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_302_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_302_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_302_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_Timer_v2_102 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_102
  l0._graph = self
  l0._name = "box_Timer_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|804065561"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_102_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_263 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_263
  l0._graph = self
  l0._name = "box_SetBoolean_v2_263"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|817886078"
  l0.Out = self.f_box_SetBoolean_v2_263_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_263_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_263_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_263_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_263_SetFromBool
  self.box_OnceOnly_v3_166 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_166
  l0._graph = self
  l0._name = "box_OnceOnly_v3_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|833422330"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_166_Out
  l0.ResetOut = DummyFunction
  self.box_MissionMessageController_v3_277 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_277
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_277"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|835498165"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_269 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_269
  l0._graph = self
  l0._name = "box_MultipleOR_269"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|837976381"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_269_Out
  self.box_MissionController_v4_346 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_346
  l0._graph = self
  l0._name = "box_MissionController_v4_346"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|866574015"
  self.box_TriggerMonitor_v2_33 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_33
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|869368096"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_33_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_33_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Network_Surfing_Monitor_412 = cbox:CreateBox("domino/System/NetworkSurfingMonitor.lua")
  l0 = self.box_Network_Surfing_Monitor_412
  l0._graph = self
  l0._name = "box_Network_Surfing_Monitor_412"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|882254275"
  l0.Enabled = self.f_box_Network_Surfing_Monitor_412_Enabled
  l0.Disabled = self.f_box_Network_Surfing_Monitor_412_Disabled
  l0.OnNetworkSurfingActivated = self.f_box_Network_Surfing_Monitor_412_OnNetworkSurfingActivated
  l0.OnNetworkSurfingDeactivated = DummyFunction
  self.box_MissionMessageController_v3_341 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_341
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_341"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|891904049"
  l0.Out = self.f_box_MissionMessageController_v3_341_Out
  l0.MessageCompleted = DummyFunction
  self.box_S08M010_CIN_NudleDump_Main_131 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_nudledump.S08M010_CIN_NudleDump_Main.debug.lua")
  l0 = self.box_S08M010_CIN_NudleDump_Main_131
  l0._graph = self
  l0._name = "box_S08M010_CIN_NudleDump_Main_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|898621321"
  l0.out = self.f_box_S08M010_CIN_NudleDump_Main_131_out
  self.box_TimerToScreen_30 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_30
  l0._graph = self
  l0._name = "box_TimerToScreen_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|899169560"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_30_TimeElapsed
  self.box_MultipleOR_289 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_289
  l0._graph = self
  l0._name = "box_MultipleOR_289"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|904095410"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_289_Out
  self.box_SetBoolean_v2_379 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_379
  l0._graph = self
  l0._name = "box_SetBoolean_v2_379"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|905190127"
  l0.Out = self.f_box_SetBoolean_v2_379_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_379_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_379_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_379_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_379_SetFromBool
  self.box_PhoneCommunicationController_97 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_97
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|907044207"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_VehicleSeatingController_63 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_63
  l0._graph = self
  l0._name = "box_VehicleSeatingController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|914528051"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_63_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_63_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self.box_HackableController_v2_413 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_413
  l0._graph = self
  l0._name = "box_HackableController_v2_413"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|915969254"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_413_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_321 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_321
  l0._graph = self
  l0._name = "box_Timer_v2_321"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|919151067"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_321_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_VehicleSeatingController_347 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_347
  l0._graph = self
  l0._name = "box_VehicleSeatingController_347"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|924317880"
  l0.Assigned = self.f_box_VehicleSeatingController_347_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_437 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_437
  l0._graph = self
  l0._name = "box_OnceOnly_v3_437"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|935848392"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_437_Out
  l0.ResetOut = DummyFunction
  self.box_S08M010_LocateTheCentralServer_42 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_LocateTheCentralServer.debug.lua")
  l0 = self.box_S08M010_LocateTheCentralServer_42
  l0._graph = self
  l0._name = "box_S08M010_LocateTheCentralServer_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|952667737"
  l0.Located = self.f_box_S08M010_LocateTheCentralServer_42_Located
  l0.Disabled = self.f_box_S08M010_LocateTheCentralServer_42_Disabled
  self.box_MissionMessageController_v3_286 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_286
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_286"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|960275437"
  l0.Out = self.f_box_MissionMessageController_v3_286_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_230 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_230
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_230"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|972704326"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_230_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_357 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_357
  l0._graph = self
  l0._name = "box_MultipleOR_357"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|985287710"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_357_Out
  self.box_Timer_v2_183 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_183
  l0._graph = self
  l0._name = "box_Timer_v2_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|994532625"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_183_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_388 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_388
  l0._graph = self
  l0._name = "box_PlaySound_v2_388"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|999796666"
  l0.Out = self.f_box_PlaySound_v2_388_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_170 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_170
  l0._graph = self
  l0._name = "box_OnceOnly_v3_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1002300494"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_170_Out
  l0.ResetOut = DummyFunction
  self.box_PGTController_v2_76 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_76
  l0._graph = self
  l0._name = "box_PGTController_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1006303180"
  l0.Started = self.f_box_PGTController_v2_76_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MapPointController_v4_52 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_52
  l0._graph = self
  l0._name = "box_MapPointController_v4_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1007522787"
  l0.Shown = self.f_box_MapPointController_v4_52_Shown
  l0.Hidden = self.f_box_MapPointController_v4_52_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_S08M010_CIN_OffTheBus_Main_190 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_offthebus.S08M010_CIN_OffTheBus_Main.debug.lua")
  l0 = self.box_S08M010_CIN_OffTheBus_Main_190
  l0._graph = self
  l0._name = "box_S08M010_CIN_OffTheBus_Main_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1010438817"
  l0.out = self.f_box_S08M010_CIN_OffTheBus_Main_190_out
  self.box_HackableController_v2_275 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_275
  l0._graph = self
  l0._name = "box_HackableController_v2_275"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1011679642"
  l0.Enabled = self.f_box_HackableController_v2_275_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_275_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_S08M010_IOP_Main_70 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010_IOP.S08M010_IOP_Main.debug.lua")
  l0 = self.box_S08M010_IOP_Main_70
  l0._graph = self
  l0._name = "box_S08M010_IOP_Main_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1019843331"
  l0.Out = self.f_box_S08M010_IOP_Main_70_Out
  l0.IOP_Loaded = DummyFunction
  self.box_MultipleOR_423 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_423
  l0._graph = self
  l0._name = "box_MultipleOR_423"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1023575030"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_423_Out
  self.box_MultipleOR_319 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_319
  l0._graph = self
  l0._name = "box_MultipleOR_319"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1031299826"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_319_Out
  self.box_MissionMessageController_v3_320 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_320
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_320"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1036683415"
  l0.Out = self.f_box_MissionMessageController_v3_320_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_62 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_62
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1041932293"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_24 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_24
  l0._graph = self
  l0._name = "box_MissionLayer_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1047286115"
  l0.Loaded = self.f_box_MissionLayer_v2_24_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_176 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_176
  l0._graph = self
  l0._name = "box_Timer_v2_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1047882271"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_176_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_120 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_120
  l0._graph = self
  l0._name = "box_MissionLayer_v2_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1053950546"
  l0.Loaded = self.f_box_MissionLayer_v2_120_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PlaySequence_v5_53 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_53
  l0._graph = self
  l0._name = "box_PlaySequence_v5_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1065358756"
  l0._DynamicAnchors = {
    SPOut = {
      "Laptop_Opened"
    }
  }
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_PlaySequence_v5_53_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.Laptop_Opened = self.f_box_PlaySequence_v5_53_SPOut__Laptop_Opened_
  self.box_S08M010_Checkpoint_164 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.debug.lua")
  l0 = self.box_S08M010_Checkpoint_164
  l0._graph = self
  l0._name = "box_S08M010_Checkpoint_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1075895559"
  l0.Out = self.f_box_S08M010_Checkpoint_164_Out
  self.box_Timer_v2_389 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_389
  l0._graph = self
  l0._name = "box_Timer_v2_389"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1078710699"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_389_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_S08M010_Bus_Drive_7 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Bus_Drive.debug.lua")
  l0 = self.box_S08M010_Bus_Drive_7
  l0._graph = self
  l0._name = "box_S08M010_Bus_Drive_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1080001015"
  l0.ObjectiveReachDestination = self.f_box_S08M010_Bus_Drive_7_ObjectiveReachDestination
  l0.StartConversation = self.f_box_S08M010_Bus_Drive_7_StartConversation
  l0.Stopped = self.f_box_S08M010_Bus_Drive_7_Stopped
  l0.PlayerLeftBus = self.f_box_S08M010_Bus_Drive_7_PlayerLeftBus
  l0.EnteringBus = self.f_box_S08M010_Bus_Drive_7_EnteringBus
  l0.BusDestroyed = self.f_box_S08M010_Bus_Drive_7_BusDestroyed
  l0.BuddyConditionFailed = self.f_box_S08M010_Bus_Drive_7_BuddyConditionFailed
  l0.BuddyKilled = self.f_box_S08M010_Bus_Drive_7_BuddyKilled
  l0.PassengersInjured = self.f_box_S08M010_Bus_Drive_7_PassengersInjured
  self.box_PhoneCommunicationController_178 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_178
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1097578636"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PGTController_v2_9 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_9
  l0._graph = self
  l0._name = "box_PGTController_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1100739992"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_9_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_CLOController_265 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_265
  l0._graph = self
  l0._name = "box_CLOController_265"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1106091920"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_265_OnUserInPlace
  self.box_GameplayInteractionController_430 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_430
  l0._graph = self
  l0._name = "box_GameplayInteractionController_430"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1111246396"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_430_Started
  l0.Stopped = self.f_box_GameplayInteractionController_430_Stopped
  self.box_MissionMessageController_v3_288 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_288
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_288"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1124963843"
  l0.Out = self.f_box_MissionMessageController_v3_288_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_64 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_64
  l0._graph = self
  l0._name = "box_CLOController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1126362639"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_64_OnUserInPlace
  self.box_MultipleOR_355 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_355
  l0._graph = self
  l0._name = "box_MultipleOR_355"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1141490783"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_355_Out
  self.box_MissionLayer_v2_137 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_137
  l0._graph = self
  l0._name = "box_MissionLayer_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1142475386"
  l0.Loaded = self.f_box_MissionLayer_v2_137_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_S08M010_Checkpoint_27 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.debug.lua")
  l0 = self.box_S08M010_Checkpoint_27
  l0._graph = self
  l0._name = "box_S08M010_Checkpoint_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1152119331"
  l0.Out = self.f_box_S08M010_Checkpoint_27_Out
  self.box_SetBoolean_v2_12 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_12
  l0._graph = self
  l0._name = "box_SetBoolean_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1164872094"
  l0.Out = self.f_box_SetBoolean_v2_12_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_12_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_12_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_12_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_12_SetFromBool
  self.box_OnceOnly_v3_435 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_435
  l0._graph = self
  l0._name = "box_OnceOnly_v3_435"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1172974365"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_435_Out
  l0.ResetOut = DummyFunction
  self.box_Hackable_Monitor_327 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_327
  l0._graph = self
  l0._name = "box_Hackable_Monitor_327"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1173666865"
  l0.Enabled = self.f_box_Hackable_Monitor_327_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_327_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_327_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_S08M010_Bus_Drive_192 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Bus_Drive.debug.lua")
  l0 = self.box_S08M010_Bus_Drive_192
  l0._graph = self
  l0._name = "box_S08M010_Bus_Drive_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1176416471"
  l0.ObjectiveReachDestination = self.f_box_S08M010_Bus_Drive_192_ObjectiveReachDestination
  l0.StartConversation = self.f_box_S08M010_Bus_Drive_192_StartConversation
  l0.Stopped = self.f_box_S08M010_Bus_Drive_192_Stopped
  l0.PlayerLeftBus = self.f_box_S08M010_Bus_Drive_192_PlayerLeftBus
  l0.EnteringBus = self.f_box_S08M010_Bus_Drive_192_EnteringBus
  l0.BusDestroyed = self.f_box_S08M010_Bus_Drive_192_BusDestroyed
  l0.BuddyConditionFailed = self.f_box_S08M010_Bus_Drive_192_BuddyConditionFailed
  l0.BuddyKilled = self.f_box_S08M010_Bus_Drive_192_BuddyKilled
  l0.PassengersInjured = self.f_box_S08M010_Bus_Drive_192_PassengersInjured
  self.box_VehicleSeatingController_179 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_179
  l0._graph = self
  l0._name = "box_VehicleSeatingController_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1185570883"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_179_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_132 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_132
  l0._graph = self
  l0._name = "box_MissionLayer_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1197982518"
  l0.Loaded = self.f_box_MissionLayer_v2_132_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_199 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_199
  l0._graph = self
  l0._name = "box_Timer_v2_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1208411358"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_199_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionController_v4_310 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_310
  l0._graph = self
  l0._name = "box_MissionController_v4_310"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1212281488"
  self.box_AI_Buddy_Monitor_308 = cbox:CreateBox("domino/System/AIBuddyMonitor.lua")
  l0 = self.box_AI_Buddy_Monitor_308
  l0._graph = self
  l0._name = "box_AI_Buddy_Monitor_308"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1212283054"
  l0.Enabled = self.f_box_AI_Buddy_Monitor_308_Enabled
  l0.Disabled = self.f_box_AI_Buddy_Monitor_308_Disabled
  l0.OnBuddyFollowing = DummyFunction
  l0.OnBuddyInCombat = DummyFunction
  l0.OnBuddyHasNoSeat = DummyFunction
  l0.OnBuddyCantReach = DummyFunction
  l0.OnBuddyNormalRange = DummyFunction
  l0.OnBuddyTooFarBarkRange = DummyFunction
  l0.OnBuddyTooFar = self.f_box_AI_Buddy_Monitor_308_OnBuddyTooFar
  l0.OnBuddyTooFarUnspawnRange = self.f_box_AI_Buddy_Monitor_308_OnBuddyTooFarUnspawnRange
  self.box_MissionController_v4_350 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_350
  l0._graph = self
  l0._name = "box_MissionController_v4_350"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1217223332"
  self.box_MapPointController_v4_239 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_239
  l0._graph = self
  l0._name = "box_MapPointController_v4_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1218294682"
  l0.Shown = self.f_box_MapPointController_v4_239_Shown
  l0.Hidden = self.f_box_MapPointController_v4_239_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CLOController_295 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_295
  l0._graph = self
  l0._name = "box_CLOController_295"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1221579518"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_295_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_S08M010_Checkpoint_85 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.debug.lua")
  l0 = self.box_S08M010_Checkpoint_85
  l0._graph = self
  l0._name = "box_S08M010_Checkpoint_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1221620167"
  l0.Out = self.f_box_S08M010_Checkpoint_85_Out
  self.box_OnceOnly_v3_282 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_282
  l0._graph = self
  l0._name = "box_OnceOnly_v3_282"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1227960834"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_282_Out
  l0.ResetOut = DummyFunction
  self.box_S08M010_CIN_HRScolding_Main_187 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_hrscolding.S08M010_CIN_HRScolding_Main.debug.lua")
  l0 = self.box_S08M010_CIN_HRScolding_Main_187
  l0._graph = self
  l0._name = "box_S08M010_CIN_HRScolding_Main_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1234350114"
  l0.out = self.f_box_S08M010_CIN_HRScolding_Main_187_out
  self.box_CinematicPrep_335 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_335
  l0._graph = self
  l0._name = "box_CinematicPrep_335"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1240834121"
  l0.PreOut = self.f_box_CinematicPrep_335_PreOut
  l0.PostOut = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_224 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_224
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1241528857"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_224_Completed
  self.box_Hackable_Monitor_34 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_34
  l0._graph = self
  l0._name = "box_Hackable_Monitor_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1255209796"
  l0.Enabled = self.f_box_Hackable_Monitor_34_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_34_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_34_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_TriggerMonitor_v2_238 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_238
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1282039972"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_238_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_238_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_421 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_421
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_421"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1292228695"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_421_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_421_Leave
  l0.Use = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_242 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_242
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1293120407"
  l0.Started = self.f_box_DistanceBasedProgressBarController_v2_242_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_242_Completed
  self.box_MissionMessageController_v3_126 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_126
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1306763808"
  l0.Out = self.f_box_MissionMessageController_v3_126_Out
  l0.MessageCompleted = DummyFunction
  self.box_TriggerMonitor_v2_396 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_396
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_396"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1321047605"
  l0.Enabled = self.f_box_TriggerMonitor_v2_396_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_396_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_396_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_416 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_416
  l0._graph = self
  l0._name = "box_MultipleOR_416"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1331857511"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_416_Out
  self.box_MissionMessageController_v3_317 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_317
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_317"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1335806214"
  l0.Out = self.f_box_MissionMessageController_v3_317_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_258 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_258
  l0._graph = self
  l0._name = "box_OnceOnly_v3_258"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1339221226"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_258_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_147 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_147
  l0._graph = self
  l0._name = "box_MultipleOR_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1341299519"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_147_Out
  self.box_Reach_Gameplay_315 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_315
  l0._graph = self
  l0._name = "box_Reach_Gameplay_315"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1366935402"
  l0.Started = self.f_box_Reach_Gameplay_315_Started
  l0.Stopped = self.f_box_Reach_Gameplay_315_Stopped
  l0.Reached = self.f_box_Reach_Gameplay_315_Reached
  self.box_InteractionScriptMonitor_v2_369 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_369
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_369"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1372084108"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_369_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = self.f_box_InteractionScriptMonitor_v2_369_AnimationFinished
  self.box_DistanceBasedProgressBarController_v2_14 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_14
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1373323189"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_14_Completed
  self.box_CinematicPrep_250 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_250
  l0._graph = self
  l0._name = "box_CinematicPrep_250"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1380453653"
  l0.PreOut = self.f_box_CinematicPrep_250_PreOut
  l0.PostOut = DummyFunction
  self.box_TriggerMonitor_v2_95 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_95
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1386115914"
  l0.Enabled = self.f_box_TriggerMonitor_v2_95_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_95_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_95_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionController_v4_217 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_217
  l0._graph = self
  l0._name = "box_MissionController_v4_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1389933562"
  self.box_SetBoolean_v2_378 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_378
  l0._graph = self
  l0._name = "box_SetBoolean_v2_378"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1390790227"
  l0.Out = self.f_box_SetBoolean_v2_378_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_378_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_378_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_378_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_378_SetFromBool
  self.box_InteractionScriptMonitor_v2_57 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_57
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1426024469"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_57_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = self.f_box_InteractionScriptMonitor_v2_57_AnimationFinished
  self.box_S08M010_Checkpoint_112 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.debug.lua")
  l0 = self.box_S08M010_Checkpoint_112
  l0._graph = self
  l0._name = "box_S08M010_Checkpoint_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1437349430"
  l0.Out = self.f_box_S08M010_Checkpoint_112_Out
  self.box_ConsoleCommand_v2_208 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_208
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_208"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1447150604"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_208_Executed
  self.box_MapPointController_v4_148 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_148
  l0._graph = self
  l0._name = "box_MapPointController_v4_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1454356431"
  l0.Shown = self.f_box_MapPointController_v4_148_Shown
  l0.Hidden = self.f_box_MapPointController_v4_148_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionLayer_v2_122 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_122
  l0._graph = self
  l0._name = "box_MissionLayer_v2_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1457385421"
  l0.Loaded = self.f_box_MissionLayer_v2_122_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionController_v4_373 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_373
  l0._graph = self
  l0._name = "box_MissionController_v4_373"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1466373484"
  self.box_S08M010_Checkpoint_5 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.debug.lua")
  l0 = self.box_S08M010_Checkpoint_5
  l0._graph = self
  l0._name = "box_S08M010_Checkpoint_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1468025758"
  l0.Out = self.f_box_S08M010_Checkpoint_5_Out
  self.box_PlaySound_v2_330 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_330
  l0._graph = self
  l0._name = "box_PlaySound_v2_330"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1475432433"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_103 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_103
  l0._graph = self
  l0._name = "box_PlaySequence_v5_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1480432414"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_103_Finished
  self.box_VehicleSeatingController_19 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_19
  l0._graph = self
  l0._name = "box_VehicleSeatingController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1483666385"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_19_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_19_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_114 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_114
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1494120812"
  l0.Out = self.f_box_MissionMessageController_v3_114_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_209 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_209
  l0._graph = self
  l0._name = "box_MultipleOR_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1495728882"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_209_Out
  self.box_MissionMessageController_v3_88 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_88
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1503421944"
  l0.Out = self.f_box_MissionMessageController_v3_88_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_65 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_65
  l0._graph = self
  l0._name = "box_OnceOnly_v3_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1507110887"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_65_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_139 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_139
  l0._graph = self
  l0._name = "box_CLOController_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1507627532"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_139_OnUserInPlace
  self.box_PhoneCommunicationController_31 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_31
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1512132705"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_249 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_249
  l0._graph = self
  l0._name = "box_MissionLayer_v2_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1516923239"
  l0.Loaded = self.f_box_MissionLayer_v2_249_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_240 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_240
  l0._graph = self
  l0._name = "box_CinematicPrep_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1518193029"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_240_PostOut
  self.box_S08M010_Checkpoint_66 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.debug.lua")
  l0 = self.box_S08M010_Checkpoint_66
  l0._graph = self
  l0._name = "box_S08M010_Checkpoint_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1532966951"
  l0.Out = self.f_box_S08M010_Checkpoint_66_Out
  self.box_PlaySound_v2_326 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_326
  l0._graph = self
  l0._name = "box_PlaySound_v2_326"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1534258196"
  l0.Out = self.f_box_PlaySound_v2_326_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_S08M010_SpawnAndAssignCLOtoBus02_293 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus02.debug.lua")
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus02_293
  l0._graph = self
  l0._name = "box_S08M010_SpawnAndAssignCLOtoBus02_293"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1541131579"
  l0.Completed = self.f_box_S08M010_SpawnAndAssignCLOtoBus02_293_Completed
  self.box_MissionLayer_v2_128 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_128
  l0._graph = self
  l0._name = "box_MissionLayer_v2_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1555511015"
  l0.Loaded = self.f_box_MissionLayer_v2_128_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_GameplayConversationController_v3_60 = cbox:CreateBox("domino/System/GameplayConversationController_v3.lua")
  l0 = self.box_GameplayConversationController_v3_60
  l0._graph = self
  l0._name = "box_GameplayConversationController_v3_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1580068558"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayConversationController_v3_60_Started
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_GameplayConversationController_v3_60_Paused
  l0.Resumed = self.f_box_GameplayConversationController_v3_60_Resumed
  l0.Failed = DummyFunction
  l0.Finished = self.f_box_GameplayConversationController_v3_60_Finished
  self.box_Mission_End_107 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_107
  l0._graph = self
  l0._name = "box_Mission_End_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1582966600"
  self.box_SearchArea_133 = cbox:CreateBox("domino/Library/common/MissionIngredients.SearchArea.debug.lua")
  l0 = self.box_SearchArea_133
  l0._graph = self
  l0._name = "box_SearchArea_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1590807808"
  l0.Enabled = self.f_box_SearchArea_133_Enabled
  l0.Disabled = self.f_box_SearchArea_133_Disabled
  l0.Entered = self.f_box_SearchArea_133_Entered
  self.box_Player_Conflict_Monitor_300 = cbox:CreateBox("domino/System/PlayerConflictMonitor.lua")
  l0 = self.box_Player_Conflict_Monitor_300
  l0._graph = self
  l0._name = "box_Player_Conflict_Monitor_300"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1603302991"
  l0.Enabled = self.f_box_Player_Conflict_Monitor_300_Enabled
  l0.Disabled = self.f_box_Player_Conflict_Monitor_300_Disabled
  l0.InConflict = self.f_box_Player_Conflict_Monitor_300_InConflict
  l0.NOTInConflict = self.f_box_Player_Conflict_Monitor_300_NOTInConflict
  self.box_VehicleSeatingController_285 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_285
  l0._graph = self
  l0._name = "box_VehicleSeatingController_285"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1606920256"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_285_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_285_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self.box_DriveAndTalk_45 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_45
  l0._graph = self
  l0._name = "box_DriveAndTalk_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1608527283"
  l0.Started = self.f_box_DriveAndTalk_45_Started
  l0.Stopped = self.f_box_DriveAndTalk_45_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_PlaySound_v2_51 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_51
  l0._graph = self
  l0._name = "box_PlaySound_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1627593741"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_220 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_220
  l0._graph = self
  l0._name = "box_CinematicPrep_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1630292006"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_220_PostOut
  self.box_Intel_Controller_216 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_216
  l0._graph = self
  l0._name = "box_Intel_Controller_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1643639104"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_216_Disabled
  self.box_VehicleSeatingController_142 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_142
  l0._graph = self
  l0._name = "box_VehicleSeatingController_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1647006853"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_142_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_91 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_91
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1656605201"
  l0.Enabled = self.f_box_TriggerMonitor_v2_91_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_91_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_91_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_150 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_150
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1660528985"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_150_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_150_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Moveable_Entity_Monitor_374 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_374
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_374"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1662555205"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_374_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = self.f_box_Moveable_Entity_Monitor_374_OnFwdMovementFinished
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_MultipleOR_365 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_365
  l0._graph = self
  l0._name = "box_MultipleOR_365"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1664935254"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_365_Out
  self.box_VehicleSeatingController_377 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_377
  l0._graph = self
  l0._name = "box_VehicleSeatingController_377"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1668829297"
  l0.Assigned = self.f_box_VehicleSeatingController_377_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_231 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_231
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1678877525"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_301 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_301
  l0._graph = self
  l0._name = "box_MultipleOR_301"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1681451882"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_301_Out
  self.box_S08M010_CIN_MeetingBrody_Main_186 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/s08m010_cin_meetingbrody.S08M010_CIN_MeetingBrody_Main.debug.lua")
  l0 = self.box_S08M010_CIN_MeetingBrody_Main_186
  l0._graph = self
  l0._name = "box_S08M010_CIN_MeetingBrody_Main_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1688510723"
  l0.out = self.f_box_S08M010_CIN_MeetingBrody_Main_186_out
  self.box_LMA_Layer_Controller_77 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_77
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1698896011"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_77_Unloaded
  self.box_MultipleOR_362 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_362
  l0._graph = self
  l0._name = "box_MultipleOR_362"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1705358303"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_362_Out
  self.box_CLOController_110 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_110
  l0._graph = self
  l0._name = "box_CLOController_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1707164826"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_110_OnUserInPlace
  self.box_CinematicPrep_193 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_193
  l0._graph = self
  l0._name = "box_CinematicPrep_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1708682982"
  l0.PreOut = self.f_box_CinematicPrep_193_PreOut
  l0.PostOut = DummyFunction
  self.box_TimerToScreen_153 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_153
  l0._graph = self
  l0._name = "box_TimerToScreen_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1712221415"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_153_TimeElapsed
  self.box_PlaySound_v2_376 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_376
  l0._graph = self
  l0._name = "box_PlaySound_v2_376"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1714763473"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_S08M010_SpawnAndAssignCLOtoBus01_291 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus01.debug.lua")
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus01_291
  l0._graph = self
  l0._name = "box_S08M010_SpawnAndAssignCLOtoBus01_291"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1719352708"
  l0.Completed = self.f_box_S08M010_SpawnAndAssignCLOtoBus01_291_Completed
  self.box_PGTController_v2_43 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_43
  l0._graph = self
  l0._name = "box_PGTController_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1744818465"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_43_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_S08M010_SpawnAndAssignCLOtoBus02_292 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus02.debug.lua")
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus02_292
  l0._graph = self
  l0._name = "box_S08M010_SpawnAndAssignCLOtoBus02_292"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1745733550"
  l0.Completed = self.f_box_S08M010_SpawnAndAssignCLOtoBus02_292_Completed
  self.box_CLOController_47 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_47
  l0._graph = self
  l0._name = "box_CLOController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1752284112"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_47_OnUserInPlace
  self.box_Reach_Gameplay_226 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_226
  l0._graph = self
  l0._name = "box_Reach_Gameplay_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1756489202"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Reach_Gameplay_226_Stopped
  l0.Reached = self.f_box_Reach_Gameplay_226_Reached
  self.box_PhoneCommunicationController_206 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_206
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1761494913"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionController_v4_314 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_314
  l0._graph = self
  l0._name = "box_MissionController_v4_314"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1777719572"
  self.box_OnceOnly_v3_108 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_108
  l0._graph = self
  l0._name = "box_OnceOnly_v3_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1787965617"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_108_Out
  l0.ResetOut = DummyFunction
  self.box_Multiple_AND_343 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_343
  l0._graph = self
  l0._name = "box_Multiple_AND_343"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1801189996"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_343_Out
  self.box_PlaySequence_v5_46 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_46
  l0._graph = self
  l0._name = "box_PlaySequence_v5_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1801525634"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_46_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_46_Finished
  self.box_MapPointController_v4_161 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_161
  l0._graph = self
  l0._name = "box_MapPointController_v4_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1810035792"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_161_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_SetBoolean_v2_160 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_160
  l0._graph = self
  l0._name = "box_SetBoolean_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1820278089"
  l0.Out = self.f_box_SetBoolean_v2_160_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_160_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_160_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_160_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_160_SetFromBool
  self.box_AI_Buddy_Controller_312 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_312
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_312"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1828166052"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = self.f_box_AI_Buddy_Controller_312_IsWaiting
  l0.Assigned = DummyFunction
  self.box_TriggerMonitor_v2_403 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_403
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_403"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1842412982"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_403_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_109 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_109
  l0._graph = self
  l0._name = "box_MultipleOR_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1843490620"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_109_Out
  self.box_MissionMessageController_v3_237 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_237
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1853062309"
  l0.Out = self.f_box_MissionMessageController_v3_237_Out
  l0.MessageCompleted = DummyFunction
  self.box_VehicleSeatingController_10 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_10
  l0._graph = self
  l0._name = "box_VehicleSeatingController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1854791499"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_10_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_10_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_6 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_6
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1857910913"
  l0.Out = self.f_box_MissionMessageController_v3_6_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_426 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_426
  l0._graph = self
  l0._name = "box_HackableController_v2_426"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1864404121"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_426_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_134 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_134
  l0._graph = self
  l0._name = "box_OnceOnly_v3_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1868017346"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_134_Out
  l0.ResetOut = DummyFunction
  self.box_MissionLayer_v2_113 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_113
  l0._graph = self
  l0._name = "box_MissionLayer_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1879362693"
  l0.Loaded = self.f_box_MissionLayer_v2_113_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_121 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_121
  l0._graph = self
  l0._name = "box_MissionLayer_v2_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1892523238"
  l0.Loaded = self.f_box_MissionLayer_v2_121_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_SetBoolean_v2_383 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_383
  l0._graph = self
  l0._name = "box_SetBoolean_v2_383"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1900425409"
  l0.Out = self.f_box_SetBoolean_v2_383_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_383_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_383_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_383_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_383_SetFromBool
  self.box_VehicleMonitor_v3_354 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_354
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_354"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1903388743"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v3_354_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_354_Entered
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
  self.box_PlaySound_v2_89 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_89
  l0._graph = self
  l0._name = "box_PlaySound_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1908045503"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_130 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_130
  l0._graph = self
  l0._name = "box_MultipleOR_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1908100007"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_130_Out
  self.box_PhoneCommunicationController_90 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_90
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1920529432"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_VehicleMonitor_v3_364 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_364
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_364"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1932454474"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v3_364_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_364_Entered
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
  self.box_MissionMessageController_v3_135 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_135
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1934736381"
  l0.Out = self.f_box_MissionMessageController_v3_135_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_75 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_75
  l0._graph = self
  l0._name = "box_OnceOnly_v3_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1935587288"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_75_Out
  l0.ResetOut = DummyFunction
  self.box_Delivery_Gameplay_38 = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  l0 = self.box_Delivery_Gameplay_38
  l0._graph = self
  l0._name = "box_Delivery_Gameplay_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1945725471"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_box_Delivery_Gameplay_38_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self.box_TriggerMonitor_v2_401 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_401
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_401"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1948611293"
  l0.Enabled = self.f_box_TriggerMonitor_v2_401_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_401_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_401_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionController_v4_309 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_309
  l0._graph = self
  l0._name = "box_MissionController_v4_309"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1948796904"
  self.box_S08M010_Bus_Drive_276 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Bus_Drive.debug.lua")
  l0 = self.box_S08M010_Bus_Drive_276
  l0._graph = self
  l0._name = "box_S08M010_Bus_Drive_276"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1951104306"
  l0.ObjectiveReachDestination = self.f_box_S08M010_Bus_Drive_276_ObjectiveReachDestination
  l0.StartConversation = self.f_box_S08M010_Bus_Drive_276_StartConversation
  l0.Stopped = self.f_box_S08M010_Bus_Drive_276_Stopped
  l0.PlayerLeftBus = self.f_box_S08M010_Bus_Drive_276_PlayerLeftBus
  l0.EnteringBus = self.f_box_S08M010_Bus_Drive_276_EnteringBus
  l0.BusDestroyed = self.f_box_S08M010_Bus_Drive_276_BusDestroyed
  l0.BuddyConditionFailed = self.f_box_S08M010_Bus_Drive_276_BuddyConditionFailed
  l0.BuddyKilled = self.f_box_S08M010_Bus_Drive_276_BuddyKilled
  l0.PassengersInjured = DummyFunction
  self.box_VehicleSeatingController_35 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_35
  l0._graph = self
  l0._name = "box_VehicleSeatingController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1954507505"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_35_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = self.f_box_VehicleSeatingController_35_AbortMoveAndUseSeat
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_215 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_215
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1966288096"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_232 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_232
  l0._graph = self
  l0._name = "box_PlaySequence_v5_232"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1973759902"
  l0._DynamicAnchors = {
    EntityIn = {"Horatio", "Bus"},
    EntityOut = {"Horatio", "Bus"}
  }
  l0.Started = self.f_box_PlaySequence_v5_232_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_232_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_232_Finished
  self.box_OnceOnly_v3_218 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_218
  l0._graph = self
  l0._name = "box_OnceOnly_v3_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1974359565"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_218_Out
  l0.ResetOut = DummyFunction
  self.box_PhoneCommunicationController_159 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_159
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1974687804"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_159_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_397 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_397
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_397"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1975156318"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_397_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_OnceOnly_v3_434 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_434
  l0._graph = self
  l0._name = "box_OnceOnly_v3_434"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1990280903"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_434_Out
  l0.ResetOut = DummyFunction
  self.box_InteractionScriptMonitor_v2_72 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_72
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1995526194"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_72_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_72_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_CinematicPrep_262 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_262
  l0._graph = self
  l0._name = "box_CinematicPrep_262"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1999090311"
  l0.PreOut = self.f_box_CinematicPrep_262_PreOut
  l0.PostOut = DummyFunction
  self.box_CinematicPrep_196 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_196
  l0._graph = self
  l0._name = "box_CinematicPrep_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2005754898"
  l0.PreOut = self.f_box_CinematicPrep_196_PreOut
  l0.PostOut = DummyFunction
  self.box_TriggerMonitor_v2_225 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_225
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2005919570"
  l0.Enabled = self.f_box_TriggerMonitor_v2_225_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_225_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_225_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_92 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_92
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2006827776"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_92_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_92_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_151 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_151
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2018173404"
  l0.Out = self.f_box_MissionMessageController_v3_151_Out
  l0.MessageCompleted = DummyFunction
  self.box_GameplayInteractionController_25 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_25
  l0._graph = self
  l0._name = "box_GameplayInteractionController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2032365952"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_OnceOnly_v3_136 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_136
  l0._graph = self
  l0._name = "box_OnceOnly_v3_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2035824953"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_136_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_303 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_303
  l0._graph = self
  l0._name = "box_OnceOnly_v3_303"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2040315665"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_303_Out
  l0.ResetOut = DummyFunction
  self.box_S08M010_Checkpoint_284 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.debug.lua")
  l0 = self.box_S08M010_Checkpoint_284
  l0._graph = self
  l0._name = "box_S08M010_Checkpoint_284"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2043119475"
  l0.Out = self.f_box_S08M010_Checkpoint_284_Out
  self.box_PhoneCommunicationController_171 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_171
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2049116464"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_S08M010_SpawnAndAssignCLOtoBus01_54 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_SpawnAndAssignCLOtoBus01.debug.lua")
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus01_54
  l0._graph = self
  l0._name = "box_S08M010_SpawnAndAssignCLOtoBus01_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2055435174"
  l0.Completed = self.f_box_S08M010_SpawnAndAssignCLOtoBus01_54_Completed
  self.box_GameplayInteractionController_165 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_165
  l0._graph = self
  l0._name = "box_GameplayInteractionController_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2079449848"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_ListWriter_84 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_84
  l0._graph = self
  l0._name = "box_ListWriter_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2092089514"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_84_Added
  l0.Removed = self.f_box_ListWriter_84_Removed
  l0.Out = self.f_box_ListWriter_84_Out
  self.box_CLOController_22 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_22
  l0._graph = self
  l0._name = "box_CLOController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2094630157"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_22_OnUserInPlace
  self.box_MissionMessageController_v3_245 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_245
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2098700780"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_348 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_348
  l0._graph = self
  l0._name = "box_OnceOnly_v3_348"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2099613192"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_348_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_359 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_359
  l0._graph = self
  l0._name = "box_MultipleOR_359"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2099694381"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_359_Out
  self.box_GameplayConversationController_v3_298 = cbox:CreateBox("domino/System/GameplayConversationController_v3.lua")
  l0 = self.box_GameplayConversationController_v3_298
  l0._graph = self
  l0._name = "box_GameplayConversationController_v3_298"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2101063318"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayConversationController_v3_298_Started
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_GameplayConversationController_v3_298_Paused
  l0.Resumed = self.f_box_GameplayConversationController_v3_298_Resumed
  l0.Failed = DummyFunction
  l0.Finished = self.f_box_GameplayConversationController_v3_298_Finished
  self.box_S08M010_WalkAndTalk_116 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_WalkAndTalk.debug.lua")
  l0 = self.box_S08M010_WalkAndTalk_116
  l0._graph = self
  l0._name = "box_S08M010_WalkAndTalk_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2106669523"
  l0.ConversationCompleted = DummyFunction
  l0.Started = DummyFunction
  l0.TalkerDead = self.f_box_S08M010_WalkAndTalk_116_TalkerDead
  l0.Disabled = self.f_box_S08M010_WalkAndTalk_116_Disabled
  l0.TalkerDestinationReached = self.f_box_S08M010_WalkAndTalk_116_TalkerDestinationReached
  l0.CombatStarted = self.f_box_S08M010_WalkAndTalk_116_CombatStarted
  l0.PlayerInjured = DummyFunction
  self.box_MissionMessageController_v3_37 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_37
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2107079116"
  l0.Out = self.f_box_MissionMessageController_v3_37_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_16 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_16
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2108382273"
  l0.Out = self.f_box_MissionMessageController_v3_16_Out
  l0.MessageCompleted = DummyFunction
  self.box_CinematicPrep_197 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_197
  l0._graph = self
  l0._name = "box_CinematicPrep_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2115919732"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_197_PostOut
  self.box_SetBoolean_v2_163 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_163
  l0._graph = self
  l0._name = "box_SetBoolean_v2_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2126877875"
  l0.Out = self.f_box_SetBoolean_v2_163_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_163_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_163_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_163_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_163_SetFromBool
  self.box_Timer_v2_229 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_229
  l0._graph = self
  l0._name = "box_Timer_v2_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2130477354"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_229_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_173 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_173
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2130662302"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_173_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_S08M010_Checkpoint_18 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M010/S08M010.S08M010_Checkpoint.debug.lua")
  l0 = self.box_S08M010_Checkpoint_18
  l0._graph = self
  l0._name = "box_S08M010_Checkpoint_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2138478835"
  l0.Out = self.f_box_S08M010_Checkpoint_18_Out
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
  l0 = self.box_MissionLayer_v2_121
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1397031260", "1397031260", "S08M010_Main", "CheckPoint_0", "box_MissionLayer_v2_121.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_249
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1737605014", "1737605014", "S08M010_Main", "CheckPoint_1", "box_MissionLayer_v2_249.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_10()
  local l0
  l0 = self.box_MissionLayer_v2_132
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1441496919", "1441496919", "S08M010_Main", "CheckPoint_10", "box_MissionLayer_v2_132.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_11()
  local l0
  self:OnEnter_box_Mission_End_107()
  l0 = self.box_Mission_End_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1518079151", "1518079151", "S08M010_Main", "CheckPoint_11", "box_Mission_End_107.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_155
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1356287411", "1356287411", "S08M010_Main", "CheckPoint_2", "box_MissionLayer_v2_155.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  l0 = self.box_MissionLayer_v2_120
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1462384143", "1462384143", "S08M010_Main", "CheckPoint_3", "box_MissionLayer_v2_120.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_4()
  local l0
  l0 = self.box_MissionLayer_v2_113
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1014252070", "1014252070", "S08M010_Main", "CheckPoint_4", "box_MissionLayer_v2_113.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_5()
  local l0
  l0 = self.box_MissionLayer_v2_122
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1799752854", "1799752854", "S08M010_Main", "CheckPoint_5", "box_MissionLayer_v2_122.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_6()
  local l0
  l0 = self.box_MissionLayer_v2_124
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|5490341", "5490341", "S08M010_Main", "CheckPoint_6", "box_MissionLayer_v2_124.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_7()
  local l0
  l0 = self.box_MissionLayer_v2_125
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|812263924", "812263924", "S08M010_Main", "CheckPoint_7", "box_MissionLayer_v2_125.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_8()
  local l0
  l0 = self.box_MissionLayer_v2_127
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|379717011", "379717011", "S08M010_Main", "CheckPoint_8", "box_MissionLayer_v2_127.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_9()
  local l0
  l0 = self.box_MissionLayer_v2_128
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|715631095", "715631095", "S08M010_Main", "CheckPoint_9", "box_MissionLayer_v2_128.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_137
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|726408582", "726408582", "S08M010_Main", "In", "box_MissionLayer_v2_137.Load", self, l0)
  l0:Load()
end
function export:f_box_PGTController_v2_15_AllSpawned()
  local l0, l1
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
  l0._name = "box_Lanes_Restrictions_Control_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|726897908"
  l0.Out = self.f_box_Lanes_Restrictions_Control_11_Out
  l0 = self.box_PGTController_v2_15
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|837193236", "837193236", "S08M010_Main", "box_PGTController_v2_15.AllSpawned", "box_Lanes_Restrictions_Control_11.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_81_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_375
  l0.Entity = "9223372055079369230"
  l0.SoundId = "soundbinary/3091844746.bnk"
  l0 = self.box_MissionLayer_v2_81
  l1 = self.box_PlaySound_v2_375
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1662038114", "1662038114", "S08M010_Main", "box_MissionLayer_v2_81.Unloaded", "box_PlaySound_v2_375.Play", l0, l1)
  l1:Play()
end
function export:f_box_CinematicPrep_260_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_Checkpoint_164()
  l0 = self.box_CinematicPrep_260
  l1 = self.box_S08M010_Checkpoint_164
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|345810709", "345810709", "S08M010_Main", "box_CinematicPrep_260.PostOut", "box_S08M010_Checkpoint_164.GameFlow", l0, l1)
  l1:GameFlow()
end
function export:f_box_CLOController_246_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_246
  self.NudleBus = l0.UserID
  l0 = self.box_CLOController_265
  l0.CLO = self.CLO_Horatio_ParkingLot
  l0 = self.box_CLOController_246
  l1 = self.box_CLOController_265
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1491263692", "1491263692", "S08M010_Main", "box_CLOController_246.OnUserInPlace", "box_CLOController_265.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Lanes_Restrictions_Control_436_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_162()
  l0 = self.box_TriggerMonitor_v2_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|435634336", "435634336", "S08M010_Main", "box_Lanes_Restrictions_Control_436.Out", "box_TriggerMonitor_v2_162.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CinematicPrep_101_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_22
  l0.CLO = self.NudleBusCLO
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CinematicPrep_101
  l1 = self.box_CLOController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|159657582", "159657582", "S08M010_Main", "box_CinematicPrep_101.PostOut", "box_CLOController_22.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CinematicPrep_223_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_77
  l0.LMALayerName = self.NudleUpperLMA
  l0 = self.box_CinematicPrep_223
  l1 = self.box_LMA_Layer_Controller_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|438862827", "438862827", "S08M010_Main", "box_CinematicPrep_223.PreOut", "box_LMA_Layer_Controller_77.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Hackable_Monitor_205_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_204
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222327000"
  l0 = self.box_Hackable_Monitor_205
  l1 = self.box_PhoneCommunicationController_204
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|817333657", "817333657", "S08M010_Main", "box_Hackable_Monitor_205.Disabled", "box_PhoneCommunicationController_204.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Hackable_Monitor_205_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_205()
  l0 = self.box_Hackable_Monitor_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1631465436", "1631465436", "S08M010_Main", "box_Hackable_Monitor_205.HackSuccess", "box_Hackable_Monitor_205.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_HackableController_v2_99_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_99()
  l0 = self.box_HackableController_v2_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|732196755", "732196755", "S08M010_Main", "box_HackableController_v2_99.Disabled", "box_HackableController_v2_99.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_99_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_92()
  l0 = self.box_HackableController_v2_99
  l1 = self.box_TriggerMonitor_v2_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|298126803", "298126803", "S08M010_Main", "box_HackableController_v2_99.Enabled", "box_TriggerMonitor_v2_92.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_99_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_92()
  l0 = self.box_HackableController_v2_99
  l1 = self.box_TriggerMonitor_v2_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|928626373", "928626373", "S08M010_Main", "box_HackableController_v2_99.ProfilingDisabled", "box_TriggerMonitor_v2_92.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_OnceOnly_v3_169_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_17
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372056247381308"
  l0 = self.box_OnceOnly_v3_169
  l1 = self.box_PhoneCommunicationController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|347273137", "347273137", "S08M010_Main", "box_OnceOnly_v3_169.Out", "box_PhoneCommunicationController_17.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PhoneCommunicationController_204_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_388
  l0.SoundId = "soundbinary/81442961.bnk"
  l0 = self.box_PhoneCommunicationController_204
  l1 = self.box_PlaySound_v2_388
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|814445303", "814445303", "S08M010_Main", "box_PhoneCommunicationController_204.StartCommunicationOut", "box_PlaySound_v2_388.Play", l0, l1)
  l1:Play()
end
function export:f_box_MissionMessageController_v3_316_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Conflict_Monitor_300()
  l0 = self.box_MissionMessageController_v3_316
  l1 = self.box_Player_Conflict_Monitor_300
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|866113222", "866113222", "S08M010_Main", "box_MissionMessageController_v3_316.Out", "box_Player_Conflict_Monitor_300.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MoveableEntityController_325_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_322
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|69991415", "69991415", "S08M010_Main", "box_MoveableEntityController_325.Out", "box_Timer_v2_322.Start", clone, l0)
  l0:Start()
end
function export:f_box_PhoneCommunicationController_333_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_PhoneCommunicationController_333
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1008086042", "1008086042", "S08M010_Main", "box_PhoneCommunicationController_333.StartCommunicationOut", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_162_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_161()
  l0 = self.box_TriggerMonitor_v2_162
  l1 = self.box_MapPointController_v4_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2049070092", "2049070092", "S08M010_Main", "box_TriggerMonitor_v2_162.Disabled", "box_MapPointController_v4_161.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TriggerMonitor_v2_162_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_161()
  l0 = self.box_TriggerMonitor_v2_162
  l1 = self.box_MapPointController_v4_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2022734440", "2022734440", "S08M010_Main", "box_TriggerMonitor_v2_162.Enabled", "box_MapPointController_v4_161.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_162_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_162()
  l0 = self.box_TriggerMonitor_v2_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1234262877", "1234262877", "S08M010_Main", "box_TriggerMonitor_v2_162.Enter", "box_TriggerMonitor_v2_162.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MapPointController_v4_211_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_172()
  l0 = self.box_MapPointController_v4_211
  l1 = self.box_TriggerMonitor_v2_172
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1457674711", "1457674711", "S08M010_Main", "box_MapPointController_v4_211.Hidden", "box_TriggerMonitor_v2_172.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_211_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_172()
  l0 = self.box_MapPointController_v4_211
  l1 = self.box_TriggerMonitor_v2_172
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2073260366", "2073260366", "S08M010_Main", "box_MapPointController_v4_211.Shown", "box_TriggerMonitor_v2_172.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_433_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus02_292
  l0.PassengerList_In = self.BusPassengers
  l0.CLO05 = self.CLO_BussPassenger_05
  l0.CLO06 = self.CLO_BussPassenger_06
  l0.CLO07 = self.CLO_BussPassenger_07
  l0.CLO08 = self.CLO_BussPassenger_08
  l0.BusVehicle = self.NudleBus
  l0 = self.box_OnceOnly_v3_433
  l1 = self.box_S08M010_SpawnAndAssignCLOtoBus02_292
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1365815446", "1365815446", "S08M010_Main", "box_OnceOnly_v3_433.Out", "box_S08M010_SpawnAndAssignCLOtoBus02_292.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleSeatingMonitor_353_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_355()
  l0 = self.box_MultipleOR_355
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|251475247", "251475247", "S08M010_Main", "box_VehicleSeatingMonitor_353.EntityIsInVehicle", "box_MultipleOR_355.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_VehicleSeatingMonitor_353_EntityIsNotInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_354()
  l0 = self.box_VehicleMonitor_v3_354
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|942463877", "942463877", "S08M010_Main", "box_VehicleSeatingMonitor_353.EntityIsNotInVehicle", "box_VehicleMonitor_v3_354.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOController_175_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_175
  self.NudleBus = l0.UserID
  l0 = self.box_CLOController_110
  l0.CLO = self.CLO_HoratioBusPassenger_Downtown
  l0 = self.box_CLOController_175
  l1 = self.box_CLOController_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|419848766", "419848766", "S08M010_Main", "box_CLOController_175.OnUserInPlace", "box_CLOController_110.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionMusicController_407_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S08M010_Checkpoint_36()
  l0 = self.box_S08M010_Checkpoint_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1381506487", "1381506487", "S08M010_Main", "box_MissionMusicController_407.Activated", "box_S08M010_Checkpoint_36.Checkpoint", clone, l0)
  l0:Checkpoint()
end
function export:f_box_MultipleOR_158_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_GameplayInteractionController_25()
  l0 = self.box_MultipleOR_158
  l1 = self.box_GameplayInteractionController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1307047948", "1307047948", "S08M010_Main", "box_MultipleOR_158.Out", "box_GameplayInteractionController_25.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MapPointController_v4_8_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_28()
  l0 = self.box_MapPointController_v4_8
  l1 = self.box_TriggerMonitor_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|770403328", "770403328", "S08M010_Main", "box_MapPointController_v4_8.Hidden", "box_TriggerMonitor_v2_28.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_8_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_28()
  l0 = self.box_MapPointController_v4_8
  l1 = self.box_TriggerMonitor_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1645058605", "1645058605", "S08M010_Main", "box_MapPointController_v4_8.Shown", "box_TriggerMonitor_v2_28.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_270_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|964593929"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_174_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_174_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_174_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_174_Out_3
  l0 = self.box_HackableController_v2_270
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1455943624", "1455943624", "S08M010_Main", "box_HackableController_v2_270.Disabled", "box_Ordered_Output_174.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_270_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_270()
  l0 = self.box_HackableController_v2_270
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|421201932", "421201932", "S08M010_Main", "box_HackableController_v2_270.ProfilingDisabled", "box_HackableController_v2_270.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_FelonyTargetMonitor_247_Chasing()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_289()
  l0 = self.box_FelonyTargetMonitor_247
  l1 = self.box_MultipleOR_289
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|784607802", "784607802", "S08M010_Main", "box_FelonyTargetMonitor_247.Chasing", "box_MultipleOR_289.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_FelonyTargetMonitor_247_Evaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_277
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective080",
    item = "Objective",
    id = "649119"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_FelonyTargetMonitor_247
  l1 = self.box_MissionMessageController_v3_277
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|396929882", "396929882", "S08M010_Main", "box_FelonyTargetMonitor_247.Evaded", "box_MissionMessageController_v3_277.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_FelonyTargetMonitor_247_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reach_Gameplay_226()
  l0 = self.box_FelonyTargetMonitor_247
  l1 = self.box_Reach_Gameplay_226
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1015433832", "1015433832", "S08M010_Main", "box_FelonyTargetMonitor_247.None", "box_Reach_Gameplay_226.Start", l0, l1)
  l1:Start()
end
function export:f_box_FelonyTargetMonitor_247_Searching()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_289()
  l0 = self.box_FelonyTargetMonitor_247
  l1 = self.box_MultipleOR_289
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|565489000", "565489000", "S08M010_Main", "box_FelonyTargetMonitor_247.Searching", "box_MultipleOR_289.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DPad_Hackable_Controller_384_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_316
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective1",
    id = "359128"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|770968320", "770968320", "S08M010_Main", "box_DPad_Hackable_Controller_384.Removed", "box_MissionMessageController_v3_316.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Toy_Car_Controller_393_CalledBack()
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
  l0._name = "box_Flying_Drone_Controller_386"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|891115700"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1630450982", "1630450982", "S08M010_Main", "box_Toy_Car_Controller_393.CalledBack", "box_Flying_Drone_Controller_386.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_VehicleSeatingMonitor_360_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_362()
  l0 = self.box_MultipleOR_362
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1051433158", "1051433158", "S08M010_Main", "box_VehicleSeatingMonitor_360.EntityIsInVehicle", "box_MultipleOR_362.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_VehicleSeatingMonitor_360_EntityIsNotInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_361()
  l0 = self.box_VehicleMonitor_v3_361
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1728816461", "1728816461", "S08M010_Main", "box_VehicleSeatingMonitor_360.EntityIsNotInVehicle", "box_VehicleMonitor_v3_361.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Get_Player_ID_144_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_139
  l0.CLO = self.CLO_NudleBus_AtBusStop_Stanford
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|155849987", "155849987", "S08M010_Main", "box_Get_Player_ID_144.Out", "box_CLOController_139.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_202_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1832145501"
  l0.Out = self.f_box_Simple_Node_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|327552988", "327552988", "S08M010_Main", "box_Ordered_Output_202.Out", "box_Simple_Node_2.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_202_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayConversationController_v3_298()
  l0 = self.box_GameplayConversationController_v3_298
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|589175739", "589175739", "S08M010_Main", "box_Ordered_Output_202.Out", "box_GameplayConversationController_v3_298.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_202_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_358()
  l0 = self.box_MultipleOR_358
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|232779846", "232779846", "S08M010_Main", "box_Ordered_Output_202.Out", "box_MultipleOR_358.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Simple_Node_340_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_331"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2049565277"
  l0.Out = self.f_box_Simple_Node_331_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|259305819", "259305819", "S08M010_Main", "box_Simple_Node_340.Out", "box_Simple_Node_331.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleSeatingController_143_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_434()
  l0 = self.box_VehicleSeatingController_143
  l1 = self.box_OnceOnly_v3_434
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|665869211", "665869211", "S08M010_Main", "box_VehicleSeatingController_143.AbortMoveAndUseSeat", "box_OnceOnly_v3_434.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_143_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_434()
  l0 = self.box_VehicleSeatingController_143
  l1 = self.box_OnceOnly_v3_434
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|282167839", "282167839", "S08M010_Main", "box_VehicleSeatingController_143.AssignCompleted", "box_OnceOnly_v3_434.In", l0, l1)
  l1:In(0)
end
function export:f_box_TriggerMonitor_v2_425_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InputListener_Monitor_212()
  l0 = self.box_TriggerMonitor_v2_425
  l1 = self.box_InputListener_Monitor_212
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|395431039", "395431039", "S08M010_Main", "box_TriggerMonitor_v2_425.Disabled", "box_InputListener_Monitor_212.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_425_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InputListener_Monitor_212()
  l0 = self.box_TriggerMonitor_v2_425
  l1 = self.box_InputListener_Monitor_212
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1317776056", "1317776056", "S08M010_Main", "box_TriggerMonitor_v2_425.Enabled", "box_InputListener_Monitor_212.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_425_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_269()
  l0 = self.box_TriggerMonitor_v2_425
  l1 = self.box_MultipleOR_269
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|176937632", "176937632", "S08M010_Main", "box_TriggerMonitor_v2_425.Enter", "box_MultipleOR_269.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_39_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_169
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|522477774", "522477774", "S08M010_Main", "box_Compare_Boolean_v2_39.A_is_False", "box_OnceOnly_v3_169.In", clone, l0)
  l0:In(0)
end
function export:f_box_Compare_Boolean_v2_39_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|635932702", "635932702", "S08M010_Main", "box_Compare_Boolean_v2_39.A_is_True", "box_OnceOnly_v3_166.In", clone, l0)
  l0:In(0)
end
function export:f_box_Timer_v2_409_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_CIN_OnTheBus_Main_189
  l0.bus = self.NudleBus
  l0.Horatio = self.Horatio
  l0 = self.box_Timer_v2_409
  l1 = self.box_S08M010_CIN_OnTheBus_Main_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1076235581", "1076235581", "S08M010_Main", "box_Timer_v2_409.TimeElapsed", "box_S08M010_CIN_OnTheBus_Main_189.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_432_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_191
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_OnceOnly_v3_432
  l1 = self.box_CinematicPrep_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|47774870", "47774870", "S08M010_Main", "box_OnceOnly_v3_432.Out", "box_CinematicPrep_191.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionMessageController_v3_149_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_148()
  l0 = self.box_MissionMessageController_v3_149
  l1 = self.box_MapPointController_v4_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1209178988", "1209178988", "S08M010_Main", "box_MissionMessageController_v3_149.Out", "box_MapPointController_v4_148.Show", l0, l1)
  l1:Show()
end
function export:f_box_Interact_Gameplay_29_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_29()
  l0 = self.box_Interact_Gameplay_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|158874742", "158874742", "S08M010_Main", "box_Interact_Gameplay_29.Interacted", "box_Interact_Gameplay_29.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_29_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Server_HackableEntity_Server
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientTrigger"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_414"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1709943696"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_414_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0 = self.box_Interact_Gameplay_29
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|704780299", "704780299", "S08M010_Main", "box_Interact_Gameplay_29.Started", "box_DPad_Hackable_Controller_414.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_Interact_Gameplay_29_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_216()
  l0 = self.box_Interact_Gameplay_29
  l1 = self.box_Intel_Controller_216
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|259911562", "259911562", "S08M010_Main", "box_Interact_Gameplay_29.Stopped", "box_Intel_Controller_216.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionMessageController_v3_96_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_52()
  l0 = self.box_MissionMessageController_v3_96
  l1 = self.box_MapPointController_v4_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1119770445", "1119770445", "S08M010_Main", "box_MissionMessageController_v3_96.Out", "box_MapPointController_v4_52.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionLayer_v2_124_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_15
  l0.PGTMissionArea = self.PGTArea
  l0 = self.box_MissionLayer_v2_124
  l1 = self.box_PGTController_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|254140555", "254140555", "S08M010_Main", "box_MissionLayer_v2_124.Loaded", "box_PGTController_v2_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_358_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_153()
  l0 = self.box_MultipleOR_358
  l1 = self.box_TimerToScreen_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1832910250", "1832910250", "S08M010_Main", "box_MultipleOR_358.Out", "box_TimerToScreen_153.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Simple_Node_405_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_396()
  l0 = self.box_TriggerMonitor_v2_396
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|282292881", "282292881", "S08M010_Main", "box_Simple_Node_405.Out", "box_TriggerMonitor_v2_396.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Lanes_Restrictions_Control_280_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_240
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1988575532", "1988575532", "S08M010_Main", "box_Lanes_Restrictions_Control_280.Out", "box_CinematicPrep_240.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Lanes_Restrictions_Control_219_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_To_SpawnPoint_271
  l0.SpawnPoint = self.S08M010_CheckPoint_0
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1143138359", "1143138359", "S08M010_Main", "box_Lanes_Restrictions_Control_219.Out", "box_Teleport_To_SpawnPoint_271.In", clone, l0)
  l0:In()
end
function export:f_box_PGTController_v2_56_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476430"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_267"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|907569401"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_267_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PGTController_v2_56
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1180118637", "1180118637", "S08M010_Main", "box_PGTController_v2_56.AllSpawned", "box_Media_System_Custom_Broadcast_Controller_267.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_Ordered_Output_427_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_149
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1908218693", "1908218693", "S08M010_Main", "box_Ordered_Output_427.Out", "box_MissionMessageController_v3_149.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_427_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Conflict_Monitor_44()
  l0 = self.box_Player_Conflict_Monitor_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|294694427", "294694427", "S08M010_Main", "box_Ordered_Output_427.Out", "box_Player_Conflict_Monitor_44.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_InputListener_Monitor_212_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_239()
  l0 = self.box_InputListener_Monitor_212
  l1 = self.box_MapPointController_v4_239
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1699399356", "1699399356", "S08M010_Main", "box_InputListener_Monitor_212.Disabled", "box_MapPointController_v4_239.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_InputListener_Monitor_212_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_239()
  l0 = self.box_InputListener_Monitor_212
  l1 = self.box_MapPointController_v4_239
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|161468684", "161468684", "S08M010_Main", "box_InputListener_Monitor_212.Enabled", "box_MapPointController_v4_239.Show", l0, l1)
  l1:Show()
end
function export:f_box_InputListener_Monitor_212_InputReceived()
  local l0, l1
  self = self._graph
  l0 = self.box_InputListener_Monitor_212
  l1 = self.box_OnceOnly_v3_348
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1118210113", "1118210113", "S08M010_Main", "box_InputListener_Monitor_212.InputReceived", "box_OnceOnly_v3_348.In", l0, l1)
  l1:In(0)
end
function export:f_box_VehicleSeatingController_119_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_119
  l1 = self.box_Timer_v2_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1539130823", "1539130823", "S08M010_Main", "box_VehicleSeatingController_119.Assigned", "box_Timer_v2_102.Start", l0, l1)
  l1:Start()
end
function export:f_box_TimerToScreen_253_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_248
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState2",
    id = "359306"
  }
  l0 = self.box_TimerToScreen_253
  l1 = self.box_MissionController_v4_248
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1883178109", "1883178109", "S08M010_Main", "box_TimerToScreen_253.TimeElapsed", "box_MissionController_v4_248.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_MoveableEntityController_106_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_326
  l0.Entity = self.Nudle_CoolingTankPanel_0
  l0.SoundId = "soundbinary/210957167.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|552187847", "552187847", "S08M010_Main", "box_MoveableEntityController_106.Out", "box_PlaySound_v2_326.Play", clone, l0)
  l0:Play()
end
function export:f_box_MissionLayer_v2_127_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_56
  l0.PGTMissionArea = self.PGTArea
  l0 = self.box_MissionLayer_v2_127
  l1 = self.box_PGTController_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2033686676", "2033686676", "S08M010_Main", "box_MissionLayer_v2_127.Loaded", "box_PGTController_v2_56.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_140_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_140
  self.Horatio = l0.UserID
  self:OnEnter_box_S08M010_Checkpoint_27()
  l1 = self.box_S08M010_Checkpoint_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1007784576", "1007784576", "S08M010_Main", "box_CLOController_140.OnUserInPlace", "box_S08M010_Checkpoint_27.Checkpoint", l0, l1)
  l1:Checkpoint()
end
function export:f_box_Ordered_Output_82_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S08M010_Bus_Drive_276()
  l0 = self.box_S08M010_Bus_Drive_276
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1324830063", "1324830063", "S08M010_Main", "box_Ordered_Output_82.Out", "box_S08M010_Bus_Drive_276.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_82_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372072446567155"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_278"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1626628258"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1295013027", "1295013027", "S08M010_Main", "box_Ordered_Output_82.Out", "box_MissionMusicController_278.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_345_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_Server_Row6FrontDoor
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1088879191"
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
  l0.Out = self.f_box_MoveableEntityController_117_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1936599542", "1936599542", "S08M010_Main", "box_Ordered_Output_345.Out", "box_MoveableEntityController_117.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Ordered_Output_345_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_330
  l0.Entity = "9223372055079369230"
  l0.SoundId = "soundbinary/1129789467.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2108485055", "2108485055", "S08M010_Main", "box_Ordered_Output_345.Out", "box_PlaySound_v2_330.Play", clone, l0)
  l0:Play()
end
function export:f_box_Teleport_To_SpawnPoint_422_TeleportDone()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_423()
  l0 = self.box_Teleport_To_SpawnPoint_422
  l1 = self.box_MultipleOR_423
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|404073201", "404073201", "S08M010_Main", "box_Teleport_To_SpawnPoint_422.TeleportDone", "box_MultipleOR_423.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_404_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_401()
  l0 = self.box_TriggerMonitor_v2_401
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|832876969", "832876969", "S08M010_Main", "box_Simple_Node_404.Out", "box_TriggerMonitor_v2_401.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MapPointController_v4_104_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_FlushPanel_1
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1217759579"
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
  l0.Out = self.f_box_MoveableEntityController_168_Out
  l0 = self.box_MapPointController_v4_104
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|927682625", "927682625", "S08M010_Main", "box_MapPointController_v4_104.Hidden", "box_MoveableEntityController_168.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_InteractionScriptMonitor_v2_368_AnimationFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_368()
  l0 = self.box_InteractionScriptMonitor_v2_368
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2123865257", "2123865257", "S08M010_Main", "box_InteractionScriptMonitor_v2_368.AnimationFinished", "box_InteractionScriptMonitor_v2_368.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptMonitor_v2_368_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_371()
  l0 = self.box_InteractionScriptMonitor_v2_368
  l1 = self.box_OnceOnly_v3_371
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1526759118", "1526759118", "S08M010_Main", "box_InteractionScriptMonitor_v2_368.Disabled", "box_OnceOnly_v3_371.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_94_Started()
  local l0, l1
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
  l0._name = "box_Player_State_Controller_274"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|566229205"
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
  l0.ClimbInteractionAllowedReset = self.f_box_Player_State_Controller_274_ClimbInteractionAllowedReset
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PlaySequence_v5_94
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|818670975", "818670975", "S08M010_Main", "box_PlaySequence_v5_94.Started", "box_Player_State_Controller_274.ResetClimbInteractionAllowed", l0, l1)
  l1:ResetClimbInteractionAllowed()
end
function export:f_box_Hackable_Monitor_73_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_73
  l1 = self.box_OnceOnly_v3_282
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|536441847", "536441847", "S08M010_Main", "box_Hackable_Monitor_73.Disabled", "box_OnceOnly_v3_282.In", l0, l1)
  l1:In(0)
end
function export:f_box_Hackable_Monitor_73_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_73()
  l0 = self.box_Hackable_Monitor_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|297511664", "297511664", "S08M010_Main", "box_Hackable_Monitor_73.HackSuccess", "box_Hackable_Monitor_73.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_370_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_57()
  l0 = self.box_InteractionScriptMonitor_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1884480527", "1884480527", "S08M010_Main", "box_Ordered_Output_370.Out", "box_InteractionScriptMonitor_v2_57.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_370_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_368()
  l0 = self.box_InteractionScriptMonitor_v2_368
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1400447840", "1400447840", "S08M010_Main", "box_Ordered_Output_370.Out", "box_InteractionScriptMonitor_v2_368.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_370_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_369()
  l0 = self.box_InteractionScriptMonitor_v2_369
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1308265711", "1308265711", "S08M010_Main", "box_Ordered_Output_370.Out", "box_InteractionScriptMonitor_v2_369.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PhoneCommunicationController_177_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_366
  l0.LMALayerName = self.NudleLowerLMA
  l0 = self.box_PhoneCommunicationController_177
  l1 = self.box_LMA_Layer_Controller_366
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|964186769", "964186769", "S08M010_Main", "box_PhoneCommunicationController_177.StartCommunicationOut", "box_LMA_Layer_Controller_366.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_ListWriter_182_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_182
  l1 = self.box_GameplayInteractionController_165
  l1.Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_165()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1887667020", "1887667020", "S08M010_Main", "box_ListWriter_182.Added", "box_GameplayInteractionController_165.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_182_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_182
  l1 = self.box_GameplayInteractionController_165
  l1.Users = l0.Target
end
function export:f_box_ListWriter_182_Removed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_182
  l1 = self.box_GameplayInteractionController_165
  l1.Users = l0.Target
end
function export:f_box_PlaySequence_v5_69_SPOut__Laptop_Opened_()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_335
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_69
  l1 = self.box_CinematicPrep_335
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|251545523", "251545523", "S08M010_Main", "box_PlaySequence_v5_69.SPOut", "box_CinematicPrep_335.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_PlaySequence_v5_69_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_209()
  l0 = self.box_PlaySequence_v5_69
  l1 = self.box_MultipleOR_209
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|177722067", "177722067", "S08M010_Main", "box_PlaySequence_v5_69.Stopped", "box_MultipleOR_209.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_S08M010_CIN_OnTheBus_Main_189_out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_CIN_OnTheBus_Main_189
  self.NudleBus = l0.bus_out
  self.Horatio = l0.Horatio_Out
  l0 = self.box_VehicleSeatingController_19
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.Horatio
  l0.CanUseBackSeat = 1
  l0.Seat = "RearPassengerLeft"
  l0 = self.box_S08M010_CIN_OnTheBus_Main_189
  l1 = self.box_VehicleSeatingController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|603450812", "603450812", "S08M010_Main", "box_S08M010_CIN_OnTheBus_Main_189.out", "box_VehicleSeatingController_19.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_CinematicPrep_184_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_Checkpoint_85()
  l0 = self.box_CinematicPrep_184
  l1 = self.box_S08M010_Checkpoint_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1712233473", "1712233473", "S08M010_Main", "box_CinematicPrep_184.PostOut", "box_S08M010_Checkpoint_85.GameFlow", l0, l1)
  l1:GameFlow()
end
function export:f_box_PGTController_v2_48_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476430"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_334"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1550390985"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_334_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PGTController_v2_48
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2108229071", "2108229071", "S08M010_Main", "box_PGTController_v2_48.AllSpawned", "box_Media_System_Custom_Broadcast_Controller_334.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_Ordered_Output_58_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_237
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1289554950", "1289554950", "S08M010_Main", "box_Ordered_Output_58.Out", "box_MissionMessageController_v3_237.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_58_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1217895089"
  l0.Out = self.f_box_Simple_Node_235_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|487915269", "487915269", "S08M010_Main", "box_Ordered_Output_58.Out", "box_Simple_Node_235.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_58_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_370"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|358972937"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_370_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_370_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_370_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|201370453", "201370453", "S08M010_Main", "box_Ordered_Output_58.Out", "box_Ordered_Output_370.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_58_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_329"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|587239478"
  l0.Out = self.f_box_Simple_Node_329_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|895161204", "895161204", "S08M010_Main", "box_Ordered_Output_58.Out", "box_Simple_Node_329.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriter_299_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_299
  l1 = self.box_GameplayConversationController_v3_298
  l1.Users = l0.Target
  self:OnEnter_box_GameplayConversationController_v3_298()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1691926746", "1691926746", "S08M010_Main", "box_ListWriter_299.Added", "box_GameplayConversationController_v3_298.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_299_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_299
  l1 = self.box_GameplayConversationController_v3_298
  l1.Users = l0.Target
end
function export:f_box_ListWriter_299_Removed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_299
  l1 = self.box_GameplayConversationController_v3_298
  l1.Users = l0.Target
end
function export:f_box_SetBoolean_v2_98_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_98
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
  l0._name = "box_Lanes_Restrictions_Control_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|298703913"
  l0.Out = self.f_box_Lanes_Restrictions_Control_219_Out
  l0 = self.box_SetBoolean_v2_98
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|164232650", "164232650", "S08M010_Main", "box_SetBoolean_v2_98.Out", "box_Lanes_Restrictions_Control_219.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_98_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_98
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_98_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_98
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_98_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_98
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_98_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_98
  self.DisplayPreObjective = l0.Target
end
function export:f_box_HackableController_v2_26_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_26()
  l0 = self.box_HackableController_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|896346467", "896346467", "S08M010_Main", "box_HackableController_v2_26.Disabled", "box_HackableController_v2_26.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_26_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_99()
  l0 = self.box_HackableController_v2_26
  l1 = self.box_HackableController_v2_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1319744882", "1319744882", "S08M010_Main", "box_HackableController_v2_26.Enabled", "box_HackableController_v2_99.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_HackableController_v2_26_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_99()
  l0 = self.box_HackableController_v2_26
  l1 = self.box_HackableController_v2_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2134608710", "2134608710", "S08M010_Main", "box_HackableController_v2_26.ProfilingDisabled", "box_HackableController_v2_99.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Simple_Node_185_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_309
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState1",
    id = "359144"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1302411341", "1302411341", "S08M010_Main", "box_Simple_Node_185.Out", "box_MissionController_v4_309.Fail", clone, l0)
  l0:Fail()
end
function export:f_box_MoveableEntityController_324_Moved()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.SlidePipe
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_323"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|925221712"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1487678386", "1487678386", "S08M010_Main", "box_MoveableEntityController_324.Moved", "box_InteractionScriptController_323.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_225()
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_TriggerMonitor_v2_225
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1864100910", "1864100910", "S08M010_Main", "box_MissionMessageController_v3_3.Out", "box_TriggerMonitor_v2_225.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMusicController_406_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S08M010_Checkpoint_18()
  l0 = self.box_S08M010_Checkpoint_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1412521251", "1412521251", "S08M010_Main", "box_MissionMusicController_406.Activated", "box_S08M010_Checkpoint_18.Checkpoint", clone, l0)
  l0:Checkpoint()
end
function export:f_box_VehicleSeatingMonitor_363_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_365()
  l0 = self.box_MultipleOR_365
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1105059909", "1105059909", "S08M010_Main", "box_VehicleSeatingMonitor_363.EntityIsInVehicle", "box_MultipleOR_365.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_VehicleSeatingMonitor_363_EntityIsNotInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_364()
  l0 = self.box_VehicleMonitor_v3_364
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1805266569", "1805266569", "S08M010_Main", "box_VehicleSeatingMonitor_363.EntityIsNotInVehicle", "box_VehicleMonitor_v3_364.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_HackableController_v2_418_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_Checkpoint_78()
  l0 = self.box_HackableController_v2_418
  l1 = self.box_S08M010_Checkpoint_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|969646876", "969646876", "S08M010_Main", "box_HackableController_v2_418.Disabled", "box_S08M010_Checkpoint_78.Checkpoint", l0, l1)
  l1:Checkpoint()
end
function export:f_box_SearchArea_40_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_33()
  l0 = self.box_SearchArea_40
  l1 = self.box_TriggerMonitor_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|747803550", "747803550", "S08M010_Main", "box_SearchArea_40.Disabled", "box_TriggerMonitor_v2_33.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SearchArea_40_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_33()
  l0 = self.box_SearchArea_40
  l1 = self.box_TriggerMonitor_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|446068190", "446068190", "S08M010_Main", "box_SearchArea_40.Enabled", "box_TriggerMonitor_v2_33.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_S08M010_Checkpoint_78_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_Checkpoint_78
  self.PlayerEntity = l0.Player
  self:OnEnter_box_HackableController_v2_275()
  l1 = self.box_HackableController_v2_275
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|659151029", "659151029", "S08M010_Main", "box_S08M010_Checkpoint_78.Out", "box_HackableController_v2_275.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_LMA_Layer_Controller_366_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|540655374"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  l0 = self.box_LMA_Layer_Controller_366
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|207039573", "207039573", "S08M010_Main", "box_LMA_Layer_Controller_366.Unloaded", "box_Ordered_Output_23.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_138_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_138
  self.Horatio = l0.UserID
  l0 = self.box_VehicleSeatingController_142
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0 = self.box_CLOController_138
  l1 = self.box_VehicleSeatingController_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|62609605", "62609605", "S08M010_Main", "box_CLOController_138.OnUserInPlace", "box_VehicleSeatingController_142.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_S08M010_SpawnAndAssignCLOtoBus01_294_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus01_294
  self.BusPassengers = l0.PassengerList_Out
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus02_293
  l0.PassengerList_In = self.BusPassengers
  l0.CLO05 = self.CLO_BussPassenger_05
  l0.CLO06 = self.CLO_BussPassenger_06
  l0.CLO07 = self.CLO_BussPassenger_07
  l0.CLO08 = self.CLO_BussPassenger_08
  l0.BusVehicle = self.NudleBus
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus01_294
  l1 = self.box_S08M010_SpawnAndAssignCLOtoBus02_293
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|111227962", "111227962", "S08M010_Main", "box_S08M010_SpawnAndAssignCLOtoBus01_294.Completed", "box_S08M010_SpawnAndAssignCLOtoBus02_293.Start", l0, l1)
  l1:Start()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_233_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S08M010_Checkpoint_5()
  l0 = self.box_S08M010_Checkpoint_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|473152642", "473152642", "S08M010_Main", "box_Media_System_Custom_Broadcast_Controller_233.LoadAndPlayRequested", "box_S08M010_Checkpoint_5.Checkpoint", clone, l0)
  l0:Checkpoint()
end
function export:f_box_Ordered_Output_181_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Delivery_Gameplay_38()
  l0 = self.box_Delivery_Gameplay_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1844335903", "1844335903", "S08M010_Main", "box_Ordered_Output_181.Out", "box_Delivery_Gameplay_38.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_181_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2056334461", "2056334461", "S08M010_Main", "box_Ordered_Output_181.Out", "box_OnceOnly_v3_108.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_181_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ConversationStarted
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_381"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1056921476"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_381_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1929629962", "1929629962", "S08M010_Main", "box_Ordered_Output_181.Out", "box_Compare_Boolean_v2_381.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_155_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|697934255"
  l0.Out = self.f_box_Get_Player_ID_157_Out
  l0 = self.box_MissionLayer_v2_155
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|40126972", "40126972", "S08M010_Main", "box_MissionLayer_v2_155.Loaded", "box_Get_Player_ID_157.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_380_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_380
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_380_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_380
  self.ConversationStarted = l0.Target
  self:OnEnter_box_S08M010_Bus_Drive_7()
  l1 = self.box_S08M010_Bus_Drive_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1659650781", "1659650781", "S08M010_Main", "box_SetBoolean_v2_380.SetFalse", "box_S08M010_Bus_Drive_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_380_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_380
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_380_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_380
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_380_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_380
  self.ConversationStarted = l0.Target
end
function export:f_box_Delivery_Gameplay_338_AllDeliveryCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.PlayerEntity
  l0.Vehicle = self.NudleBus
  l0._graph = self
  l0._name = "box_VehicleSeatingMonitor_353"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|55580155"
  l0.EntityIsInVehicle = self.f_box_VehicleSeatingMonitor_353_EntityIsInVehicle
  l0.EntityIsNotInVehicle = self.f_box_VehicleSeatingMonitor_353_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0 = self.box_Delivery_Gameplay_338
  l1 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|75794701", "75794701", "S08M010_Main", "box_Delivery_Gameplay_338.AllDeliveryCompleted", "box_VehicleSeatingMonitor_353.IsInVehicle", l0, l1)
  l1:IsInVehicle()
end
function export:f_box_Interact_Gameplay_304_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_311()
  l0 = self.box_Interact_Gameplay_304
  l1 = self.box_VehicleMonitor_v3_311
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1171837449", "1171837449", "S08M010_Main", "box_Interact_Gameplay_304.Started", "box_VehicleMonitor_v3_311.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Interact_Gameplay_304_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_311()
  l0 = self.box_Interact_Gameplay_304
  l1 = self.box_VehicleMonitor_v3_311
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1865423367", "1865423367", "S08M010_Main", "box_Interact_Gameplay_304.Stopped", "box_VehicleMonitor_v3_311.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MoveableEntityController_332_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_FlushPanel_0
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_324"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|406261081"
  l0.Moved = self.f_box_MoveableEntityController_324_Moved
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1103977014", "1103977014", "S08M010_Main", "box_MoveableEntityController_332.Out", "box_MoveableEntityController_324.Move", clone, l0)
  l0:Move()
end
function export:f_box_MoveableEntityController_55_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_Server_Row6FrontDoor
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|313721313"
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
  l0.Out = self.f_box_MoveableEntityController_106_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1039664039", "1039664039", "S08M010_Main", "box_MoveableEntityController_55.Out", "box_MoveableEntityController_106.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_TriggerMonitor_v2_28_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_Checkpoint_36()
  l0 = self.box_TriggerMonitor_v2_28
  l1 = self.box_S08M010_Checkpoint_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1017803681", "1017803681", "S08M010_Main", "box_TriggerMonitor_v2_28.Disabled", "box_S08M010_Checkpoint_36.GameFlow", l0, l1)
  l1:GameFlow()
end
function export:f_box_TriggerMonitor_v2_28_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1380378276"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_141_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_141_Out_1
  l0 = self.box_TriggerMonitor_v2_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1589807349", "1589807349", "S08M010_Main", "box_TriggerMonitor_v2_28.Enter", "box_Ordered_Output_141.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_172_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_8()
  l0 = self.box_TriggerMonitor_v2_172
  l1 = self.box_MapPointController_v4_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1286434066", "1286434066", "S08M010_Main", "box_TriggerMonitor_v2_172.Disabled", "box_MapPointController_v4_8.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_172_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_61()
  l0 = self.box_TriggerMonitor_v2_172
  l1 = self.box_TriggerMonitor_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1065556890", "1065556890", "S08M010_Main", "box_TriggerMonitor_v2_172.Enter", "box_TriggerMonitor_v2_61.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionMessageController_v3_256_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_261"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1621223973"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_261_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_261_Out_1
  l0 = self.box_MissionMessageController_v3_256
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1723076611", "1723076611", "S08M010_Main", "box_MissionMessageController_v3_256.Out", "box_Ordered_Output_261.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_61_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_95()
  l0 = self.box_TriggerMonitor_v2_61
  l1 = self.box_TriggerMonitor_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1352826477", "1352826477", "S08M010_Main", "box_TriggerMonitor_v2_61.Disabled", "box_TriggerMonitor_v2_95.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_61_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_95()
  l0 = self.box_TriggerMonitor_v2_61
  l1 = self.box_TriggerMonitor_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1905919251", "1905919251", "S08M010_Main", "box_TriggerMonitor_v2_61.Enabled", "box_TriggerMonitor_v2_95.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_61_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_61
  l1 = self.box_OnceOnly_v3_170
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|307182481", "307182481", "S08M010_Main", "box_TriggerMonitor_v2_61.Enter", "box_OnceOnly_v3_170.In", l0, l1)
  l1:In(0)
end
function export:f_box_AI_Buddy_Controller_287_IsFollowing()
  local l0, l1
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
  l0._name = "box_Lanes_Restrictions_Control_264"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|983507759"
  l0.Out = self.f_box_Lanes_Restrictions_Control_264_Out
  l0 = self.box_AI_Buddy_Controller_287
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|429225185", "429225185", "S08M010_Main", "box_AI_Buddy_Controller_287.IsFollowing", "box_Lanes_Restrictions_Control_264.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_251_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_251
  l1 = self.box_SetBoolean_v2_263
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|505755520", "505755520", "S08M010_Main", "box_OnceOnly_v3_251.Out", "box_SetBoolean_v2_263.False", l0, l1)
  l1:False()
end
function export:f_box_Timer_v2_188_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_295
  l0.UserList = self.BusPassengers
  l0 = self.box_Timer_v2_188
  l1 = self.box_CLOController_295
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|916194973", "916194973", "S08M010_Main", "box_Timer_v2_188.TimeElapsed", "box_CLOController_295.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_MissionMessageController_v3_268_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_253()
  l0 = self.box_MissionMessageController_v3_268
  l1 = self.box_TimerToScreen_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|545251361", "545251361", "S08M010_Main", "box_MissionMessageController_v3_268.Out", "box_TimerToScreen_253.Start", l0, l1)
  l1:Start()
end
function export:f_box_Teleport_To_SpawnPoint_271_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_47
  l0.CLO = self.CLO_HoratioBuddy
  l0 = self.box_Teleport_To_SpawnPoint_271
  l1 = self.box_CLOController_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1519748798", "1519748798", "S08M010_Main", "box_Teleport_To_SpawnPoint_271.TeleportDone", "box_CLOController_47.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_OnceOnly_v3_234_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_35
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.Horatio
  l0.CanUseBackSeat = 1
  l0.Seat = "RearPassengerLeft"
  l0 = self.box_OnceOnly_v3_234
  l1 = self.box_VehicleSeatingController_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|329552609", "329552609", "S08M010_Main", "box_OnceOnly_v3_234.Out", "box_VehicleSeatingController_35.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Vehicle_Controller_305_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_317
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective3",
    id = "359131"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1386799202", "1386799202", "S08M010_Main", "box_Vehicle_Controller_305.Unusable", "box_MissionMessageController_v3_317.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Player_Conflict_Monitor_44_InConflict()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_51
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0 = self.box_Player_Conflict_Monitor_44
  l1 = self.box_PlaySound_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|197074518", "197074518", "S08M010_Main", "box_Player_Conflict_Monitor_44.InConflict", "box_PlaySound_v2_51.Play", l0, l1)
  l1:Play()
end
function export:f_box_Player_Conflict_Monitor_44_NOTInConflict()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_89
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_Player_Conflict_Monitor_44
  l1 = self.box_PlaySound_v2_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|412393166", "412393166", "S08M010_Main", "box_Player_Conflict_Monitor_44.NOTInConflict", "box_PlaySound_v2_89.Play", l0, l1)
  l1:Play()
end
function export:f_box_Delivery_Gameplay_49_AllDeliveryCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.PlayerEntity
  l0.Vehicle = self.NudleBus
  l0._graph = self
  l0._name = "box_VehicleSeatingMonitor_363"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|416139595"
  l0.EntityIsInVehicle = self.f_box_VehicleSeatingMonitor_363_EntityIsInVehicle
  l0.EntityIsNotInVehicle = self.f_box_VehicleSeatingMonitor_363_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0 = self.box_Delivery_Gameplay_49
  l1 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1583492508", "1583492508", "S08M010_Main", "box_Delivery_Gameplay_49.AllDeliveryCompleted", "box_VehicleSeatingMonitor_363.IsInVehicle", l0, l1)
  l1:IsInVehicle()
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_14
  l0.Text = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.EXTRA.Download Feedback",
    item = "Specific_Download",
    id = "688731"
  }
  l0.TotalTime = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1110224920", "1110224920", "S08M010_Main", "box_Ordered_Output_59.Out", "box_DistanceBasedProgressBarController_v2_14.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_24
  l0.LayerName = self.Layer_ServerFarmDump
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1999182203", "1999182203", "S08M010_Main", "box_Ordered_Output_59.Out", "box_MissionLayer_v2_24.Load", clone, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Lanes_Restrictions_Control_436"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|21484280"
  l0.Out = self.f_box_Lanes_Restrictions_Control_436_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|87387629", "87387629", "S08M010_Main", "box_Ordered_Output_23.Out", "box_Lanes_Restrictions_Control_436.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_367
  l0.LMALayerName = self.NudleUpperLMA
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|509065736", "509065736", "S08M010_Main", "box_Ordered_Output_23.Out", "box_LMA_Layer_Controller_367.Load", clone, l0)
  l0:Load()
end
function export:f_box_CinematicPrep_68_PreOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_53()
  l0 = self.box_CinematicPrep_68
  l1 = self.box_PlaySequence_v5_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|562160685", "562160685", "S08M010_Main", "box_CinematicPrep_68.PreOut", "box_PlaySequence_v5_53.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Simple_Node_318_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_314
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState4",
    id = "625591"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1930968098", "1930968098", "S08M010_Main", "box_Simple_Node_318.Out", "box_MissionController_v4_314.Fail", clone, l0)
  l0:Fail()
end
function export:f_box_Player_State_Controller_274_ClimbInteractionAllowedReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1140377041"
  l0.CalledBack = self.f_box_Toy_Car_Controller_87_CalledBack
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1511009953", "1511009953", "S08M010_Main", "box_Player_State_Controller_274.ClimbInteractionAllowedReset", "box_Toy_Car_Controller_87.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_MissionMusicController_254_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S08M010_Checkpoint_85()
  l0 = self.box_S08M010_Checkpoint_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|568960614", "568960614", "S08M010_Main", "box_MissionMusicController_254.Activated", "box_S08M010_Checkpoint_85.Checkpoint", clone, l0)
  l0:Checkpoint()
end
function export:f_box_Compare_Boolean_v2_382_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayConversationController_v3_60()
  l0 = self.box_GameplayConversationController_v3_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|61807087", "61807087", "S08M010_Main", "box_Compare_Boolean_v2_382.A_is_True", "box_GameplayConversationController_v3_60.Resume", clone, l0)
  l0:Resume()
end
function export:f_box_Timer_v2_411_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_410()
  l0 = self.box_Timer_v2_411
  l1 = self.box_TutorialController_410
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1073845182", "1073845182", "S08M010_Main", "box_Timer_v2_411.Stopped", "box_TutorialController_410.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Timer_v2_411_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_410()
  l0 = self.box_Timer_v2_411
  l1 = self.box_TutorialController_410
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|283441144", "283441144", "S08M010_Main", "box_Timer_v2_411.TimeElapsed", "box_TutorialController_410.Display", l0, l1)
  l1:Display()
end
function export:f_box_Toy_Car_Controller_244_CalledBack()
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
  l0._name = "box_Flying_Drone_Controller_243"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1566136748"
  l0.CalledBack = self.f_box_Flying_Drone_Controller_243_CalledBack
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|334563289", "334563289", "S08M010_Main", "box_Toy_Car_Controller_244.CalledBack", "box_Flying_Drone_Controller_243.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_PlaySound_v2_152_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372072446567155"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = 1
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_200"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1945266471"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_152
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|673404193", "673404193", "S08M010_Main", "box_PlaySound_v2_152.Finished", "box_MissionMusicController_200.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_PlaySound_v2_152_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_196
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySound_v2_152
  l1 = self.box_CinematicPrep_196
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1365320725", "1365320725", "S08M010_Main", "box_PlaySound_v2_152.Out", "box_CinematicPrep_196.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_Simple_Node_329_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669158"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_385"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2139404806"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1791258995", "1791258995", "S08M010_Main", "box_Simple_Node_329.Out", "box_MissionMusicController_385.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_OnceOnly_v3_371_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_50
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050140505935"
  l0 = self.box_OnceOnly_v3_371
  l1 = self.box_PhoneCommunicationController_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1616824741", "1616824741", "S08M010_Main", "box_OnceOnly_v3_371.Out", "box_PhoneCommunicationController_50.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Timer_v2_322_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_CoolingTankPanel_0
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_328"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|732971584"
  l0.Moved = self.f_box_MoveableEntityController_328_Moved
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
  l0 = self.box_Timer_v2_322
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|494893539", "494893539", "S08M010_Main", "box_Timer_v2_322.TimeElapsed", "box_MoveableEntityController_328.Move", l0, l1)
  l1:Move()
end
function export:f_box_Ordered_Output_297_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_262
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1180439781", "1180439781", "S08M010_Main", "box_Ordered_Output_297.Out", "box_CinematicPrep_262.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_Ordered_Output_297_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Conflict_Monitor_300()
  l0 = self.box_Player_Conflict_Monitor_300
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|338733148", "338733148", "S08M010_Main", "box_Ordered_Output_297.Out", "box_Player_Conflict_Monitor_300.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_297_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_431
  l0.Entity = self.NudleBus
  l0.SoundId = "soundbinary/4008843676.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|159481008", "159481008", "S08M010_Main", "box_Ordered_Output_297.Out", "box_PlaySound_v2_431.Play", clone, l0)
  l0:Play()
end
function export:f_box_ListWriter_67_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_67
  self.ServerFarm_VR = l0.Target
  self:OnEnter_box_Hackable_Monitor_73()
  l1 = self.box_Hackable_Monitor_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1442813356", "1442813356", "S08M010_Main", "box_ListWriter_67.Added", "box_Hackable_Monitor_73.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_67_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_67
  self.ServerFarm_VR = l0.Target
end
function export:f_box_ListWriter_67_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_67
  self.ServerFarm_VR = l0.Target
end
function export:f_box_Ordered_Output_74_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Delivery_Gameplay_49()
  l0 = self.box_Delivery_Gameplay_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1183286355", "1183286355", "S08M010_Main", "box_Ordered_Output_74.Out", "box_Delivery_Gameplay_49.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_74_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1296510167", "1296510167", "S08M010_Main", "box_Ordered_Output_74.Out", "box_OnceOnly_v3_65.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_74_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ConversationStarted
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_382"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|571133418"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_382_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1188730908", "1188730908", "S08M010_Main", "box_Ordered_Output_74.Out", "box_Compare_Boolean_v2_382.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriter_417_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_417
  self.HackableEntities = l0.Target
  l0 = self.box_HackableController_v2_418
  l0.HackableEntityList = self.HackableEntities
  l0 = self.box_ListWriter_417
  l1 = self.box_HackableController_v2_418
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|660463014", "660463014", "S08M010_Main", "box_ListWriter_417.Added", "box_HackableController_v2_418.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_417_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_417
  self.HackableEntities = l0.Target
end
function export:f_box_ListWriter_417_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_417
  self.HackableEntities = l0.Target
end
function export:f_box_VehicleMonitor_v3_307_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_302()
  l0 = self.box_VehicleMonitor_v3_307
  l1 = self.box_PawnHealthMonitor_v3_302
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|795177175", "795177175", "S08M010_Main", "box_VehicleMonitor_v3_307.Disabled", "box_PawnHealthMonitor_v3_302.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_VehicleMonitor_v3_307_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_302()
  l0 = self.box_VehicleMonitor_v3_307
  l1 = self.box_PawnHealthMonitor_v3_302
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1729629400", "1729629400", "S08M010_Main", "box_VehicleMonitor_v3_307.Enabled", "box_PawnHealthMonitor_v3_302.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v3_307_IsUnusable()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|404244321"
  l0.Out = self.f_box_Simple_Node_185_Out
  l0 = self.box_VehicleMonitor_v3_307
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1211399388", "1211399388", "S08M010_Main", "box_VehicleMonitor_v3_307.IsUnusable", "box_Simple_Node_185.In", l0, l1)
  l1:In()
end
function export:f_box_Lanes_Restrictions_Control_281_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Cinema_Zone_Cleanup_419"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1336993290"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_419_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|368977491", "368977491", "S08M010_Main", "box_Lanes_Restrictions_Control_281.Out", "box_Cinema_Zone_Cleanup_419.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_MissionLayer_v2_125_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_76
  l0.PGTMissionArea = self.PGTArea
  l0 = self.box_MissionLayer_v2_125
  l1 = self.box_PGTController_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|248898865", "248898865", "S08M010_Main", "box_MissionLayer_v2_125.Loaded", "box_PGTController_v2_76.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_198_PostOut()
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
  l0._name = "box_Media_System_Custom_Broadcast_Controller_344"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1615799785"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = self.f_box_Media_System_Custom_Broadcast_Controller_344_EndedAllCustomMediaBroadcasts
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CinematicPrep_198
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|320838439", "320838439", "S08M010_Main", "box_CinematicPrep_198.PostOut", "box_Media_System_Custom_Broadcast_Controller_344.EndAllCustomMediaBroadcasts", l0, l1)
  l1:EndAllCustomMediaBroadcasts()
end
function export:f_box_Timer_v2_100_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_46
  l0.SceneEntity = "9223372050139325985"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_LimpNudle-Dusan-FS_VID/s08_limpnudle-dusan-fs_vid.seq"
  l0 = self.box_Timer_v2_100
  l1 = self.box_PlaySequence_v5_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|641541429", "641541429", "S08M010_Main", "box_Timer_v2_100.TimeElapsed", "box_PlaySequence_v5_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_157_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_175
  l0.CLO = self.CLO_NudleBus_AtBusStop_Downtown
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1230135888", "1230135888", "S08M010_Main", "box_Get_Player_ID_157.Out", "box_CLOController_175.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_TriggerMonitor_v2_41_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_31
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049908898922"
  l0 = self.box_TriggerMonitor_v2_41
  l1 = self.box_PhoneCommunicationController_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|103153544", "103153544", "S08M010_Main", "box_TriggerMonitor_v2_41.Disabled", "box_PhoneCommunicationController_31.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_TriggerMonitor_v2_41_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_41()
  l0 = self.box_TriggerMonitor_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|796739462", "796739462", "S08M010_Main", "box_TriggerMonitor_v2_41.Enter", "box_TriggerMonitor_v2_41.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_415_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_16
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective060",
    item = "SubObjective3",
    id = "359142"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|587448977", "587448977", "S08M010_Main", "box_Ordered_Output_415.Out", "box_MissionMessageController_v3_16.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_Ordered_Output_415_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_416()
  l0 = self.box_MultipleOR_416
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1092797382", "1092797382", "S08M010_Main", "box_Ordered_Output_415.Out", "box_MultipleOR_416.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_S08M010_Checkpoint_86_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_Checkpoint_86
  self.PlayerEntity = l0.Player
  l0 = self.box_CinematicPrep_223
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_S08M010_Checkpoint_86
  l1 = self.box_CinematicPrep_223
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1010159933", "1010159933", "S08M010_Main", "box_S08M010_Checkpoint_86.Out", "box_CinematicPrep_223.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_VehicleSeatingController_255_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_285
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.Horatio
  l0.CanUseBackSeat = 1
  l0.Seat = "RearPassengerLeft"
  l0 = self.box_VehicleSeatingController_255
  l1 = self.box_VehicleSeatingController_285
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1086193153", "1086193153", "S08M010_Main", "box_VehicleSeatingController_255.AssignCompleted", "box_VehicleSeatingController_285.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Lanes_Restrictions_Control_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476430"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1075827451"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_252_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1039892756", "1039892756", "S08M010_Main", "box_Lanes_Restrictions_Control_11.Out", "box_Media_System_Custom_Broadcast_Controller_252.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_PlaySequence_v5_279_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_258()
  l0 = self.box_PlaySequence_v5_279
  l1 = self.box_OnceOnly_v3_258
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1019716345", "1019716345", "S08M010_Main", "box_PlaySequence_v5_279.Finished", "box_OnceOnly_v3_258.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_279_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_258()
  l0 = self.box_PlaySequence_v5_279
  l1 = self.box_OnceOnly_v3_258
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|639713721", "639713721", "S08M010_Main", "box_PlaySequence_v5_279.Skipped", "box_OnceOnly_v3_258.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_279_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_279
  self.Horatio = l0.EntityOut.Horatio
  self.NudleBus = l0.EntityOut.Bus
end
function export:f_box_MoveableEntityController_328_Moved()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_321
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|580349865", "580349865", "S08M010_Main", "box_MoveableEntityController_328.Moved", "box_Timer_v2_321.Start", clone, l0)
  l0:Start()
end
function export:f_box_InputListener_Monitor_214_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_211()
  l0 = self.box_InputListener_Monitor_214
  l1 = self.box_MapPointController_v4_211
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|410054318", "410054318", "S08M010_Main", "box_InputListener_Monitor_214.Disabled", "box_MapPointController_v4_211.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_InputListener_Monitor_214_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_211()
  l0 = self.box_InputListener_Monitor_214
  l1 = self.box_MapPointController_v4_211
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|795872196", "795872196", "S08M010_Main", "box_InputListener_Monitor_214.Enabled", "box_MapPointController_v4_211.Show", l0, l1)
  l1:Show()
end
function export:f_box_InputListener_Monitor_214_InputReceived()
  local l0, l1
  self = self._graph
  l0 = self.box_InputListener_Monitor_214
  l1 = self.box_OnceOnly_v3_218
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|959754645", "959754645", "S08M010_Main", "box_InputListener_Monitor_214.InputReceived", "box_OnceOnly_v3_218.In", l0, l1)
  l1:In(0)
end
function export:f_box_MissionMessageController_v3_342_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_LocateTheCentralServer_42()
  l0 = self.box_MissionMessageController_v3_342
  l1 = self.box_S08M010_LocateTheCentralServer_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|648685022", "648685022", "S08M010_Main", "box_MissionMessageController_v3_342.Out", "box_S08M010_LocateTheCentralServer_42.Start", l0, l1)
  l1:Start()
end
function export:f_box_Flying_Drone_Controller_80_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Player_State_Controller_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1333035610"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_222_MaxSpeedSet
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1859256660", "1859256660", "S08M010_Main", "box_Flying_Drone_Controller_80.CalledBack", "box_Player_State_Controller_222.SetMaxSpeed", clone, l0)
  l0:SetMaxSpeed()
end
function export:f_box_VehicleMonitor_v3_361_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_362()
  l0 = self.box_VehicleMonitor_v3_361
  l1 = self.box_MultipleOR_362
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|37055766", "37055766", "S08M010_Main", "box_VehicleMonitor_v3_361.Disabled", "box_MultipleOR_362.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_361_Entered()
  local l0
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_361()
  l0 = self.box_VehicleMonitor_v3_361
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2014987044", "2014987044", "S08M010_Main", "box_VehicleMonitor_v3_361.Entered", "box_VehicleMonitor_v3_361.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_146_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.NudleBus
  l0._graph = self
  l0._name = "box_Vehicle_Controller_305"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|523161382"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Vehicle_Controller_305_Unusable
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|938604532", "938604532", "S08M010_Main", "box_Simple_Node_146.Out", "box_Vehicle_Controller_305.SetAsUnusable", clone, l0)
  l0:SetAsUnusable()
end
function export:f_box_Simple_Node_145_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_158()
  l0 = self.box_MultipleOR_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|466841993", "466841993", "S08M010_Main", "box_Simple_Node_145.Out", "box_MultipleOR_158.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_S08M010_Checkpoint_36_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_Checkpoint_36
  self.PlayerEntity = l0.Player
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1643198990"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_203_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_203_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_203_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_203_Out_3
  l0 = self.box_S08M010_Checkpoint_36
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1703271456", "1703271456", "S08M010_Main", "box_S08M010_Checkpoint_36.Out", "box_Ordered_Output_203.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_191_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_Checkpoint_284()
  l0 = self.box_CinematicPrep_191
  l1 = self.box_S08M010_Checkpoint_284
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1535020522", "1535020522", "S08M010_Main", "box_CinematicPrep_191.PostOut", "box_S08M010_Checkpoint_284.GameFlow", l0, l1)
  l1:GameFlow()
end
function export:f_box_VehicleMonitor_v3_311_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_Buddy_Controller_312
  l0.NPC = self.Horatio
  l0 = self.box_VehicleMonitor_v3_311
  l1 = self.box_AI_Buddy_Controller_312
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1782901823", "1782901823", "S08M010_Main", "box_VehicleMonitor_v3_311.Enter", "box_AI_Buddy_Controller_312.Wait", l0, l1)
  l1:Wait()
end
function export:f_box_PawnHealthMonitor_v3_302_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_303()
  l0 = self.box_PawnHealthMonitor_v3_302
  l1 = self.box_OnceOnly_v3_303
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1170514675", "1170514675", "S08M010_Main", "box_PawnHealthMonitor_v3_302.DBNO", "box_OnceOnly_v3_303.In", l0, l1)
  l1:In(1)
end
function export:f_box_PawnHealthMonitor_v3_302_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AI_Buddy_Monitor_308()
  l0 = self.box_PawnHealthMonitor_v3_302
  l1 = self.box_AI_Buddy_Monitor_308
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|331665433", "331665433", "S08M010_Main", "box_PawnHealthMonitor_v3_302.Disabled", "box_AI_Buddy_Monitor_308.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PawnHealthMonitor_v3_302_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AI_Buddy_Monitor_308()
  l0 = self.box_PawnHealthMonitor_v3_302
  l1 = self.box_AI_Buddy_Monitor_308
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|117027531", "117027531", "S08M010_Main", "box_PawnHealthMonitor_v3_302.Enabled", "box_AI_Buddy_Monitor_308.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PawnHealthMonitor_v3_302_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_303()
  l0 = self.box_PawnHealthMonitor_v3_302
  l1 = self.box_OnceOnly_v3_303
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1990679134", "1990679134", "S08M010_Main", "box_PawnHealthMonitor_v3_302.Killed", "box_OnceOnly_v3_303.In", l0, l1)
  l1:In(0)
end
function export:f_box_Timer_v2_102_TimeElapsed()
  local l0, l1
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
  l0._name = "box_Lanes_Restrictions_Control_281"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|672567192"
  l0.Out = self.f_box_Lanes_Restrictions_Control_281_Out
  l0 = self.box_Timer_v2_102
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1887385531", "1887385531", "S08M010_Main", "box_Timer_v2_102.TimeElapsed", "box_Lanes_Restrictions_Control_281.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_71_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_130()
  l0 = self.box_MultipleOR_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1816714523", "1816714523", "S08M010_Main", "box_Simple_Node_71.Out", "box_MultipleOR_130.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MoveableEntityController_391_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_Server_Row6Backdoor
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|463716486"
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
  l0.Out = self.f_box_MoveableEntityController_55_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|626637858", "626637858", "S08M010_Main", "box_MoveableEntityController_391.Out", "box_MoveableEntityController_55.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_SetBoolean_v2_263_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_263
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_263_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_263
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_263_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_263
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_263_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_263
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_263_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_263
  self.DisplayPreObjective = l0.Target
end
function export:f_box_OnceOnly_v3_166_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_171
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048120064783"
  l0 = self.box_OnceOnly_v3_166
  l1 = self.box_PhoneCommunicationController_171
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2006807923", "2006807923", "S08M010_Main", "box_OnceOnly_v3_166.Out", "box_PhoneCommunicationController_171.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_269_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HasNudleMapAccess
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|197620372"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_39_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_39_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_269
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1246431715", "1246431715", "S08M010_Main", "box_MultipleOR_269.Out", "box_Compare_Boolean_v2_39.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_290_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S08M010_Checkpoint_86()
  l0 = self.box_S08M010_Checkpoint_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1850767237", "1850767237", "S08M010_Main", "box_Ordered_Output_290.Out", "box_S08M010_Checkpoint_86.GameFlow", clone, l0)
  l0:GameFlow()
end
function export:f_box_Ordered_Output_290_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetMonitor_247()
  l0 = self.box_FelonyTargetMonitor_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|453411442", "453411442", "S08M010_Main", "box_Ordered_Output_290.Out", "box_FelonyTargetMonitor_247.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_290_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_402"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1442490318"
  l0.Out = self.f_box_Simple_Node_402_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|658494434", "658494434", "S08M010_Main", "box_Ordered_Output_290.Out", "box_Simple_Node_402.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_273_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_246
  l0.CLO = self.CLO_Bus_ParkingLot
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1902194065", "1902194065", "S08M010_Main", "box_Get_Player_ID_273.Out", "box_CLOController_246.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_TriggerMonitor_v2_33_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_392"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1879742251"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_392_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_392_Out_1
  l0 = self.box_TriggerMonitor_v2_33
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1035920679", "1035920679", "S08M010_Main", "box_TriggerMonitor_v2_33.Disabled", "box_Ordered_Output_392.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_33_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SearchArea_40()
  l0 = self.box_TriggerMonitor_v2_33
  l1 = self.box_SearchArea_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1651175397", "1651175397", "S08M010_Main", "box_TriggerMonitor_v2_33.Enter", "box_SearchArea_40.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Network_Surfing_Monitor_412_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_411()
  l0 = self.box_Network_Surfing_Monitor_412
  l1 = self.box_Timer_v2_411
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1219700764", "1219700764", "S08M010_Main", "box_Network_Surfing_Monitor_412.Disabled", "box_Timer_v2_411.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Network_Surfing_Monitor_412_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_411()
  l0 = self.box_Network_Surfing_Monitor_412
  l1 = self.box_Timer_v2_411
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1446086893", "1446086893", "S08M010_Main", "box_Network_Surfing_Monitor_412.Enabled", "box_Timer_v2_411.Start", l0, l1)
  l1:Start()
end
function export:f_box_Network_Surfing_Monitor_412_OnNetworkSurfingActivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_416()
  l0 = self.box_Network_Surfing_Monitor_412
  l1 = self.box_MultipleOR_416
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1589861188", "1589861188", "S08M010_Main", "box_Network_Surfing_Monitor_412.OnNetworkSurfingActivated", "box_MultipleOR_416.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_341_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_29()
  l0 = self.box_MissionMessageController_v3_341
  l1 = self.box_Interact_Gameplay_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1383818659", "1383818659", "S08M010_Main", "box_MissionMessageController_v3_341.Out", "box_Interact_Gameplay_29.Start", l0, l1)
  l1:Start()
end
function export:f_box_S08M010_CIN_NudleDump_Main_131_out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_100
  l0.Seconds = 4
  l0 = self.box_S08M010_CIN_NudleDump_Main_131
  l1 = self.box_Timer_v2_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2042895131", "2042895131", "S08M010_Main", "box_S08M010_CIN_NudleDump_Main_131.out", "box_Timer_v2_100.Start", l0, l1)
  l1:Start()
end
function export:f_box_TimerToScreen_30_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_20
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState2",
    id = "359306"
  }
  l0 = self.box_TimerToScreen_30
  l1 = self.box_MissionController_v4_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1469878117", "1469878117", "S08M010_Main", "box_TimerToScreen_30.TimeElapsed", "box_MissionController_v4_20.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_MultipleOR_289_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reach_Gameplay_226()
  l0 = self.box_MultipleOR_289
  l1 = self.box_Reach_Gameplay_226
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|714635557", "714635557", "S08M010_Main", "box_MultipleOR_289.Out", "box_Reach_Gameplay_226.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_SetBoolean_v2_379_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_379
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_379_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_379
  self.ConversationStarted = l0.Target
  self:OnEnter_box_S08M010_Bus_Drive_192()
  l1 = self.box_S08M010_Bus_Drive_192
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|772553540", "772553540", "S08M010_Main", "box_SetBoolean_v2_379.SetFalse", "box_S08M010_Bus_Drive_192.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_379_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_379
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_379_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_379
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_379_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_379
  self.ConversationStarted = l0.Target
end
function export:f_box_Media_System_Custom_Broadcast_Controller_267_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S08M010_Checkpoint_66()
  l0 = self.box_S08M010_Checkpoint_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|929028486", "929028486", "S08M010_Main", "box_Media_System_Custom_Broadcast_Controller_267.LoadAndPlayRequested", "box_S08M010_Checkpoint_66.Checkpoint", clone, l0)
  l0:Checkpoint()
end
function export:f_box_Ordered_Output_195_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayConversationController_v3_298()
  l0 = self.box_GameplayConversationController_v3_298
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|566321315", "566321315", "S08M010_Main", "box_Ordered_Output_195.Out", "box_GameplayConversationController_v3_298.Pause", clone, l0)
  l0:Pause()
end
function export:f_box_Ordered_Output_195_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimerToScreen_153()
  l0 = self.box_TimerToScreen_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|179299936", "179299936", "S08M010_Main", "box_Ordered_Output_195.Out", "box_TimerToScreen_153.Start", clone, l0)
  l0:Start()
end
function export:f_box_VehicleSeatingController_63_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_435()
  l0 = self.box_VehicleSeatingController_63
  l1 = self.box_OnceOnly_v3_435
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|513784859", "513784859", "S08M010_Main", "box_VehicleSeatingController_63.AbortMoveAndUseSeat", "box_OnceOnly_v3_435.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_63_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_435()
  l0 = self.box_VehicleSeatingController_63
  l1 = self.box_OnceOnly_v3_435
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1919104310", "1919104310", "S08M010_Main", "box_VehicleSeatingController_63.AssignCompleted", "box_OnceOnly_v3_435.In", l0, l1)
  l1:In(0)
end
function export:f_box_HackableController_v2_413_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_286
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective060",
    item = "SubObjective3",
    id = "359142"
  }
  l0 = self.box_HackableController_v2_413
  l1 = self.box_MissionMessageController_v3_286
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|592911520", "592911520", "S08M010_Main", "box_HackableController_v2_413.Disabled", "box_MissionMessageController_v3_286.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Timer_v2_321_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_FlushPanel_1
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_332"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|461353143"
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
  l0.Out = self.f_box_MoveableEntityController_332_Out
  l0 = self.box_Timer_v2_321
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1112763796", "1112763796", "S08M010_Main", "box_Timer_v2_321.TimeElapsed", "box_MoveableEntityController_332.MoveForward", l0, l1)
  l1:MoveForward()
end
function export:f_box_Ordered_Output_180_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_ServerFarm_AccessCodeDoor
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_391"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|813118622"
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
  l0.Out = self.f_box_MoveableEntityController_391_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|306754883", "306754883", "S08M010_Main", "box_Ordered_Output_180.Out", "box_MoveableEntityController_391.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_Ordered_Output_180_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_41()
  l0 = self.box_TriggerMonitor_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1216174645", "1216174645", "S08M010_Main", "box_Ordered_Output_180.Out", "box_TriggerMonitor_v2_41.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_180_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_404"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|337354830"
  l0.Out = self.f_box_Simple_Node_404_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1701402018", "1701402018", "S08M010_Main", "box_Ordered_Output_180.Out", "box_Simple_Node_404.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleSeatingController_347_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_347
  l1 = self.box_Timer_v2_183
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1768157185", "1768157185", "S08M010_Main", "box_VehicleSeatingController_347.Assigned", "box_Timer_v2_183.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_437_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_Checkpoint_284()
  l0 = self.box_OnceOnly_v3_437
  l1 = self.box_S08M010_Checkpoint_284
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|751484134", "751484134", "S08M010_Main", "box_OnceOnly_v3_437.Out", "box_S08M010_Checkpoint_284.Checkpoint", l0, l1)
  l1:Checkpoint()
end
function export:f_box_S08M010_LocateTheCentralServer_42_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_415"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|706936585"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_415_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_415_Out_1
  l0 = self.box_S08M010_LocateTheCentralServer_42
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1231705134", "1231705134", "S08M010_Main", "box_S08M010_LocateTheCentralServer_42.Disabled", "box_Ordered_Output_415.In", l0, l1)
  l1:In()
end
function export:f_box_S08M010_LocateTheCentralServer_42_Located()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SearchArea_133()
  l0 = self.box_S08M010_LocateTheCentralServer_42
  l1 = self.box_SearchArea_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1673291871", "1673291871", "S08M010_Main", "box_S08M010_LocateTheCentralServer_42.Located", "box_SearchArea_133.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionMessageController_v3_286_Out()
  local l0, l1
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
  l0._name = "box_Player_State_Controller_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1974751099"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_227_MaxSpeedSet
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
  l0 = self.box_MissionMessageController_v3_286
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1102449239", "1102449239", "S08M010_Main", "box_MissionMessageController_v3_286.Out", "box_Player_State_Controller_227.SetMaxSpeed", l0, l1)
  l1:SetMaxSpeed()
end
function export:f_box_Ordered_Output_174_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_114
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1106664168", "1106664168", "S08M010_Main", "box_Ordered_Output_174.Out", "box_MissionMessageController_v3_114.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_174_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_72()
  l0 = self.box_InteractionScriptMonitor_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2036600454", "2036600454", "S08M010_Main", "box_Ordered_Output_174.Out", "box_InteractionScriptMonitor_v2_72.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_174_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_67
  l0.Input = self.ServerFarm_VR
  l0.Data[0] = "9223372051982758460"
  l0.Data[1] = "9223372051982758452"
  l0.Data[2] = "9223372051982758442"
  l0.Data[3] = "9223372051982758434"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1448320278", "1448320278", "S08M010_Main", "box_Ordered_Output_174.Out", "box_ListWriter_67.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_174_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_405"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|269169268"
  l0.Out = self.f_box_Simple_Node_405_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1201195876", "1201195876", "S08M010_Main", "box_Ordered_Output_174.Out", "box_Simple_Node_405.In", clone, l0)
  l0:In()
end
function export:f_box_PhoneCommunicationController_230_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_343()
  l0 = self.box_PhoneCommunicationController_230
  l1 = self.box_Multiple_AND_343
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1483156264", "1483156264", "S08M010_Main", "box_PhoneCommunicationController_230.OnCommunicationFinished", "box_Multiple_AND_343.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Lanes_Restrictions_Control_264_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_197
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1681669294", "1681669294", "S08M010_Main", "box_Lanes_Restrictions_Control_264.Out", "box_CinematicPrep_197.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_MultipleOR_357_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_253()
  l0 = self.box_MultipleOR_357
  l1 = self.box_TimerToScreen_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1580062944", "1580062944", "S08M010_Main", "box_MultipleOR_357.Out", "box_TimerToScreen_253.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Timer_v2_183_TimeElapsed()
  local l0, l1
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
  l0._name = "box_Lanes_Restrictions_Control_213"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1134715455"
  l0.Out = self.f_box_Lanes_Restrictions_Control_213_Out
  l0 = self.box_Timer_v2_183
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2062801830", "2062801830", "S08M010_Main", "box_Timer_v2_183.TimeElapsed", "box_Lanes_Restrictions_Control_213.In", l0, l1)
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
  self:OnEnter_box_MultipleOR_357()
  l0 = self.box_MultipleOR_357
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1719285118", "1719285118", "S08M010_Main", "box_Simple_Node_257.Out", "box_MultipleOR_357.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PlaySound_v2_388_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_389
  l0.Seconds = 60
  l0 = self.box_PlaySound_v2_388
  l1 = self.box_Timer_v2_389
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|786924193", "786924193", "S08M010_Main", "box_PlaySound_v2_388.Out", "box_Timer_v2_389.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_170_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_167
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222327002"
  l0 = self.box_OnceOnly_v3_170
  l1 = self.box_PhoneCommunicationController_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1341924173", "1341924173", "S08M010_Main", "box_OnceOnly_v3_170.Out", "box_PhoneCommunicationController_167.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PGTController_v2_76_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476430"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_266"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1842218883"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_266_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PGTController_v2_76
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2109821850", "2109821850", "S08M010_Main", "box_PGTController_v2_76.Started", "box_Media_System_Custom_Broadcast_Controller_266.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_MapPointController_v4_52_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_26()
  l0 = self.box_MapPointController_v4_52
  l1 = self.box_HackableController_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1756697497", "1756697497", "S08M010_Main", "box_MapPointController_v4_52.Hidden", "box_HackableController_v2_26.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MapPointController_v4_52_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_26()
  l0 = self.box_MapPointController_v4_52
  l1 = self.box_HackableController_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|216772545", "216772545", "S08M010_Main", "box_MapPointController_v4_52.Shown", "box_HackableController_v2_26.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_S08M010_CIN_OffTheBus_Main_190_out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_CIN_OffTheBus_Main_190
  self.Horatio = l0.Horatio_Out
  l0 = self.box_AI_Buddy_Controller_287
  l0.NPC = self.Horatio
  l0 = self.box_S08M010_CIN_OffTheBus_Main_190
  l1 = self.box_AI_Buddy_Controller_287
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|550857134", "550857134", "S08M010_Main", "box_S08M010_CIN_OffTheBus_Main_190.out", "box_AI_Buddy_Controller_287.Follow", l0, l1)
  l1:Follow()
end
function export:f_box_HackableController_v2_275_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|922778947"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_180_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_180_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_180_Out_2
  l0 = self.box_HackableController_v2_275
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2135379810", "2135379810", "S08M010_Main", "box_HackableController_v2_275.Enabled", "box_Ordered_Output_180.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_275_ProfilingEnabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_275()
  l0 = self.box_HackableController_v2_275
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|384721148", "384721148", "S08M010_Main", "box_HackableController_v2_275.ProfilingEnabled", "box_HackableController_v2_275.EnableHack", l0, l0)
  l0:EnableHack()
end
function export:f_box_S08M010_IOP_Main_70_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_94
  l0.SceneEntity = self.S08M010_CIN_045
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_ServerFarmDoor_CIN/s08_serverfarmdoor_cin_after.seq"
  l0 = self.box_S08M010_IOP_Main_70
  l1 = self.box_PlaySequence_v5_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1047473319", "1047473319", "S08M010_Main", "box_S08M010_IOP_Main_70.Out", "box_PlaySequence_v5_94.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_423_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_424"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1147562913"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_424_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_424_Out_1
  l0 = self.box_MultipleOR_423
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1187395703", "1187395703", "S08M010_Main", "box_MultipleOR_423.Out", "box_Ordered_Output_424.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_319_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_304()
  l0 = self.box_MultipleOR_319
  l1 = self.box_Interact_Gameplay_304
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|454685245", "454685245", "S08M010_Main", "box_MultipleOR_319.Out", "box_Interact_Gameplay_304.Start", l0, l1)
  l1:Start()
end
function export:f_box_Player_State_Controller_228_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S08M010_Checkpoint_78()
  l0 = self.box_S08M010_Checkpoint_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1186787567", "1186787567", "S08M010_Main", "box_Player_State_Controller_228.MaxSpeedSet", "box_S08M010_Checkpoint_78.GameFlow", clone, l0)
  l0:GameFlow()
end
function export:f_box_MissionMessageController_v3_320_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_319()
  l0 = self.box_MissionMessageController_v3_320
  l1 = self.box_MultipleOR_319
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|932173057", "932173057", "S08M010_Main", "box_MissionMessageController_v3_320.Out", "box_MultipleOR_319.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Simple_Node_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_159
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222326997"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|60491030", "60491030", "S08M010_Main", "box_Simple_Node_21.Out", "box_PhoneCommunicationController_159.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_MissionLayer_v2_24_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_345"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|327759540"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_345_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_345_Out_1
  l0 = self.box_MissionLayer_v2_24
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1897446115", "1897446115", "S08M010_Main", "box_MissionLayer_v2_24.Loaded", "box_Ordered_Output_345.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_176_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_299
  l0.Input = self.BusPassengers
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Horatio
  l0 = self.box_Timer_v2_176
  l1 = self.box_ListWriter_299
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|711068645", "711068645", "S08M010_Main", "box_Timer_v2_176.TimeElapsed", "box_ListWriter_299.Add", l0, l1)
  l1:Add()
end
function export:f_box_Ordered_Output_105_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_220
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|514851555", "514851555", "S08M010_Main", "box_Ordered_Output_105.Out", "box_CinematicPrep_220.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_105_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_103
  l0.SceneEntity = self.S08M010_CIN_048
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_BeforeHRScolding_Cin/s08_beforehrscolding_after.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|778795796", "778795796", "S08M010_Main", "box_Ordered_Output_105.Out", "box_PlaySequence_v5_103.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_105_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_229
  l0.Seconds = 60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|243972338", "243972338", "S08M010_Main", "box_Ordered_Output_105.Out", "box_Timer_v2_229.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_105_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_376
  l0.Entity = "9223372055079369230"
  l0.SoundId = "soundbinary/2201325351.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1883076473", "1883076473", "S08M010_Main", "box_Ordered_Output_105.Out", "box_PlaySound_v2_376.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_105_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_396()
  l0 = self.box_TriggerMonitor_v2_396
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|430411484", "430411484", "S08M010_Main", "box_Ordered_Output_105.Out", "box_TriggerMonitor_v2_396.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionLayer_v2_120_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|152782867"
  l0.Out = self.f_box_Get_Player_ID_144_Out
  l0 = self.box_MissionLayer_v2_120
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|981038448", "981038448", "S08M010_Main", "box_MissionLayer_v2_120.Loaded", "box_Get_Player_ID_144.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_210_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ConsoleCommand_v2_208
  l0.Command = "Test_IOP"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|471459771", "471459771", "S08M010_Main", "box_Simple_Node_210.Out", "box_ConsoleCommand_v2_208.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_381_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayConversationController_v3_298()
  l0 = self.box_GameplayConversationController_v3_298
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1006226692", "1006226692", "S08M010_Main", "box_Compare_Boolean_v2_381.A_is_True", "box_GameplayConversationController_v3_298.Resume", clone, l0)
  l0:Resume()
end
function export:f_box_PlaySequence_v5_53_SPOut__Laptop_Opened_()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_68
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_53
  l1 = self.box_CinematicPrep_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|82049499", "82049499", "S08M010_Main", "box_PlaySequence_v5_53.SPOut", "box_CinematicPrep_68.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_PlaySequence_v5_53_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_53
  l1 = self.box_S08M010_CIN_HRScolding_Main_187
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|456639810", "456639810", "S08M010_Main", "box_PlaySequence_v5_53.Stopped", "box_S08M010_CIN_HRScolding_Main_187.In", l0, l1)
  l1:In()
end
function export:f_box_Toy_Car_Controller_394_CalledBack()
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
  l0._name = "box_Flying_Drone_Controller_398"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1201586313"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1624003868", "1624003868", "S08M010_Main", "box_Toy_Car_Controller_394.CalledBack", "box_Flying_Drone_Controller_398.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_252_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669158"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_406"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|414931368"
  l0.Activated = self.f_box_MissionMusicController_406_Activated
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|532721832", "532721832", "S08M010_Main", "box_Media_System_Custom_Broadcast_Controller_252.LoadAndPlayRequested", "box_MissionMusicController_406.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_S08M010_Checkpoint_164_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_Checkpoint_164
  self.PlayerEntity = l0.Player
  l1 = self.box_SetBoolean_v2_379
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1480321324", "1480321324", "S08M010_Main", "box_S08M010_Checkpoint_164.Out", "box_SetBoolean_v2_379.False", l0, l1)
  l1:False()
end
function export:f_box_Timer_v2_389_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Stop Mission Music", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMusicController')-- Comment: Stop Mission Music")
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669158"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_390"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|824508300"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_Timer_v2_389
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|981237305", "981237305", "S08M010_Main", "box_Timer_v2_389.TimeElapsed", "box_MissionMusicController_390.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_S08M010_Bus_Drive_7_BuddyConditionFailed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_346
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState4",
    id = "625591"
  }
  l0 = self.box_S08M010_Bus_Drive_7
  l1 = self.box_MissionController_v4_346
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1008208473", "1008208473", "S08M010_Main", "box_S08M010_Bus_Drive_7.BuddyConditionFailed", "box_MissionController_v4_346.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_Bus_Drive_7_BuddyKilled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_352
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState3",
    id = "359307"
  }
  l0 = self.box_S08M010_Bus_Drive_7
  l1 = self.box_MissionController_v4_352
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|787317476", "787317476", "S08M010_Main", "box_S08M010_Bus_Drive_7.BuddyKilled", "box_MissionController_v4_352.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_Bus_Drive_7_BusDestroyed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_1
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState1",
    id = "359144"
  }
  l0 = self.box_S08M010_Bus_Drive_7
  l1 = self.box_MissionController_v4_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|517166276", "517166276", "S08M010_Main", "box_S08M010_Bus_Drive_7.BusDestroyed", "box_MissionController_v4_1.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_Bus_Drive_7_EnteringBus()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1532660612"
  l0.Out = self.f_box_Simple_Node_13_Out
  l0 = self.box_S08M010_Bus_Drive_7
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|270577104", "270577104", "S08M010_Main", "box_S08M010_Bus_Drive_7.EnteringBus", "box_Simple_Node_13.In", l0, l1)
  l1:In()
end
function export:f_box_S08M010_Bus_Drive_7_ObjectiveReachDestination()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_6
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective 31",
    id = "653786"
  }
  l0.ShowPreviousObjectiveComplete = self.DisplayPreObjective
  l0 = self.box_S08M010_Bus_Drive_7
  l1 = self.box_MissionMessageController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|837296624", "837296624", "S08M010_Main", "box_S08M010_Bus_Drive_7.ObjectiveReachDestination", "box_MissionMessageController_v3_6.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_S08M010_Bus_Drive_7_PassengersInjured()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_373
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState5",
    id = "691475"
  }
  l0 = self.box_S08M010_Bus_Drive_7
  l1 = self.box_MissionController_v4_373
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1831916267", "1831916267", "S08M010_Main", "box_S08M010_Bus_Drive_7.PassengersInjured", "box_MissionController_v4_373.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_Bus_Drive_7_PlayerLeftBus()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_88
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective2",
    id = "359129"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0 = self.box_S08M010_Bus_Drive_7
  l1 = self.box_MissionMessageController_v3_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1107144258", "1107144258", "S08M010_Main", "box_S08M010_Bus_Drive_7.PlayerLeftBus", "box_MissionMessageController_v3_88.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_S08M010_Bus_Drive_7_StartConversation()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_199
  l0.Seconds = 3
  l0 = self.box_S08M010_Bus_Drive_7
  l1 = self.box_Timer_v2_199
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1232718290", "1232718290", "S08M010_Main", "box_S08M010_Bus_Drive_7.StartConversation", "box_Timer_v2_199.Start", l0, l1)
  l1:Start()
end
function export:f_box_S08M010_Bus_Drive_7_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1821817254"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_201_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_201_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_201_Out_2
  l0 = self.box_S08M010_Bus_Drive_7
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|676528130", "676528130", "S08M010_Main", "box_S08M010_Bus_Drive_7.Stopped", "box_Ordered_Output_201.In", l0, l1)
  l1:In()
end
function export:f_box_MoveableEntityController_117_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_Server_Row6Backdoor
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1175636096"
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
  l0.Out = self.f_box_MoveableEntityController_115_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1501586534", "1501586534", "S08M010_Main", "box_MoveableEntityController_117.Out", "box_MoveableEntityController_115.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_PGTController_v2_9_AllSpawned()
  local l0, l1
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
  l0._name = "box_Lanes_Restrictions_Control_280"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|297918711"
  l0.Out = self.f_box_Lanes_Restrictions_Control_280_Out
  l0 = self.box_PGTController_v2_9
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|719042061", "719042061", "S08M010_Main", "box_PGTController_v2_9.AllSpawned", "box_Lanes_Restrictions_Control_280.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_265_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_265
  self.Horatio = l0.UserID
  l0 = self.box_VehicleSeatingController_255
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0 = self.box_CLOController_265
  l1 = self.box_VehicleSeatingController_255
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1946917174", "1946917174", "S08M010_Main", "box_CLOController_265.OnUserInPlace", "box_VehicleSeatingController_255.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_GameplayInteractionController_430_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_45()
  l0 = self.box_GameplayInteractionController_430
  l1 = self.box_DriveAndTalk_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2019883699", "2019883699", "S08M010_Main", "box_GameplayInteractionController_430.Started", "box_DriveAndTalk_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_GameplayInteractionController_430_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_45()
  l0 = self.box_GameplayInteractionController_430
  l1 = self.box_DriveAndTalk_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1997552647", "1997552647", "S08M010_Main", "box_GameplayInteractionController_430.Stopped", "box_DriveAndTalk_45.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MissionMessageController_v3_288_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_342
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective040",
    item = "SubObjective1",
    id = "359135"
  }
  l0 = self.box_MissionMessageController_v3_288
  l1 = self.box_MissionMessageController_v3_342
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1776667096", "1776667096", "S08M010_Main", "box_MissionMessageController_v3_288.Out", "box_MissionMessageController_v3_342.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_CLOController_64_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_64
  self.HoratioCar = l0.UserID
  l0 = self.box_CinematicPrep_101
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CLOController_64
  l1 = self.box_CinematicPrep_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|720708412", "720708412", "S08M010_Main", "box_CLOController_64.OnUserInPlace", "box_CinematicPrep_101.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Lanes_Restrictions_Control_213_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Cinema_Zone_Cleanup_420"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1876154032"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_420_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1168386248", "1168386248", "S08M010_Main", "box_Lanes_Restrictions_Control_213.Out", "box_Cinema_Zone_Cleanup_420.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Toy_Car_Controller_87_CalledBack()
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
  l0._name = "box_Flying_Drone_Controller_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|754608738"
  l0.CalledBack = self.f_box_Flying_Drone_Controller_80_CalledBack
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1834018112", "1834018112", "S08M010_Main", "box_Toy_Car_Controller_87.CalledBack", "box_Flying_Drone_Controller_80.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_MultipleOR_355_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_272"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1586124711"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_272_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_272_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_272_Out_2
  l0 = self.box_MultipleOR_355
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2045138754", "2045138754", "S08M010_Main", "box_MultipleOR_355.Out", "box_Ordered_Output_272.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_137_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_Checkpoint_112()
  l0 = self.box_MissionLayer_v2_137
  l1 = self.box_S08M010_Checkpoint_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|66793777", "66793777", "S08M010_Main", "box_MissionLayer_v2_137.Loaded", "box_S08M010_Checkpoint_112.GameFlow", l0, l1)
  l1:GameFlow()
end
function export:f_box_Ordered_Output_424_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_421()
  l0 = self.box_TriggerMonitor_v2_421
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|77366556", "77366556", "S08M010_Main", "box_Ordered_Output_424.Out", "box_TriggerMonitor_v2_421.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_424_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1053495200"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_105_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_105_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_105_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_105_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_105_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1701234706", "1701234706", "S08M010_Main", "box_Ordered_Output_424.Out", "box_Ordered_Output_105.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_236_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_165()
  l0 = self.box_GameplayInteractionController_165
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|266494395", "266494395", "S08M010_Main", "box_Simple_Node_236.Out", "box_GameplayInteractionController_165.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_S08M010_Checkpoint_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_Checkpoint_27
  self.PlayerEntity = l0.Player
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476430"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1868172683"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_93_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_S08M010_Checkpoint_27
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|949570669", "949570669", "S08M010_Main", "box_S08M010_Checkpoint_27.Out", "box_Media_System_Custom_Broadcast_Controller_93.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_SetBoolean_v2_12_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_12_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_12_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_12_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_12_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.DisplayPreObjective = l0.Target
end
function export:f_box_OnceOnly_v3_435_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus01_54
  l0.CLO01 = self.CLO_BusPassenger_01
  l0.CLO02 = self.CLO_BusPassenger_02
  l0.CLO03 = self.CLO_BusPassenger_03
  l0.CLO04 = self.CLO_BusPassenger_04
  l0.PassengerList_In = self.BusPassengers
  l0.BusVehicle = self.NudleBus
  l0 = self.box_OnceOnly_v3_435
  l1 = self.box_S08M010_SpawnAndAssignCLOtoBus01_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|897486231", "897486231", "S08M010_Main", "box_OnceOnly_v3_435.Out", "box_S08M010_SpawnAndAssignCLOtoBus01_54.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_327_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.s08m010_MovableHackableEntity_45
  l0.CanMoveWithoutPhysics = 1
  l0._graph = self
  l0._name = "box_MoveableEntityController_325"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|42679537"
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
  l0.Out = self.f_box_MoveableEntityController_325_Out
  l0 = self.box_Hackable_Monitor_327
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|590819522", "590819522", "S08M010_Main", "box_Hackable_Monitor_327.Disabled", "box_MoveableEntityController_325.Move", l0, l1)
  l1:Move()
end
function export:f_box_Hackable_Monitor_327_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective080",
    item = "Objective",
    id = "649119"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_Hackable_Monitor_327
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2001781391", "2001781391", "S08M010_Main", "box_Hackable_Monitor_327.Enabled", "box_MissionMessageController_v3_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Hackable_Monitor_327_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_327()
  l0 = self.box_Hackable_Monitor_327
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2009724766", "2009724766", "S08M010_Main", "box_Hackable_Monitor_327.HackSuccess", "box_Hackable_Monitor_327.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MoveableEntityController_115_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Nudle_ServerFarm_AccessCodeDoor
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_408"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|201979587"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1065123447", "1065123447", "S08M010_Main", "box_MoveableEntityController_115.Out", "box_MoveableEntityController_408.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_S08M010_Bus_Drive_192_BuddyConditionFailed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_313
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState4",
    id = "625591"
  }
  l0 = self.box_S08M010_Bus_Drive_192
  l1 = self.box_MissionController_v4_313
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|293617019", "293617019", "S08M010_Main", "box_S08M010_Bus_Drive_192.BuddyConditionFailed", "box_MissionController_v4_313.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_Bus_Drive_192_BuddyKilled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_351
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState3",
    id = "359307"
  }
  l0 = self.box_S08M010_Bus_Drive_192
  l1 = self.box_MissionController_v4_351
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1532656431", "1532656431", "S08M010_Main", "box_S08M010_Bus_Drive_192.BuddyKilled", "box_MissionController_v4_351.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_Bus_Drive_192_BusDestroyed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_154
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState1",
    id = "359144"
  }
  l0 = self.box_S08M010_Bus_Drive_192
  l1 = self.box_MissionController_v4_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1079637525", "1079637525", "S08M010_Main", "box_S08M010_Bus_Drive_192.BusDestroyed", "box_MissionController_v4_154.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_Bus_Drive_192_EnteringBus()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1823001014"
  l0.Out = self.f_box_Simple_Node_111_Out
  l0 = self.box_S08M010_Bus_Drive_192
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|371668241", "371668241", "S08M010_Main", "box_S08M010_Bus_Drive_192.EnteringBus", "box_Simple_Node_111.In", l0, l1)
  l1:In()
end
function export:f_box_S08M010_Bus_Drive_192_ObjectiveReachDestination()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_37
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective 31",
    id = "653786"
  }
  l0.ShowPreviousObjectiveComplete = self.DisplayPreObjective
  l0 = self.box_S08M010_Bus_Drive_192
  l1 = self.box_MissionMessageController_v3_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1282523734", "1282523734", "S08M010_Main", "box_S08M010_Bus_Drive_192.ObjectiveReachDestination", "box_MissionMessageController_v3_37.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_S08M010_Bus_Drive_192_PassengersInjured()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_372
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState5",
    id = "691475"
  }
  l0 = self.box_S08M010_Bus_Drive_192
  l1 = self.box_MissionController_v4_372
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|14798975", "14798975", "S08M010_Main", "box_S08M010_Bus_Drive_192.PassengersInjured", "box_MissionController_v4_372.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_Bus_Drive_192_PlayerLeftBus()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_151
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective2",
    id = "359129"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0 = self.box_S08M010_Bus_Drive_192
  l1 = self.box_MissionMessageController_v3_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1208665824", "1208665824", "S08M010_Main", "box_S08M010_Bus_Drive_192.PlayerLeftBus", "box_MissionMessageController_v3_151.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_S08M010_Bus_Drive_192_StartConversation()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_176
  l0.Seconds = 3
  l0 = self.box_S08M010_Bus_Drive_192
  l1 = self.box_Timer_v2_176
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|303343487", "303343487", "S08M010_Main", "box_S08M010_Bus_Drive_192.StartConversation", "box_Timer_v2_176.Start", l0, l1)
  l1:Start()
end
function export:f_box_S08M010_Bus_Drive_192_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|153926393"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_202_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_202_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_202_Out_2
  l0 = self.box_S08M010_Bus_Drive_192
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|486665718", "486665718", "S08M010_Main", "box_S08M010_Bus_Drive_192.Stopped", "box_Ordered_Output_202.In", l0, l1)
  l1:In()
end
function export:f_box_DrawWeapon_v2_336_Holstered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DrawWeapon_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_69()
  l0 = self.box_PlaySequence_v5_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1770158682", "1770158682", "S08M010_Main", "box_DrawWeapon_v2_336.Holstered", "box_PlaySequence_v5_69.Start", clone, l0)
  l0:Start()
end
function export:f_box_VehicleSeatingController_179_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_63
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.Horatio
  l0.CanUseBackSeat = 1
  l0.Seat = "RearPassengerLeft"
  l0 = self.box_VehicleSeatingController_179
  l1 = self.box_VehicleSeatingController_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|45653650", "45653650", "S08M010_Main", "box_VehicleSeatingController_179.AssignCompleted", "box_VehicleSeatingController_63.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_MissionLayer_v2_132_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_Checkpoint_86()
  l0 = self.box_MissionLayer_v2_132
  l1 = self.box_S08M010_Checkpoint_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2124866720", "2124866720", "S08M010_Main", "box_MissionLayer_v2_132.Loaded", "box_S08M010_Checkpoint_86.Checkpoint", l0, l1)
  l1:Checkpoint()
end
function export:f_box_Timer_v2_199_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_84
  l0.Input = self.BusPassengers
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Horatio
  l0 = self.box_Timer_v2_199
  l1 = self.box_ListWriter_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|928374713", "928374713", "S08M010_Main", "box_Timer_v2_199.TimeElapsed", "box_ListWriter_84.Add", l0, l1)
  l1:Add()
end
function export:f_box_AI_Buddy_Monitor_308_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reach_Gameplay_315()
  l0 = self.box_AI_Buddy_Monitor_308
  l1 = self.box_Reach_Gameplay_315
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|486800747", "486800747", "S08M010_Main", "box_AI_Buddy_Monitor_308.Disabled", "box_Reach_Gameplay_315.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_AI_Buddy_Monitor_308_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_319()
  l0 = self.box_AI_Buddy_Monitor_308
  l1 = self.box_MultipleOR_319
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1501098084", "1501098084", "S08M010_Main", "box_AI_Buddy_Monitor_308.Enabled", "box_MultipleOR_319.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AI_Buddy_Monitor_308_OnBuddyTooFar()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reach_Gameplay_315()
  l0 = self.box_AI_Buddy_Monitor_308
  l1 = self.box_Reach_Gameplay_315
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|252231667", "252231667", "S08M010_Main", "box_AI_Buddy_Monitor_308.OnBuddyTooFar", "box_Reach_Gameplay_315.Start", l0, l1)
  l1:Start()
end
function export:f_box_AI_Buddy_Monitor_308_OnBuddyTooFarUnspawnRange()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_318"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|561817557"
  l0.Out = self.f_box_Simple_Node_318_Out
  l0 = self.box_AI_Buddy_Monitor_308
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1650007731", "1650007731", "S08M010_Main", "box_AI_Buddy_Monitor_308.OnBuddyTooFarUnspawnRange", "box_Simple_Node_318.In", l0, l1)
  l1:In()
end
function export:f_box_MoveableEntityController_168_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|579876398"
  l0.CalledBack = self.f_box_Toy_Car_Controller_244_CalledBack
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|965611175", "965611175", "S08M010_Main", "box_MoveableEntityController_168.Out", "box_Toy_Car_Controller_244.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_Simple_Node_235_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_90
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050203866240"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|399797561", "399797561", "S08M010_Main", "box_Simple_Node_235.Out", "box_PhoneCommunicationController_90.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_MapPointController_v4_239_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_238()
  l0 = self.box_MapPointController_v4_239
  l1 = self.box_TriggerMonitor_v2_238
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|647960660", "647960660", "S08M010_Main", "box_MapPointController_v4_239.Hidden", "box_TriggerMonitor_v2_238.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_239_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_238()
  l0 = self.box_MapPointController_v4_239
  l1 = self.box_TriggerMonitor_v2_238
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|581246659", "581246659", "S08M010_Main", "box_MapPointController_v4_239.Shown", "box_TriggerMonitor_v2_238.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_295_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_CIN_OffTheBus_Main_190
  l0.Bus = self.NudleBus
  l0.NudleUpperLMA = self.NudleUpperLMA
  l0.Horatio = self.Horatio
  l0 = self.box_CLOController_295
  l1 = self.box_S08M010_CIN_OffTheBus_Main_190
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|917727652", "917727652", "S08M010_Main", "box_CLOController_295.UnspawnedUser", "box_S08M010_CIN_OffTheBus_Main_190.In", l0, l1)
  l1:In()
end
function export:f_box_S08M010_Checkpoint_85_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_Checkpoint_85
  l1 = self.box_SetBoolean_v2_380
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1163552734", "1163552734", "S08M010_Main", "box_S08M010_Checkpoint_85.Out", "box_SetBoolean_v2_380.False", l0, l1)
  l1:False()
end
function export:f_box_Ordered_Output_79_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S08M010_Bus_Drive_7()
  l0 = self.box_S08M010_Bus_Drive_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1924809122", "1924809122", "S08M010_Main", "box_Ordered_Output_79.Out", "box_S08M010_Bus_Drive_7.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_79_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_152
  l0.SoundId = "soundbinary/3505892305.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1939419035", "1939419035", "S08M010_Main", "box_Ordered_Output_79.Out", "box_PlaySound_v2_152.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_79_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|769317715"
  l0.Out = self.f_box_Simple_Node_145_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|832077859", "832077859", "S08M010_Main", "box_Ordered_Output_79.Out", "box_Simple_Node_145.In", clone, l0)
  l0:In()
end
function export:f_box_Vehicle_Controller_306_Usable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_320
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective1",
    id = "359128"
  }
  l0.ShowPreviousObjectiveComplete = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1298361920", "1298361920", "S08M010_Main", "box_Vehicle_Controller_306.Usable", "box_MissionMessageController_v3_320.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_OnceOnly_v3_282_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_62
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050140505934"
  l0 = self.box_OnceOnly_v3_282
  l1 = self.box_PhoneCommunicationController_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1346390189", "1346390189", "S08M010_Main", "box_OnceOnly_v3_282.Out", "box_PhoneCommunicationController_62.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_S08M010_CIN_HRScolding_Main_187_out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_421()
  l0 = self.box_S08M010_CIN_HRScolding_Main_187
  l1 = self.box_TriggerMonitor_v2_421
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1237617737", "1237617737", "S08M010_Main", "box_S08M010_CIN_HRScolding_Main_187.out", "box_TriggerMonitor_v2_421.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CinematicPrep_335_PreOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_69()
  l0 = self.box_CinematicPrep_335
  l1 = self.box_PlaySequence_v5_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|682232394", "682232394", "S08M010_Main", "box_CinematicPrep_335.PreOut", "box_PlaySequence_v5_69.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_DistanceBasedProgressBarController_v2_224_Completed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|535680686"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  l0 = self.box_DistanceBasedProgressBarController_v2_224
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2071990789", "2071990789", "S08M010_Main", "box_DistanceBasedProgressBarController_v2_224.Completed", "box_Ordered_Output_59.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_34_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_91()
  l0 = self.box_Hackable_Monitor_34
  l1 = self.box_TriggerMonitor_v2_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|27974263", "27974263", "S08M010_Main", "box_Hackable_Monitor_34.Disabled", "box_TriggerMonitor_v2_91.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hackable_Monitor_34_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_91()
  l0 = self.box_Hackable_Monitor_34
  l1 = self.box_TriggerMonitor_v2_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|31099447", "31099447", "S08M010_Main", "box_Hackable_Monitor_34.Enabled", "box_TriggerMonitor_v2_91.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Monitor_34_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1041586546"
  l0.Out = self.f_box_Simple_Node_21_Out
  l0 = self.box_Hackable_Monitor_34
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|998076166", "998076166", "S08M010_Main", "box_Hackable_Monitor_34.HackSuccess", "box_Simple_Node_21.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_156_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S08M010_Bus_Drive_192()
  l0 = self.box_S08M010_Bus_Drive_192
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|948279909", "948279909", "S08M010_Main", "box_Ordered_Output_156.Out", "box_S08M010_Bus_Drive_192.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_156_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_193
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|396238230", "396238230", "S08M010_Main", "box_Ordered_Output_156.Out", "box_CinematicPrep_193.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_Ordered_Output_156_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|806899685"
  l0.Out = self.f_box_Simple_Node_71_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|391709397", "391709397", "S08M010_Main", "box_Ordered_Output_156.Out", "box_Simple_Node_71.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_238_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_Checkpoint_18()
  l0 = self.box_TriggerMonitor_v2_238
  l1 = self.box_S08M010_Checkpoint_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1631820939", "1631820939", "S08M010_Main", "box_TriggerMonitor_v2_238.Disabled", "box_S08M010_Checkpoint_18.GameFlow", l0, l1)
  l1:GameFlow()
end
function export:f_box_TriggerMonitor_v2_238_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_34()
  l0 = self.box_TriggerMonitor_v2_238
  l1 = self.box_Hackable_Monitor_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|77526536", "77526536", "S08M010_Main", "box_TriggerMonitor_v2_238.Enter", "box_Hackable_Monitor_34.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_421_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_422
  l0.SpawnPoint = self.S08M010_OutsideServerFarmUtilityRoom
  l0.UseFadeToBlack = 0
  l0 = self.box_TriggerMonitor_v2_421
  l1 = self.box_Teleport_To_SpawnPoint_422
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|180021266", "180021266", "S08M010_Main", "box_TriggerMonitor_v2_421.Enter", "box_Teleport_To_SpawnPoint_422.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_421_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_423()
  l0 = self.box_TriggerMonitor_v2_421
  l1 = self.box_MultipleOR_423
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1396536558", "1396536558", "S08M010_Main", "box_TriggerMonitor_v2_421.Leave", "box_MultipleOR_423.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DistanceBasedProgressBarController_v2_242_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_343()
  l0 = self.box_DistanceBasedProgressBarController_v2_242
  l1 = self.box_Multiple_AND_343
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|873603289", "873603289", "S08M010_Main", "box_DistanceBasedProgressBarController_v2_242.Completed", "box_Multiple_AND_343.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_DistanceBasedProgressBarController_v2_242_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_230
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222327001"
  l0 = self.box_DistanceBasedProgressBarController_v2_242
  l1 = self.box_PhoneCommunicationController_230
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|800408967", "800408967", "S08M010_Main", "box_DistanceBasedProgressBarController_v2_242.Started", "box_PhoneCommunicationController_230.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMessageController_v3_126_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SearchArea_40()
  l0 = self.box_MissionMessageController_v3_126
  l1 = self.box_SearchArea_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1018192687", "1018192687", "S08M010_Main", "box_MissionMessageController_v3_126.Out", "box_SearchArea_40.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_396_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_403()
  l0 = self.box_TriggerMonitor_v2_396
  l1 = self.box_TriggerMonitor_v2_403
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|104136518", "104136518", "S08M010_Main", "box_TriggerMonitor_v2_396.Disabled", "box_TriggerMonitor_v2_403.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_396_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_403()
  l0 = self.box_TriggerMonitor_v2_396
  l1 = self.box_TriggerMonitor_v2_403
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|839209781", "839209781", "S08M010_Main", "box_TriggerMonitor_v2_396.Enabled", "box_TriggerMonitor_v2_403.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_396_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_394"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1073679107"
  l0.CalledBack = self.f_box_Toy_Car_Controller_394_CalledBack
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
  l0 = self.box_TriggerMonitor_v2_396
  l1 = Boxes[PathID("domino/System/ToyCarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|894878992", "894878992", "S08M010_Main", "box_TriggerMonitor_v2_396.Enter", "box_Toy_Car_Controller_394.CallBack", l0, l1)
  l1:CallBack()
end
function export:f_box_Toy_Car_Controller_400_CalledBack()
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
  l0._name = "box_Flying_Drone_Controller_399"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1372671459"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1549539505", "1549539505", "S08M010_Main", "box_Toy_Car_Controller_400.CalledBack", "box_Flying_Drone_Controller_399.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_MultipleOR_416_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Network_Surfing_Monitor_412()
  l0 = self.box_MultipleOR_416
  l1 = self.box_Network_Surfing_Monitor_412
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1824513560", "1824513560", "S08M010_Main", "box_MultipleOR_416.Out", "box_Network_Surfing_Monitor_412.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Player_State_Controller_222_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S08M010_Checkpoint_66()
  l0 = self.box_S08M010_Checkpoint_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1789992401", "1789992401", "S08M010_Main", "box_Player_State_Controller_222.MaxSpeedSet", "box_S08M010_Checkpoint_66.GameFlow", clone, l0)
  l0:GameFlow()
end
function export:f_box_MissionMessageController_v3_317_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_301()
  l0 = self.box_MissionMessageController_v3_317
  l1 = self.box_MultipleOR_301
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1688162932", "1688162932", "S08M010_Main", "box_MissionMessageController_v3_317.Out", "box_MultipleOR_301.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Cinema_Zone_Cleanup_419_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_279
  l0.SceneEntity = "9223372047235790533"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_OnTheBus_CIN/s08_onthebus_cin.seq"
  l0.EntityIn.Horatio = self.Horatio
  l0.EntityIn.Bus = self.NudleBus
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|977472213", "977472213", "S08M010_Main", "box_Cinema_Zone_Cleanup_419.Out", "box_PlaySequence_v5_279.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_258_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_10
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.Horatio
  l0.CanUseBackSeat = 1
  l0.Seat = "RearPassengerLeft"
  l0 = self.box_OnceOnly_v3_258
  l1 = self.box_VehicleSeatingController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|695423204", "695423204", "S08M010_Main", "box_OnceOnly_v3_258.Out", "box_VehicleSeatingController_10.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_MultipleOR_147_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_GameplayInteractionController_25()
  l0 = self.box_MultipleOR_147
  l1 = self.box_GameplayInteractionController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|221978405", "221978405", "S08M010_Main", "box_MultipleOR_147.Out", "box_GameplayInteractionController_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_356_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Delivery_Gameplay_338()
  l0 = self.box_Delivery_Gameplay_338
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1176141553", "1176141553", "S08M010_Main", "box_Ordered_Output_356.Out", "box_Delivery_Gameplay_338.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_356_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_357()
  l0 = self.box_MultipleOR_357
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1145186808", "1145186808", "S08M010_Main", "box_Ordered_Output_356.Out", "box_MultipleOR_357.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Reach_Gameplay_315_Reached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_319()
  l0 = self.box_Reach_Gameplay_315
  l1 = self.box_MultipleOR_319
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|81984306", "81984306", "S08M010_Main", "box_Reach_Gameplay_315.Reached", "box_MultipleOR_319.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Reach_Gameplay_315_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_301()
  l0 = self.box_Reach_Gameplay_315
  l1 = self.box_MultipleOR_301
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1023954806", "1023954806", "S08M010_Main", "box_Reach_Gameplay_315.Started", "box_MultipleOR_301.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Reach_Gameplay_315_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_301()
  l0 = self.box_Reach_Gameplay_315
  l1 = self.box_MultipleOR_301
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|112280094", "112280094", "S08M010_Main", "box_Reach_Gameplay_315.Stopped", "box_MultipleOR_301.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_InteractionScriptMonitor_v2_369_AnimationFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_369()
  l0 = self.box_InteractionScriptMonitor_v2_369
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1669636031", "1669636031", "S08M010_Main", "box_InteractionScriptMonitor_v2_369.AnimationFinished", "box_InteractionScriptMonitor_v2_369.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptMonitor_v2_369_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_371()
  l0 = self.box_InteractionScriptMonitor_v2_369
  l1 = self.box_OnceOnly_v3_371
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1420395123", "1420395123", "S08M010_Main", "box_InteractionScriptMonitor_v2_369.Disabled", "box_OnceOnly_v3_371.In", l0, l1)
  l1:In(2)
end
function export:f_box_DistanceBasedProgressBarController_v2_14_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_DistanceBasedProgressBarController_v2_242
  l0.Text = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.EXTRA.Download Feedback",
    item = "Specific_Download3",
    id = "688735"
  }
  l0.TotalTime = 20
  l0 = self.box_DistanceBasedProgressBarController_v2_14
  l1 = self.box_DistanceBasedProgressBarController_v2_242
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1863128960", "1863128960", "S08M010_Main", "box_DistanceBasedProgressBarController_v2_14.Completed", "box_DistanceBasedProgressBarController_v2_242.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_141_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v4_8()
  l0 = self.box_MapPointController_v4_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|841734631", "841734631", "S08M010_Main", "box_Ordered_Output_141.Out", "box_MapPointController_v4_8.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_141_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Conflict_Monitor_44()
  l0 = self.box_Player_Conflict_Monitor_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|712706723", "712706723", "S08M010_Main", "box_Ordered_Output_141.Out", "box_Player_Conflict_Monitor_44.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CinematicPrep_250_PreOut()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Force assign in case player pressed Y just before the cinematic", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'VehicleSeatingController')-- Comment: Force assign in case player pressed Y just before the cinematic")
  l0 = self.box_VehicleSeatingController_119
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0 = self.box_CinematicPrep_250
  l1 = self.box_VehicleSeatingController_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|42833718", "42833718", "S08M010_Main", "box_CinematicPrep_250.PreOut", "box_VehicleSeatingController_119.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_TriggerMonitor_v2_95_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InputListener_Monitor_214()
  l0 = self.box_TriggerMonitor_v2_95
  l1 = self.box_InputListener_Monitor_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1452945196", "1452945196", "S08M010_Main", "box_TriggerMonitor_v2_95.Disabled", "box_InputListener_Monitor_214.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_95_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InputListener_Monitor_214()
  l0 = self.box_TriggerMonitor_v2_95
  l1 = self.box_InputListener_Monitor_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1482367181", "1482367181", "S08M010_Main", "box_TriggerMonitor_v2_95.Enabled", "box_InputListener_Monitor_214.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_95_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_95
  l1 = self.box_OnceOnly_v3_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|706932391", "706932391", "S08M010_Main", "box_TriggerMonitor_v2_95.Enter", "box_OnceOnly_v3_136.In", l0, l1)
  l1:In(0)
end
function export:f_box_SetBoolean_v2_378_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_378
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_378_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_378
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_378_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_378
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_378_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_378
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_378_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_378
  self.ConversationStarted = l0.Target
end
function export:f_box_SetTimeOfDay_395_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_409
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|453558993", "453558993", "S08M010_Main", "box_SetTimeOfDay_395.Out", "box_Timer_v2_409.Start", clone, l0)
  l0:Start()
end
function export:f_box_InteractionScriptMonitor_v2_57_AnimationFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_57()
  l0 = self.box_InteractionScriptMonitor_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1017073750", "1017073750", "S08M010_Main", "box_InteractionScriptMonitor_v2_57.AnimationFinished", "box_InteractionScriptMonitor_v2_57.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptMonitor_v2_57_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_371()
  l0 = self.box_InteractionScriptMonitor_v2_57
  l1 = self.box_OnceOnly_v3_371
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|3010312", "3010312", "S08M010_Main", "box_InteractionScriptMonitor_v2_57.Disabled", "box_OnceOnly_v3_371.In", l0, l1)
  l1:In(0)
end
function export:f_box_S08M010_Checkpoint_112_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_Checkpoint_112
  self.PlayerEntity = l0.Player
  l1 = self.box_SetBoolean_v2_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1025039383", "1025039383", "S08M010_Main", "box_S08M010_Checkpoint_112.Out", "box_SetBoolean_v2_98.True", l0, l1)
  l1:True()
end
function export:f_box_Simple_Node_402_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_401()
  l0 = self.box_TriggerMonitor_v2_401
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|155856686", "155856686", "S08M010_Main", "box_Simple_Node_402.Out", "box_TriggerMonitor_v2_401.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_ConsoleCommand_v2_208_Executed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_209()
  l0 = self.box_ConsoleCommand_v2_208
  l1 = self.box_MultipleOR_209
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|59713013", "59713013", "S08M010_Main", "box_ConsoleCommand_v2_208.Executed", "box_MultipleOR_209.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MapPointController_v4_148_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_150()
  l0 = self.box_MapPointController_v4_148
  l1 = self.box_TriggerMonitor_v2_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1724823645", "1724823645", "S08M010_Main", "box_MapPointController_v4_148.Hidden", "box_TriggerMonitor_v2_150.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_148_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_150()
  l0 = self.box_MapPointController_v4_148
  l1 = self.box_TriggerMonitor_v2_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1626718768", "1626718768", "S08M010_Main", "box_MapPointController_v4_148.Shown", "box_TriggerMonitor_v2_150.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_122_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_43
  l0.PGTMissionArea = self.PGTArea
  l0 = self.box_MissionLayer_v2_122
  l1 = self.box_PGTController_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1931031966", "1931031966", "S08M010_Main", "box_MissionLayer_v2_122.Loaded", "box_PGTController_v2_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_Toy_Car_Controller_429_CalledBack()
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
  l0._name = "box_Flying_Drone_Controller_428"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2121075875"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1187386750", "1187386750", "S08M010_Main", "box_Toy_Car_Controller_429.CalledBack", "box_Flying_Drone_Controller_428.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_S08M010_Checkpoint_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_Checkpoint_5
  self.PlayerEntity = l0.Player
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|375359119"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_58_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_58_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_58_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_58_Out_3
  l0 = self.box_S08M010_Checkpoint_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1526463235", "1526463235", "S08M010_Main", "box_S08M010_Checkpoint_5.Out", "box_Ordered_Output_58.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_103_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_231
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055360592242"
  l0 = self.box_PlaySequence_v5_103
  l1 = self.box_PhoneCommunicationController_231
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1241156349", "1241156349", "S08M010_Main", "box_PlaySequence_v5_103.Finished", "box_PhoneCommunicationController_231.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_VehicleSeatingController_19_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_432()
  l0 = self.box_VehicleSeatingController_19
  l1 = self.box_OnceOnly_v3_432
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1083574815", "1083574815", "S08M010_Main", "box_VehicleSeatingController_19.AbortMoveAndUseSeat", "box_OnceOnly_v3_432.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_19_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_432()
  l0 = self.box_VehicleSeatingController_19
  l1 = self.box_OnceOnly_v3_432
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1852035812", "1852035812", "S08M010_Main", "box_VehicleSeatingController_19.AssignCompleted", "box_OnceOnly_v3_432.In", l0, l1)
  l1:In(0)
end
function export:f_box_MissionMessageController_v3_114_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SearchArea_133()
  l0 = self.box_MissionMessageController_v3_114
  l1 = self.box_SearchArea_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1343315235", "1343315235", "S08M010_Main", "box_MissionMessageController_v3_114.Out", "box_SearchArea_133.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_209_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_IOP_Main_70
  l0.NudleUpperLMA = self.NudleUpperLMA
  l0.NudleLowerLMA = self.NudleLowerLMA
  l0 = self.box_MultipleOR_209
  l1 = self.box_S08M010_IOP_Main_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1097400234", "1097400234", "S08M010_Main", "box_MultipleOR_209.Out", "box_S08M010_IOP_Main_70.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_88_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2016266212"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_83_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_83_Out_1
  l0 = self.box_MissionMessageController_v3_88
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1842791272", "1842791272", "S08M010_Main", "box_MissionMessageController_v3_88.Out", "box_Ordered_Output_83.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_65
  l1 = self.box_SetBoolean_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1324973819", "1324973819", "S08M010_Main", "box_OnceOnly_v3_65.Out", "box_SetBoolean_v2_12.False", l0, l1)
  l1:False()
end
function export:f_box_CLOController_139_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_139
  self.NudleBus = l0.UserID
  l0 = self.box_CLOController_138
  l0.CLO = self.CLO_HoratioBusPassenger_Stanford
  l0 = self.box_CLOController_139
  l1 = self.box_CLOController_138
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1127379685", "1127379685", "S08M010_Main", "box_CLOController_139.OnUserInPlace", "box_CLOController_138.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionLayer_v2_249_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_273"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|858584196"
  l0.Out = self.f_box_Get_Player_ID_273_Out
  l0 = self.box_MissionLayer_v2_249
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|389010715", "389010715", "S08M010_Main", "box_MissionLayer_v2_249.Loaded", "box_Get_Player_ID_273.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_240_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_Checkpoint_5()
  l0 = self.box_CinematicPrep_240
  l1 = self.box_S08M010_Checkpoint_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1550139893", "1550139893", "S08M010_Main", "box_CinematicPrep_240.PostOut", "box_S08M010_Checkpoint_5.GameFlow", l0, l1)
  l1:GameFlow()
end
function export:f_box_Simple_Node_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_359()
  l0 = self.box_MultipleOR_359
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|660608796", "660608796", "S08M010_Main", "box_Simple_Node_13.Out", "box_MultipleOR_359.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_S08M010_Checkpoint_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_Checkpoint_66
  self.PlayerEntity = l0.Player
  self:OnEnter_box_HackableController_v2_270()
  l1 = self.box_HackableController_v2_270
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1735397507", "1735397507", "S08M010_Main", "box_S08M010_Checkpoint_66.Out", "box_HackableController_v2_270.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_PlaySound_v2_326_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_327()
  l0 = self.box_PlaySound_v2_326
  l1 = self.box_Hackable_Monitor_327
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|808613936", "808613936", "S08M010_Main", "box_PlaySound_v2_326.Out", "box_Hackable_Monitor_327.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_S08M010_SpawnAndAssignCLOtoBus02_293_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus02_293
  self.BusPassengers = l0.PassengerList_Out
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372072446567155"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_254"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|570040546"
  l0.Activated = self.f_box_MissionMusicController_254_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus02_293
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|72862567", "72862567", "S08M010_Main", "box_S08M010_SpawnAndAssignCLOtoBus02_293.Completed", "box_MissionMusicController_254.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_334_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_417
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|769251509", "769251509", "S08M010_Main", "box_Media_System_Custom_Broadcast_Controller_334.LoadAndPlayRequested", "box_ListWriter_417.Add", clone, l0)
  l0:Add()
end
function export:f_box_MissionLayer_v2_128_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_48
  l0.PGTMissionArea = self.PGTArea
  l0 = self.box_MissionLayer_v2_128
  l1 = self.box_PGTController_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1927055418", "1927055418", "S08M010_Main", "box_MissionLayer_v2_128.Loaded", "box_PGTController_v2_48.Start", l0, l1)
  l1:Start()
end
function export:f_box_Flying_Drone_Controller_243_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_177
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055360592245"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|814314859", "814314859", "S08M010_Main", "box_Flying_Drone_Controller_243.CalledBack", "box_PhoneCommunicationController_177.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_GameplayConversationController_v3_60_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_147()
  l0 = self.box_GameplayConversationController_v3_60
  l1 = self.box_MultipleOR_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2025630385", "2025630385", "S08M010_Main", "box_GameplayConversationController_v3_60.Finished", "box_MultipleOR_147.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_GameplayConversationController_v3_60_Paused()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_147()
  l0 = self.box_GameplayConversationController_v3_60
  l1 = self.box_MultipleOR_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|451283983", "451283983", "S08M010_Main", "box_GameplayConversationController_v3_60.Paused", "box_MultipleOR_147.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_GameplayConversationController_v3_60_Resumed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_158()
  l0 = self.box_GameplayConversationController_v3_60
  l1 = self.box_MultipleOR_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1689546226", "1689546226", "S08M010_Main", "box_GameplayConversationController_v3_60.Resumed", "box_MultipleOR_158.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_GameplayConversationController_v3_60_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayConversationController_v3_60
  l1 = self.box_SetBoolean_v2_383
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1715783345", "1715783345", "S08M010_Main", "box_GameplayConversationController_v3_60.Started", "box_SetBoolean_v2_383.True", l0, l1)
  l1:True()
end
function export:f_box_Ordered_Output_272_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S08M010_Bus_Drive_276()
  l0 = self.box_S08M010_Bus_Drive_276
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1957324958", "1957324958", "S08M010_Main", "box_Ordered_Output_272.Out", "box_S08M010_Bus_Drive_276.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_272_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_250
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|306707133", "306707133", "S08M010_Main", "box_Ordered_Output_272.Out", "box_CinematicPrep_250.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_Ordered_Output_272_Out_2()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1150477251"
  l0.Out = self.f_box_Simple_Node_236_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1414691015", "1414691015", "S08M010_Main", "box_Ordered_Output_272.Out", "box_Simple_Node_236.In", clone, l0)
  l0:In()
end
function export:f_box_SearchArea_133_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_LocateTheCentralServer_42()
  l0 = self.box_SearchArea_133
  l1 = self.box_S08M010_LocateTheCentralServer_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|607998768", "607998768", "S08M010_Main", "box_SearchArea_133.Disabled", "box_S08M010_LocateTheCentralServer_42.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SearchArea_133_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Network_Surfing_Monitor_412()
  l0 = self.box_SearchArea_133
  l1 = self.box_Network_Surfing_Monitor_412
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1974988573", "1974988573", "S08M010_Main", "box_SearchArea_133.Enabled", "box_Network_Surfing_Monitor_412.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SearchArea_133_Entered()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_288
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective060",
    item = "SubObjective2b",
    id = "359141"
  }
  l0 = self.box_SearchArea_133
  l1 = self.box_MissionMessageController_v3_288
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|262065355", "262065355", "S08M010_Main", "box_SearchArea_133.Entered", "box_MissionMessageController_v3_288.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_Simple_Node_241_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_356"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1365005731"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_356_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_356_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1411256851", "1411256851", "S08M010_Main", "box_Simple_Node_241.Out", "box_Ordered_Output_356.In", clone, l0)
  l0:In()
end
function export:f_box_Player_Conflict_Monitor_300_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_GameplayInteractionController_430()
  l0 = self.box_Player_Conflict_Monitor_300
  l1 = self.box_GameplayInteractionController_430
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1519002785", "1519002785", "S08M010_Main", "box_Player_Conflict_Monitor_300.Disabled", "box_GameplayInteractionController_430.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Player_Conflict_Monitor_300_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_GameplayInteractionController_430()
  l0 = self.box_Player_Conflict_Monitor_300
  l1 = self.box_GameplayInteractionController_430
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1826820400", "1826820400", "S08M010_Main", "box_Player_Conflict_Monitor_300.Enabled", "box_GameplayInteractionController_430.Start", l0, l1)
  l1:Start()
end
function export:f_box_Player_Conflict_Monitor_300_InConflict()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|758771115"
  l0.Out = self.f_box_Simple_Node_146_Out
  l0 = self.box_Player_Conflict_Monitor_300
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|890026254", "890026254", "S08M010_Main", "box_Player_Conflict_Monitor_300.InConflict", "box_Simple_Node_146.In", l0, l1)
  l1:In()
end
function export:f_box_Player_Conflict_Monitor_300_NOTInConflict()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_296"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1881383033"
  l0.Out = self.f_box_Simple_Node_296_Out
  l0 = self.box_Player_Conflict_Monitor_300
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1223032842", "1223032842", "S08M010_Main", "box_Player_Conflict_Monitor_300.NOTInConflict", "box_Simple_Node_296.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMusicController_339_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S08M010_Checkpoint_164()
  l0 = self.box_S08M010_Checkpoint_164
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|480487770", "480487770", "S08M010_Main", "box_MissionMusicController_339.Activated", "box_S08M010_Checkpoint_164.Checkpoint", clone, l0)
  l0:Checkpoint()
end
function export:f_box_VehicleSeatingController_285_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_437()
  l0 = self.box_VehicleSeatingController_285
  l1 = self.box_OnceOnly_v3_437
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|592576112", "592576112", "S08M010_Main", "box_VehicleSeatingController_285.AbortMoveAndUseSeat", "box_OnceOnly_v3_437.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_285_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_437()
  l0 = self.box_VehicleSeatingController_285
  l1 = self.box_OnceOnly_v3_437
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|808211598", "808211598", "S08M010_Main", "box_VehicleSeatingController_285.AssignCompleted", "box_OnceOnly_v3_437.In", l0, l1)
  l1:In(0)
end
function export:f_box_DriveAndTalk_45_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_307()
  l0 = self.box_DriveAndTalk_45
  l1 = self.box_VehicleMonitor_v3_307
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1551227414", "1551227414", "S08M010_Main", "box_DriveAndTalk_45.Started", "box_VehicleMonitor_v3_307.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_DriveAndTalk_45_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_307()
  l0 = self.box_DriveAndTalk_45
  l1 = self.box_VehicleMonitor_v3_307
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|522518402", "522518402", "S08M010_Main", "box_DriveAndTalk_45.Stopped", "box_VehicleMonitor_v3_307.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_344_EndedAllCustomMediaBroadcasts()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_107()
  l0 = self.box_Mission_End_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1009392017", "1009392017", "S08M010_Main", "box_Media_System_Custom_Broadcast_Controller_344.EndedAllCustomMediaBroadcasts", "box_Mission_End_107.End", clone, l0)
  l0:End()
end
function export:f_box_Ordered_Output_261_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Delivery_Gameplay_338()
  l0 = self.box_Delivery_Gameplay_338
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1622381986", "1622381986", "S08M010_Main", "box_Ordered_Output_261.Out", "box_Delivery_Gameplay_338.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_261_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_251
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1982677814", "1982677814", "S08M010_Main", "box_Ordered_Output_261.Out", "box_OnceOnly_v3_251.In", clone, l0)
  l0:In(0)
end
function export:f_box_CinematicPrep_220_PostOut()
  local l0, l1
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
  l0._name = "box_Player_State_Controller_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1035802264"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_228_MaxSpeedSet
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
  l0 = self.box_CinematicPrep_220
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|471783551", "471783551", "S08M010_Main", "box_CinematicPrep_220.PostOut", "box_Player_State_Controller_228.SetMaxSpeed", l0, l1)
  l1:SetMaxSpeed()
end
function export:f_box_Ordered_Output_203_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_210"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1056091036"
  l0.Out = self.f_box_Simple_Node_210_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1425124950", "1425124950", "S08M010_Main", "box_Ordered_Output_203.Out", "box_Simple_Node_210.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_203_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_96
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|648564342", "648564342", "S08M010_Main", "box_Ordered_Output_203.Out", "box_MissionMessageController_v3_96.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_203_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_340"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|169038529"
  l0.Out = self.f_box_Simple_Node_340_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1026506896", "1026506896", "S08M010_Main", "box_Ordered_Output_203.Out", "box_Simple_Node_340.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_203_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_205()
  l0 = self.box_Hackable_Monitor_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|458441266", "458441266", "S08M010_Main", "box_Ordered_Output_203.Out", "box_Hackable_Monitor_205.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Intel_Controller_216_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_413
  l0.HackableEntity = self.Server_HackableEntity_Server
  l0 = self.box_Intel_Controller_216
  l1 = self.box_HackableController_v2_413
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1579074934", "1579074934", "S08M010_Main", "box_Intel_Controller_216.Disabled", "box_HackableController_v2_413.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_VehicleSeatingController_142_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_143
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.Horatio
  l0.CanUseBackSeat = 1
  l0.Seat = "RearPassengerLeft"
  l0 = self.box_VehicleSeatingController_142
  l1 = self.box_VehicleSeatingController_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|630577841", "630577841", "S08M010_Main", "box_VehicleSeatingController_142.AssignCompleted", "box_VehicleSeatingController_143.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Player_State_Controller_221_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Player_State_Controller_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1955784810"
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
  l0.ClimbInteractionAllowedSet = self.f_box_Player_State_Controller_118_ClimbInteractionAllowedSet
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|353768478", "353768478", "S08M010_Main", "box_Player_State_Controller_221.MaxSpeedSet", "box_Player_State_Controller_118.SetClimbInteractionAllowed", clone, l0)
  l0:SetClimbInteractionAllowed()
end
function export:f_box_TriggerMonitor_v2_91_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_425()
  l0 = self.box_TriggerMonitor_v2_91
  l1 = self.box_TriggerMonitor_v2_425
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1050437108", "1050437108", "S08M010_Main", "box_TriggerMonitor_v2_91.Disabled", "box_TriggerMonitor_v2_425.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_91_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_425()
  l0 = self.box_TriggerMonitor_v2_91
  l1 = self.box_TriggerMonitor_v2_425
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|813528823", "813528823", "S08M010_Main", "box_TriggerMonitor_v2_91.Enabled", "box_TriggerMonitor_v2_425.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_91_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_269()
  l0 = self.box_TriggerMonitor_v2_91
  l1 = self.box_MultipleOR_269
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|553548071", "553548071", "S08M010_Main", "box_TriggerMonitor_v2_91.Enter", "box_MultipleOR_269.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TriggerMonitor_v2_150_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_61()
  l0 = self.box_TriggerMonitor_v2_150
  l1 = self.box_TriggerMonitor_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1331354248", "1331354248", "S08M010_Main", "box_TriggerMonitor_v2_150.Disabled", "box_TriggerMonitor_v2_61.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_150_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_148()
  l0 = self.box_TriggerMonitor_v2_150
  l1 = self.box_MapPointController_v4_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|611044068", "611044068", "S08M010_Main", "box_TriggerMonitor_v2_150.Enter", "box_MapPointController_v4_148.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Moveable_Entity_Monitor_374_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_126
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
  l0 = self.box_Moveable_Entity_Monitor_374
  l1 = self.box_MissionMessageController_v3_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1212667040", "1212667040", "S08M010_Main", "box_Moveable_Entity_Monitor_374.Disabled", "box_MissionMessageController_v3_126.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Moveable_Entity_Monitor_374_OnFwdMovementFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_52()
  l0 = self.box_Moveable_Entity_Monitor_374
  l1 = self.box_MapPointController_v4_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1325173259", "1325173259", "S08M010_Main", "box_Moveable_Entity_Monitor_374.OnFwdMovementFinished", "box_MapPointController_v4_52.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MultipleOR_365_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1223654276"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_79_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_79_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_79_Out_2
  l0 = self.box_MultipleOR_365
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1169360473", "1169360473", "S08M010_Main", "box_MultipleOR_365.Out", "box_Ordered_Output_79.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingController_377_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_377
  l1 = self.box_Timer_v2_188
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1873751395", "1873751395", "S08M010_Main", "box_VehicleSeatingController_377.Assigned", "box_Timer_v2_188.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_301_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_304()
  l0 = self.box_MultipleOR_301
  l1 = self.box_Interact_Gameplay_304
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|225635726", "225635726", "S08M010_Main", "box_MultipleOR_301.Out", "box_Interact_Gameplay_304.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_S08M010_CIN_MeetingBrody_Main_186_out()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_9
  l0.PGTMissionArea = self.PGTArea
  l0 = self.box_S08M010_CIN_MeetingBrody_Main_186
  l1 = self.box_PGTController_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2031559727", "2031559727", "S08M010_Main", "box_S08M010_CIN_MeetingBrody_Main_186.out", "box_PGTController_v2_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_LMA_Layer_Controller_77_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_77
  l1 = self.box_S08M010_CIN_NudleDump_Main_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|210834344", "210834344", "S08M010_Main", "box_LMA_Layer_Controller_77.Unloaded", "box_S08M010_CIN_NudleDump_Main_131.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_362_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1271865862"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_156_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_156_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_156_Out_2
  l0 = self.box_MultipleOR_362
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1113958525", "1113958525", "S08M010_Main", "box_MultipleOR_362.Out", "box_Ordered_Output_156.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_110_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_110
  self.Horatio = l0.UserID
  l0 = self.box_VehicleSeatingController_179
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0 = self.box_CLOController_110
  l1 = self.box_VehicleSeatingController_179
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1203187210", "1203187210", "S08M010_Main", "box_CLOController_110.OnUserInPlace", "box_VehicleSeatingController_179.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_CinematicPrep_193_PreOut()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Force assign in case player pressed Y just before the cinematic", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'VehicleSeatingController')-- Comment: Force assign in case player pressed Y just before the cinematic")
  l0 = self.box_VehicleSeatingController_347
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0 = self.box_CinematicPrep_193
  l1 = self.box_VehicleSeatingController_347
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2025978193", "2025978193", "S08M010_Main", "box_CinematicPrep_193.PreOut", "box_VehicleSeatingController_347.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_DPad_Hackable_Controller_414_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Intel_Controller_216()
  l0 = self.box_Intel_Controller_216
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|556928959", "556928959", "S08M010_Main", "box_DPad_Hackable_Controller_414.Removed", "box_Intel_Controller_216.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TimerToScreen_153_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_194
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState2",
    id = "359306"
  }
  l0 = self.box_TimerToScreen_153
  l1 = self.box_MissionController_v4_194
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1463912254", "1463912254", "S08M010_Main", "box_TimerToScreen_153.TimeElapsed", "box_MissionController_v4_194.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_SpawnAndAssignCLOtoBus01_291_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus01_291
  self.BusPassengers = l0.PassengerList_Out
  l0 = self.box_CinematicPrep_260
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus01_291
  l1 = self.box_CinematicPrep_260
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|828372051", "828372051", "S08M010_Main", "box_S08M010_SpawnAndAssignCLOtoBus01_291.Completed", "box_CinematicPrep_260.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PGTController_v2_43_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372062677476430"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|445384383"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_233_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PGTController_v2_43
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|551152905", "551152905", "S08M010_Main", "box_PGTController_v2_43.AllSpawned", "box_Media_System_Custom_Broadcast_Controller_233.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_S08M010_SpawnAndAssignCLOtoBus02_292_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus02_292
  self.BusPassengers = l0.PassengerList_Out
  l0 = self.box_CinematicPrep_184
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus02_292
  l1 = self.box_CinematicPrep_184
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|6775292", "6775292", "S08M010_Main", "box_S08M010_SpawnAndAssignCLOtoBus02_292.Completed", "box_CinematicPrep_184.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CLOController_47_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_47
  self.Horatio = l0.UserID
  l0 = self.box_CLOController_64
  l0.CLO = self.HoratioCarCLO
  l0 = self.box_CLOController_47
  l1 = self.box_CLOController_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1568390192", "1568390192", "S08M010_Main", "box_CLOController_47.OnUserInPlace", "box_CLOController_64.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Reach_Gameplay_226_Reached()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_290"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|848355026"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_290_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_290_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_290_Out_2
  l0 = self.box_Reach_Gameplay_226
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1647437917", "1647437917", "S08M010_Main", "box_Reach_Gameplay_226.Reached", "box_Ordered_Output_290.In", l0, l1)
  l1:In()
end
function export:f_box_Reach_Gameplay_226_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_245
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective3",
    id = "359131"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0 = self.box_Reach_Gameplay_226
  l1 = self.box_MissionMessageController_v3_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1155392450", "1155392450", "S08M010_Main", "box_Reach_Gameplay_226.Stopped", "box_MissionMessageController_v3_245.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_OnceOnly_v3_108_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_108
  l1 = self.box_SetBoolean_v2_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2058073710", "2058073710", "S08M010_Main", "box_OnceOnly_v3_108.Out", "box_SetBoolean_v2_160.False", l0, l1)
  l1:False()
end
function export:f_box_Multiple_AND_343_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DrawWeapon_v2.lua")]
  l0.Pawn = nil
  l0._graph = self
  l0._name = "box_DrawWeapon_v2_337"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1841455884"
  l0.Out = DummyFunction
  l0.Holstered = self.f_box_DrawWeapon_v2_337_Holstered
  l0.HandgunEquipped = DummyFunction
  l0.AssaultEquipped = DummyFunction
  l0.ShotGunEquipped = DummyFunction
  l0.SniperEquipped = DummyFunction
  l0.GrenadeLauncherEquipped = DummyFunction
  l0 = self.box_Multiple_AND_343
  l1 = Boxes[PathID("domino/System/DrawWeapon_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1415558263", "1415558263", "S08M010_Main", "box_Multiple_AND_343.Out", "box_DrawWeapon_v2_337.Holster", l0, l1)
  l1:Holster()
end
function export:f_box_PlaySequence_v5_46_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_75()
  l0 = self.box_PlaySequence_v5_46
  l1 = self.box_OnceOnly_v3_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1402976323", "1402976323", "S08M010_Main", "box_PlaySequence_v5_46.Finished", "box_OnceOnly_v3_75.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_46_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_75()
  l0 = self.box_PlaySequence_v5_46
  l1 = self.box_OnceOnly_v3_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|711282494", "711282494", "S08M010_Main", "box_PlaySequence_v5_46.Skipped", "box_OnceOnly_v3_75.In", l0, l1)
  l1:In(0)
end
function export:f_box_MapPointController_v4_161_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FelonyTargetMonitor_247()
  l0 = self.box_MapPointController_v4_161
  l1 = self.box_FelonyTargetMonitor_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1087668678", "1087668678", "S08M010_Main", "box_MapPointController_v4_161.Hidden", "box_FelonyTargetMonitor_247.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_160_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_160
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_160_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_160
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_160_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_160
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_160_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_160
  self.DisplayPreObjective = l0.Target
end
function export:f_box_SetBoolean_v2_160_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_160
  self.DisplayPreObjective = l0.Target
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
  l0._name = "box_Simple_Node_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2102124682"
  l0.Out = self.f_box_Simple_Node_4_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|953928062", "953928062", "S08M010_Main", "box_Ordered_Output_201.Out", "box_Simple_Node_4.In", clone, l0)
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
  self:OnEnter_box_GameplayConversationController_v3_60()
  l0 = self.box_GameplayConversationController_v3_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1664079260", "1664079260", "S08M010_Main", "box_Ordered_Output_201.Out", "box_GameplayConversationController_v3_60.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_201_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_359()
  l0 = self.box_MultipleOR_359
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|703154394", "703154394", "S08M010_Main", "box_Ordered_Output_201.Out", "box_MultipleOR_359.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Simple_Node_111_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_358()
  l0 = self.box_MultipleOR_358
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|696597987", "696597987", "S08M010_Main", "box_Simple_Node_111.Out", "box_MultipleOR_358.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_AI_Buddy_Controller_312_IsWaiting()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_297"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|619522520"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_297_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_297_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_297_Out_2
  l0 = self.box_AI_Buddy_Controller_312
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1560175404", "1560175404", "S08M010_Main", "box_AI_Buddy_Controller_312.IsWaiting", "box_Ordered_Output_297.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Delivery_Gameplay_38()
  l0 = self.box_Delivery_Gameplay_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|591766752", "591766752", "S08M010_Main", "box_Simple_Node_2.Out", "box_Delivery_Gameplay_38.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_DrawWeapon_v2_337_Holstered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DrawWeapon_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_53()
  l0 = self.box_PlaySequence_v5_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1361268337", "1361268337", "S08M010_Main", "box_DrawWeapon_v2_337.Holstered", "box_PlaySequence_v5_53.Start", clone, l0)
  l0:Start()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_266_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669158"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_407"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|77582046"
  l0.Activated = self.f_box_MissionMusicController_407_Activated
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1138565522", "1138565522", "S08M010_Main", "box_Media_System_Custom_Broadcast_Controller_266.LoadAndPlayRequested", "box_MissionMusicController_407.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_TriggerMonitor_v2_403_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_429"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1457852508"
  l0.CalledBack = self.f_box_Toy_Car_Controller_429_CalledBack
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
  l0 = self.box_TriggerMonitor_v2_403
  l1 = Boxes[PathID("domino/System/ToyCarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|141183962", "141183962", "S08M010_Main", "box_TriggerMonitor_v2_403.Enter", "box_Toy_Car_Controller_429.CallBack", l0, l1)
  l1:CallBack()
end
function export:f_box_MultipleOR_109_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_GameplayInteractionController_32()
  l0 = self.box_MultipleOR_109
  l1 = self.box_GameplayInteractionController_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1279650856", "1279650856", "S08M010_Main", "box_MultipleOR_109.Out", "box_GameplayInteractionController_32.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_237_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_34()
  l0 = self.box_MissionMessageController_v3_237
  l1 = self.box_Hackable_Monitor_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|536982436", "536982436", "S08M010_Main", "box_MissionMessageController_v3_237.Out", "box_Hackable_Monitor_34.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleSeatingController_10_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_134()
  l0 = self.box_VehicleSeatingController_10
  l1 = self.box_OnceOnly_v3_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1586229269", "1586229269", "S08M010_Main", "box_VehicleSeatingController_10.AbortMoveAndUseSeat", "box_OnceOnly_v3_134.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_10_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_134()
  l0 = self.box_VehicleSeatingController_10
  l1 = self.box_OnceOnly_v3_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|54598540", "54598540", "S08M010_Main", "box_VehicleSeatingController_10.AssignCompleted", "box_OnceOnly_v3_134.In", l0, l1)
  l1:In(0)
end
function export:f_box_MissionMessageController_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|624061285"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_74_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_74_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_74_Out_2
  l0 = self.box_MissionMessageController_v3_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|701624268", "701624268", "S08M010_Main", "box_MissionMessageController_v3_6.Out", "box_Ordered_Output_74.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_426_HackForced()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_Checkpoint_27()
  l0 = self.box_HackableController_v2_426
  l1 = self.box_S08M010_Checkpoint_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|624816362", "624816362", "S08M010_Main", "box_HackableController_v2_426.HackForced", "box_S08M010_Checkpoint_27.GameFlow", l0, l1)
  l1:GameFlow()
end
function export:f_box_OnceOnly_v3_134_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus01_291
  l0.CLO01 = self.CLO_BusPassenger_01
  l0.CLO02 = self.CLO_BusPassenger_02
  l0.CLO03 = self.CLO_BusPassenger_03
  l0.CLO04 = self.CLO_BusPassenger_04
  l0.PassengerList_In = self.BusPassengers
  l0.BusVehicle = self.NudleBus
  l0 = self.box_OnceOnly_v3_134
  l1 = self.box_S08M010_SpawnAndAssignCLOtoBus01_291
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1550774604", "1550774604", "S08M010_Main", "box_OnceOnly_v3_134.Out", "box_S08M010_SpawnAndAssignCLOtoBus01_291.Start", l0, l1)
  l1:Start()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_93_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_135
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective020",
    item = "Objective",
    id = "359133"
  }
  l0.ShowPreviousObjectiveComplete = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|794628396", "794628396", "S08M010_Main", "box_Media_System_Custom_Broadcast_Controller_93.LoadAndPlayRequested", "box_MissionMessageController_v3_135.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Cinema_Zone_Cleanup_420_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_232
  l0.SceneEntity = "9223372053761397067"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_OnTheBusStop_CIN/s08_onthebusstop_cin.seq"
  l0.EntityIn.Horatio = self.Horatio
  l0.EntityIn.Bus = self.NudleBus
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1671575228", "1671575228", "S08M010_Main", "box_Cinema_Zone_Cleanup_420.Out", "box_PlaySequence_v5_232.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionLayer_v2_113_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_140
  l0.CLO = self.HoratioSpawner
  l0 = self.box_MissionLayer_v2_113
  l1 = self.box_CLOController_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1777742429", "1777742429", "S08M010_Main", "box_MissionLayer_v2_113.Loaded", "box_CLOController_140.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_392_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Player_State_Controller_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1650595190"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_221_MaxSpeedSet
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|802454961", "802454961", "S08M010_Main", "box_Ordered_Output_392.Out", "box_Player_State_Controller_221.SetMaxSpeed", clone, l0)
  l0:SetMaxSpeed()
end
function export:f_box_Ordered_Output_392_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlayerOnlyTriggerNoRCTip_283()
  l0 = self.box_PlayerOnlyTriggerNoRCTip_283
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1679865389", "1679865389", "S08M010_Main", "box_Ordered_Output_392.Out", "box_PlayerOnlyTriggerNoRCTip_283.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_296_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.NudleBus
  l0._graph = self
  l0._name = "box_Vehicle_Controller_306"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1226766637"
  l0.Out = DummyFunction
  l0.Usable = self.f_box_Vehicle_Controller_306_Usable
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1920956034", "1920956034", "S08M010_Main", "box_Simple_Node_296.Out", "box_Vehicle_Controller_306.SetAsUsable", clone, l0)
  l0:SetAsUsable()
end
function export:f_box_MissionLayer_v2_121_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_Checkpoint_112()
  l0 = self.box_MissionLayer_v2_121
  l1 = self.box_S08M010_Checkpoint_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|32065204", "32065204", "S08M010_Main", "box_MissionLayer_v2_121.Loaded", "box_S08M010_Checkpoint_112.Checkpoint", l0, l1)
  l1:Checkpoint()
end
function export:f_box_SetBoolean_v2_383_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_383
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_383_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_383
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_383_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_383
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_383_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_383
  self.ConversationStarted = l0.Target
end
function export:f_box_SetBoolean_v2_383_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_383
  self.ConversationStarted = l0.Target
end
function export:f_box_VehicleMonitor_v3_354_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_355()
  l0 = self.box_VehicleMonitor_v3_354
  l1 = self.box_MultipleOR_355
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1635782532", "1635782532", "S08M010_Main", "box_VehicleMonitor_v3_354.Disabled", "box_MultipleOR_355.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_354_Entered()
  local l0
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_354()
  l0 = self.box_VehicleMonitor_v3_354
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|55306262", "55306262", "S08M010_Main", "box_VehicleMonitor_v3_354.Entered", "box_VehicleMonitor_v3_354.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_130_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_GameplayInteractionController_32()
  l0 = self.box_MultipleOR_130
  l1 = self.box_GameplayInteractionController_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1341592021", "1341592021", "S08M010_Main", "box_MultipleOR_130.Out", "box_GameplayInteractionController_32.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_VehicleMonitor_v3_364_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_365()
  l0 = self.box_VehicleMonitor_v3_364
  l1 = self.box_MultipleOR_365
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1809420234", "1809420234", "S08M010_Main", "box_VehicleMonitor_v3_364.Disabled", "box_MultipleOR_365.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_364_Entered()
  local l0
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_364()
  l0 = self.box_VehicleMonitor_v3_364
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|94373717", "94373717", "S08M010_Main", "box_VehicleMonitor_v3_364.Entered", "box_VehicleMonitor_v3_364.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_135_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S08M010_WalkAndTalk_116()
  l0 = self.box_MissionMessageController_v3_135
  l1 = self.box_S08M010_WalkAndTalk_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1038262820", "1038262820", "S08M010_Main", "box_MissionMessageController_v3_135.Out", "box_S08M010_WalkAndTalk_116.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_75_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_198
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_OnceOnly_v3_75
  l1 = self.box_CinematicPrep_198
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1870710027", "1870710027", "S08M010_Main", "box_OnceOnly_v3_75.Out", "box_CinematicPrep_198.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Delivery_Gameplay_38_AllDeliveryCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.PlayerEntity
  l0.Vehicle = self.NudleBus
  l0._graph = self
  l0._name = "box_VehicleSeatingMonitor_360"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|135944297"
  l0.EntityIsInVehicle = self.f_box_VehicleSeatingMonitor_360_EntityIsInVehicle
  l0.EntityIsNotInVehicle = self.f_box_VehicleSeatingMonitor_360_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0 = self.box_Delivery_Gameplay_38
  l1 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|877050240", "877050240", "S08M010_Main", "box_Delivery_Gameplay_38.AllDeliveryCompleted", "box_VehicleSeatingMonitor_360.IsInVehicle", l0, l1)
  l1:IsInVehicle()
end
function export:f_box_TriggerMonitor_v2_401_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_397()
  l0 = self.box_TriggerMonitor_v2_401
  l1 = self.box_TriggerMonitor_v2_397
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|725950943", "725950943", "S08M010_Main", "box_TriggerMonitor_v2_401.Disabled", "box_TriggerMonitor_v2_397.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_401_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_397()
  l0 = self.box_TriggerMonitor_v2_401
  l1 = self.box_TriggerMonitor_v2_397
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|683405345", "683405345", "S08M010_Main", "box_TriggerMonitor_v2_401.Enabled", "box_TriggerMonitor_v2_397.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_401_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_400"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1326081947"
  l0.CalledBack = self.f_box_Toy_Car_Controller_400_CalledBack
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
  l0 = self.box_TriggerMonitor_v2_401
  l1 = Boxes[PathID("domino/System/ToyCarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1339420092", "1339420092", "S08M010_Main", "box_TriggerMonitor_v2_401.Enter", "box_Toy_Car_Controller_400.CallBack", l0, l1)
  l1:CallBack()
end
function export:f_box_S08M010_Bus_Drive_276_BuddyConditionFailed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_217
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState4",
    id = "625591"
  }
  l0 = self.box_S08M010_Bus_Drive_276
  l1 = self.box_MissionController_v4_217
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|822529498", "822529498", "S08M010_Main", "box_S08M010_Bus_Drive_276.BuddyConditionFailed", "box_MissionController_v4_217.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_Bus_Drive_276_BuddyKilled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_350
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState3",
    id = "359307"
  }
  l0 = self.box_S08M010_Bus_Drive_276
  l1 = self.box_MissionController_v4_350
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1931865185", "1931865185", "S08M010_Main", "box_S08M010_Bus_Drive_276.BuddyKilled", "box_MissionController_v4_350.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_Bus_Drive_276_BusDestroyed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_259
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState1",
    id = "359144"
  }
  l0 = self.box_S08M010_Bus_Drive_276
  l1 = self.box_MissionController_v4_259
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|519349830", "519349830", "S08M010_Main", "box_S08M010_Bus_Drive_276.BusDestroyed", "box_MissionController_v4_259.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_Bus_Drive_276_EnteringBus()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_257"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|996225937"
  l0.Out = self.f_box_Simple_Node_257_Out
  l0 = self.box_S08M010_Bus_Drive_276
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|725378257", "725378257", "S08M010_Main", "box_S08M010_Bus_Drive_276.EnteringBus", "box_Simple_Node_257.In", l0, l1)
  l1:In()
end
function export:f_box_S08M010_Bus_Drive_276_ObjectiveReachDestination()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_256
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective 31",
    id = "653786"
  }
  l0.ShowPreviousObjectiveComplete = self.DisplayPreObjective
  l0 = self.box_S08M010_Bus_Drive_276
  l1 = self.box_MissionMessageController_v3_256
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|76450598", "76450598", "S08M010_Main", "box_S08M010_Bus_Drive_276.ObjectiveReachDestination", "box_MissionMessageController_v3_256.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_S08M010_Bus_Drive_276_PlayerLeftBus()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_268
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "Objective2",
    id = "359129"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0 = self.box_S08M010_Bus_Drive_276
  l1 = self.box_MissionMessageController_v3_268
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1116269713", "1116269713", "S08M010_Main", "box_S08M010_Bus_Drive_276.PlayerLeftBus", "box_MissionMessageController_v3_268.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_S08M010_Bus_Drive_276_StartConversation()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_182
  l0.Input = {}
  l0.Data[0] = self.Horatio
  l0 = self.box_S08M010_Bus_Drive_276
  l1 = self.box_ListWriter_182
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|123093755", "123093755", "S08M010_Main", "box_S08M010_Bus_Drive_276.StartConversation", "box_ListWriter_182.Add", l0, l1)
  l1:Add()
end
function export:f_box_S08M010_Bus_Drive_276_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1602667650"
  l0.Out = self.f_box_Simple_Node_241_Out
  l0 = self.box_S08M010_Bus_Drive_276
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|337050353", "337050353", "S08M010_Main", "box_S08M010_Bus_Drive_276.Stopped", "box_Simple_Node_241.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingController_35_AbortMoveAndUseSeat()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_433()
  l0 = self.box_VehicleSeatingController_35
  l1 = self.box_OnceOnly_v3_433
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1520757719", "1520757719", "S08M010_Main", "box_VehicleSeatingController_35.AbortMoveAndUseSeat", "box_OnceOnly_v3_433.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_35_AssignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_433()
  l0 = self.box_VehicleSeatingController_35
  l1 = self.box_OnceOnly_v3_433
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1556212384", "1556212384", "S08M010_Main", "box_VehicleSeatingController_35.AssignCompleted", "box_OnceOnly_v3_433.In", l0, l1)
  l1:In(0)
end
function export:f_box_Player_State_Controller_118_ClimbInteractionAllowedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_173
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222326999"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|165438471", "165438471", "S08M010_Main", "box_Player_State_Controller_118.ClimbInteractionAllowedSet", "box_PhoneCommunicationController_173.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_PlaySequence_v5_232_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_234()
  l0 = self.box_PlaySequence_v5_232
  l1 = self.box_OnceOnly_v3_234
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|154562419", "154562419", "S08M010_Main", "box_PlaySequence_v5_232.Finished", "box_OnceOnly_v3_234.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_232_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_234()
  l0 = self.box_PlaySequence_v5_232
  l1 = self.box_OnceOnly_v3_234
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1158616972", "1158616972", "S08M010_Main", "box_PlaySequence_v5_232.Skipped", "box_OnceOnly_v3_234.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_232_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_232
  self.Horatio = l0.EntityOut.Horatio
  self.NudleBus = l0.EntityOut.Bus
end
function export:f_box_OnceOnly_v3_218_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_206
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055079368289"
  l0 = self.box_OnceOnly_v3_218
  l1 = self.box_PhoneCommunicationController_206
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|502832892", "502832892", "S08M010_Main", "box_OnceOnly_v3_218.Out", "box_PhoneCommunicationController_206.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PhoneCommunicationController_159_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_163
  l0.Bool = self.HasNudleMapAccess
  l0 = self.box_PhoneCommunicationController_159
  l1 = self.box_SetBoolean_v2_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|42154372", "42154372", "S08M010_Main", "box_PhoneCommunicationController_159.StartCommunicationOut", "box_SetBoolean_v2_163.True", l0, l1)
  l1:True()
end
function export:f_box_Player_State_Controller_227_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_224
  l0.Text = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.EXTRA.Download Feedback",
    item = "Specific_Download2",
    id = "688734"
  }
  l0.TotalTime = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1432031657", "1432031657", "S08M010_Main", "box_Player_State_Controller_227.MaxSpeedSet", "box_DistanceBasedProgressBarController_v2_224.Start", clone, l0)
  l0:Start()
end
function export:f_box_TriggerMonitor_v2_397_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_393"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|133100656"
  l0.CalledBack = self.f_box_Toy_Car_Controller_393_CalledBack
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
  l0 = self.box_TriggerMonitor_v2_397
  l1 = Boxes[PathID("domino/System/ToyCarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1273390433", "1273390433", "S08M010_Main", "box_TriggerMonitor_v2_397.Enter", "box_Toy_Car_Controller_393.CallBack", l0, l1)
  l1:CallBack()
end
function export:f_box_OnceOnly_v3_434_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus01_294
  l0.CLO01 = self.CLO_BusPassenger_01
  l0.CLO02 = self.CLO_BusPassenger_02
  l0.CLO03 = self.CLO_BusPassenger_03
  l0.CLO04 = self.CLO_BusPassenger_04
  l0.PassengerList_In = self.BusPassengers
  l0.BusVehicle = self.NudleBus
  l0 = self.box_OnceOnly_v3_434
  l1 = self.box_S08M010_SpawnAndAssignCLOtoBus01_294
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2014461198", "2014461198", "S08M010_Main", "box_OnceOnly_v3_434.Out", "box_S08M010_SpawnAndAssignCLOtoBus01_294.Start", l0, l1)
  l1:Start()
end
function export:f_box_InteractionScriptMonitor_v2_72_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_178
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048120064785"
  l0 = self.box_InteractionScriptMonitor_v2_72
  l1 = self.box_PhoneCommunicationController_178
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1376231254", "1376231254", "S08M010_Main", "box_InteractionScriptMonitor_v2_72.Disabled", "box_PhoneCommunicationController_178.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_InteractionScriptMonitor_v2_72_InteractionFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_72()
  l0 = self.box_InteractionScriptMonitor_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1643570202", "1643570202", "S08M010_Main", "box_InteractionScriptMonitor_v2_72.InteractionFinished", "box_InteractionScriptMonitor_v2_72.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CinematicPrep_262_PreOut()
  local l0, l1
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
  l0._name = "box_Lanes_Restrictions_Control_387"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|2092134285"
  l0.Out = self.f_box_Lanes_Restrictions_Control_387_Out
  l0 = self.box_CinematicPrep_262
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|750672899", "750672899", "S08M010_Main", "box_CinematicPrep_262.PreOut", "box_Lanes_Restrictions_Control_387.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_196_PreOut()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Force assign in case player pressed Y just before the cinematic", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'VehicleSeatingController')-- Comment: Force assign in case player pressed Y just before the cinematic")
  l0 = self.box_VehicleSeatingController_377
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0 = self.box_CinematicPrep_196
  l1 = self.box_VehicleSeatingController_377
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1215762588", "1215762588", "S08M010_Main", "box_CinematicPrep_196.PreOut", "box_VehicleSeatingController_377.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_TriggerMonitor_v2_225_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_104()
  l0 = self.box_TriggerMonitor_v2_225
  l1 = self.box_MapPointController_v4_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1183745037", "1183745037", "S08M010_Main", "box_TriggerMonitor_v2_225.Disabled", "box_MapPointController_v4_104.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TriggerMonitor_v2_225_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_104()
  l0 = self.box_TriggerMonitor_v2_225
  l1 = self.box_MapPointController_v4_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|600418541", "600418541", "S08M010_Main", "box_TriggerMonitor_v2_225.Enabled", "box_MapPointController_v4_104.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_225_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_225()
  l0 = self.box_TriggerMonitor_v2_225
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|696698422", "696698422", "S08M010_Main", "box_TriggerMonitor_v2_225.Enter", "box_TriggerMonitor_v2_225.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TriggerMonitor_v2_92_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_374()
  l0 = self.box_TriggerMonitor_v2_92
  l1 = self.box_Moveable_Entity_Monitor_374
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|651071271", "651071271", "S08M010_Main", "box_TriggerMonitor_v2_92.Disabled", "box_Moveable_Entity_Monitor_374.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_92_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_374()
  l0 = self.box_TriggerMonitor_v2_92
  l1 = self.box_Moveable_Entity_Monitor_374
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|920865161", "920865161", "S08M010_Main", "box_TriggerMonitor_v2_92.Enter", "box_Moveable_Entity_Monitor_374.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_83_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayConversationController_v3_60()
  l0 = self.box_GameplayConversationController_v3_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|743851104", "743851104", "S08M010_Main", "box_Ordered_Output_83.Out", "box_GameplayConversationController_v3_60.Pause", clone, l0)
  l0:Pause()
end
function export:f_box_Ordered_Output_83_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimerToScreen_30()
  l0 = self.box_TimerToScreen_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|328367694", "328367694", "S08M010_Main", "box_Ordered_Output_83.Out", "box_TimerToScreen_30.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionMessageController_v3_151_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|907778711"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_195_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_195_Out_1
  l0 = self.box_MissionMessageController_v3_151
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|612096908", "612096908", "S08M010_Main", "box_MissionMessageController_v3_151.Out", "box_Ordered_Output_195.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_136_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_97
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050203866241"
  l0 = self.box_OnceOnly_v3_136
  l1 = self.box_PhoneCommunicationController_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|20437406", "20437406", "S08M010_Main", "box_OnceOnly_v3_136.Out", "box_PhoneCommunicationController_97.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_OnceOnly_v3_303_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_310
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState3",
    id = "359307"
  }
  l0 = self.box_OnceOnly_v3_303
  l1 = self.box_MissionController_v4_310
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|50681787", "50681787", "S08M010_Main", "box_OnceOnly_v3_303.Out", "box_MissionController_v4_310.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_Checkpoint_284_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_Checkpoint_284
  self.PlayerEntity = l0.Player
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|322417852"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_82_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_82_Out_1
  l0 = self.box_S08M010_Checkpoint_284
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1944874625", "1944874625", "S08M010_Main", "box_S08M010_Checkpoint_284.Out", "box_Ordered_Output_82.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_331_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlayerOnlyTriggerNoRCTip_283()
  l0 = self.box_PlayerOnlyTriggerNoRCTip_283
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|382759176", "382759176", "S08M010_Main", "box_Simple_Node_331.Out", "box_PlayerOnlyTriggerNoRCTip_283.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_S08M010_SpawnAndAssignCLOtoBus01_54_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus01_54
  self.BusPassengers = l0.PassengerList_Out
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372072446567155"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_339"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1606435989"
  l0.Activated = self.f_box_MissionMusicController_339_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_S08M010_SpawnAndAssignCLOtoBus01_54
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|635430043", "635430043", "S08M010_Main", "box_S08M010_SpawnAndAssignCLOtoBus01_54.Completed", "box_MissionMusicController_339.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListWriter_84_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_84
  l1 = self.box_GameplayConversationController_v3_60
  l1.Users = l0.Target
  self:OnEnter_box_GameplayConversationController_v3_60()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1977309070", "1977309070", "S08M010_Main", "box_ListWriter_84.Added", "box_GameplayConversationController_v3_60.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_84_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_84
  l1 = self.box_GameplayConversationController_v3_60
  l1.Users = l0.Target
end
function export:f_box_ListWriter_84_Removed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_84
  l1 = self.box_GameplayConversationController_v3_60
  l1.Users = l0.Target
end
function export:f_box_Lanes_Restrictions_Control_387_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 8
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_395"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1408363381"
  l0.Out = self.f_box_SetTimeOfDay_395_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1810653139", "1810653139", "S08M010_Main", "box_Lanes_Restrictions_Control_387.Out", "box_SetTimeOfDay_395.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_CLOController_22_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_22
  self.NudleBus = l0.UserID
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.NudleBus
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "LockLeftWheel"
  l0.HackCategoryType[1] = "LockRightWheel"
  l0.HackCategoryType[2] = "LockBrakes"
  l0.HackCategoryType[3] = "EngineOverheat"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_384"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|123353372"
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_384_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0 = self.box_CLOController_22
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1286925827", "1286925827", "S08M010_Main", "box_CLOController_22.OnUserInPlace", "box_DPad_Hackable_Controller_384.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_OnceOnly_v3_348_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_215
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055079368286"
  l0 = self.box_OnceOnly_v3_348
  l1 = self.box_PhoneCommunicationController_215
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|655713892", "655713892", "S08M010_Main", "box_OnceOnly_v3_348.Out", "box_PhoneCommunicationController_215.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_359_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_30()
  l0 = self.box_MultipleOR_359
  l1 = self.box_TimerToScreen_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|89008829", "89008829", "S08M010_Main", "box_MultipleOR_359.Out", "box_TimerToScreen_30.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_GameplayConversationController_v3_298_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_333
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050140505936"
  l0 = self.box_GameplayConversationController_v3_298
  l1 = self.box_PhoneCommunicationController_333
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1281980955", "1281980955", "S08M010_Main", "box_GameplayConversationController_v3_298.Finished", "box_PhoneCommunicationController_333.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_GameplayConversationController_v3_298_Paused()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_GameplayConversationController_v3_298
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|120137437", "120137437", "S08M010_Main", "box_GameplayConversationController_v3_298.Paused", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_GameplayConversationController_v3_298_Resumed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_130()
  l0 = self.box_GameplayConversationController_v3_298
  l1 = self.box_MultipleOR_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1369456362", "1369456362", "S08M010_Main", "box_GameplayConversationController_v3_298.Resumed", "box_MultipleOR_130.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_GameplayConversationController_v3_298_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayConversationController_v3_298
  l1 = self.box_SetBoolean_v2_378
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1062490803", "1062490803", "S08M010_Main", "box_GameplayConversationController_v3_298.Started", "box_SetBoolean_v2_378.True", l0, l1)
  l1:True()
end
function export:f_box_Simple_Node_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Delivery_Gameplay_49()
  l0 = self.box_Delivery_Gameplay_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|379829752", "379829752", "S08M010_Main", "box_Simple_Node_4.Out", "box_Delivery_Gameplay_49.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_S08M010_WalkAndTalk_116_CombatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_349
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "Mission failed",
    id = "165440"
  }
  l0 = self.box_S08M010_WalkAndTalk_116
  l1 = self.box_MissionController_v4_349
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1714054944", "1714054944", "S08M010_Main", "box_S08M010_WalkAndTalk_116.CombatStarted", "box_MissionController_v4_349.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_WalkAndTalk_116_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_CIN_MeetingBrody_Main_186
  l0.Horatio = self.Horatio
  l0 = self.box_S08M010_WalkAndTalk_116
  l1 = self.box_S08M010_CIN_MeetingBrody_Main_186
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1661866083", "1661866083", "S08M010_Main", "box_S08M010_WalkAndTalk_116.Disabled", "box_S08M010_CIN_MeetingBrody_Main_186.In", l0, l1)
  l1:In()
end
function export:f_box_S08M010_WalkAndTalk_116_TalkerDead()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_123
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective010",
    item = "ObjectiveState3",
    id = "359307"
  }
  l0 = self.box_S08M010_WalkAndTalk_116
  l1 = self.box_MissionController_v4_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|453461649", "453461649", "S08M010_Main", "box_S08M010_WalkAndTalk_116.TalkerDead", "box_MissionController_v4_123.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_S08M010_WalkAndTalk_116_TalkerDestinationReached()
  local l0
  self = self._graph
  self:OnEnter_box_S08M010_WalkAndTalk_116()
  l0 = self.box_S08M010_WalkAndTalk_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|292676785", "292676785", "S08M010_Main", "box_S08M010_WalkAndTalk_116.TalkerDestinationReached", "box_S08M010_WalkAndTalk_116.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_37_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|446749567"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_181_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_181_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_181_Out_2
  l0 = self.box_MissionMessageController_v3_37
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|14398908", "14398908", "S08M010_Main", "box_MissionMessageController_v3_37.Out", "box_Ordered_Output_181.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_341
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective060",
    item = "SubObjective2b",
    id = "359141"
  }
  l0 = self.box_MissionMessageController_v3_16
  l1 = self.box_MissionMessageController_v3_341
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1736248803", "1736248803", "S08M010_Main", "box_MissionMessageController_v3_16.Out", "box_MissionMessageController_v3_341.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_CinematicPrep_197_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_426
  l0.HackableEntity = self.Tablet_HackableEntity_FunOffice_Access
  l0 = self.box_CinematicPrep_197
  l1 = self.box_HackableController_v2_426
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|998519305", "998519305", "S08M010_Main", "box_CinematicPrep_197.PostOut", "box_HackableController_v2_426.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_SetBoolean_v2_163_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_163
  self.HasNudleMapAccess = l0.Target
end
function export:f_box_SetBoolean_v2_163_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_163
  self.HasNudleMapAccess = l0.Target
end
function export:f_box_SetBoolean_v2_163_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_163
  self.HasNudleMapAccess = l0.Target
end
function export:f_box_SetBoolean_v2_163_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_163
  self.HasNudleMapAccess = l0.Target
end
function export:f_box_SetBoolean_v2_163_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_163
  self.HasNudleMapAccess = l0.Target
end
function export:f_box_Timer_v2_229_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_81
  l0.LayerName = self.Layer_ServerFarmDump
  l0 = self.box_Timer_v2_229
  l1 = self.box_MissionLayer_v2_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|334098335", "334098335", "S08M010_Main", "box_Timer_v2_229.TimeElapsed", "box_MissionLayer_v2_81.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_PhoneCommunicationController_173_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DrawWeapon_v2.lua")]
  l0.Pawn = nil
  l0._graph = self
  l0._name = "box_DrawWeapon_v2_336"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1182680295"
  l0.Out = DummyFunction
  l0.Holstered = self.f_box_DrawWeapon_v2_336_Holstered
  l0.HandgunEquipped = DummyFunction
  l0.AssaultEquipped = DummyFunction
  l0.ShotGunEquipped = DummyFunction
  l0.SniperEquipped = DummyFunction
  l0.GrenadeLauncherEquipped = DummyFunction
  l0 = self.box_PhoneCommunicationController_173
  l1 = Boxes[PathID("domino/System/DrawWeapon_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|1297717203", "1297717203", "S08M010_Main", "box_PhoneCommunicationController_173.OnCommunicationFinished", "box_DrawWeapon_v2_336.Holster", l0, l1)
  l1:Holster()
end
function export:f_box_S08M010_Checkpoint_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S08M010_Checkpoint_18
  self.PlayerEntity = l0.Player
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_427"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|299378691"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_427_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_427_Out_1
  l0 = self.box_S08M010_Checkpoint_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Main|629684229", "629684229", "S08M010_Main", "box_S08M010_Checkpoint_18.Out", "box_Ordered_Output_427.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_Hackable_Monitor_205()
  local l0
  l0 = self.box_Hackable_Monitor_205
  l0.HackableEntity = self.Elevator_Hackable_Machinery
end
function export:OnEnter_box_HackableController_v2_99()
  local l0
  l0 = self.box_HackableController_v2_99
  l0.HackableEntity = self.Elevator_Hackable_Cabin
end
function export:OnEnter_box_TriggerMonitor_v2_162()
  local l0
  l0 = self.box_TriggerMonitor_v2_162
  l0.Trigger = self.ProximityTrigger_LeavingSewer
  l0.CheckNow = 1
end
function export:OnEnter_box_MapPointController_v4_211()
  local l0
  l0 = self.box_MapPointController_v4_211
  l0.MapPoint = self.MissionTarget_ReachMaintenanceRoom
end
function export:OnEnter_box_OnceOnly_v3_433()
end
function export:OnEnter_box_MultipleOR_158()
end
function export:OnEnter_box_MapPointController_v4_8()
  local l0
  l0 = self.box_MapPointController_v4_8
  l0.MapPoint = self.MissionTarget_ReachElevatorShaft
end
function export:OnEnter_box_HackableController_v2_270()
  local l0
  l0 = self.box_HackableController_v2_270
  l0.HackableEntity = self.Nudle_CoolingTankPanel_ControlBox_HackableEntity_0
end
function export:OnEnter_box_FelonyTargetMonitor_247()
  local l0
  l0 = self.box_FelonyTargetMonitor_247
  l0.FelonyType = "Police"
  l0.CheckNow = 1
end
function export:OnEnter_box_TutorialController_410()
  local l0
  l0 = self.box_TutorialController_410
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NetHackOpen",
    item = "Description",
    id = "340376"
  }
  l0.Duration = -1
end
function export:OnEnter_box_TriggerMonitor_v2_425()
  local l0
  l0 = self.box_TriggerMonitor_v2_425
  l0.Trigger = self.s08m010_ProximityTrigger_NudleMapEntrance02_TS
  l0.CheckNow = 1
end
function export:OnEnter_box_OnceOnly_v3_432()
end
function export:OnEnter_box_Interact_Gameplay_29()
  local l0
  l0 = self.box_Interact_Gameplay_29
  l0.Entity = self.S08m010_GenericInteract_Server
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_MultipleOR_358()
end
function export:OnEnter_box_InputListener_Monitor_212()
  local l0
  l0 = self.box_InputListener_Monitor_212
  l0.Input = "fire_trigger_press"
end
function export:OnEnter_box_PlayerOnlyTriggerNoRCTip_283()
  local l0
  l0 = self.box_PlayerOnlyTriggerNoRCTip_283
  l0.Trigger = self.s08m010_ProximityTrigger_MarcusOnly_Tip
end
function export:OnEnter_box_TimerToScreen_253()
  local l0
  l0 = self.box_TimerToScreen_253
  l0.Seconds = 30
end
function export:OnEnter_box_MapPointController_v4_104()
  local l0
  l0 = self.box_MapPointController_v4_104
  l0.MapPoint = self.MissionTarget_EscapeHelper
end
function export:OnEnter_box_InteractionScriptMonitor_v2_368()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_368
  l0.InteractionScriptEntity = self.OutsideSlide
end
function export:OnEnter_box_Hackable_Monitor_73()
  local l0
  l0 = self.box_Hackable_Monitor_73
  l0.HackableEntityList = self.ServerFarm_VR
end
function export:OnEnter_box_PlaySequence_v5_69()
  local l0
  l0 = self.box_PlaySequence_v5_69
  l0.SceneEntity = self.S08M010_CIN_045
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_ServerFarmDoor_CIN/s08_serverfarmdoor_cin.seq"
end
function export:OnEnter_box_HackableController_v2_26()
  local l0
  l0 = self.box_HackableController_v2_26
  l0.HackableEntity = self.Elevator_Hackable_Machinery
end
function export:OnEnter_box_SearchArea_40()
  local l0
  l0 = self.box_SearchArea_40
  l0.MissionArea = self.S08_MissionArea_SearchServerFarm
end
function export:OnEnter_box_S08M010_Checkpoint_78()
  local l0
  l0 = self.box_S08M010_Checkpoint_78
  l0.CheckPointName = "CheckPoint_9"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 1
end
function export:OnEnter_box_Delivery_Gameplay_338()
  local l0
  l0 = self.box_Delivery_Gameplay_338
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
function export:OnEnter_box_Interact_Gameplay_304()
  local l0
  l0 = self.box_Interact_Gameplay_304
  l0.Entity = self.NudleBus
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0.IsManagingInteraction = 0
end
function export:OnEnter_box_TriggerMonitor_v2_28()
  local l0
  l0 = self.box_TriggerMonitor_v2_28
  l0.Trigger = self.S08_ProximityTrigger_ReachElevatorShaft
end
function export:OnEnter_box_TriggerMonitor_v2_172()
  local l0
  l0 = self.box_TriggerMonitor_v2_172
  l0.Trigger = self.s08m010_ProximityTrigger_elevatormaintenanceroom
end
function export:OnEnter_box_TriggerMonitor_v2_61()
  local l0
  l0 = self.box_TriggerMonitor_v2_61
  l0.Trigger = self.s08m010_ProximityTrigger_ElevatorLobby_TS
  l0.CheckNow = 1
  l0.AutoDisable = 1
end
function export:OnEnter_box_OnceOnly_v3_234()
end
function export:OnEnter_box_Player_Conflict_Monitor_44()
end
function export:OnEnter_box_Delivery_Gameplay_49()
  local l0
  l0 = self.box_Delivery_Gameplay_49
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
function export:OnEnter_box_Timer_v2_411()
  local l0
  l0 = self.box_Timer_v2_411
  l0.Seconds = 60
end
function export:OnEnter_box_OnceOnly_v3_371()
end
function export:OnEnter_box_VehicleMonitor_v3_307()
  local l0
  l0 = self.box_VehicleMonitor_v3_307
  l0.Vehicle = self.NudleBus
end
function export:OnEnter_box_TriggerMonitor_v2_41()
  local l0
  l0 = self.box_TriggerMonitor_v2_41
  l0.Trigger = self.s08m010_ProximityTrigger_coolingroom_TS
end
function export:OnEnter_box_S08M010_Checkpoint_86()
  local l0
  l0 = self.box_S08M010_Checkpoint_86
  l0.CheckPointName = "CheckPoint_10"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 1
end
function export:OnEnter_box_InputListener_Monitor_214()
  local l0
  l0 = self.box_InputListener_Monitor_214
  l0.Input = "fire_trigger_press"
end
function export:OnEnter_box_VehicleMonitor_v3_361()
  local l0
  l0 = self.box_VehicleMonitor_v3_361
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.CheckNow = 1
end
function export:OnEnter_box_S08M010_Checkpoint_36()
  local l0
  l0 = self.box_S08M010_Checkpoint_36
  l0.CheckPointName = "CheckPoint_7"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 1
end
function export:OnEnter_box_GameplayInteractionController_32()
  local l0
  l0 = self.box_GameplayInteractionController_32
  l0.Users = self.BusPassengers
  l0.RuleConfig = "GameplayConversationSettings.9223372056743429782"
end
function export:OnEnter_box_VehicleMonitor_v3_311()
  local l0
  l0 = self.box_VehicleMonitor_v3_311
  l0.Vehicle = self.NudleBus
  l0.CheckNow = 1
end
function export:OnEnter_box_PawnHealthMonitor_v3_302()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_302
  l0.Pawn = self.Horatio
end
function export:OnEnter_box_MultipleOR_269()
end
function export:OnEnter_box_TriggerMonitor_v2_33()
  local l0
  l0 = self.box_TriggerMonitor_v2_33
  l0.Trigger = self.s08m010_ProximityTrigger_serverfarm_dooraccess
end
function export:OnEnter_box_Network_Surfing_Monitor_412()
  local l0
  l0 = self.box_Network_Surfing_Monitor_412
  l0.CheckNow = 1
end
function export:OnEnter_box_TimerToScreen_30()
  local l0
  l0 = self.box_TimerToScreen_30
  l0.Seconds = 30
end
function export:OnEnter_box_MultipleOR_289()
end
function export:OnEnter_box_OnceOnly_v3_437()
end
function export:OnEnter_box_S08M010_LocateTheCentralServer_42()
end
function export:OnEnter_box_MultipleOR_357()
end
function export:OnEnter_box_MapPointController_v4_52()
  local l0
  l0 = self.box_MapPointController_v4_52
  l0.MapPoint = self.MissionTarget_ReachBasement
end
function export:OnEnter_box_HackableController_v2_275()
  local l0
  l0 = self.box_HackableController_v2_275
  l0.HackableEntity = self.Nudle_CoolingTankPanel_ControlBox_HackableEntity_0
end
function export:OnEnter_box_MultipleOR_423()
end
function export:OnEnter_box_MultipleOR_319()
end
function export:OnEnter_box_PlaySequence_v5_53()
  local l0
  l0 = self.box_PlaySequence_v5_53
  l0.SceneEntity = self.S08M010_CIN_048
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_BeforeHRScolding_Cin/s08_beforehrscolding.seq"
end
function export:OnEnter_box_S08M010_Checkpoint_164()
  local l0
  l0 = self.box_S08M010_Checkpoint_164
  l0.CheckPointName = "CheckPoint_2"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 0
end
function export:OnEnter_box_S08M010_Bus_Drive_7()
  local l0
  l0 = self.box_S08M010_Bus_Drive_7
  l0.Vehicle = self.NudleBus
  l0.Passengers = self.BusPassengers
  l0.BuddyNPC = self.Horatio
end
function export:OnEnter_box_GameplayInteractionController_430()
  local l0
  l0 = self.box_GameplayInteractionController_430
  l0.User1 = self.Horatio
  l0.User2 = self.PlayerEntity
  l0.RuleConfig = "GameplayConversationSettings.9223372059416333809"
end
function export:OnEnter_box_MultipleOR_355()
end
function export:OnEnter_box_S08M010_Checkpoint_27()
  local l0
  l0 = self.box_S08M010_Checkpoint_27
  l0.CheckPointName = "CheckPoint_4"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 0
end
function export:OnEnter_box_OnceOnly_v3_435()
end
function export:OnEnter_box_Hackable_Monitor_327()
  local l0
  l0 = self.box_Hackable_Monitor_327
  l0.HackableEntity = self.Nudle_CoolingTankPanel_ControlBox_HackableEntity_0
end
function export:OnEnter_box_S08M010_Bus_Drive_192()
  local l0
  l0 = self.box_S08M010_Bus_Drive_192
  l0.Vehicle = self.NudleBus
  l0.Passengers = self.BusPassengers
  l0.BuddyNPC = self.Horatio
end
function export:OnEnter_box_AI_Buddy_Monitor_308()
  local l0
  l0 = self.box_AI_Buddy_Monitor_308
  l0.BuddyNPC = self.Horatio
end
function export:OnEnter_box_MapPointController_v4_239()
  local l0
  l0 = self.box_MapPointController_v4_239
  l0.MapPoint = self.MissionTarget_ReachMaintenanceRoom
end
function export:OnEnter_box_S08M010_Checkpoint_85()
  local l0
  l0 = self.box_S08M010_Checkpoint_85
  l0.CheckPointName = "CheckPoint_3"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 0
end
function export:OnEnter_box_Hackable_Monitor_34()
  local l0
  l0 = self.box_Hackable_Monitor_34
  l0.HackableEntity = self.CellPhone_Model_01_HackableAttractorControllerEntity_ManagerID
end
function export:OnEnter_box_TriggerMonitor_v2_238()
  local l0
  l0 = self.box_TriggerMonitor_v2_238
  l0.Trigger = self.s08m010_ProximityTrigger_NudleMapEnter
end
function export:OnEnter_box_TriggerMonitor_v2_421()
  local l0
  l0 = self.box_TriggerMonitor_v2_421
  l0.Trigger = self.Trigger_PlayerInUtilityRoom
  l0.CheckNow = 1
end
function export:OnEnter_box_TriggerMonitor_v2_396()
  local l0
  l0 = self.box_TriggerMonitor_v2_396
  l0.Trigger = self.ProximityTrigger_ServerFarm_RCLimit_1
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_416()
end
function export:OnEnter_box_OnceOnly_v3_258()
end
function export:OnEnter_box_MultipleOR_147()
end
function export:OnEnter_box_Reach_Gameplay_315()
  local l0
  l0 = self.box_Reach_Gameplay_315
  l0.Entity = self.Horatio
  l0.Entity_AreaRadius = 0
  l0.AutoGPS = 0
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:OnEnter_box_InteractionScriptMonitor_v2_369()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_369
  l0.InteractionScriptEntity = self.LobbySlide
end
function export:OnEnter_box_TriggerMonitor_v2_95()
  local l0
  l0 = self.box_TriggerMonitor_v2_95
  l0.Trigger = self.s08m010_ProximityTrigger_MarcusUpdate_TS
  l0.CheckNow = 1
  l0.AutoDisable = 1
end
function export:OnEnter_box_InteractionScriptMonitor_v2_57()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_57
  l0.InteractionScriptEntity = self.FunOfficeSlide
end
function export:OnEnter_box_S08M010_Checkpoint_112()
  local l0
  l0 = self.box_S08M010_Checkpoint_112
  l0.CheckPointName = "CheckPoint_0"
  l0.FadeFromBlack = 0
  l0.EnableNudleMissionArea = 0
end
function export:OnEnter_box_MapPointController_v4_148()
  local l0
  l0 = self.box_MapPointController_v4_148
  l0.MapPoint = self.MissionTarget_ReachMaintenanceRoom
end
function export:OnEnter_box_S08M010_Checkpoint_5()
  local l0
  l0 = self.box_S08M010_Checkpoint_5
  l0.CheckPointName = "CheckPoint_5"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 1
end
function export:OnEnter_box_MultipleOR_209()
end
function export:OnEnter_box_S08M010_Checkpoint_66()
  local l0
  l0 = self.box_S08M010_Checkpoint_66
  l0.CheckPointName = "CheckPoint_8"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 1
end
function export:OnEnter_box_GameplayConversationController_v3_60()
  local l0
  l0 = self.box_GameplayConversationController_v3_60
  l0.Conversation = "ConversationSetting.9223372057527428575"
  l0.RuleConfig = "GameplayConversationSettings.9223372056743429782"
end
function export:OnEnter_box_Mission_End_107()
  local l0
  l0 = self.box_Mission_End_107
  l0.Checkpoint = "CheckPoint_11"
  l0.MissionLayer = self.MissionLayer
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_SearchArea_133()
  local l0
  l0 = self.box_SearchArea_133
  l0.MissionArea = self.S08_MissionArea_SearchServerFarm
end
function export:OnEnter_box_Player_Conflict_Monitor_300()
  DrawTextToScreen("Comment: Patched!", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Player Conflict Monitor')-- Comment: Patched!")
end
function export:OnEnter_box_DriveAndTalk_45()
  local l0
  l0 = self.box_DriveAndTalk_45
  l0.Pawn1 = self.Horatio
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048566785267"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372059416333809"
end
function export:OnEnter_box_Intel_Controller_216()
  local l0
  l0 = self.box_Intel_Controller_216
  l0.Entity = self.Server_HackableEntity_Server
end
function export:OnEnter_box_TriggerMonitor_v2_91()
  local l0
  l0 = self.box_TriggerMonitor_v2_91
  l0.Trigger = self.s08m010_ProximityTrigger_NudleMapEntrance01_TS
  l0.CheckNow = 1
end
function export:OnEnter_box_TriggerMonitor_v2_150()
  local l0
  l0 = self.box_TriggerMonitor_v2_150
  l0.Trigger = self.s08m010_ProximityTrigger_NudleMapEnter
  l0.CheckNow = 1
end
function export:OnEnter_box_Moveable_Entity_Monitor_374()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_374
  l0.MoveableEntity = self.Elevator_Hackable_Cabin
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_365()
end
function export:OnEnter_box_MultipleOR_301()
end
function export:OnEnter_box_MultipleOR_362()
end
function export:OnEnter_box_TimerToScreen_153()
  local l0
  l0 = self.box_TimerToScreen_153
  l0.Seconds = 30
end
function export:OnEnter_box_Reach_Gameplay_226()
  local l0
  l0 = self.box_Reach_Gameplay_226
  l0.Entity = self.S08M010_Tag_MissionEnd_MeetHoratio
  l0.Entity_AreaRadius = 0
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:OnEnter_box_Multiple_AND_343()
end
function export:OnEnter_box_MapPointController_v4_161()
  local l0
  l0 = self.box_MapPointController_v4_161
  l0.MapPoint = self.MissionTarget_EscapeHelper
end
function export:OnEnter_box_TriggerMonitor_v2_403()
  local l0
  l0 = self.box_TriggerMonitor_v2_403
  l0.Trigger = self.ProximityTrigger_ServerFarmLMA_RC_Limit_2
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_109()
end
function export:OnEnter_box_OnceOnly_v3_134()
end
function export:OnEnter_box_VehicleMonitor_v3_354()
  local l0
  l0 = self.box_VehicleMonitor_v3_354
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_130()
end
function export:OnEnter_box_VehicleMonitor_v3_364()
  local l0
  l0 = self.box_VehicleMonitor_v3_364
  l0.Vehicle = self.NudleBus
  l0.Pawn = self.PlayerEntity
  l0.CheckNow = 1
end
function export:OnEnter_box_OnceOnly_v3_75()
end
function export:OnEnter_box_Delivery_Gameplay_38()
  local l0
  l0 = self.box_Delivery_Gameplay_38
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
function export:OnEnter_box_TriggerMonitor_v2_401()
  local l0
  l0 = self.box_TriggerMonitor_v2_401
  l0.Trigger = self.ProximityTrigger_ServerFarm_RCLimit_1
  l0.CheckNow = 1
end
function export:OnEnter_box_S08M010_Bus_Drive_276()
  local l0
  l0 = self.box_S08M010_Bus_Drive_276
  l0.Vehicle = self.NudleBus
  l0.Passengers = self.BusPassengers
  l0.BuddyNPC = self.Horatio
end
function export:OnEnter_box_TriggerMonitor_v2_397()
  local l0
  l0 = self.box_TriggerMonitor_v2_397
  l0.Trigger = self.ProximityTrigger_ServerFarmLMA_RC_Limit_2
  l0.CheckNow = 1
end
function export:OnEnter_box_OnceOnly_v3_434()
end
function export:OnEnter_box_InteractionScriptMonitor_v2_72()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_72
  l0.InteractionScriptEntity = self.ServerFarmKeyPad
end
function export:OnEnter_box_TriggerMonitor_v2_225()
  local l0
  l0 = self.box_TriggerMonitor_v2_225
  l0.Trigger = self.s08m010_ProximityTrigger_sewer
end
function export:OnEnter_box_TriggerMonitor_v2_92()
  local l0
  l0 = self.box_TriggerMonitor_v2_92
  l0.Trigger = self.S08_ProximityTrigger_ReachBasement
end
function export:OnEnter_box_GameplayInteractionController_25()
  local l0
  l0 = self.box_GameplayInteractionController_25
  l0.Users = self.BusPassengers
  l0.RuleConfig = "GameplayConversationSettings.9223372056743429782"
end
function export:OnEnter_box_OnceOnly_v3_303()
end
function export:OnEnter_box_S08M010_Checkpoint_284()
  local l0
  l0 = self.box_S08M010_Checkpoint_284
  l0.CheckPointName = "CheckPoint_1"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 0
end
function export:OnEnter_box_GameplayInteractionController_165()
  local l0
  l0 = self.box_GameplayInteractionController_165
  l0.RuleConfig = "GameplayConversationSettings.9223372059416333809"
end
function export:OnEnter_box_MultipleOR_359()
end
function export:OnEnter_box_GameplayConversationController_v3_298()
  local l0
  l0 = self.box_GameplayConversationController_v3_298
  l0.Conversation = "ConversationSetting.9223372048566785268"
  l0.RuleConfig = "GameplayConversationSettings.9223372056743429782"
end
function export:OnEnter_box_S08M010_WalkAndTalk_116()
  local l0
  l0 = self.box_S08M010_WalkAndTalk_116
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
function export:OnEnter_box_S08M010_Checkpoint_18()
  local l0
  l0 = self.box_S08M010_Checkpoint_18
  l0.CheckPointName = "CheckPoint_6"
  l0.FadeFromBlack = 1
  l0.EnableNudleMissionArea = 1
end
_compilerVersion = 4
