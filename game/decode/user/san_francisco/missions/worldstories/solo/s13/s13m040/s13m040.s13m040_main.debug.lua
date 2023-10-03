export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/System/BinkVideoPlayer_v3.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.DummyCam.debug.lua")
  cbox:RegisterBox("domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("domino/System/FlyingDroneMonitor.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/System/IntegerSelect.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InventoryController_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.debug.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13_m040_cin_datadump.S13_M040_CIN_DataDump_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13_m040_cin_launch.S13_M040_CIN_Launch_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13_PGV_FS_VID.S13_PGV_FS_VID_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13m040_iop.S13M040_IOP_Dubai.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13m040_iop.S13M040_IOP_Dublin.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13m040_iop.S13M040_IOP_Seoul.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.SatelliteCam.debug.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerInsideHma.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/UIController.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2422823228.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/136636566.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/520003169.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3636364637.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3381059633.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3203099314.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S13M040_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.Ceiling_Mounted_Saltlake = "9223372047081944123"
  self.Ceiling_Mounted_Tokyo = "9223372047081944125"
  self.Ceiling_Mounted_Mumbai = "9223372047081944129"
  self.Ceiling_Mounted_London = "9223372047081944127"
  self.VR_ExitNode_108 = "9223372047026343739"
  self.VR_Switch_200 = "9223372047026344616"
  self.VR_Switch_205 = "9223372047026413190"
  self.VR_Switch_203 = "9223372047026413156"
  self.HackableEntity_OnceOnly_London = "9223372046831886517"
  self.LongBlendFade = 1.5
  self.ShortBlendFade = 1
  self.HackableEntity_OnceOnly_Mumbai = "9223372046831886498"
  self.HackableEntity_OnceOnly_Tokyo = "9223372046831886519"
  self.S13M40_ProximityTrigger_InitSatelliteRotation = "9223372047026411755"
  self.VRpuzzle = "9223372047026343757"
  self.Datafarm_EntryCam = "9223372047335456193"
  self.WarehouseDoor_Door = "9223372047335456203"
  self.RollingDoor_Tall_ProximityTrigger_5 = "9223372047335456207"
  self.WarehouseDoor_HackableEntity_Outside = "9223372047335456205"
  self.RC_Car = "9223372047335457120"
  self.RC_toy_spawner = "9223372047335489767"
  self.FinalHack = "9223372047389383591"
  self.RC = nil
  self.Final_ObjMarker = "9223372047335496535"
  self.S13M040_SpawnPoint_EarthToPlayer = "9223372047081873427"
  self.S13M40_SpawnPoint_PlayerToEarth = "9223372047081873425"
  self.ServerRoom_VR_ExitNode = "9223372051927162432"
  self.False = 0
  self.DubaiHacked = 0
  self.DublinHacked = 0
  self.SeoulHacked = 0
  self.DelawareHackSecond = "9223372049699593929"
  self.All_Meshes = {}
  self.Delaware_Lock = "9223372057540419742"
  self.ToSeoul_Off = "9223372049699593912"
  self.ToSeoul_On = "9223372049699593913"
  self.ToDublin_Off = "9223372049699593916"
  self.ToDublin_On = "9223372049699593915"
  self.ToDubai_Off = "9223372049699597354"
  self.ToDubai_On = "9223372049699593917"
  self.Dublin_Lock = "9223372049699604203"
  self.Dubai_lock = "9223372049699593919"
  self.Seoul_Lock = "9223372049699593911"
  self.Initial_Meshes = {}
  self.Delaware_First = "9223372049699593927"
  self.Delaware_Second = "9223372049699593929"
  self.Dublin_Hack = "9223372049699593925"
  self.Dubai_Hack = "9223372049699593923"
  self.Seoul_Hack = "9223372049699593921"
  self.MissionTarget_DatafarmStart = "9223372049699713537"
  self.DataFarm_AccessNode = "9223372053015824508"
  self.Seoul_Unlock = "9223372049785912414"
  self.Dublin_Unlock = "9223372049785912416"
  self.Dubai_Unlock = "9223372049785912415"
  self.Delaware_Unlock = "9223372057540419741"
  self.Seoul_Tagpoint = "9223372049785913178"
  self.Dubai_Tagpoint = "9223372049785913177"
  self.Dublin_Tagpoint = "9223372049785913176"
  self.Delaware_Tagpoint = "9223372049785913175"
  self.AllCameras = {}
  self.IOPEntryHackables = {}
  self.S13M040_SpawnPoint_CheckPoint_2 = "9223372048682366271"
  self.gal_server_skull_a_1 = "9223372066761843483"
  self.gal_server_skull_b_1 = "9223372066761843485"
  self.gal_server_skull_c_1 = "9223372066761843487"
  self.gal_server_skull_d_1 = "9223372066761843489"
  self.gal_server_skull_e_1 = "9223372066761843491"
  self.SatelliteCamera_Delaware = "9223372055218869596"
  self.SatelliteCamera_Seoul = "9223372056081269512"
  self.SatelliteCamera_Dubai = "9223372055570556035"
  self.SatelliteCamera_Dublin = "9223372055570556047"
  self.hacktheplanet_puzzletest_line_todubai_on_0 = "9223372049699593917"
  self.dubai_lines_ON = "9223372055277695129"
  self.dubai_lines_OFF = "9223372055277695131"
  self.dublin_lines_ON = "9223372055277695133"
  self.dublin_lines_OFF = "9223372055277695135"
  self.seoul_lines_ON = "9223372055277695139"
  self.seoul_lines_OFF = "9223372055277695141"
  self.general_lines = "9223372055277695137"
  self.SatelliteCamera_Delaware_Restricted = "9223372055785300618"
  self.SatelliteCamera_Delaware_NoBlend = "9223372055785300616"
  self.ServerRackNode_1 = "9223372056081177671"
  self.ServerRackNode_2 = "9223372056081177685"
  self.ServerRackNode_3 = "9223372056081177703"
  self.ServerRackNode_4 = "9223372056081177733"
  self.ServerRackNode_5 = "9223372056081181660"
  self.ServerRackNode_6 = "9223372056081177837"
  self.ServerRackNode_7 = "9223372056081177821"
  self.ServerRackNode_8 = "9223372056081177807"
  self.gal_server_skull_f = "9223372066761843493"
  self.gal_server_skull_i = "9223372066761843499"
  self.gal_server_skull_j = "9223372066761843501"
  self.gal_server_skull_h = "9223372066761843497"
  self.gal_server_skull_g = "9223372066761843495"
  self.ServerRackNode_9 = "9223372056081177788"
  self.ServerRackNode_10 = "9223372049785967275"
  self.skull_meshes = {}
  self.AllCameraDummies = {}
  self.bridge_hackable_dummy = "9223372057087634012"
  self.dublin_hackable_dummy = "9223372057087634010"
  self.seoul_hackable_dummy = "9223372057087634008"
  self.delaware_hackable_dummy = "9223372057087634006"
  self.dubai_hackable_dummy = "9223372057087634001"
  self._2ndbridge_hackable_dummy = "9223372057365205558"
  self.Dublin_Exit_Tagpoint = "9223372057878535634"
  self.Dubai_Exit_Tagpoint = "9223372057878535632"
  self.Seoul_Exit_Tagpoint = "9223372057878535630"
  self.hacktheplanet_seoullights_3 = "9223372058429251877"
  self.hacktheplanet_seoullights_2 = "9223372058429251875"
  self.hacktheplanet_seoullights_1 = "9223372058429251873"
  self.hacktheplanet_seoullights_0 = "9223372058429251871"
  self.EarthEntities = {}
  self.Earth = "9223372047642572681"
  self.MovingEarthController = "9223372058429251072"
  self.ChildEntity = nil
  self.AltDroneA = "9223372060036182692"
  self.AltDroneB = "9223372060036182693"
  self.AltDroneC = "9223372060036182694"
  self.AltDroneD = "9223372060036182695"
  self.city_markers = "9223372061255874107"
  self.DelawareCircuitBox = "9223372062331210676"
  self.AllCitiesCircuitBox = "9223372064127720317"
  self.Drones = {}
  self.Music = 0
  self.InitialCamera = "9223372069683504030"
  self.puzzleLights_01 = "9223372069794151519"
  self.puzzleLights_02 = "9223372069794151521"
  self.puzzleLights_03 = "9223372069794151523"
  self.puzzleLights_04 = "9223372069794151525"
  self.puzzleLights_05 = "9223372069794151527"
  self.puzzleLights_06 = "9223372069794151529"
  self.puzzleLights_07 = "9223372069794151531"
  self.puzzleLights_08 = "9223372069794151533"
  self.puzzleLights_09 = "9223372069794151535"
  self.puzzleLights_10 = "9223372069794151537"
  self.puzzleLights = {}
  self.DubaiToSeoulBlocker = "9223372070255891851"
  self.ServerFarm_InitCamTarget = "9223372070629275678"
  self.Size_Trigger = "9223372070682404934"
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|10354868"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_Timer_v2_242 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_242
  l0._graph = self
  l0._name = "box_Timer_v2_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|19223659"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_242_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_140 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_140
  l0._graph = self
  l0._name = "box_MultipleOR_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|20019030"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_140_Out
  self.box_MissionLayer_v2_130 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_130
  l0._graph = self
  l0._name = "box_MissionLayer_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|20286156"
  l0.Loaded = self.f_box_MissionLayer_v2_130_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Hackable_Monitor_180 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_180
  l0._graph = self
  l0._name = "box_Hackable_Monitor_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|22222230"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_180_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CinematicPrep_129 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_129
  l0._graph = self
  l0._name = "box_CinematicPrep_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|41822186"
  l0.PreOut = self.f_box_CinematicPrep_129_PreOut
  l0.PostOut = DummyFunction
  self.box_MissionCheckpointReach_122 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_122
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|44848312"
  l0.Out = self.f_box_MissionCheckpointReach_122_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_IOPPrep_263 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.debug.lua")
  l0 = self.box_IOPPrep_263
  l0._graph = self
  l0._name = "box_IOPPrep_263"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|51072496"
  l0.Out = self.f_box_IOPPrep_263_Out
  self.box_MissionCheckpointReach_80 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_80
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|54198097"
  l0.Out = self.f_box_MissionCheckpointReach_80_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_157 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_157
  l0._graph = self
  l0._name = "box_MultipleOR_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|58194563"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_157_Out
  self.box_Timer_v2_104 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_104
  l0._graph = self
  l0._name = "box_Timer_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|67895231"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_104_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPPrep_261 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.debug.lua")
  l0 = self.box_IOPPrep_261
  l0._graph = self
  l0._name = "box_IOPPrep_261"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|70496052"
  l0.Out = self.f_box_IOPPrep_261_Out
  self.box_Timer_v2_54 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_54
  l0._graph = self
  l0._name = "box_Timer_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|108349110"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_54_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_54_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_285 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_285
  l0._graph = self
  l0._name = "box_Timer_v2_285"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|121160901"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_285_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_221 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_221
  l0._graph = self
  l0._name = "box_MissionLayer_v2_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|167730705"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_221_Unloaded
  l0.Reseted = DummyFunction
  self.box_ListWriter_268 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_268
  l0._graph = self
  l0._name = "box_ListWriter_268"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|171641463"
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_box_ListWriter_268_Added
  l0.Removed = self.f_box_ListWriter_268_Removed
  l0.Out = self.f_box_ListWriter_268_Out
  self.box_Hackable_Monitor_301 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_301
  l0._graph = self
  l0._name = "box_Hackable_Monitor_301"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|176051115"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_301_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_223 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_223
  l0._graph = self
  l0._name = "box_Timer_v2_223"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|177994801"
  l0.Out = self.f_box_Timer_v2_223_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = DummyFunction
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_339 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_339
  l0._graph = self
  l0._name = "box_PlaySound_v2_339"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|183927526"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_338 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_338
  l0._graph = self
  l0._name = "box_Hackable_Monitor_338"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|190808344"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_338_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MultipleOR_41 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_41
  l0._graph = self
  l0._name = "box_MultipleOR_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|204674211"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_41_Out
  self.box_SatelliteCam_110 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.SatelliteCam.debug.lua")
  l0 = self.box_SatelliteCam_110
  l0._graph = self
  l0._name = "box_SatelliteCam_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|213685497"
  l0.Out = self.f_box_SatelliteCam_110_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Hackable_Monitor_62 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_62
  l0._graph = self
  l0._name = "box_Hackable_Monitor_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|233167394"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_62_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_247 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_247
  l0._graph = self
  l0._name = "box_PlaySound_v2_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|235813333"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_267 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_267
  l0._graph = self
  l0._name = "box_Timer_v2_267"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|236683816"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_267_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_230 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_230
  l0._graph = self
  l0._name = "box_Timer_v2_230"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|256672898"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_230_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_138 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_138
  l0._graph = self
  l0._name = "box_PlaySound_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|261053452"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_328 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_328
  l0._graph = self
  l0._name = "box_PlaySound_v2_328"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|273681451"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_90 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_90
  l0._graph = self
  l0._name = "box_ListWriter_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|278239894"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_90_Added
  l0.Removed = self.f_box_ListWriter_90_Removed
  l0.Out = self.f_box_ListWriter_90_Out
  self.box_PlaySound_v2_82 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_82
  l0._graph = self
  l0._name = "box_PlaySound_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|296747405"
  l0.Out = self.f_box_PlaySound_v2_82_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_10 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_10
  l0._graph = self
  l0._name = "box_Hackable_Monitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|309558187"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_10_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_171 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_171
  l0._graph = self
  l0._name = "box_Timer_v2_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|311864747"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_171_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_107 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_107
  l0._graph = self
  l0._name = "box_MissionLayer_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|312800535"
  l0.Loaded = self.f_box_MissionLayer_v2_107_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_14 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_14
  l0._graph = self
  l0._name = "box_MissionLayer_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|316725567"
  l0.Loaded = self.f_box_MissionLayer_v2_14_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_35 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_35
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|333381901"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_35_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_255 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_255
  l0._graph = self
  l0._name = "box_Timer_v2_255"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|358417418"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_255_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ConsoleCommand_v2_42 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_42
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|361465727"
  l0.Enabled = self.f_box_ConsoleCommand_v2_42_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_42_Executed
  self.box_Hackable_Monitor_337 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_337
  l0._graph = self
  l0._name = "box_Hackable_Monitor_337"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|367000705"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_337_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_172 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_172
  l0._graph = self
  l0._name = "box_Timer_v2_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|390874159"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_172_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_118 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_118
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|394132976"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_118_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_330 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_330
  l0._graph = self
  l0._name = "box_PlaySound_v2_330"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|399176346"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_210 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_210
  l0._graph = self
  l0._name = "box_Hackable_Monitor_210"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|419517902"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_210_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_257 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_257
  l0._graph = self
  l0._name = "box_Timer_v2_257"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|425671158"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_257_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_127 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_127
  l0._graph = self
  l0._name = "box_MissionLayer_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|442628330"
  l0.Loaded = self.f_box_MissionLayer_v2_127_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_S13M040_IOP_Dublin_4 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13m040_iop.S13M040_IOP_Dublin.debug.lua")
  l0 = self.box_S13M040_IOP_Dublin_4
  l0._graph = self
  l0._name = "box_S13M040_IOP_Dublin_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|456298888"
  l0.Out = self.f_box_S13M040_IOP_Dublin_4_Out
  self.box_PlaySound_v2_327 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_327
  l0._graph = self
  l0._name = "box_PlaySound_v2_327"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|462114808"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_DummyCam_265 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.DummyCam.debug.lua")
  l0 = self.box_DummyCam_265
  l0._graph = self
  l0._name = "box_DummyCam_265"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|473170220"
  l0.Out = self.f_box_DummyCam_265_Out
  self.box_ListForEach_234 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_234
  l0._graph = self
  l0._name = "box_ListForEach_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|517508482"
  l0.Started = self.f_box_ListForEach_234_Started
  l0.Stopped = self.f_box_ListForEach_234_Stopped
  l0.ForEach = self.f_box_ListForEach_234_ForEach
  l0.GotNext = self.f_box_ListForEach_234_GotNext
  l0.EndOfList = self.f_box_ListForEach_234_EndOfList
  l0.GotFirst = DummyFunction
  self.box_DummyCam_120 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.DummyCam.debug.lua")
  l0 = self.box_DummyCam_120
  l0._graph = self
  l0._name = "box_DummyCam_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|526052683"
  l0.Out = self.f_box_DummyCam_120_Out
  self.box_Timer_v2_236 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_236
  l0._graph = self
  l0._name = "box_Timer_v2_236"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|530058087"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_236_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_44 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_44
  l0._graph = self
  l0._name = "box_MultipleOR_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|554770161"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_44_Out
  self.box_ListWriter_25 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_25
  l0._graph = self
  l0._name = "box_ListWriter_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|555778328"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_25_Added
  l0.Removed = self.f_box_ListWriter_25_Removed
  l0.Out = self.f_box_ListWriter_25_Out
  self.box_PlaySound_v2_334 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_334
  l0._graph = self
  l0._name = "box_PlaySound_v2_334"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|562409557"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_9 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_9
  l0._graph = self
  l0._name = "box_Hackable_Monitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|575852117"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_9_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_318 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_318
  l0._graph = self
  l0._name = "box_PlaySound_v2_318"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|594137236"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_17 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_17
  l0._graph = self
  l0._name = "box_MissionLayer_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|605084299"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_17_Unloaded
  l0.Reseted = DummyFunction
  self.box_LogicGate_v2_151 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_151
  l0._graph = self
  l0._name = "box_LogicGate_v2_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|608827115"
  l0.Out = self.f_box_LogicGate_v2_151_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_ListWriter_310 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_310
  l0._graph = self
  l0._name = "box_ListWriter_310"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|618459360"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_310_Added
  l0.Removed = self.f_box_ListWriter_310_Removed
  l0.Out = self.f_box_ListWriter_310_Out
  self.box_PhoneCommunicationController_95 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_95
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|624244367"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_95_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_340 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_340
  l0._graph = self
  l0._name = "box_PlaySound_v2_340"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|660480377"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_280 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_280
  l0._graph = self
  l0._name = "box_CLOController_280"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|664794345"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_280_OnUserInPlace
  self.box_ListWriter_243 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_243
  l0._graph = self
  l0._name = "box_ListWriter_243"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|665631336"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_243_Added
  l0.Removed = self.f_box_ListWriter_243_Removed
  l0.Out = self.f_box_ListWriter_243_Out
  self.box_Timer_v2_256 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_256
  l0._graph = self
  l0._name = "box_Timer_v2_256"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|668899956"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_256_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_278 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_278
  l0._graph = self
  l0._name = "box_CLOController_278"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|708024785"
  l0.Activated = self.f_box_CLOController_278_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_278_OnUserInPlace
  self.box_PlaySound_v2_319 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_319
  l0._graph = self
  l0._name = "box_PlaySound_v2_319"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|710110388"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_UIController_347 = cbox:CreateBox("domino/System/UIController.lua")
  l0 = self.box_UIController_347
  l0._graph = self
  l0._name = "box_UIController_347"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|726029519"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Out = DummyFunction
  l0.ContextEnabled = DummyFunction
  l0.ContextEnabledFail = DummyFunction
  l0.ContextDisabled = self.f_box_UIController_347_ContextDisabled
  l0.ContextDisabledFail = DummyFunction
  self.box_HackableController_v2_99 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_99
  l0._graph = self
  l0._name = "box_HackableController_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|738506693"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_99_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_248 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_248
  l0._graph = self
  l0._name = "box_Timer_v2_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|742203890"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_248_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPPrep_262 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.debug.lua")
  l0 = self.box_IOPPrep_262
  l0._graph = self
  l0._name = "box_IOPPrep_262"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|745449404"
  l0.Out = self.f_box_IOPPrep_262_Out
  self.box_Timer_v2_19 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_19
  l0._graph = self
  l0._name = "box_Timer_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|771505951"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_19_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_46 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_46
  l0._graph = self
  l0._name = "box_MultipleOR_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|795594620"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_46_Out
  self.box_Hackable_Monitor_300 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_300
  l0._graph = self
  l0._name = "box_Hackable_Monitor_300"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|834620621"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_300_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_LogicGate_v2_144 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_144
  l0._graph = self
  l0._name = "box_LogicGate_v2_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|845140500"
  l0.Out = self.f_box_LogicGate_v2_144_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_Hackable_Monitor_211 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_211
  l0._graph = self
  l0._name = "box_Hackable_Monitor_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|848457208"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_211_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hackable_Monitor_302 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_302
  l0._graph = self
  l0._name = "box_Hackable_Monitor_302"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|856802080"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_302_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_250 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_250
  l0._graph = self
  l0._name = "box_Timer_v2_250"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|863497809"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_250_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_294 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_294
  l0._graph = self
  l0._name = "box_Hackable_Monitor_294"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|876391262"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_294_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PhoneCommunicationController_156 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_156
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|894049777"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_156_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_276 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_276
  l0._graph = self
  l0._name = "box_HackableController_v2_276"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|920369711"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_276_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_331 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_331
  l0._graph = self
  l0._name = "box_PlaySound_v2_331"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|923699125"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_S13M040_IOP_Seoul_23 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13m040_iop.S13M040_IOP_Seoul.debug.lua")
  l0 = self.box_S13M040_IOP_Seoul_23
  l0._graph = self
  l0._name = "box_S13M040_IOP_Seoul_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|948748024"
  l0.Out = self.f_box_S13M040_IOP_Seoul_23_Out
  self.box_SatelliteCam_108 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.SatelliteCam.debug.lua")
  l0 = self.box_SatelliteCam_108
  l0._graph = self
  l0._name = "box_SatelliteCam_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|952398013"
  l0.Out = self.f_box_SatelliteCam_108_Out
  self.box_PhoneCommunicationController_83 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_83
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|976282587"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = self.f_box_PhoneCommunicationController_83_StopCommunicationOut
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_83_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_219 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_219
  l0._graph = self
  l0._name = "box_Timer_v2_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|988733420"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_219_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_266 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_266
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_266"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|990972116"
  l0.Out = self.f_box_MissionMessageController_v3_266_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_321 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_321
  l0._graph = self
  l0._name = "box_PlaySound_v2_321"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1005506929"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_348 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_348
  l0._graph = self
  l0._name = "box_Timer_v2_348"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1007167508"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_348_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_348_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_13 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1015116109"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_ListWriter_53 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_53
  l0._graph = self
  l0._name = "box_ListWriter_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1040731527"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_53_Added
  l0.Removed = self.f_box_ListWriter_53_Removed
  l0.Out = self.f_box_ListWriter_53_Out
  self.box_Timer_v2_258 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_258
  l0._graph = self
  l0._name = "box_Timer_v2_258"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1044244789"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_258_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_96 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_96
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1058808443"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_96_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_174 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_174
  l0._graph = self
  l0._name = "box_Timer_v2_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1082002580"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_174_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_179 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_179
  l0._graph = self
  l0._name = "box_Timer_v2_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1109023374"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_179_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_32 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_32
  l0._graph = self
  l0._name = "box_MissionLayer_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1113538856"
  l0.Loaded = self.f_box_MissionLayer_v2_32_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_ListWriter_240 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_240
  l0._graph = self
  l0._name = "box_ListWriter_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1116659475"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_240_Added
  l0.Removed = self.f_box_ListWriter_240_Removed
  l0.Out = self.f_box_ListWriter_240_Out
  self.box_Timer_v2_284 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_284
  l0._graph = self
  l0._name = "box_Timer_v2_284"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1121506181"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_284_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Teleport_To_SpawnPoint_70 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_70
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1122279419"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_70_TeleportDone
  self.box_MultipleOR_132 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_132
  l0._graph = self
  l0._name = "box_MultipleOR_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1124798374"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_132_Out
  self.box_Teleport_To_SpawnPoint_6 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_6
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1132330782"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_6_TeleportDone
  self.box_ConsoleCommand_v2_51 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_51
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1139014765"
  l0.Enabled = self.f_box_ConsoleCommand_v2_51_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_51_Executed
  self.box_PhoneCommunicationController_117 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_117
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1160363724"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_117_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MapPointController_v4_61 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_61
  l0._graph = self
  l0._name = "box_MapPointController_v4_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1214443727"
  l0.Shown = self.f_box_MapPointController_v4_61_Shown
  l0.Hidden = self.f_box_MapPointController_v4_61_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_PhoneCommunicationController_249 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_249
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1216942592"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_249_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_106 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_106
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1217897649"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_106_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_329 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_329
  l0._graph = self
  l0._name = "box_PlaySound_v2_329"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1218758553"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Network_Surfing_Controller_114 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_114
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1238854477"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_114_Deactivated
  self.box_ListWriter_134 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_134
  l0._graph = self
  l0._name = "box_ListWriter_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1252450074"
  l0._DynamicAnchors = {Data = 10}
  l0.Added = self.f_box_ListWriter_134_Added
  l0.Removed = self.f_box_ListWriter_134_Removed
  l0.Out = self.f_box_ListWriter_134_Out
  self.box_MissionLayer_v2_344 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_344
  l0._graph = self
  l0._name = "box_MissionLayer_v2_344"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1252527624"
  l0.Loaded = self.f_box_MissionLayer_v2_344_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_DummyCam_49 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.DummyCam.debug.lua")
  l0 = self.box_DummyCam_49
  l0._graph = self
  l0._name = "box_DummyCam_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1257149398"
  l0.Out = self.f_box_DummyCam_49_Out
  self.box_ListWriter_233 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_233
  l0._graph = self
  l0._name = "box_ListWriter_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1259076653"
  l0._DynamicAnchors = {Data = 22}
  l0.Added = self.f_box_ListWriter_233_Added
  l0.Removed = self.f_box_ListWriter_233_Removed
  l0.Out = self.f_box_ListWriter_233_Out
  self.box_MissionMessageController_v3_63 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_63
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1263119843"
  l0.Out = self.f_box_MissionMessageController_v3_63_Out
  l0.MessageCompleted = DummyFunction
  self.box_Hackable_Monitor_8 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_8
  l0._graph = self
  l0._name = "box_Hackable_Monitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1268279952"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_8_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionLayer_v2_11 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_11
  l0._graph = self
  l0._name = "box_MissionLayer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1304396374"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_11_Unloaded
  l0.Reseted = DummyFunction
  self.box_Hackable_Monitor_297 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_297
  l0._graph = self
  l0._name = "box_Hackable_Monitor_297"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1309978960"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_297_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hackable_Monitor_207 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_207
  l0._graph = self
  l0._name = "box_Hackable_Monitor_207"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1312932840"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_207_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CinematicPrep_28 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_28
  l0._graph = self
  l0._name = "box_CinematicPrep_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1333858323"
  l0.PreOut = self.f_box_CinematicPrep_28_PreOut
  l0.PostOut = DummyFunction
  self.box_Hackable_Monitor_193 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_193
  l0._graph = self
  l0._name = "box_Hackable_Monitor_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1342780452"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_193_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CLOController_279 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_279
  l0._graph = self
  l0._name = "box_CLOController_279"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1355056957"
  l0.Activated = self.f_box_CLOController_279_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_279_OnUserInPlace
  self.box_S13M040_IOP_Dubai_36 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13m040_iop.S13M040_IOP_Dubai.debug.lua")
  l0 = self.box_S13M040_IOP_Dubai_36
  l0._graph = self
  l0._name = "box_S13M040_IOP_Dubai_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1358429359"
  l0.Out = self.f_box_S13M040_IOP_Dubai_36_Out
  self.box_Hackable_Monitor_81 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_81
  l0._graph = self
  l0._name = "box_Hackable_Monitor_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1385052533"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_81_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_81_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_IOPPrep_264 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.debug.lua")
  l0 = self.box_IOPPrep_264
  l0._graph = self
  l0._name = "box_IOPPrep_264"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1408731822"
  l0.Out = self.f_box_IOPPrep_264_Out
  self.box_Multiple_AND_254 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_254
  l0._graph = self
  l0._name = "box_Multiple_AND_254"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1413497127"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_254_Out
  self.box_MissionCheckpointReach_31 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_31
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1415210561"
  l0.Out = self.f_box_MissionCheckpointReach_31_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionController_v4_16 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_16
  l0._graph = self
  l0._name = "box_MissionController_v4_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1423459889"
  self.box_HackableController_v2_139 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_139
  l0._graph = self
  l0._name = "box_HackableController_v2_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1424830151"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_139_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_IOPPrep_260 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.debug.lua")
  l0 = self.box_IOPPrep_260
  l0._graph = self
  l0._name = "box_IOPPrep_260"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1456659210"
  l0.Out = self.f_box_IOPPrep_260_Out
  self.box_Timer_v2_167 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_167
  l0._graph = self
  l0._name = "box_Timer_v2_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1464523337"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_167_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_38 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_38
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1470689587"
  l0.Out = self.f_box_MissionMessageController_v3_38_Out
  l0.MessageCompleted = DummyFunction
  self.box_TriggerMonitor_v2_316 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_316
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_316"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1474805442"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_316_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Integer_Select_101 = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self.box_Integer_Select_101
  l0._graph = self
  l0._name = "box_Integer_Select_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1482771163"
  l0._DynamicAnchors = {Case = 2, Match = 2}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_box_Integer_Select_101_Match_0
  l0.Match[1] = self.f_box_Integer_Select_101_Match_1
  l0.None = DummyFunction
  self.box_Timer_v2_121 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_121
  l0._graph = self
  l0._name = "box_Timer_v2_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1487199783"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_121_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_239 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_239
  l0._graph = self
  l0._name = "box_PlaySound_v2_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1488155174"
  l0.Out = self.f_box_PlaySound_v2_239_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_162 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_162
  l0._graph = self
  l0._name = "box_Timer_v2_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1488643258"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_162_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_S13_M040_CIN_Launch_Main_47 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13_m040_cin_launch.S13_M040_CIN_Launch_Main.debug.lua")
  l0 = self.box_S13_M040_CIN_Launch_Main_47
  l0._graph = self
  l0._name = "box_S13_M040_CIN_Launch_Main_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1492214983"
  l0.Out = self.f_box_S13_M040_CIN_Launch_Main_47_Out
  self.box_ConsoleCommand_v2_126 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_126
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1492607769"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_126_Executed
  self.box_LogicGate_v2_152 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_152
  l0._graph = self
  l0._name = "box_LogicGate_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1511787956"
  l0.Out = self.f_box_LogicGate_v2_152_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_PhoneCommunicationController_93 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_93
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1514895857"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_93_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriter_228 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_228
  l0._graph = self
  l0._name = "box_ListWriter_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1525362732"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_228_Added
  l0.Removed = self.f_box_ListWriter_228_Removed
  l0.Out = self.f_box_ListWriter_228_Out
  self.box_Timer_v2_169 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_169
  l0._graph = self
  l0._name = "box_Timer_v2_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1540663558"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_169_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SatelliteCam_100 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.SatelliteCam.debug.lua")
  l0 = self.box_SatelliteCam_100
  l0._graph = self
  l0._name = "box_SatelliteCam_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1551499282"
  l0.Out = self.f_box_SatelliteCam_100_Out
  self.box_ListWriter_69 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_69
  l0._graph = self
  l0._name = "box_ListWriter_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1555506517"
  l0._DynamicAnchors = {Data = 11}
  l0.Added = self.f_box_ListWriter_69_Added
  l0.Removed = self.f_box_ListWriter_69_Removed
  l0.Out = self.f_box_ListWriter_69_Out
  self.box_UIController_346 = cbox:CreateBox("domino/System/UIController.lua")
  l0 = self.box_UIController_346
  l0._graph = self
  l0._name = "box_UIController_346"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1577815038"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Out = DummyFunction
  l0.ContextEnabled = self.f_box_UIController_346_ContextEnabled
  l0.ContextEnabledFail = DummyFunction
  l0.ContextDisabled = DummyFunction
  l0.ContextDisabledFail = DummyFunction
  self.box_ListWriter_73 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_73
  l0._graph = self
  l0._name = "box_ListWriter_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1607886503"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_73_Added
  l0.Removed = self.f_box_ListWriter_73_Removed
  l0.Out = self.f_box_ListWriter_73_Out
  self.box_ConsoleCommand_v2_45 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_45
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1622766392"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_45_Executed
  self.box_Timer_v2_282 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_282
  l0._graph = self
  l0._name = "box_Timer_v2_282"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1624759834"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_282_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_98 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_98
  l0._graph = self
  l0._name = "box_MultipleOR_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1627341981"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_98_Out
  self.box_PhoneCommunicationController_24 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_24
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1629139690"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_24_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_128 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_128
  l0._graph = self
  l0._name = "box_MissionLayer_v2_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1630844241"
  l0.Loaded = self.f_box_MissionLayer_v2_128_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_149 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_149
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1634113874"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_149_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_26 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_26
  l0._graph = self
  l0._name = "box_CLOController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1637981888"
  l0.Activated = self.f_box_CLOController_26_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_26_OnUserInPlace
  self.box_Hackable_Monitor_186 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_186
  l0._graph = self
  l0._name = "box_Hackable_Monitor_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1668040257"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_186_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_92 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_92
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1671738897"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_92_Completed
  self.box_Hackable_Monitor_15 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_15
  l0._graph = self
  l0._name = "box_Hackable_Monitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1679855899"
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
  self.box_SatelliteCam_109 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.SatelliteCam.debug.lua")
  l0 = self.box_SatelliteCam_109
  l0._graph = self
  l0._name = "box_SatelliteCam_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1687375324"
  l0.Out = self.f_box_SatelliteCam_109_Out
  self.box_IOPPrep_259 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.debug.lua")
  l0 = self.box_IOPPrep_259
  l0._graph = self
  l0._name = "box_IOPPrep_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1694576173"
  l0.Out = self.f_box_IOPPrep_259_Out
  self.box_Network_Surfing_Controller_74 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_74
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1695781040"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_74_Deactivated
  self.box_Timer_v2_253 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_253
  l0._graph = self
  l0._name = "box_Timer_v2_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1709786357"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_253_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_55 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_55
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1710820717"
  l0.Out = self.f_box_MissionMessageController_v3_55_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_34 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_34
  l0._graph = self
  l0._name = "box_MissionLayer_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1712029791"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_34_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_343 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_343
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_343"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1717428553"
  l0.Out = self.f_box_MissionCheckpointReach_343_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_50 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_50
  l0._graph = self
  l0._name = "box_MultipleOR_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1738530966"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_50_Out
  self.box_MultipleOR_65 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_65
  l0._graph = self
  l0._name = "box_MultipleOR_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1744439545"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_65_Out
  self.box_ConsoleCommand_v2_40 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_40
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1752870575"
  l0.Enabled = self.f_box_ConsoleCommand_v2_40_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_40_Executed
  self.box_DummyCam_59 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.DummyCam.debug.lua")
  l0 = self.box_DummyCam_59
  l0._graph = self
  l0._name = "box_DummyCam_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1763720026"
  l0.Out = self.f_box_DummyCam_59_Out
  self.box_Timer_v2_315 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_315
  l0._graph = self
  l0._name = "box_Timer_v2_315"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1769982238"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_315_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_281 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_281
  l0._graph = self
  l0._name = "box_CLOController_281"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1771103851"
  l0.Activated = self.f_box_CLOController_281_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_281_OnUserInPlace
  self.box_CinematicPrep_124 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_124
  l0._graph = self
  l0._name = "box_CinematicPrep_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1780590480"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_124_PostOut
  self.box_CinematicPrep_60 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_60
  l0._graph = self
  l0._name = "box_CinematicPrep_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1801244793"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_60_PostOut
  self.box_Hackable_Monitor_184 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_184
  l0._graph = self
  l0._name = "box_Hackable_Monitor_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1823619698"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_184_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1842883189"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_Flying_Drone_Monitor_67 = cbox:CreateBox("domino/System/FlyingDroneMonitor.lua")
  l0 = self.box_Flying_Drone_Monitor_67
  l0._graph = self
  l0._name = "box_Flying_Drone_Monitor_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1844501945"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnDetected = DummyFunction
  l0.OnHidden = DummyFunction
  l0.OnSpawned = DummyFunction
  l0.OnUnSpawned = DummyFunction
  l0.OnDestroyed = DummyFunction
  l0.IsConnected = self.f_box_Flying_Drone_Monitor_67_IsConnected
  l0.IsDisconnected = DummyFunction
  l0.IsPickUp = DummyFunction
  self.box_Teleport_To_SpawnPoint_102 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_102
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1866698947"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_102_TeleportDone
  self.box_Timer_v2_166 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_166
  l0._graph = self
  l0._name = "box_Timer_v2_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1897946053"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_166_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_21 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_21
  l0._graph = self
  l0._name = "box_MissionLayer_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1901393087"
  l0.Loaded = self.f_box_MissionLayer_v2_21_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_252 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_252
  l0._graph = self
  l0._name = "box_Timer_v2_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1905424985"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_252_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_97 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_97
  l0._graph = self
  l0._name = "box_Timer_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1922908945"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_97_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_LogicGate_v2_112 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_112
  l0._graph = self
  l0._name = "box_LogicGate_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1946008710"
  l0.Out = self.f_box_LogicGate_v2_112_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_Hackable_Monitor_190 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_190
  l0._graph = self
  l0._name = "box_Hackable_Monitor_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1948787981"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_190_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_227 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_227
  l0._graph = self
  l0._name = "box_Timer_v2_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1955157153"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_227_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TeleportPlayerInsideHma_116 = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self.box_TeleportPlayerInsideHma_116
  l0._graph = self
  l0._name = "box_TeleportPlayerInsideHma_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1955577286"
  l0.Out = DummyFunction
  l0.Done = self.f_box_TeleportPlayerInsideHma_116_Done
  self.box_MultipleOR_342 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_342
  l0._graph = self
  l0._name = "box_MultipleOR_342"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1962783976"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_342_Out
  self.box_MissionLayer_v2_105 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_105
  l0._graph = self
  l0._name = "box_MissionLayer_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1969481878"
  l0.Loaded = self.f_box_MissionLayer_v2_105_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_HackableController_v2_311 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_311
  l0._graph = self
  l0._name = "box_HackableController_v2_311"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1973857757"
  l0.Enabled = self.f_box_HackableController_v2_311_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_S13_M040_CIN_DataDump_Main_48 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13_m040_cin_datadump.S13_M040_CIN_DataDump_Main.debug.lua")
  l0 = self.box_S13_M040_CIN_DataDump_Main_48
  l0._graph = self
  l0._name = "box_S13_M040_CIN_DataDump_Main_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1988705210"
  l0.Out = self.f_box_S13_M040_CIN_DataDump_Main_48_Out
  self.box_ListForEach_43 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_43
  l0._graph = self
  l0._name = "box_ListForEach_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1989406969"
  l0.Started = self.f_box_ListForEach_43_Started
  l0.Stopped = self.f_box_ListForEach_43_Stopped
  l0.ForEach = self.f_box_ListForEach_43_ForEach
  l0.GotNext = self.f_box_ListForEach_43_GotNext
  l0.EndOfList = self.f_box_ListForEach_43_EndOfList
  l0.GotFirst = DummyFunction
  self.box_Hackable_Monitor_205 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_205
  l0._graph = self
  l0._name = "box_Hackable_Monitor_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1999501761"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_205_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_136 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_136
  l0._graph = self
  l0._name = "box_PlaySound_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2009353670"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_161 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_161
  l0._graph = self
  l0._name = "box_Timer_v2_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2013823406"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_161_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_161_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SatelliteCam_111 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.SatelliteCam.debug.lua")
  l0 = self.box_SatelliteCam_111
  l0._graph = self
  l0._name = "box_SatelliteCam_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2015543921"
  l0.Out = self.f_box_SatelliteCam_111_Out
  self.box_PlaySound_v2_320 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_320
  l0._graph = self
  l0._name = "box_PlaySound_v2_320"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2033068459"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_S13_PGV_FS_VID_Main_71 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13_PGV_FS_VID.S13_PGV_FS_VID_Main.debug.lua")
  l0 = self.box_S13_PGV_FS_VID_Main_71
  l0._graph = self
  l0._name = "box_S13_PGV_FS_VID_Main_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2034030346"
  l0.Out = self.f_box_S13_PGV_FS_VID_Main_71_Out
  self.box_MissionMessageController_v3_20 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_20
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2038097614"
  l0.Out = self.f_box_MissionMessageController_v3_20_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_181 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_181
  l0._graph = self
  l0._name = "box_PlaySound_v2_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2039557739"
  l0.Out = self.f_box_PlaySound_v2_181_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_155 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_155
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2042501206"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_286 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_286
  l0._graph = self
  l0._name = "box_Timer_v2_286"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2046709119"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_286_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriter_241 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_241
  l0._graph = self
  l0._name = "box_ListWriter_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2047795069"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_241_Added
  l0.Removed = self.f_box_ListWriter_241_Removed
  l0.Out = self.f_box_ListWriter_241_Out
  self.box_Hackable_Monitor_87 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_87
  l0._graph = self
  l0._name = "box_Hackable_Monitor_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2061447925"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_87_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Multiple_AND_145 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_145
  l0._graph = self
  l0._name = "box_Multiple_AND_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2067891192"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_145_Out
  self.box_CLOController_39 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_39
  l0._graph = self
  l0._name = "box_CLOController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2072114396"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_274 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_274
  l0._graph = self
  l0._name = "box_MultipleOR_274"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2086311464"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_274_Out
  self.box_Timer_v2_159 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_159
  l0._graph = self
  l0._name = "box_Timer_v2_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2100352551"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_159_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_159_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_89 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_89
  l0._graph = self
  l0._name = "box_MissionLayer_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2100844830"
  l0.Loaded = self.f_box_MissionLayer_v2_89_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
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
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1245743320", "1245743320", "S13M040_Main", "CheckPoint_0", "box_MultipleOR_12.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1069704320"
  l0.Out = self.f_box_Get_Player_ID_94_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1997844355", "1997844355", "S13M040_Main", "CheckPoint_1", "box_Get_Player_ID_94.In", self, l0)
  l0:In()
end
function export:CheckPoint_2()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|769545852"
  l0.Out = self.f_box_Get_Player_ID_79_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2081004336", "2081004336", "S13M040_Main", "CheckPoint_2", "box_Get_Player_ID_79.In", self, l0)
  l0:In()
end
function export:CheckPoint_3()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_341"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|562652350"
  l0.Out = self.f_box_Get_Player_ID_341_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2137673532", "2137673532", "S13M040_Main", "CheckPoint_3", "box_Get_Player_ID_341.In", self, l0)
  l0:In()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|78139014", "78139014", "S13M040_Main", "In", "box_MultipleOR_12.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Simple_Node_275_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_112()
  l0 = self.box_LogicGate_v2_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|269279613", "269279613", "S13M040_Main", "box_Simple_Node_275.Out", "box_LogicGate_v2_112.Close", clone, l0)
  l0:Close()
end
function export:f_box_Simple_Node_229_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1718983309", "1718983309", "S13M040_Main", "box_Simple_Node_229.Out", "box_MultipleOR_65.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Simple_Node_185_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_348()
  l0 = self.box_Timer_v2_348
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1387958185", "1387958185", "S13M040_Main", "box_Simple_Node_185.Out", "box_Timer_v2_348.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S13M040_Main"
  l0 = self.box_MultipleOR_12
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1501351649", "1501351649", "S13M040_Main", "box_MultipleOR_12.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_Ordered_Output_52_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_25
  l0.Input = self.All_Meshes
  l0.Data[0] = self.dubai_lines_ON
  l0.Data[1] = self.dublin_lines_ON
  l0.Data[2] = self.seoul_lines_ON
  l0.Data[3] = self.general_lines
  l0.Data[4] = self.city_markers
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1345626797", "1345626797", "S13M040_Main", "box_Ordered_Output_52.Out", "box_ListWriter_25.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_52_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1731499825"
  l0.Out = self.f_box_Simple_Node_135_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1670845927", "1670845927", "S13M040_Main", "box_Ordered_Output_52.Out", "box_Simple_Node_135.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_242_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_151()
  l0 = self.box_Timer_v2_242
  l1 = self.box_LogicGate_v2_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|319051763", "319051763", "S13M040_Main", "box_Timer_v2_242.TimeElapsed", "box_LogicGate_v2_151.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_140_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S09M020_NoNethack"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1970306350"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_178_Popped
  l0 = self.box_MultipleOR_140
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|403973676", "403973676", "S13M040_Main", "box_MultipleOR_140.Out", "box_SetActionMap_v2_178.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_MissionLayer_v2_130_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_105
  l0.LayerName = "S13M040_Main_ServerFarm"
  l0 = self.box_MissionLayer_v2_130
  l1 = self.box_MissionLayer_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|144744159", "144744159", "S13M040_Main", "box_MissionLayer_v2_130.Loaded", "box_MissionLayer_v2_105.Load", l0, l1)
  l1:Load()
end
function export:f_box_Hackable_Monitor_180_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.Music
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1606220294"
  l0.Out = self.f_box_Integer_Arithmetics_191_Out
  l0 = self.box_Hackable_Monitor_180
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1633935499", "1633935499", "S13M040_Main", "box_Hackable_Monitor_180.HackSuccess", "box_Integer_Arithmetics_191.Add", l0, l1)
  l1:Add()
end
function export:f_box_VisibilityController_v2_246_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_236
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|213138279", "213138279", "S13M040_Main", "box_VisibilityController_v2_246.Hidden", "box_Timer_v2_236.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_129_PreOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_140()
  l0 = self.box_CinematicPrep_129
  l1 = self.box_MultipleOR_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1888351643", "1888351643", "S13M040_Main", "box_CinematicPrep_129.PreOut", "box_MultipleOR_140.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionCheckpointReach_122_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1284133465"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_195_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_195_Out_1
  l0 = self.box_MissionCheckpointReach_122
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1770893974", "1770893974", "S13M040_Main", "box_MissionCheckpointReach_122.Out", "box_Ordered_Output_195.In", l0, l1)
  l1:In()
end
function export:f_box_IOPPrep_263_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_55
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective010",
    item = "Objective",
    id = "403005"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_IOPPrep_263
  l1 = self.box_MissionMessageController_v3_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|496088751", "496088751", "S13M040_Main", "box_IOPPrep_263.Out", "box_MissionMessageController_v3_55.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionCheckpointReach_80_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|669757190"
  l0.Out = self.f_box_SetInteger_v2_137_Out
  l0 = self.box_MissionCheckpointReach_80
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1559408398", "1559408398", "S13M040_Main", "box_MissionCheckpointReach_80.Out", "box_SetInteger_v2_137.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Ordered_Output_317_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_07
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_208"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|184528817"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2082436250", "2082436250", "S13M040_Main", "box_Ordered_Output_317.Out", "box_VisibilityController_v2_208.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_317_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_319
  l0.Entity = "9223372056081177685"
  l0.SoundId = "soundbinary/520003169.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|725046835", "725046835", "S13M040_Main", "box_Ordered_Output_317.Out", "box_PlaySound_v2_319.Play", clone, l0)
  l0:Play()
end
function export:f_box_MultipleOR_157_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Integer_Select_101
  l0.Integer = self.Music
  l0.Case[0] = 2
  l0.Case[1] = 4
  l0 = self.box_MultipleOR_157
  l1 = self.box_Integer_Select_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2057678063", "2057678063", "S13M040_Main", "box_MultipleOR_157.Out", "box_Integer_Select_101.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_104_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_239
  l0.SoundId = "soundbinary/3203099314.bnk"
  l0 = self.box_Timer_v2_104
  l1 = self.box_PlaySound_v2_239
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|933512784", "933512784", "S13M040_Main", "box_Timer_v2_104.TimeElapsed", "box_PlaySound_v2_239.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPPrep_261_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPrep_261
  l1 = self.box_S13M040_IOP_Dublin_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|397469960", "397469960", "S13M040_Main", "box_IOPPrep_261.Out", "box_S13M040_IOP_Dublin_4.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_335_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_05
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_293"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1346728234"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2134017960", "2134017960", "S13M040_Main", "box_Ordered_Output_335.Out", "box_VisibilityController_v2_293.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_335_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_330
  l0.Entity = "9223372049785967275"
  l0.SoundId = "soundbinary/3636364637.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|303918668", "303918668", "S13M040_Main", "box_Ordered_Output_335.Out", "box_PlaySound_v2_330.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_54_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|228276312"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_141_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_141_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_141_Out_2
  l0 = self.box_Timer_v2_54
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|923360936", "923360936", "S13M040_Main", "box_Timer_v2_54.Started", "box_Ordered_Output_141.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_54_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.seoul_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0._name = "box_MaterialController_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|289262050"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_160_ParameterSet
  l0 = self.box_Timer_v2_54
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|940614298", "940614298", "S13M040_Main", "box_Timer_v2_54.TimeElapsed", "box_MaterialController_160.SetParameter", l0, l1)
  l1:SetParameter()
end
function export:f_box_Timer_v2_285_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_i
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1886013504"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_125_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_285
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1670098680", "1670098680", "S13M040_Main", "box_Timer_v2_285.TimeElapsed", "box_VisibilityController_v2_125.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionLayer_v2_221_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_221
  l1 = self.box_MissionController_v4_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1342754239", "1342754239", "S13M040_Main", "box_MissionLayer_v2_221.Unloaded", "box_MissionController_v4_16.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_ListWriter_268_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_268
  self.Initial_Meshes = l0.Target
  l0 = self.box_ListWriter_53
  l0.Input = self.IOPEntryHackables
  l0.Data[0] = self.Dublin_Hack
  l0.Data[1] = self.Dubai_Hack
  l0.Data[2] = self.Seoul_Hack
  l0 = self.box_ListWriter_268
  l1 = self.box_ListWriter_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|233089263", "233089263", "S13M040_Main", "box_ListWriter_268.Added", "box_ListWriter_53.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_268_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_268
  self.Initial_Meshes = l0.Target
end
function export:f_box_ListWriter_268_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_268
  self.Initial_Meshes = l0.Target
end
function export:f_box_Hackable_Monitor_301_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_324"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|464388809"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_324_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_324_Out_1
  l0.Out[2] = DummyFunction
  l0 = self.box_Hackable_Monitor_301
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|329351326", "329351326", "S13M040_Main", "box_Hackable_Monitor_301.HackSuccess", "box_Ordered_Output_324.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_223_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.hacktheplanet_seoullights_0
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1258456850"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_224_Hidden
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_223
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1077741503", "1077741503", "S13M040_Main", "box_Timer_v2_223.Out", "box_VisibilityController_v2_224.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_325_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_01
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_295"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|11939311"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|413910709", "413910709", "S13M040_Main", "box_Ordered_Output_325.Out", "box_VisibilityController_v2_295.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_325_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_321
  l0.Entity = "9223372056081177837"
  l0.SoundId = "soundbinary/520003169.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1696368537", "1696368537", "S13M040_Main", "box_Ordered_Output_325.Out", "box_PlaySound_v2_321.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hackable_Monitor_338_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_340
  l0.Entity = "9223372052756035355"
  l0.SoundId = "soundbinary/3636364637.bnk"
  l0 = self.box_Hackable_Monitor_338
  l1 = self.box_PlaySound_v2_340
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|249592131", "249592131", "S13M040_Main", "box_Hackable_Monitor_338.HackSuccess", "box_PlaySound_v2_340.Play", l0, l1)
  l1:Play()
end
function export:f_box_MultipleOR_41_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_93
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406440561"
  l0 = self.box_MultipleOR_41
  l1 = self.box_PhoneCommunicationController_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1463041187", "1463041187", "S13M040_Main", "box_MultipleOR_41.Out", "box_PhoneCommunicationController_93.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_SatelliteCam_110_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SatelliteCam_111
  l0.CameraEntity = self.SatelliteCamera_Dublin
  l0.AtomsphereEntity = "9223372055570556049"
  l0.CameraAttachmentEntity = "9223372055570556594"
  l0.InitialTarget = self.Dublin_Tagpoint
  l0 = self.box_SatelliteCam_110
  l1 = self.box_SatelliteCam_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1413081879", "1413081879", "S13M040_Main", "box_SatelliteCam_110.Out", "box_SatelliteCam_111.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_88_InteractionForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_311
  l0.HackableEntityList = self.IOPEntryHackables
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1579024691", "1579024691", "S13M040_Main", "box_InteractionScriptController_88.InteractionForced", "box_HackableController_v2_311.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_32
  l0.LayerName = "S13M040_Main_Earth"
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_MissionLayer_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1929128991", "1929128991", "S13M040_Main", "box_MissionLayer_v2_2.Loaded", "box_MissionLayer_v2_32.Load", l0, l1)
  l1:Load()
end
function export:f_box_Ordered_Output_141_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_145()
  l0 = self.box_Multiple_AND_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|840967862", "840967862", "S13M040_Main", "box_Ordered_Output_141.Out", "box_Multiple_AND_145.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_141_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_166
  l0.Seconds = 0.1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1475664832", "1475664832", "S13M040_Main", "box_Ordered_Output_141.Out", "box_Timer_v2_166.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_141_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_223
  l0.Seconds = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|397333160", "397333160", "S13M040_Main", "box_Ordered_Output_141.Out", "box_Timer_v2_223.Start", clone, l0)
  l0:Start()
end
function export:f_box_Hackable_Monitor_62_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1693659599"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_173_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_173_Out_1
  l0 = self.box_Hackable_Monitor_62
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1822144001", "1822144001", "S13M040_Main", "box_Hackable_Monitor_62.HackSuccess", "box_Ordered_Output_173.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_267_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_04
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1076244316"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_220_Hidden
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_267
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|531963001", "531963001", "S13M040_Main", "box_Timer_v2_267.TimeElapsed", "box_VisibilityController_v2_220.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Timer_v2_230_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.hacktheplanet_seoullights_2
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|646888589"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_231_Hidden
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_230
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1671252570", "1671252570", "S13M040_Main", "box_Timer_v2_230.TimeElapsed", "box_VisibilityController_v2_231.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_SetTimeOfDay_304_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPrep_259
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1115209011", "1115209011", "S13M040_Main", "box_SetTimeOfDay_304.Out", "box_IOPPrep_259.PreIOP", clone, l0)
  l0:PreIOP()
end
function export:f_box_ListWriter_90_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_90
  self.Drones = l0.Target
end
function export:f_box_ListWriter_90_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_90
  self.Drones = l0.Target
end
function export:f_box_ListWriter_90_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_90
  self.Drones = l0.Target
end
function export:f_box_MaterialController_160_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.seoul_lines_ON
  l0.Index = 1
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0._name = "box_MaterialController_314"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2091259205"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|803741781", "803741781", "S13M040_Main", "box_MaterialController_160.ParameterSet", "box_MaterialController_314.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_Ordered_Output_154_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_186
  l0.HackableEntity = "9223372049785967275"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1613949735", "1613949735", "S13M040_Main", "box_Ordered_Output_154.Out", "box_Hackable_Monitor_186.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_154_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_87
  l0.HackableEntity = "9223372056081177733"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1887029930", "1887029930", "S13M040_Main", "box_Ordered_Output_154.Out", "box_Hackable_Monitor_87.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_154_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_180
  l0.HackableEntity = "9223372056081177807"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1271082286", "1271082286", "S13M040_Main", "box_Ordered_Output_154.Out", "box_Hackable_Monitor_180.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_154_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_190
  l0.HackableEntity = "9223372056081177685"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1400084327", "1400084327", "S13M040_Main", "box_Ordered_Output_154.Out", "box_Hackable_Monitor_190.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_154_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_193
  l0.HackableEntity = "9223372056081177683"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1379247478", "1379247478", "S13M040_Main", "box_Ordered_Output_154.Out", "box_Hackable_Monitor_193.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlaySound_v2_82_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_35
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406440564"
  l0 = self.box_PlaySound_v2_82
  l1 = self.box_PhoneCommunicationController_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|570770214", "570770214", "S13M040_Main", "box_PlaySound_v2_82.Out", "box_PhoneCommunicationController_35.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MaterialController_158_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dubai_lines_ON
  l0.Index = 1
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0._name = "box_MaterialController_312"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1714021438"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|648799508", "648799508", "S13M040_Main", "box_MaterialController_158.ParameterSet", "box_MaterialController_312.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_SetTimeOfDay_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1823935338"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_77_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|866818751", "866818751", "S13M040_Main", "box_SetTimeOfDay_58.Out", "box_TimeScale_Controller_77.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_Hackable_Monitor_10_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_41()
  l0 = self.box_Hackable_Monitor_10
  l1 = self.box_MultipleOR_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|716770342", "716770342", "S13M040_Main", "box_Hackable_Monitor_10.HackSuccess", "box_MultipleOR_41.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_171_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_144()
  l0 = self.box_Timer_v2_171
  l1 = self.box_LogicGate_v2_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2094108408", "2094108408", "S13M040_Main", "box_Timer_v2_171.TimeElapsed", "box_LogicGate_v2_144.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_107_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_130
  l0.LayerName = "S13M040_Main_Earth"
  l0 = self.box_MissionLayer_v2_107
  l1 = self.box_MissionLayer_v2_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1250395181", "1250395181", "S13M040_Main", "box_MissionLayer_v2_107.Loaded", "box_MissionLayer_v2_130.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_14_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1997584509"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_14
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1225873272", "1225873272", "S13M040_Main", "box_MissionLayer_v2_14.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_68_InteractionForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_81()
  l0 = self.box_Hackable_Monitor_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|854484028", "854484028", "S13M040_Main", "box_InteractionScriptController_68.InteractionForced", "box_Hackable_Monitor_81.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PhoneCommunicationController_35_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_129
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PhoneCommunicationController_35
  l1 = self.box_CinematicPrep_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1936401988", "1936401988", "S13M040_Main", "box_PhoneCommunicationController_35.StartCommunicationOut", "box_CinematicPrep_129.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_Ordered_Output_326_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_02
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_299"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1573679237"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|992983446", "992983446", "S13M040_Main", "box_Ordered_Output_326.Out", "box_VisibilityController_v2_299.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_326_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_320
  l0.Entity = "9223372056081177821"
  l0.SoundId = "soundbinary/520003169.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|521979438", "521979438", "S13M040_Main", "box_Ordered_Output_326.Out", "box_PlaySound_v2_320.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_255_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_10
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_213"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1872619590"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_213_Hidden
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_255
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|812692825", "812692825", "S13M040_Main", "box_Timer_v2_255.TimeElapsed", "box_VisibilityController_v2_213.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_ConsoleCommand_v2_42_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ConsoleCommand_v2_45
  l0.Command = "IOP_Dublin"
  l0 = self.box_ConsoleCommand_v2_42
  l1 = self.box_ConsoleCommand_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1412238528", "1412238528", "S13M040_Main", "box_ConsoleCommand_v2_42.Enabled", "box_ConsoleCommand_v2_45.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ConsoleCommand_v2_42_Executed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_ConsoleCommand_v2_42
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1356203429", "1356203429", "S13M040_Main", "box_ConsoleCommand_v2_42.Executed", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Hackable_Monitor_337_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_339
  l0.Entity = "9223372054531599391"
  l0.SoundId = "soundbinary/3636364637.bnk"
  l0 = self.box_Hackable_Monitor_337
  l1 = self.box_PlaySound_v2_339
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1289575513", "1289575513", "S13M040_Main", "box_Hackable_Monitor_337.HackSuccess", "box_PlaySound_v2_339.Play", l0, l1)
  l1:Play()
end
function export:f_box_Integer_Arithmetics_192_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Music = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_157()
  l0 = self.box_MultipleOR_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2024492433", "2024492433", "S13M040_Main", "box_Integer_Arithmetics_192.Out", "box_MultipleOR_157.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_VisibilityController_v2_29_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.seoul_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0.1
  l0.B = 0
  l0.Time = 3
  l0._graph = self
  l0._name = "box_MaterialController_277"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|419603015"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_277_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|593037247", "593037247", "S13M040_Main", "box_VisibilityController_v2_29.Shown", "box_MaterialController_277.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_Timer_v2_172_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_e_1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1335968227"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_164_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_172
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1409419029", "1409419029", "S13M040_Main", "box_Timer_v2_172.TimeElapsed", "box_VisibilityController_v2_164.Show", l0, l1)
  l1:Show()
end
function export:f_box_PhoneCommunicationController_118_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Simple_Node_229()
  l0 = self.box_PhoneCommunicationController_118
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|910744513", "910744513", "S13M040_Main", "box_PhoneCommunicationController_118.StartCommunicationOut", "box_Simple_Node_229.In", l0, l1)
  l1:In()
end
function export:f_box_MaterialController_283_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_24
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053612566540"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2090692532", "2090692532", "S13M040_Main", "box_MaterialController_283.ParameterSet", "box_PhoneCommunicationController_24.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_336_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_10
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|987956985"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1067726978", "1067726978", "S13M040_Main", "box_Ordered_Output_336.Out", "box_VisibilityController_v2_209.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_336_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_329
  l0.Entity = "9223372056081181660"
  l0.SoundId = "soundbinary/3636364637.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|136320932", "136320932", "S13M040_Main", "box_Ordered_Output_336.Out", "box_PlaySound_v2_329.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hackable_Monitor_210_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_326"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|341943126"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_326_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_326_Out_1
  l0 = self.box_Hackable_Monitor_210
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|275495630", "275495630", "S13M040_Main", "box_Hackable_Monitor_210.HackSuccess", "box_Ordered_Output_326.In", l0, l1)
  l1:In()
end
function export:f_box_MaterialController_277_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dublin_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0.1
  l0.B = 0
  l0.Time = 3
  l0._graph = self
  l0._name = "box_MaterialController_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1682347001"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_197_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|258916954", "258916954", "S13M040_Main", "box_MaterialController_277.ParameterSet", "box_MaterialController_197.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_VisibilityController_v2_148_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_139
  l0.HackableEntity = "9223372047335456193"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|96452710", "96452710", "S13M040_Main", "box_VisibilityController_v2_148.Hidden", "box_HackableController_v2_139.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Timer_v2_257_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_02
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|40194515"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_246_Hidden
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_257
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|75503056", "75503056", "S13M040_Main", "box_Timer_v2_257.TimeElapsed", "box_VisibilityController_v2_246.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionLayer_v2_127_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MissionLayer_v2_127
  l1 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1392748367", "1392748367", "S13M040_Main", "box_MissionLayer_v2_127.Loaded", "box_MultipleOR_13.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_S13M040_IOP_Dublin_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPrep_262
  l0.Camera = self.SatelliteCamera_Dublin
  l0.Target = self.Dublin_Exit_Tagpoint
  l0 = self.box_S13M040_IOP_Dublin_4
  l1 = self.box_IOPPrep_262
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|901525334", "901525334", "S13M040_Main", "box_S13M040_IOP_Dublin_4.Out", "box_IOPPrep_262.PostIOP", l0, l1)
  l1:PostIOP()
end
function export:f_box_Ordered_Output_324_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_09
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1934174801"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1721856920", "1721856920", "S13M040_Main", "box_Ordered_Output_324.Out", "box_VisibilityController_v2_196.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_324_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_328
  l0.Entity = "9223372056081177733"
  l0.SoundId = "soundbinary/520003169.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1074098094", "1074098094", "S13M040_Main", "box_Ordered_Output_324.Out", "box_PlaySound_v2_328.Play", clone, l0)
  l0:Play()
end
function export:f_box_DummyCam_265_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_99
  l0.HackableEntity = self.InitialCamera
  l0 = self.box_DummyCam_265
  l1 = self.box_HackableController_v2_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|555200688", "555200688", "S13M040_Main", "box_DummyCam_265.Out", "box_HackableController_v2_99.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_SetActionMap_v2_86_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_28
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|768211382", "768211382", "S13M040_Main", "box_SetActionMap_v2_86.Popped", "box_CinematicPrep_28.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_ListForEach_234_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_234
  self.ChildEntity = l0.Data
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.MovingEarthController
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1709505043"
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
  l0 = self.box_ListForEach_234
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1233621542", "1233621542", "S13M040_Main", "box_ListForEach_234.EndOfList", "box_MoveableEntityController_238.Move", l0, l1)
  l1:Move()
end
function export:f_box_ListForEach_234_ForEach()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_234
  self.ChildEntity = l0.Data
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.MovingEarthController
  l0.Child = self.ChildEntity
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1090281276"
  l0.Bound = DummyFunction
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_ListForEach_234
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|270116817", "270116817", "S13M040_Main", "box_ListForEach_234.ForEach", "box_Bind_v2_237.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_ListForEach_234_GotNext()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_234
  self.ChildEntity = l0.Data
end
function export:f_box_ListForEach_234_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_234
  self.ChildEntity = l0.Data
end
function export:f_box_ListForEach_234_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_234
  self.ChildEntity = l0.Data
end
function export:f_box_Simple_Node_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_309"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|929274980"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_309_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_309_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|700879564", "700879564", "S13M040_Main", "box_Simple_Node_5.Out", "box_Ordered_Output_309.In", clone, l0)
  l0:In()
end
function export:f_box_DummyCam_120_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DummyCam_49
  l0.CameraEntity = self.SatelliteCamera_Dubai
  l0.DummyHackable = self.dubai_hackable_dummy
  l0.LookatTarget = self.Dubai_Tagpoint
  l0 = self.box_DummyCam_120
  l1 = self.box_DummyCam_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|366075609", "366075609", "S13M040_Main", "box_DummyCam_120.Out", "box_DummyCam_49.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_236_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_03
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1092241349"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_214_Hidden
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_236
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|905665944", "905665944", "S13M040_Main", "box_Timer_v2_236.TimeElapsed", "box_VisibilityController_v2_214.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_30_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_92
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "Downloading",
    id = "550990"
  }
  l0.TotalTime = 16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1548376", "1548376", "S13M040_Main", "box_Ordered_Output_30.Out", "box_DistanceBasedProgressBarController_v2_92.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_30_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_249
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372060065505688"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1551544408", "1551544408", "S13M040_Main", "box_Ordered_Output_30.Out", "box_PhoneCommunicationController_249.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_30_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_169
  l0.Seconds = 14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1377373735", "1377373735", "S13M040_Main", "box_Ordered_Output_30.Out", "box_Timer_v2_169.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_30_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_167
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1059539165", "1059539165", "S13M040_Main", "box_Ordered_Output_30.Out", "box_Timer_v2_167.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_212_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_257
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1921251343", "1921251343", "S13M040_Main", "box_VisibilityController_v2_212.Hidden", "box_Timer_v2_257.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_22_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_276
  l0.HackableEntityList = self.IOPEntryHackables
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1589557646", "1589557646", "S13M040_Main", "box_VisibilityController_v2_22.Hidden", "box_HackableController_v2_276.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_MaterialController_232_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.general_lines
  l0.Index = 1
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0._name = "box_MaterialController_345"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1595317526"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_345_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2039459751", "2039459751", "S13M040_Main", "box_MaterialController_232.ParameterSet", "box_MaterialController_345.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_MultipleOR_44_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_96
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406440559"
  l0 = self.box_MultipleOR_44
  l1 = self.box_PhoneCommunicationController_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1101927331", "1101927331", "S13M040_Main", "box_MultipleOR_44.Out", "box_PhoneCommunicationController_96.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_ListWriter_25_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_25
  self.All_Meshes = l0.Target
  l0 = self.box_ListWriter_268
  l0.Input = self.Initial_Meshes
  l0.Data[0] = self.dubai_lines_ON
  l0.Data[1] = self.dublin_lines_ON
  l0.Data[2] = self.seoul_lines_ON
  l0.Data[3] = self.general_lines
  l0.Data[4] = self.hacktheplanet_seoullights_0
  l0.Data[5] = self.hacktheplanet_seoullights_1
  l0.Data[6] = self.hacktheplanet_seoullights_2
  l0.Data[7] = self.hacktheplanet_seoullights_3
  l0 = self.box_ListWriter_25
  l1 = self.box_ListWriter_268
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|293502041", "293502041", "S13M040_Main", "box_ListWriter_25.Added", "box_ListWriter_268.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_25_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_25
  self.All_Meshes = l0.Target
end
function export:f_box_ListWriter_25_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_25
  self.All_Meshes = l0.Target
end
function export:f_box_SecurityCamController_7_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_7()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1871898656", "1871898656", "S13M040_Main", "box_SecurityCamController_7.CanExitSet", "box_SecurityCamController_7.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_SecurityCamController_7_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_104
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2060436605", "2060436605", "S13M040_Main", "box_SecurityCamController_7.EnterForced", "box_Timer_v2_104.Start", clone, l0)
  l0:Start()
end
function export:f_box_Get_Player_ID_341_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_344
  l0.LayerName = "S13M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1481135058", "1481135058", "S13M040_Main", "box_Get_Player_ID_341.Out", "box_MissionLayer_v2_344.Load", clone, l0)
  l0:Load()
end
function export:f_box_VisibilityController_v2_218_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_282
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1827754497", "1827754497", "S13M040_Main", "box_VisibilityController_v2_218.Hidden", "box_Timer_v2_282.Start", clone, l0)
  l0:Start()
end
function export:f_box_Show_Or_Hide_All_UI_133_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_To_SpawnPoint_102
  l0.SpawnPoint = self.S13M40_SpawnPoint_PlayerToEarth
  l0.KeepBlackScreenOnExit = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|521002784", "521002784", "S13M040_Main", "box_Show_Or_Hide_All_UI_133.Hidden", "box_Teleport_To_SpawnPoint_102.In", clone, l0)
  l0:In()
end
function export:f_box_Hackable_Monitor_9_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_Hackable_Monitor_9
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1205777456", "1205777456", "S13M040_Main", "box_Hackable_Monitor_9.HackSuccess", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TimeScale_Controller_78_Unlocked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "exotic_mission_pausemenu"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|498785957"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_86_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|542424702", "542424702", "S13M040_Main", "box_TimeScale_Controller_78.Unlocked", "box_SetActionMap_v2_86.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_SecurityCamController_18_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_18()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|655759538", "655759538", "S13M040_Main", "box_SecurityCamController_18.CanExitSet", "box_SecurityCamController_18.ForceUserOutOfCamera", clone, l0)
  l0:ForceUserOutOfCamera()
end
function export:f_box_SecurityCamController_18_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2052384409"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_103_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|175951773", "175951773", "S13M040_Main", "box_SecurityCamController_18.UserForcedOutOfCamera", "box_VisibilityController_v2_103.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_91_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_38
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective060",
    item = "Objective",
    id = "560738"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|843221510", "843221510", "S13M040_Main", "box_VisibilityController_v2_91.Hidden", "box_MissionMessageController_v3_38.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MissionLayer_v2_17_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_11
  l0.LayerName = "S13M040_Main_ServerFarm"
  l0 = self.box_MissionLayer_v2_17
  l1 = self.box_MissionLayer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1259716938", "1259716938", "S13M040_Main", "box_MissionLayer_v2_17.Unloaded", "box_MissionLayer_v2_11.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_LogicGate_v2_151_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_95
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406437034"
  l0 = self.box_LogicGate_v2_151
  l1 = self.box_PhoneCommunicationController_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1438305124", "1438305124", "S13M040_Main", "box_LogicGate_v2_151.Out", "box_PhoneCommunicationController_95.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_ListWriter_310_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_310
  self.Drones = l0.Target
end
function export:f_box_ListWriter_310_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_310
  self.Drones = l0.Target
end
function export:f_box_ListWriter_310_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_310
  self.Drones = l0.Target
end
function export:f_box_PhoneCommunicationController_95_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Simple_Node_229()
  l0 = self.box_PhoneCommunicationController_95
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2019303031", "2019303031", "S13M040_Main", "box_PhoneCommunicationController_95.StartCommunicationOut", "box_Simple_Node_229.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_231_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_227
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|747849300", "747849300", "S13M040_Main", "box_VisibilityController_v2_231.Hidden", "box_Timer_v2_227.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_298_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_297
  l0.HackableEntity = self.ServerRackNode_1
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|649464946", "649464946", "S13M040_Main", "box_Ordered_Output_298.Out", "box_Hackable_Monitor_297.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_298_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_302
  l0.HackableEntity = self.ServerRackNode_2
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|229250656", "229250656", "S13M040_Main", "box_Ordered_Output_298.Out", "box_Hackable_Monitor_302.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_298_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_294
  l0.HackableEntity = self.ServerRackNode_3
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1827874541", "1827874541", "S13M040_Main", "box_Ordered_Output_298.Out", "box_Hackable_Monitor_294.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_298_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_301
  l0.HackableEntity = self.ServerRackNode_4
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|861925673", "861925673", "S13M040_Main", "box_Ordered_Output_298.Out", "box_Hackable_Monitor_301.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_298_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_300
  l0.HackableEntity = self.ServerRackNode_5
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|657346869", "657346869", "S13M040_Main", "box_Ordered_Output_298.Out", "box_Hackable_Monitor_300.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_298_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_211
  l0.HackableEntity = self.ServerRackNode_6
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|536402198", "536402198", "S13M040_Main", "box_Ordered_Output_298.Out", "box_Hackable_Monitor_211.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_298_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_210
  l0.HackableEntity = self.ServerRackNode_7
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|451311002", "451311002", "S13M040_Main", "box_Ordered_Output_298.Out", "box_Hackable_Monitor_210.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_298_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_184
  l0.HackableEntity = self.ServerRackNode_8
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1801969920", "1801969920", "S13M040_Main", "box_Ordered_Output_298.Out", "box_Hackable_Monitor_184.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_298_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_205
  l0.HackableEntity = self.ServerRackNode_9
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1583209250", "1583209250", "S13M040_Main", "box_Ordered_Output_298.Out", "box_Hackable_Monitor_205.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_298_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_207
  l0.HackableEntity = self.ServerRackNode_10
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|174764615", "174764615", "S13M040_Main", "box_Ordered_Output_298.Out", "box_Hackable_Monitor_207.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_298_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_337
  l0.HackableEntity = "9223372054531599391"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1901779520", "1901779520", "S13M040_Main", "box_Ordered_Output_298.Out", "box_Hackable_Monitor_337.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_298_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_338
  l0.HackableEntity = "9223372052756035355"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1805413954", "1805413954", "S13M040_Main", "box_Ordered_Output_298.Out", "box_Hackable_Monitor_338.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_143_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_145()
  l0 = self.box_Multiple_AND_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1814007663", "1814007663", "S13M040_Main", "box_Ordered_Output_143.Out", "box_Multiple_AND_145.Condition", clone, l0)
  l0:Condition(2)
end
function export:f_box_Ordered_Output_143_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_242
  l0.Seconds = 0.1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1677859867", "1677859867", "S13M040_Main", "box_Ordered_Output_143.Out", "box_Timer_v2_242.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_280_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_280
  l1 = self.box_ListWriter_243
  l1.Data[0] = l0.UserID
  l1.Input = self.Drones
  l0 = self.box_CLOController_280
  l1 = self.box_ListWriter_243
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|247432019", "247432019", "S13M040_Main", "box_CLOController_280.OnUserInPlace", "box_ListWriter_243.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_243_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_243
  self.Drones = l0.Target
end
function export:f_box_ListWriter_243_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_243
  self.Drones = l0.Target
end
function export:f_box_ListWriter_243_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_243
  self.Drones = l0.Target
end
function export:f_box_Timer_v2_256_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_07
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|564846441"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_218_Hidden
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_256
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1491622725", "1491622725", "S13M040_Main", "box_Timer_v2_256.TimeElapsed", "box_VisibilityController_v2_218.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_SetInteger_v2_137_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.Music = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 9
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|306190148"
  l0.Out = self.f_box_SetTimeOfDay_58_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|204391233", "204391233", "S13M040_Main", "box_SetInteger_v2_137.Out", "box_SetTimeOfDay_58.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_Ordered_Output_119_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPrep_261
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|162176107", "162176107", "S13M040_Main", "box_Ordered_Output_119.Out", "box_IOPPrep_261.PreIOP", clone, l0)
  l0:PreIOP()
end
function export:f_box_Ordered_Output_119_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_185()
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1608255929", "1608255929", "S13M040_Main", "box_Ordered_Output_119.Out", "box_Simple_Node_185.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_278_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_279
  l0.CLO = self.AltDroneB
  l0 = self.box_CLOController_278
  l1 = self.box_CLOController_279
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1843796024", "1843796024", "S13M040_Main", "box_CLOController_278.Activated", "box_CLOController_279.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_278_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_278
  l1 = self.box_ListWriter_240
  l1.Data[0] = l0.UserID
  l1.Input = self.Drones
  l0 = self.box_CLOController_278
  l1 = self.box_ListWriter_240
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|478842150", "478842150", "S13M040_Main", "box_CLOController_278.OnUserInPlace", "box_ListWriter_240.Add", l0, l1)
  l1:Add()
end
function export:f_box_UIController_347_ContextDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_342()
  l0 = self.box_UIController_347
  l1 = self.box_MultipleOR_342
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|160637116", "160637116", "S13M040_Main", "box_UIController_347.ContextDisabled", "box_MultipleOR_342.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MaterialController_198_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.general_lines
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0.1
  l0.B = 0
  l0.Time = 3
  l0._graph = self
  l0._name = "box_MaterialController_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1159133356"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2070219254", "2070219254", "S13M040_Main", "box_MaterialController_198.ParameterSet", "box_MaterialController_199.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_HackableController_v2_99_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.DubaiToSeoulBlocker
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_308"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1920230797"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_308_Hidden
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_99
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|563113761", "563113761", "S13M040_Main", "box_HackableController_v2_99.Disabled", "box_VisibilityController_v2_308.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Timer_v2_248_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.general_lines
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0._name = "box_MaterialController_232"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|552648149"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_232_ParameterSet
  l0 = self.box_Timer_v2_248
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1529821180", "1529821180", "S13M040_Main", "box_Timer_v2_248.TimeElapsed", "box_MaterialController_232.SetParameter", l0, l1)
  l1:SetParameter()
end
function export:f_box_IOPPrep_262_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_266
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective010",
    item = "Objective",
    id = "403005"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_IOPPrep_262
  l1 = self.box_MissionMessageController_v3_266
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|242664406", "242664406", "S13M040_Main", "box_IOPPrep_262.Out", "box_MissionMessageController_v3_266.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
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
  l0 = self.box_MissionLayer_v2_107
  l0.LayerName = "S13M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2103376427", "2103376427", "S13M040_Main", "box_Get_Player_ID_79.Out", "box_MissionLayer_v2_107.Load", clone, l0)
  l0:Load()
end
function export:f_box_Timer_v2_19_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_19
  l1 = self.box_Network_Surfing_Controller_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1807711097", "1807711097", "S13M040_Main", "box_Timer_v2_19.TimeElapsed", "box_Network_Surfing_Controller_114.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Integer_Arithmetics_187_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Music = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_157()
  l0 = self.box_MultipleOR_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|871626988", "871626988", "S13M040_Main", "box_Integer_Arithmetics_187.Out", "box_MultipleOR_157.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_MultipleOR_46_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_117
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406437033"
  l0 = self.box_MultipleOR_46
  l1 = self.box_PhoneCommunicationController_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|752622371", "752622371", "S13M040_Main", "box_MultipleOR_46.Out", "box_PhoneCommunicationController_117.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Hackable_Monitor_300_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_336"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|416686658"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_336_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_336_Out_1
  l0 = self.box_Hackable_Monitor_300
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1115320195", "1115320195", "S13M040_Main", "box_Hackable_Monitor_300.HackSuccess", "box_Ordered_Output_336.In", l0, l1)
  l1:In()
end
function export:f_box_LogicGate_v2_144_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_118
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053612566538"
  l0 = self.box_LogicGate_v2_144
  l1 = self.box_PhoneCommunicationController_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|305348623", "305348623", "S13M040_Main", "box_LogicGate_v2_144.Out", "box_PhoneCommunicationController_118.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Hackable_Monitor_211_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_325"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|182026426"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_325_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_325_Out_1
  l0 = self.box_Hackable_Monitor_211
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1438058170", "1438058170", "S13M040_Main", "box_Hackable_Monitor_211.HackSuccess", "box_Ordered_Output_325.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_302_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_317"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|54440211"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_317_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_317_Out_1
  l0 = self.box_Hackable_Monitor_302
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|212755960", "212755960", "S13M040_Main", "box_Hackable_Monitor_302.HackSuccess", "box_Ordered_Output_317.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_250_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_05
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|474968014"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_250
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1317463785", "1317463785", "S13M040_Main", "box_Timer_v2_250.TimeElapsed", "box_VisibilityController_v2_216.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VisibilityController_v2_215_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_219
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1535700728", "1535700728", "S13M040_Main", "box_VisibilityController_v2_215.Hidden", "box_Timer_v2_219.Start", clone, l0)
  l0:Start()
end
function export:f_box_Hackable_Monitor_294_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_322"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1708733307"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_322_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_322_Out_1
  l0 = self.box_Hackable_Monitor_294
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2078636700", "2078636700", "S13M040_Main", "box_Hackable_Monitor_294.HackSuccess", "box_Ordered_Output_322.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_165_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_162
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1872413529", "1872413529", "S13M040_Main", "box_VisibilityController_v2_165.Shown", "box_Timer_v2_162.Start", clone, l0)
  l0:Start()
end
function export:f_box_PhoneCommunicationController_156_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_174
  l0.Seconds = 24
  l0 = self.box_PhoneCommunicationController_156
  l1 = self.box_Timer_v2_174
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|937046274", "937046274", "S13M040_Main", "box_PhoneCommunicationController_156.OnCommunicationFinished", "box_Timer_v2_174.Start", l0, l1)
  l1:Start()
end
function export:f_box_MaterialController_290_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_j
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0._name = "box_MaterialController_291"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|658659973"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|916197329", "916197329", "S13M040_Main", "box_MaterialController_290.ParameterSet", "box_MaterialController_291.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_HackableController_v2_276_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1168898578"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_222_Hidden
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_276
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1547012048", "1547012048", "S13M040_Main", "box_HackableController_v2_276.Disabled", "box_VisibilityController_v2_222.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_309_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_140()
  l0 = self.box_MultipleOR_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|458415481", "458415481", "S13M040_Main", "box_Ordered_Output_309.Out", "box_MultipleOR_140.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_309_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_275()
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|651098619", "651098619", "S13M040_Main", "box_Ordered_Output_309.Out", "box_Simple_Node_275.In", clone, l0)
  l0:In()
end
function export:f_box_S13M040_IOP_Seoul_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPrep_263
  l0.Camera = self.SatelliteCamera_Seoul
  l0.Target = self.Seoul_Exit_Tagpoint
  l0 = self.box_S13M040_IOP_Seoul_23
  l1 = self.box_IOPPrep_263
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|407543793", "407543793", "S13M040_Main", "box_S13M040_IOP_Seoul_23.Out", "box_IOPPrep_263.PostIOP", l0, l1)
  l1:PostIOP()
end
function export:f_box_SatelliteCam_108_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SatelliteCam_109
  l0.CameraEntity = self.SatelliteCamera_Dubai
  l0.AtomsphereEntity = "9223372055570556037"
  l0.CameraAttachmentEntity = "9223372065542843551"
  l0.InitialTarget = self.Dubai_Tagpoint
  l0 = self.box_SatelliteCam_108
  l1 = self.box_SatelliteCam_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1946822270", "1946822270", "S13M040_Main", "box_SatelliteCam_108.Out", "box_SatelliteCam_109.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_83_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Unlocks IOP hackables", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'InteractionScriptController')-- Comment: Unlocks IOP hackables")
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.AllCitiesCircuitBox
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|219891056"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = self.f_box_InteractionScriptController_88_InteractionForced
  l0.Out = DummyFunction
  l0 = self.box_PhoneCommunicationController_83
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1823572169", "1823572169", "S13M040_Main", "box_PhoneCommunicationController_83.OnCommunicationFinished", "box_InteractionScriptController_88.ForceInteract", l0, l1)
  l1:ForceInteract()
end
function export:f_box_PhoneCommunicationController_83_StopCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_98()
  l0 = self.box_PhoneCommunicationController_83
  l1 = self.box_MultipleOR_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|311364996", "311364996", "S13M040_Main", "box_PhoneCommunicationController_83.StopCommunicationOut", "box_MultipleOR_98.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MaterialController_270_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_e_1
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0._name = "box_MaterialController_272"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1412949119"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_272_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1329805672", "1329805672", "S13M040_Main", "box_MaterialController_270.ParameterSet", "box_MaterialController_272.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_Timer_v2_219_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_09
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1568231522"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_217_Hidden
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_219
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|289289299", "289289299", "S13M040_Main", "box_Timer_v2_219.TimeElapsed", "box_VisibilityController_v2_217.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionMessageController_v3_266_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_159
  l0.Seconds = 1
  l0 = self.box_MissionMessageController_v3_266
  l1 = self.box_Timer_v2_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1585725201", "1585725201", "S13M040_Main", "box_MissionMessageController_v3_266.Out", "box_Timer_v2_159.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Arithmetics_183_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Music = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_157()
  l0 = self.box_MultipleOR_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1330104270", "1330104270", "S13M040_Main", "box_Integer_Arithmetics_183.Out", "box_MultipleOR_157.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MaterialController_289_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_i
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0._name = "box_MaterialController_290"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|894517836"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_290_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1972419032", "1972419032", "S13M040_Main", "box_MaterialController_289.ParameterSet", "box_MaterialController_290.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_Timer_v2_348_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_274()
  l0 = self.box_Timer_v2_348
  l1 = self.box_MultipleOR_274
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|335389785", "335389785", "S13M040_Main", "box_Timer_v2_348.Started", "box_MultipleOR_274.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_348_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_274()
  l0 = self.box_Timer_v2_348
  l1 = self.box_MultipleOR_274
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2100970296", "2100970296", "S13M040_Main", "box_Timer_v2_348.TimeElapsed", "box_MultipleOR_274.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MaterialController_287_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_g
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0._name = "box_MaterialController_288"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1554491830"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_288_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1288621020", "1288621020", "S13M040_Main", "box_MaterialController_287.ParameterSet", "box_MaterialController_288.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1717736464"
  l0.Out = self.f_box_SetTimeOfDay_64_Out
  l0 = self.box_MultipleOR_13
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1330306401", "1330306401", "S13M040_Main", "box_MultipleOR_13.Out", "box_SetTimeOfDay_64.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_ListWriter_53_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_53
  self.IOPEntryHackables = l0.Target
  l0 = self.box_ListWriter_233
  l0.Input = self.EarthEntities
  l0.Data[0] = self.dubai_lines_ON
  l0.Data[1] = self.dublin_lines_ON
  l0.Data[2] = self.seoul_lines_ON
  l0.Data[3] = self.general_lines
  l0.Data[4] = self.hacktheplanet_seoullights_0
  l0.Data[5] = self.hacktheplanet_seoullights_1
  l0.Data[6] = self.hacktheplanet_seoullights_2
  l0.Data[7] = self.hacktheplanet_seoullights_3
  l0.Data[8] = self.Dublin_Hack
  l0.Data[9] = self.Dubai_Hack
  l0.Data[10] = self.Seoul_Hack
  l0.Data[11] = self.Delaware_First
  l0.Data[12] = self.Delaware_Second
  l0.Data[13] = self.Delaware_Tagpoint
  l0.Data[14] = self.Dubai_Tagpoint
  l0.Data[15] = self.Seoul_Tagpoint
  l0.Data[16] = self.Dublin_Tagpoint
  l0.Data[17] = self.Seoul_Exit_Tagpoint
  l0.Data[18] = self.Dubai_Exit_Tagpoint
  l0.Data[19] = self.Dublin_Exit_Tagpoint
  l0.Data[20] = self.Earth
  l0.Data[21] = self.city_markers
  l0 = self.box_ListWriter_53
  l1 = self.box_ListWriter_233
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1740401520", "1740401520", "S13M040_Main", "box_ListWriter_53.Added", "box_ListWriter_233.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_53_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_53
  self.IOPEntryHackables = l0.Target
end
function export:f_box_ListWriter_53_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_53
  self.IOPEntryHackables = l0.Target
end
function export:f_box_Timer_v2_258_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_01
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|541530536"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_212_Hidden
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_258
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1266245274", "1266245274", "S13M040_Main", "box_Timer_v2_258.TimeElapsed", "box_VisibilityController_v2_212.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_PhoneCommunicationController_96_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1233430717"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_115_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_115_Out_1
  l0 = self.box_PhoneCommunicationController_96
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1388091046", "1388091046", "S13M040_Main", "box_PhoneCommunicationController_96.StartCommunicationOut", "box_Ordered_Output_115.In", l0, l1)
  l1:In()
end
function export:f_box_InventoryController_v2_176_Switched()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InventoryController_v2_176()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|513817336", "513817336", "S13M040_Main", "box_InventoryController_v2_176.Switched", "box_InventoryController_v2_176.DisableWheelActionMap", clone, l0)
  l0:DisableWheelActionMap()
end
function export:f_box_InventoryController_v2_176_WheelActionMapDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_UIController_346
  l0.UIContext = "HideMinimap"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1326724887", "1326724887", "S13M040_Main", "box_InventoryController_v2_176.WheelActionMapDisabled", "box_UIController_346.EnableUIContext", clone, l0)
  l0:EnableUIContext()
end
function export:f_box_VisibilityController_v2_306_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1305923330"
  l0.Out = self.f_box_Simple_Node_131_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1273454494", "1273454494", "S13M040_Main", "box_VisibilityController_v2_306.Shown", "box_Simple_Node_131.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_94_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_89
  l0.LayerName = "S13M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1206804484", "1206804484", "S13M040_Main", "box_Get_Player_ID_94.Out", "box_MissionLayer_v2_89.Load", clone, l0)
  l0:Load()
end
function export:f_box_VisibilityController_v2_220_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_250
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|819516495", "819516495", "S13M040_Main", "box_VisibilityController_v2_220.Hidden", "box_Timer_v2_250.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_174_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_155
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055160345691"
  l0 = self.box_Timer_v2_174
  l1 = self.box_PhoneCommunicationController_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2068677259", "2068677259", "S13M040_Main", "box_Timer_v2_174.TimeElapsed", "box_PhoneCommunicationController_155.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_VisibilityController_v2_214_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_267
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1792556296", "1792556296", "S13M040_Main", "box_VisibilityController_v2_214.Hidden", "box_Timer_v2_267.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_179_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Flying_Drone_Controller_27()
  l0 = self.box_Timer_v2_179
  l1 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1050168605", "1050168605", "S13M040_Main", "box_Timer_v2_179.TimeElapsed", "box_Flying_Drone_Controller_27.MakeAvailable", l0, l1)
  l1:MakeAvailable()
end
function export:f_box_MissionLayer_v2_32_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_14
  l0.LayerName = "S13M040_Main_IOP"
  l0 = self.box_MissionLayer_v2_32
  l1 = self.box_MissionLayer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|954568575", "954568575", "S13M040_Main", "box_MissionLayer_v2_32.Loaded", "box_MissionLayer_v2_14.Load", l0, l1)
  l1:Load()
end
function export:f_box_ListWriter_240_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_240
  self.Drones = l0.Target
end
function export:f_box_ListWriter_240_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_240
  self.Drones = l0.Target
end
function export:f_box_ListWriter_240_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_240
  self.Drones = l0.Target
end
function export:f_box_Ordered_Output_72_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_56()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|265773612", "265773612", "S13M040_Main", "box_Ordered_Output_72.Out", "box_SecurityCamController_56.SetInitialTarget", clone, l0)
  l0:SetInitialTarget()
end
function export:f_box_Ordered_Output_72_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_278
  l0.CLO = self.AltDroneA
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1577210243", "1577210243", "S13M040_Main", "box_Ordered_Output_72.Out", "box_CLOController_278.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Timer_v2_284_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_h
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_251"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1588831228"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_251_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_284
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1797735474", "1797735474", "S13M040_Main", "box_Timer_v2_284.TimeElapsed", "box_VisibilityController_v2_251.Show", l0, l1)
  l1:Show()
end
function export:f_box_Teleport_To_SpawnPoint_70_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_122
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_Teleport_To_SpawnPoint_70
  l1 = self.box_MissionCheckpointReach_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1221103815", "1221103815", "S13M040_Main", "box_Teleport_To_SpawnPoint_70.TeleportDone", "box_MissionCheckpointReach_122.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_132_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|540192021"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_30_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_30_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_30_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_30_Out_3
  l0 = self.box_MultipleOR_132
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|800942905", "800942905", "S13M040_Main", "box_MultipleOR_132.Out", "box_Ordered_Output_30.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_113_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPrep_260
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2129746196", "2129746196", "S13M040_Main", "box_Ordered_Output_113.Out", "box_IOPPrep_260.PreIOP", clone, l0)
  l0:PreIOP()
end
function export:f_box_Ordered_Output_113_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_185()
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|68845369", "68845369", "S13M040_Main", "box_Ordered_Output_113.Out", "box_Simple_Node_185.In", clone, l0)
  l0:In()
end
function export:f_box_Teleport_To_SpawnPoint_6_TeleportDone()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_50()
  l0 = self.box_Teleport_To_SpawnPoint_6
  l1 = self.box_MultipleOR_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|242087639", "242087639", "S13M040_Main", "box_Teleport_To_SpawnPoint_6.TeleportDone", "box_MultipleOR_50.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_323_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_06
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|476336963"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1013298146", "1013298146", "S13M040_Main", "box_Ordered_Output_323.Out", "box_VisibilityController_v2_204.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_323_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_318
  l0.Entity = "9223372056081177671"
  l0.SoundId = "soundbinary/520003169.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|546756892", "546756892", "S13M040_Main", "box_Ordered_Output_323.Out", "box_PlaySound_v2_318.Play", clone, l0)
  l0:Play()
end
function export:f_box_ConsoleCommand_v2_51_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ConsoleCommand_v2_40
  l0.Command = "IOP_Seoul"
  l0 = self.box_ConsoleCommand_v2_51
  l1 = self.box_ConsoleCommand_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1927940182", "1927940182", "S13M040_Main", "box_ConsoleCommand_v2_51.Enabled", "box_ConsoleCommand_v2_40.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ConsoleCommand_v2_51_Executed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|523809185"
  l0.Out = self.f_box_Simple_Node_5_Out
  l0 = self.box_ConsoleCommand_v2_51
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|706313401", "706313401", "S13M040_Main", "box_ConsoleCommand_v2_51.Executed", "box_Simple_Node_5.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_117_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|700819752"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_119_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_119_Out_1
  l0 = self.box_PhoneCommunicationController_117
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2057687322", "2057687322", "S13M040_Main", "box_PhoneCommunicationController_117.StartCommunicationOut", "box_Ordered_Output_119.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_150_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.puzzleLights
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|419979526"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_148_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1534376969", "1534376969", "S13M040_Main", "box_VisibilityController_v2_150.Hidden", "box_VisibilityController_v2_148.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_222_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1649635714"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_75_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_75_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_75_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1280094498", "1280094498", "S13M040_Main", "box_VisibilityController_v2_222.Hidden", "box_Ordered_Output_75.In", clone, l0)
  l0:In()
end
function export:f_box_Flying_Drone_Controller_66_DisconnectUnavailable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Flying_Drone_Controller_66()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1730848670", "1730848670", "S13M040_Main", "box_Flying_Drone_Controller_66.DisconnectUnavailable", "box_Flying_Drone_Controller_66.MakeCallBackUnavailable", clone, l0)
  l0:MakeCallBackUnavailable()
end
function export:f_box_Ordered_Output_333_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_04
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_296"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1174227865"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1843556970", "1843556970", "S13M040_Main", "box_Ordered_Output_333.Out", "box_VisibilityController_v2_296.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_333_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_334
  l0.Entity = "9223372056081177788"
  l0.SoundId = "soundbinary/136636566.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1926016336", "1926016336", "S13M040_Main", "box_Ordered_Output_333.Out", "box_PlaySound_v2_334.Play", clone, l0)
  l0:Play()
end
function export:f_box_MapPointController_v4_61_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_15()
  l0 = self.box_MapPointController_v4_61
  l1 = self.box_Hackable_Monitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|161657707", "161657707", "S13M040_Main", "box_MapPointController_v4_61.Hidden", "box_Hackable_Monitor_15.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MapPointController_v4_61_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_62
  l0.HackableEntity = self.DataFarm_AccessNode
  l0.AutoDisable = 1
  l0 = self.box_MapPointController_v4_61
  l1 = self.box_Hackable_Monitor_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1629996351", "1629996351", "S13M040_Main", "box_MapPointController_v4_61.Shown", "box_Hackable_Monitor_62.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PhoneCommunicationController_249_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_254()
  l0 = self.box_PhoneCommunicationController_249
  l1 = self.box_Multiple_AND_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|892818255", "892818255", "S13M040_Main", "box_PhoneCommunicationController_249.OnCommunicationFinished", "box_Multiple_AND_254.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_PhoneCommunicationController_106_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Simple_Node_229()
  l0 = self.box_PhoneCommunicationController_106
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|708282215", "708282215", "S13M040_Main", "box_PhoneCommunicationController_106.StartCommunicationOut", "box_Simple_Node_229.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_115_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 0
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_304"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|277955190"
  l0.Out = self.f_box_SetTimeOfDay_304_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|984664721", "984664721", "S13M040_Main", "box_Ordered_Output_115.Out", "box_SetTimeOfDay_304.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_Ordered_Output_115_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_185()
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1049123984", "1049123984", "S13M040_Main", "box_Ordered_Output_115.Out", "box_Simple_Node_185.In", clone, l0)
  l0:In()
end
function export:f_box_Network_Surfing_Controller_114_Deactivated()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|585681083"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_box_TimeScale_Controller_78_Unlocked
  l0.Out = DummyFunction
  l0 = self.box_Network_Surfing_Controller_114
  l1 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1655227031", "1655227031", "S13M040_Main", "box_Network_Surfing_Controller_114.Deactivated", "box_TimeScale_Controller_78.Unlock", l0, l1)
  l1:Unlock()
end
function export:f_box_ListWriter_134_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_134
  self.puzzleLights = l0.Target
  l0 = self.box_ListWriter_69
  l0.Input = self.skull_meshes
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.gal_server_skull_a_1
  l0.Data[2] = self.gal_server_skull_b_1
  l0.Data[3] = self.gal_server_skull_c_1
  l0.Data[4] = self.gal_server_skull_d_1
  l0.Data[5] = self.gal_server_skull_e_1
  l0.Data[6] = self.gal_server_skull_f
  l0.Data[7] = self.gal_server_skull_g
  l0.Data[8] = self.gal_server_skull_h
  l0.Data[9] = self.gal_server_skull_i
  l0.Data[10] = self.gal_server_skull_j
  l0 = self.box_ListWriter_134
  l1 = self.box_ListWriter_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|912769433", "912769433", "S13M040_Main", "box_ListWriter_134.Added", "box_ListWriter_69.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_134_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_134
  self.puzzleLights = l0.Target
end
function export:f_box_ListWriter_134_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_134
  self.puzzleLights = l0.Target
end
function export:f_box_MissionLayer_v2_344_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_342()
  l0 = self.box_MissionLayer_v2_344
  l1 = self.box_MultipleOR_342
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|47184612", "47184612", "S13M040_Main", "box_MissionLayer_v2_344.Loaded", "box_MultipleOR_342.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_DummyCam_49_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DummyCam_59
  l0.CameraEntity = self.SatelliteCamera_Seoul
  l0.DummyHackable = self.seoul_hackable_dummy
  l0.DummyHackable2 = self._2ndbridge_hackable_dummy
  l0.LookatTarget = self.Seoul_Tagpoint
  l0 = self.box_DummyCam_49
  l1 = self.box_DummyCam_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2119057666", "2119057666", "S13M040_Main", "box_DummyCam_49.Out", "box_DummyCam_59.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_224_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_121
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1998493741", "1998493741", "S13M040_Main", "box_VisibilityController_v2_224.Hidden", "box_Timer_v2_121.Start", clone, l0)
  l0:Start()
end
function export:f_box_ListWriter_233_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_233
  self.EarthEntities = l0.Target
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.seoul_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0
  l0.B = 0
  l0.Time = 0
  l0._graph = self
  l0._name = "box_MaterialController_200"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1958499586"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_200_ParameterSet
  l0 = self.box_ListWriter_233
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1467912232", "1467912232", "S13M040_Main", "box_ListWriter_233.Added", "box_MaterialController_200.SetParameter", l0, l1)
  l1:SetParameter()
end
function export:f_box_ListWriter_233_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_233
  self.EarthEntities = l0.Target
end
function export:f_box_ListWriter_233_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_233
  self.EarthEntities = l0.Target
end
function export:f_box_MissionMessageController_v3_63_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_161
  l0.Seconds = 1
  l0 = self.box_MissionMessageController_v3_63
  l1 = self.box_Timer_v2_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1356966102", "1356966102", "S13M040_Main", "box_MissionMessageController_v3_63.Out", "box_Timer_v2_161.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_8_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_46()
  l0 = self.box_Hackable_Monitor_8
  l1 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|505100605", "505100605", "S13M040_Main", "box_Hackable_Monitor_8.HackSuccess", "box_MultipleOR_46.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_57_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.skull_meshes
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1161133115"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_150_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|732644399", "732644399", "S13M040_Main", "box_Ordered_Output_57.Out", "box_VisibilityController_v2_150.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_57_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_a_1
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0._name = "box_MaterialController_271"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1813851653"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_271_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|631610844", "631610844", "S13M040_Main", "box_Ordered_Output_57.Out", "box_MaterialController_271.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_SetTimeOfDay_305_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPrep_264
  l0.Camera = self.SatelliteCamera_Dubai
  l0.Target = self.Dubai_Exit_Tagpoint
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|565393562", "565393562", "S13M040_Main", "box_SetTimeOfDay_305.Out", "box_IOPPrep_264.PostIOP", clone, l0)
  l0:PostIOP()
end
function export:f_box_Ordered_Output_195_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "exotic_mission_pausemenu"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1966693557"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_84_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1815686177", "1815686177", "S13M040_Main", "box_Ordered_Output_195.Out", "box_SetActionMap_v2_84.Push", clone, l0)
  l0:Push()
end
function export:f_box_Ordered_Output_195_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372069285877235"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1419919445"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1274219847", "1274219847", "S13M040_Main", "box_Ordered_Output_195.Out", "box_MissionMusicController_194.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionLayer_v2_11_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_221
  l0.LayerName = "S13M040_Main_Earth"
  l0 = self.box_MissionLayer_v2_11
  l1 = self.box_MissionLayer_v2_221
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|495284301", "495284301", "S13M040_Main", "box_MissionLayer_v2_11.Unloaded", "box_MissionLayer_v2_221.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Simple_Node_131_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_132()
  l0 = self.box_MultipleOR_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|452994513", "452994513", "S13M040_Main", "box_Simple_Node_131.Out", "box_MultipleOR_132.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Hackable_Monitor_297_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_323"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1132785754"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_323_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_323_Out_1
  l0 = self.box_Hackable_Monitor_297
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1748771458", "1748771458", "S13M040_Main", "box_Hackable_Monitor_297.HackSuccess", "box_Ordered_Output_323.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_207_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_335"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|106021921"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_335_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_335_Out_1
  l0 = self.box_Hackable_Monitor_207
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1356892118", "1356892118", "S13M040_Main", "box_Hackable_Monitor_207.HackSuccess", "box_Ordered_Output_335.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_28_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_28
  l1 = self.box_Timer_v2_179
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1023932178", "1023932178", "S13M040_Main", "box_CinematicPrep_28.PreOut", "box_Timer_v2_179.Start", l0, l1)
  l1:Start()
end
function export:f_box_VisibilityController_v2_164_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_252
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1166494988", "1166494988", "S13M040_Main", "box_VisibilityController_v2_164.Shown", "box_Timer_v2_252.Start", clone, l0)
  l0:Start()
end
function export:f_box_Hackable_Monitor_193_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.Music
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|373205732"
  l0.Out = self.f_box_Integer_Arithmetics_192_Out
  l0 = self.box_Hackable_Monitor_193
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|515567610", "515567610", "S13M040_Main", "box_Hackable_Monitor_193.HackSuccess", "box_Integer_Arithmetics_192.Add", l0, l1)
  l1:Add()
end
function export:f_box_MaterialController_269_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_d_1
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0._name = "box_MaterialController_270"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|987467813"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_270_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|735307681", "735307681", "S13M040_Main", "box_MaterialController_269.ParameterSet", "box_MaterialController_270.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_CLOController_279_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_281
  l0.CLO = self.AltDroneC
  l0 = self.box_CLOController_279
  l1 = self.box_CLOController_281
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|802416614", "802416614", "S13M040_Main", "box_CLOController_279.Activated", "box_CLOController_281.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_279_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_279
  l1 = self.box_ListWriter_241
  l1.Data[0] = l0.UserID
  l1.Input = self.Drones
  l0 = self.box_CLOController_279
  l1 = self.box_ListWriter_241
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|471483954", "471483954", "S13M040_Main", "box_CLOController_279.OnUserInPlace", "box_ListWriter_241.Add", l0, l1)
  l1:Add()
end
function export:f_box_S13M040_IOP_Dubai_36_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 9
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_305"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1281154751"
  l0.Out = self.f_box_SetTimeOfDay_305_Out
  l0 = self.box_S13M040_IOP_Dubai_36
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1543779376", "1543779376", "S13M040_Main", "box_S13M040_IOP_Dubai_36.Out", "box_SetTimeOfDay_305.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_TimeScale_Controller_76_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_134
  l0.Input = self.puzzleLights
  l0.Data[0] = self.puzzleLights_01
  l0.Data[1] = self.puzzleLights_02
  l0.Data[2] = self.puzzleLights_03
  l0.Data[3] = self.puzzleLights_04
  l0.Data[4] = self.puzzleLights_05
  l0.Data[5] = self.puzzleLights_06
  l0.Data[6] = self.puzzleLights_07
  l0.Data[7] = self.puzzleLights_08
  l0.Data[8] = self.puzzleLights_09
  l0.Data[9] = self.puzzleLights_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|430853252", "430853252", "S13M040_Main", "box_TimeScale_Controller_76.Locked", "box_ListWriter_134.Add", clone, l0)
  l0:Add()
end
function export:f_box_Hackable_Monitor_81_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1967292919"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_163_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_163_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_163_Out_2
  l0 = self.box_Hackable_Monitor_81
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1094187064", "1094187064", "S13M040_Main", "box_Hackable_Monitor_81.Disabled", "box_Ordered_Output_163.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_81_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_81()
  l0 = self.box_Hackable_Monitor_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1314076199", "1314076199", "S13M040_Main", "box_Hackable_Monitor_81.HackSuccess", "box_Hackable_Monitor_81.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_IOPPrep_264_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_63
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective010",
    item = "Objective",
    id = "403005"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_IOPPrep_264
  l1 = self.box_MissionMessageController_v3_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2146148835", "2146148835", "S13M040_Main", "box_IOPPrep_264.Out", "box_MissionMessageController_v3_63.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MaterialController_272_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_f
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0._name = "box_MaterialController_287"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1010036212"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_287_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|692476632", "692476632", "S13M040_Main", "box_MaterialController_272.ParameterSet", "box_MaterialController_287.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_Multiple_AND_254_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Multiple_AND_254
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1340471291", "1340471291", "S13M040_Main", "box_Multiple_AND_254.Out", "box_MissionMessageController_v3_3.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_MissionCheckpointReach_31_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_31
  l1 = self.box_S13_M040_CIN_Launch_Main_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|752236796", "752236796", "S13M040_Main", "box_MissionCheckpointReach_31.Out", "box_S13_M040_CIN_Launch_Main_47.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_139_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_307"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1660013787"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_307_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_307_Out_1
  l0 = self.box_HackableController_v2_139
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|443641164", "443641164", "S13M040_Main", "box_HackableController_v2_139.Disabled", "box_Ordered_Output_307.In", l0, l1)
  l1:In()
end
function export:f_box_IOPPrep_260_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPrep_260
  l1 = self.box_S13M040_IOP_Seoul_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1385749880", "1385749880", "S13M040_Main", "box_IOPPrep_260.Out", "box_S13M040_IOP_Seoul_23.In", l0, l1)
  l1:In()
end
function export:f_box_Integer_Arithmetics_189_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Music = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_157()
  l0 = self.box_MultipleOR_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|720904379", "720904379", "S13M040_Main", "box_Integer_Arithmetics_189.Out", "box_MultipleOR_157.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Timer_v2_167_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_06
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1497445616"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_245_Hidden
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_167
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|710234205", "710234205", "S13M040_Main", "box_Timer_v2_167.TimeElapsed", "box_VisibilityController_v2_245.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionMessageController_v3_38_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1787619798"
  l0._DynamicAnchors = {Out = 8}
  l0.Out[0] = self.f_box_Ordered_Output_175_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_175_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = self.f_box_Ordered_Output_175_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_175_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_175_Out_5
  l0.Out[6] = DummyFunction
  l0.Out[7] = DummyFunction
  l0 = self.box_MissionMessageController_v3_38
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|975229632", "975229632", "S13M040_Main", "box_MissionMessageController_v3_38.Out", "box_Ordered_Output_175.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_316_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_316
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l1.Entity1 = l0.Collider
  l1.Entity2 = self.PlayerEntity
  l1._graph = self
  l1._name = "box_Compare_Entity_v2_146"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1786426870"
  l1.Out = DummyFunction
  l1.Equal = DummyFunction
  l1.NotEqual = self.f_box_Compare_Entity_v2_146_NotEqual
  l0 = self.box_TriggerMonitor_v2_316
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|174461684", "174461684", "S13M040_Main", "box_TriggerMonitor_v2_316.Enter", "box_Compare_Entity_v2_146.In", l0, l1)
  l1:In()
end
function export:f_box_Integer_Select_101_Match_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_138
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_Integer_Select_101
  l1 = self.box_PlaySound_v2_138
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|442218161", "442218161", "S13M040_Main", "box_Integer_Select_101.Match", "box_PlaySound_v2_138.Play", l0, l1)
  l1:Play()
end
function export:f_box_Integer_Select_101_Match_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_136
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0 = self.box_Integer_Select_101
  l1 = self.box_PlaySound_v2_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1291988927", "1291988927", "S13M040_Main", "box_Integer_Select_101.Match", "box_PlaySound_v2_136.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_121_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.hacktheplanet_seoullights_3
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1640039587"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_33_Hidden
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_121
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|278265742", "278265742", "S13M040_Main", "box_Timer_v2_121.TimeElapsed", "box_VisibilityController_v2_33.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_PlaySound_v2_239_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Post Out", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'CinematicPrep')-- Comment: Post Out")
  l0 = self.box_CinematicPrep_124
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySound_v2_239
  l1 = self.box_CinematicPrep_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1829899218", "1829899218", "S13M040_Main", "box_PlaySound_v2_239.Out", "box_CinematicPrep_124.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Timer_v2_162_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_d_1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1855777375"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_168_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_162
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1154412704", "1154412704", "S13M040_Main", "box_Timer_v2_162.TimeElapsed", "box_VisibilityController_v2_168.Show", l0, l1)
  l1:Show()
end
function export:f_box_S13_M040_CIN_Launch_Main_47_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_6
  l0.SpawnPoint = self.S13M40_SpawnPoint_PlayerToEarth
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485441"
  l0 = self.box_S13_M040_CIN_Launch_Main_47
  l1 = self.box_Teleport_To_SpawnPoint_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|255211252", "255211252", "S13M040_Main", "box_S13_M040_CIN_Launch_Main_47.Out", "box_Teleport_To_SpawnPoint_6.In", l0, l1)
  l1:In()
end
function export:f_box_ConsoleCommand_v2_126_Executed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.puzzleLights
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_306"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1066801016"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_306_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_ConsoleCommand_v2_126
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1222759710", "1222759710", "S13M040_Main", "box_ConsoleCommand_v2_126.Executed", "box_VisibilityController_v2_306.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_245_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_256
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|738401847", "738401847", "S13M040_Main", "box_VisibilityController_v2_245.Hidden", "box_Timer_v2_256.Start", clone, l0)
  l0:Start()
end
function export:f_box_Flying_Drone_Controller_27_Available()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Flying_Drone_Controller_27()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1876365744", "1876365744", "S13M040_Main", "box_Flying_Drone_Controller_27.Available", "box_Flying_Drone_Controller_27.MakeCallBackAvailable", clone, l0)
  l0:MakeCallBackAvailable()
end
function export:f_box_Flying_Drone_Controller_27_CallBackAvailable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Flying_Drone_Controller_27()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1454084523", "1454084523", "S13M040_Main", "box_Flying_Drone_Controller_27.CallBackAvailable", "box_Flying_Drone_Controller_27.MakeDisconnectAvailable", clone, l0)
  l0:MakeDisconnectAvailable()
end
function export:f_box_Flying_Drone_Controller_27_DisconnectAvailable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Flying_Drone_Controller_27()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|411193645", "411193645", "S13M040_Main", "box_Flying_Drone_Controller_27.DisconnectAvailable", "box_Flying_Drone_Controller_27.Disconnect", clone, l0)
  l0:Disconnect()
end
function export:f_box_Flying_Drone_Controller_27_Disconnected()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListForEach_43
  l0.List = self.Drones
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|473953789", "473953789", "S13M040_Main", "box_Flying_Drone_Controller_27.Disconnected", "box_ListForEach_43.Start", clone, l0)
  l0:Start()
end
function export:f_box_LogicGate_v2_152_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_106
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406440562"
  l0 = self.box_LogicGate_v2_152
  l1 = self.box_PhoneCommunicationController_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1237909757", "1237909757", "S13M040_Main", "box_LogicGate_v2_152.Out", "box_PhoneCommunicationController_106.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PhoneCommunicationController_93_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1127333985"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_113_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_113_Out_1
  l0 = self.box_PhoneCommunicationController_93
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|60148336", "60148336", "S13M040_Main", "box_PhoneCommunicationController_93.StartCommunicationOut", "box_Ordered_Output_113.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_228_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_228
  self.AllCameraDummies = l0.Target
  l0 = self.box_SatelliteCam_100
  l0.CameraEntity = self.InitialCamera
  l0.AtomsphereEntity = "9223372055218869598"
  l0.CameraAttachmentEntity = "9223372055570556596"
  l0.InitialTarget = self.Delaware_Tagpoint
  l0 = self.box_ListWriter_228
  l1 = self.box_SatelliteCam_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1213017564", "1213017564", "S13M040_Main", "box_ListWriter_228.Added", "box_SatelliteCam_100.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_228_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_228
  self.AllCameraDummies = l0.Target
end
function export:f_box_ListWriter_228_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_228
  self.AllCameraDummies = l0.Target
end
function export:f_box_Timer_v2_169_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_c_1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|877621494"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_165_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_169
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1000528684", "1000528684", "S13M040_Main", "box_Timer_v2_169.TimeElapsed", "box_VisibilityController_v2_165.Show", l0, l1)
  l1:Show()
end
function export:f_box_Ordered_Output_332_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_03
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_303"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|479646765"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1429692198", "1429692198", "S13M040_Main", "box_Ordered_Output_332.Out", "box_VisibilityController_v2_303.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_332_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_331
  l0.Entity = "9223372056081177807"
  l0.SoundId = "soundbinary/136636566.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|541814848", "541814848", "S13M040_Main", "box_Ordered_Output_332.Out", "box_PlaySound_v2_331.Play", clone, l0)
  l0:Play()
end
function export:f_box_SatelliteCam_100_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SatelliteCam_108
  l0.CameraEntity = self.SatelliteCamera_Delaware
  l0.AtomsphereEntity = "9223372055218869598"
  l0.CameraAttachmentEntity = "9223372055570556596"
  l0.InitialTarget = self.Delaware_Tagpoint
  l0 = self.box_SatelliteCam_100
  l1 = self.box_SatelliteCam_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|22531810", "22531810", "S13M040_Main", "box_SatelliteCam_100.Out", "box_SatelliteCam_108.In", l0, l1)
  l1:In()
end
function export:f_box_MaterialController_288_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_h
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0._name = "box_MaterialController_289"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1003460080"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_289_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2075582443", "2075582443", "S13M040_Main", "box_MaterialController_288.ParameterSet", "box_MaterialController_289.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_ListWriter_69_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_69
  self.skull_meshes = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1271288044"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_57_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_57_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = DummyFunction
  l0 = self.box_ListWriter_69
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2000175176", "2000175176", "S13M040_Main", "box_ListWriter_69.Added", "box_Ordered_Output_57.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_69_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_69
  self.skull_meshes = l0.Target
end
function export:f_box_ListWriter_69_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_69
  self.skull_meshes = l0.Target
end
function export:f_box_MaterialController_225_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dublin_lines_ON
  l0.Index = 1
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0._name = "box_MaterialController_313"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1777787732"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|313676414", "313676414", "S13M040_Main", "box_MaterialController_225.ParameterSet", "box_MaterialController_313.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_VisibilityController_v2_123_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_253
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|127193581", "127193581", "S13M040_Main", "box_VisibilityController_v2_123.Shown", "box_Timer_v2_253.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_217_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_255
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1548824341", "1548824341", "S13M040_Main", "box_VisibilityController_v2_217.Hidden", "box_Timer_v2_255.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_147_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_248
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1188665406", "1188665406", "S13M040_Main", "box_Simple_Node_147.Out", "box_Timer_v2_248.Start", clone, l0)
  l0:Start()
end
function export:f_box_UIController_346_ContextEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_26
  l0.CLO = "9223372047335489767"
  l0 = self.box_UIController_346
  l1 = self.box_CLOController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|252345093", "252345093", "S13M040_Main", "box_UIController_346.ContextEnabled", "box_CLOController_26.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_VisibilityController_v2_251_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_285
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1907006965", "1907006965", "S13M040_Main", "box_VisibilityController_v2_251.Shown", "box_Timer_v2_285.Start", clone, l0)
  l0:Start()
end
function export:f_box_MaterialController_345_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.city_markers
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0._name = "box_MaterialController_283"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|407089913"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_283_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|546665335", "546665335", "S13M040_Main", "box_MaterialController_345.ParameterSet", "box_MaterialController_283.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_Integer_Arithmetics_191_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Music = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_157()
  l0 = self.box_MultipleOR_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1566861994", "1566861994", "S13M040_Main", "box_Integer_Arithmetics_191.Out", "box_MultipleOR_157.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_ListWriter_73_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_73
  self.AllCameras = l0.Target
  l0 = self.box_ListWriter_228
  l0.Input = self.AllCameraDummies
  l0.Data[0] = self.bridge_hackable_dummy
  l0.Data[1] = self.dublin_hackable_dummy
  l0.Data[2] = self.seoul_hackable_dummy
  l0.Data[3] = self.delaware_hackable_dummy
  l0.Data[4] = self.dubai_hackable_dummy
  l0.Data[5] = self._2ndbridge_hackable_dummy
  l0 = self.box_ListWriter_73
  l1 = self.box_ListWriter_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|36553796", "36553796", "S13M040_Main", "box_ListWriter_73.Added", "box_ListWriter_228.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_73_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_73
  self.AllCameras = l0.Target
end
function export:f_box_ListWriter_73_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_73
  self.AllCameras = l0.Target
end
function export:f_box_Ordered_Output_182_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_19
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1495257877", "1495257877", "S13M040_Main", "box_Ordered_Output_182.Out", "box_Timer_v2_19.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_182_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_181
  l0.SoundId = "soundbinary/81442961.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1006711206", "1006711206", "S13M040_Main", "box_Ordered_Output_182.Out", "box_PlaySound_v2_181.Play", clone, l0)
  l0:Play()
end
function export:f_box_SetActionMap_v2_177_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Network_Surfing_Controller_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1274238673", "1274238673", "S13M040_Main", "box_SetActionMap_v2_177.Pushed", "box_Network_Surfing_Controller_74.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_ConsoleCommand_v2_45_Executed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_46()
  l0 = self.box_ConsoleCommand_v2_45
  l1 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|16635013", "16635013", "S13M040_Main", "box_ConsoleCommand_v2_45.Executed", "box_MultipleOR_46.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_282_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_08
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|874422095"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_215_Hidden
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_282
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1489506219", "1489506219", "S13M040_Main", "box_Timer_v2_282.TimeElapsed", "box_VisibilityController_v2_215.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MultipleOR_98_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Initial_Meshes
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|387878271"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_29_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_98
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1614655326", "1614655326", "S13M040_Main", "box_MultipleOR_98.Out", "box_VisibilityController_v2_29.Show", l0, l1)
  l1:Show()
end
function export:f_box_PhoneCommunicationController_24_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.DelawareCircuitBox
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|328542760"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = self.f_box_InteractionScriptController_68_InteractionForced
  l0.Out = DummyFunction
  l0 = self.box_PhoneCommunicationController_24
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2043633467", "2043633467", "S13M040_Main", "box_PhoneCommunicationController_24.StartCommunicationOut", "box_InteractionScriptController_68.ForceInteract", l0, l1)
  l1:ForceInteract()
end
function export:f_box_MissionLayer_v2_128_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_21
  l0.LayerName = "S13M040_Main_IOP"
  l0 = self.box_MissionLayer_v2_128
  l1 = self.box_MissionLayer_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|767079133", "767079133", "S13M040_Main", "box_MissionLayer_v2_128.Loaded", "box_MissionLayer_v2_21.Load", l0, l1)
  l1:Load()
end
function export:f_box_PhoneCommunicationController_149_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_316()
  l0 = self.box_PhoneCommunicationController_149
  l1 = self.box_TriggerMonitor_v2_316
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|268443481", "268443481", "S13M040_Main", "box_PhoneCommunicationController_149.StartCommunicationOut", "box_TriggerMonitor_v2_316.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_CLOController_26_Activated()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1120750298"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_72_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_72_Out_1
  l0 = self.box_CLOController_26
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2062195508", "2062195508", "S13M040_Main", "box_CLOController_26.Activated", "box_Ordered_Output_72.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_26_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_26
  self.RC = l0.UserID
  l0 = self.box_ListWriter_90
  l0.Input = self.Drones
  l0.Data[0] = self.RC
  l0 = self.box_CLOController_26
  l1 = self.box_ListWriter_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1770182946", "1770182946", "S13M040_Main", "box_CLOController_26.OnUserInPlace", "box_ListWriter_90.Add", l0, l1)
  l1:Add()
end
function export:f_box_VisibilityController_v2_33_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_230
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|380446300", "380446300", "S13M040_Main", "box_VisibilityController_v2_33.Hidden", "box_Timer_v2_230.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_75_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_83
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406437031"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|504564278", "504564278", "S13M040_Main", "box_Ordered_Output_75.Out", "box_PhoneCommunicationController_83.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_75_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_97
  l0.Seconds = 15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|590027889", "590027889", "S13M040_Main", "box_Ordered_Output_75.Out", "box_Timer_v2_97.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_75_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|964704178", "964704178", "S13M040_Main", "box_Ordered_Output_75.Out", "box_MultipleOR_65.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_307_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ConsoleCommand_v2_126
  l0.Command = "Skip_VRPuzzle"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|769998251", "769998251", "S13M040_Main", "box_Ordered_Output_307.Out", "box_ConsoleCommand_v2_126.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_307_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_To_SpawnPoint_70
  l0.SpawnPoint = self.S13M040_SpawnPoint_CheckPoint_2
  l0.KeepBlackScreenOnExit = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1308585177", "1308585177", "S13M040_Main", "box_Ordered_Output_307.Out", "box_Teleport_To_SpawnPoint_70.In", clone, l0)
  l0:In()
end
function export:f_box_Hackable_Monitor_186_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.Music
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1462445207"
  l0.Out = self.f_box_Integer_Arithmetics_189_Out
  l0 = self.box_Hackable_Monitor_186
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|320136107", "320136107", "S13M040_Main", "box_Hackable_Monitor_186.HackSuccess", "box_Integer_Arithmetics_189.Add", l0, l1)
  l1:Add()
end
function export:f_box_DistanceBasedProgressBarController_v2_92_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_315
  l0.Seconds = 10
  l0 = self.box_DistanceBasedProgressBarController_v2_92
  l1 = self.box_Timer_v2_315
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|805487717", "805487717", "S13M040_Main", "box_DistanceBasedProgressBarController_v2_92.Completed", "box_Timer_v2_315.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_15_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_132()
  l0 = self.box_Hackable_Monitor_15
  l1 = self.box_MultipleOR_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1765081845", "1765081845", "S13M040_Main", "box_Hackable_Monitor_15.Disabled", "box_MultipleOR_132.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Hackable_Monitor_15_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_15()
  l0 = self.box_Hackable_Monitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1259583054", "1259583054", "S13M040_Main", "box_Hackable_Monitor_15.HackSuccess", "box_Hackable_Monitor_15.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MaterialController_197_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dubai_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0.1
  l0.B = 0
  l0.Time = 3
  l0._graph = self
  l0._name = "box_MaterialController_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|737175003"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_198_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|496833917", "496833917", "S13M040_Main", "box_MaterialController_197.ParameterSet", "box_MaterialController_198.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_MaterialController_202_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.general_lines
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0
  l0.B = 0
  l0.Time = 0
  l0._graph = self
  l0._name = "box_MaterialController_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2141005373"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_201_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1868741571", "1868741571", "S13M040_Main", "box_MaterialController_202.ParameterSet", "box_MaterialController_201.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_SatelliteCam_109_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SatelliteCam_110
  l0.CameraEntity = self.SatelliteCamera_Seoul
  l0.AtomsphereEntity = "9223372056081269514"
  l0.CameraAttachmentEntity = "9223372065542843558"
  l0.InitialTarget = self.Seoul_Tagpoint
  l0 = self.box_SatelliteCam_109
  l1 = self.box_SatelliteCam_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1761606648", "1761606648", "S13M040_Main", "box_SatelliteCam_109.Out", "box_SatelliteCam_110.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_173_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v4_61()
  l0 = self.box_MapPointController_v4_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1540664344", "1540664344", "S13M040_Main", "box_Ordered_Output_173.Out", "box_MapPointController_v4_61.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_173_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_156
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055160345690"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1273954658", "1273954658", "S13M040_Main", "box_Ordered_Output_173.Out", "box_PhoneCommunicationController_156.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_IOPPrep_259_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPrep_259
  l1 = self.box_S13M040_IOP_Dubai_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1588212178", "1588212178", "S13M040_Main", "box_IOPPrep_259.Out", "box_S13M040_IOP_Dubai_36.In", l0, l1)
  l1:In()
end
function export:f_box_Network_Surfing_Controller_74_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_73
  l0.Input = self.AllCameras
  l0.Data[0] = self.SatelliteCamera_Delaware
  l0.Data[1] = self.SatelliteCamera_Dubai
  l0.Data[2] = self.SatelliteCamera_Seoul
  l0.Data[3] = self.SatelliteCamera_Dublin
  l0 = self.box_Network_Surfing_Controller_74
  l1 = self.box_ListWriter_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1843760070", "1843760070", "S13M040_Main", "box_Network_Surfing_Controller_74.Deactivated", "box_ListWriter_73.Add", l0, l1)
  l1:Add()
end
function export:f_box_Ordered_Output_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_10
  l0.HackableEntity = self.Seoul_Hack
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1098037734", "1098037734", "S13M040_Main", "box_Ordered_Output_37.Out", "box_Hackable_Monitor_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_9
  l0.HackableEntity = self.Dubai_Hack
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|852176705", "852176705", "S13M040_Main", "box_Ordered_Output_37.Out", "box_Hackable_Monitor_9.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_37_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_8
  l0.HackableEntity = self.Dublin_Hack
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1423953389", "1423953389", "S13M040_Main", "box_Ordered_Output_37.Out", "box_Hackable_Monitor_8.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_322_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_08
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|101719668"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|563661871", "563661871", "S13M040_Main", "box_Ordered_Output_322.Out", "box_VisibilityController_v2_206.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_322_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_327
  l0.Entity = "9223372056081177703"
  l0.SoundId = "soundbinary/136636566.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1297091776", "1297091776", "S13M040_Main", "box_Ordered_Output_322.Out", "box_PlaySound_v2_327.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_253_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_g
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2039454655"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_170_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_253
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1454512769", "1454512769", "S13M040_Main", "box_Timer_v2_253.TimeElapsed", "box_VisibilityController_v2_170.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionMessageController_v3_55_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_54
  l0.Seconds = 1
  l0 = self.box_MissionMessageController_v3_55
  l1 = self.box_Timer_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1392420767", "1392420767", "S13M040_Main", "box_MissionMessageController_v3_55.Out", "box_Timer_v2_54.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_34_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_127
  l0.LayerName = "S13M040_Main_ServerFarm"
  l0 = self.box_MissionLayer_v2_34
  l1 = self.box_MissionLayer_v2_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|219362774", "219362774", "S13M040_Main", "box_MissionLayer_v2_34.Unloaded", "box_MissionLayer_v2_127.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionCheckpointReach_343_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_343
  l1 = self.box_S13_M040_CIN_DataDump_Main_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1821676042", "1821676042", "S13M040_Main", "box_MissionCheckpointReach_343.Out", "box_S13_M040_CIN_DataDump_Main_48.In", l0, l1)
  l1:In()
end
function export:f_box_SetTimeOfDay_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1375454602"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_76_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1542306629", "1542306629", "S13M040_Main", "box_SetTimeOfDay_64.Out", "box_TimeScale_Controller_76.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_MaterialController_203_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dubai_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0
  l0.B = 0
  l0.Time = 0
  l0._graph = self
  l0._name = "box_MaterialController_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1684068036"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_202_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|33795967", "33795967", "S13M040_Main", "box_MaterialController_203.ParameterSet", "box_MaterialController_202.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_Simple_Node_135_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ConsoleCommand_v2_51
  l0.Command = "Final_VRPuzzle"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|250553620", "250553620", "S13M040_Main", "box_Simple_Node_135.Out", "box_ConsoleCommand_v2_51.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_InventoryController_v2_292_Switched()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InventoryController_v2_292()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1548291765", "1548291765", "S13M040_Main", "box_InventoryController_v2_292.Switched", "box_InventoryController_v2_292.EnableWheelActionMap", clone, l0)
  l0:EnableWheelActionMap()
end
function export:f_box_InventoryController_v2_292_WheelActionMapEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_UIController_347
  l0.UIContext = "HideMinimap"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1355345083", "1355345083", "S13M040_Main", "box_InventoryController_v2_292.WheelActionMapEnabled", "box_UIController_347.DisableUIContext", clone, l0)
  l0:DisableUIContext()
end
function export:f_box_MaterialController_273_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_c_1
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0._name = "box_MaterialController_269"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1343146523"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_269_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|899007467", "899007467", "S13M040_Main", "box_MaterialController_273.ParameterSet", "box_MaterialController_269.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_MultipleOR_50_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_80
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_50
  l1 = self.box_MissionCheckpointReach_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|60401868", "60401868", "S13M040_Main", "box_MultipleOR_50.Out", "box_MissionCheckpointReach_80.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_65_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_348()
  l0 = self.box_MultipleOR_65
  l1 = self.box_Timer_v2_348
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|169520663", "169520663", "S13M040_Main", "box_MultipleOR_65.Out", "box_Timer_v2_348.Start", l0, l1)
  l1:Start()
end
function export:f_box_ConsoleCommand_v2_40_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ConsoleCommand_v2_42
  l0.Command = "IOP_Dubai"
  l0 = self.box_ConsoleCommand_v2_40
  l1 = self.box_ConsoleCommand_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1374934620", "1374934620", "S13M040_Main", "box_ConsoleCommand_v2_40.Enabled", "box_ConsoleCommand_v2_42.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ConsoleCommand_v2_40_Executed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_41()
  l0 = self.box_ConsoleCommand_v2_40
  l1 = self.box_MultipleOR_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1588874678", "1588874678", "S13M040_Main", "box_ConsoleCommand_v2_40.Executed", "box_MultipleOR_41.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DummyCam_59_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DummyCam_265
  l0.CameraEntity = self.SatelliteCamera_Dublin
  l0.DummyHackable = self.dublin_hackable_dummy
  l0.LookatTarget = self.Dublin_Tagpoint
  l0 = self.box_DummyCam_59
  l1 = self.box_DummyCam_265
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|163285674", "163285674", "S13M040_Main", "box_DummyCam_59.Out", "box_DummyCam_265.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_315_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_254()
  l0 = self.box_Timer_v2_315
  l1 = self.box_Multiple_AND_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1797683811", "1797683811", "S13M040_Main", "box_Timer_v2_315.TimeElapsed", "box_Multiple_AND_254.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CLOController_281_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_280
  l0.CLO = self.AltDroneD
  l0 = self.box_CLOController_281
  l1 = self.box_CLOController_280
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|73376031", "73376031", "S13M040_Main", "box_CLOController_281.Activated", "box_CLOController_280.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_281_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_281
  l1 = self.box_ListWriter_310
  l1.Data[0] = l0.UserID
  l1.Input = self.Drones
  l0 = self.box_CLOController_281
  l1 = self.box_ListWriter_310
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|181652609", "181652609", "S13M040_Main", "box_CLOController_281.OnUserInPlace", "box_ListWriter_310.Add", l0, l1)
  l1:Add()
end
function export:f_box_CinematicPrep_124_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_20
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective010",
    item = "Objective",
    id = "403005"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_CinematicPrep_124
  l1 = self.box_MissionMessageController_v3_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1781216922", "1781216922", "S13M040_Main", "box_CinematicPrep_124.PostOut", "box_MissionMessageController_v3_20.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Compare_Entity_v2_146_NotEqual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_149
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055160345692"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|164195992", "164195992", "S13M040_Main", "box_Compare_Entity_v2_146.NotEqual", "box_PhoneCommunicationController_149.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_175_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_316()
  l0 = self.box_TriggerMonitor_v2_316
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1549630946", "1549630946", "S13M040_Main", "box_Ordered_Output_175.Out", "box_TriggerMonitor_v2_316.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_175_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v4_61()
  l0 = self.box_MapPointController_v4_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1153205475", "1153205475", "S13M040_Main", "box_Ordered_Output_175.Out", "box_MapPointController_v4_61.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_175_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Flying_Drone_Monitor_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|92271230", "92271230", "S13M040_Main", "box_Ordered_Output_175.Out", "box_Flying_Drone_Monitor_67.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_175_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_298"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|653883245"
  l0._DynamicAnchors = {Out = 12}
  l0.Out[0] = self.f_box_Ordered_Output_298_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_298_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_298_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_298_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_298_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_298_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_298_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_298_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_298_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_298_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_298_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_298_Out_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1091503584", "1091503584", "S13M040_Main", "box_Ordered_Output_175.Out", "box_Ordered_Output_298.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_175_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|294668645"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_154_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_154_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_154_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_154_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_154_Out_4
  l0.Out[5] = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1791227820", "1791227820", "S13M040_Main", "box_Ordered_Output_175.Out", "box_Ordered_Output_154.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_60_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|596423425"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_91_Hidden
  l0.Out = DummyFunction
  l0 = self.box_CinematicPrep_60
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|251084214", "251084214", "S13M040_Main", "box_CinematicPrep_60.PostOut", "box_VisibilityController_v2_91.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MaterialController_271_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_b_1
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0._name = "box_MaterialController_273"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1737859892"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_273_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|339198801", "339198801", "S13M040_Main", "box_MaterialController_271.ParameterSet", "box_MaterialController_273.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_Hackable_Monitor_184_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_332"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1549179806"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_332_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_332_Out_1
  l0 = self.box_Hackable_Monitor_184
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|692303658", "692303658", "S13M040_Main", "box_Hackable_Monitor_184.HackSuccess", "box_Ordered_Output_332.In", l0, l1)
  l1:In()
end
function export:f_box_TimeScale_Controller_77_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S09M020_NoNethack"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1618403075"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_177_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1730609001", "1730609001", "S13M040_Main", "box_TimeScale_Controller_77.Locked", "box_SetActionMap_v2_177.Push", clone, l0)
  l0:Push()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1614745485"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_182_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_182_Out_1
  l0 = self.box_MissionMessageController_v3_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|57676706", "57676706", "S13M040_Main", "box_MissionMessageController_v3_3.Out", "box_Ordered_Output_182.In", l0, l1)
  l1:In()
end
function export:f_box_Flying_Drone_Monitor_67_IsConnected()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Flying_Drone_Controller_66()
  l0 = self.box_Flying_Drone_Monitor_67
  l1 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2119003579", "2119003579", "S13M040_Main", "box_Flying_Drone_Monitor_67.IsConnected", "box_Flying_Drone_Controller_66.MakeDisconnectUnavailable", l0, l1)
  l1:MakeDisconnectUnavailable()
end
function export:f_box_VisibilityController_v2_168_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_172
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1910775690", "1910775690", "S13M040_Main", "box_VisibilityController_v2_168.Shown", "box_Timer_v2_172.Start", clone, l0)
  l0:Start()
end
function export:f_box_Teleport_To_SpawnPoint_102_TeleportDone()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_50()
  l0 = self.box_Teleport_To_SpawnPoint_102
  l1 = self.box_MultipleOR_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|985428375", "985428375", "S13M040_Main", "box_Teleport_To_SpawnPoint_102.TeleportDone", "box_MultipleOR_50.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VisibilityController_v2_213_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_258
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1315881805", "1315881805", "S13M040_Main", "box_VisibilityController_v2_213.Hidden", "box_Timer_v2_258.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_125_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_286
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|162380983", "162380983", "S13M040_Main", "box_VisibilityController_v2_125.Shown", "box_Timer_v2_286.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_166_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_152()
  l0 = self.box_Timer_v2_166
  l1 = self.box_LogicGate_v2_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|481352232", "481352232", "S13M040_Main", "box_Timer_v2_166.TimeElapsed", "box_LogicGate_v2_152.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_21_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|574615863"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_133_Hidden
  l0 = self.box_MissionLayer_v2_21
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|485548119", "485548119", "S13M040_Main", "box_MissionLayer_v2_21.Loaded", "box_Show_Or_Hide_All_UI_133.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Timer_v2_252_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_f
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1560635919"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_123_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_252
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1593423933", "1593423933", "S13M040_Main", "box_Timer_v2_252.TimeElapsed", "box_VisibilityController_v2_123.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_308_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_7()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|499295364", "499295364", "S13M040_Main", "box_VisibilityController_v2_308.Hidden", "box_SecurityCamController_7.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_Timer_v2_97_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_98()
  l0 = self.box_Timer_v2_97
  l1 = self.box_MultipleOR_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|318170408", "318170408", "S13M040_Main", "box_Timer_v2_97.TimeElapsed", "box_MultipleOR_98.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SecurityCamController_56_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_56()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|562267282", "562267282", "S13M040_Main", "box_SecurityCamController_56.CanExitSet", "box_SecurityCamController_56.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_SecurityCamController_56_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_60
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|161258860", "161258860", "S13M040_Main", "box_SecurityCamController_56.EnterForced", "box_CinematicPrep_60.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_SecurityCamController_56_InitialTargetSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_56()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1094878247", "1094878247", "S13M040_Main", "box_SecurityCamController_56.InitialTargetSet", "box_SecurityCamController_56.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_LogicGate_v2_112_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Patched", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'BinkVideoPlayer_v3')-- Comment: Patched")
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0.BinkFileName = nil
  l0.VideoDbObject = "Videos.9223372055669078148"
  l0.ExternalSoundId = nil
  l0.OnSkipSoundId = nil
  l0.Seconds = nil
  l0.CanBeSkip = nil
  l0.NoActionMap = 1
  l0.EnableAlpha = 1
  l0.UseSubtitle = nil
  l0.PlayEmbeddedAudio = nil
  l0.PauseGame = nil
  l0.HideBlackBars = 1
  l0.OverrideSubtitle = nil
  l0._graph = self
  l0._name = "box_BinkVideoPlayer_v3_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1334527300"
  l0.Started = DummyFunction
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  l0 = self.box_LogicGate_v2_112
  l1 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1526643082", "1526643082", "S13M040_Main", "box_LogicGate_v2_112.Out", "box_BinkVideoPlayer_v3_85.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_190_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.Music
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|789386645"
  l0.Out = self.f_box_Integer_Arithmetics_187_Out
  l0 = self.box_Hackable_Monitor_190
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|579117006", "579117006", "S13M040_Main", "box_Hackable_Monitor_190.HackSuccess", "box_Integer_Arithmetics_187.Add", l0, l1)
  l1:Add()
end
function export:f_box_Timer_v2_227_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.hacktheplanet_seoullights_1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2029253679"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_227
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1320889357", "1320889357", "S13M040_Main", "box_Timer_v2_227.TimeElapsed", "box_VisibilityController_v2_226.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TeleportPlayerInsideHma_116_Done()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InventoryController_v2_292()
  l0 = self.box_TeleportPlayerInsideHma_116
  l1 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|785705069", "785705069", "S13M040_Main", "box_TeleportPlayerInsideHma_116.Done", "box_InventoryController_v2_292.SwitchLocalPlayerInventoryToNormal", l0, l1)
  l1:SwitchLocalPlayerInventoryToNormal()
end
function export:f_box_Ordered_Output_235_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.All_Meshes
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|545556618"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_22_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1066150556", "1066150556", "S13M040_Main", "box_Ordered_Output_235.Out", "box_VisibilityController_v2_22.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_235_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListForEach_234
  l0.List = self.EarthEntities
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|799996246", "799996246", "S13M040_Main", "box_Ordered_Output_235.Out", "box_ListForEach_234.Start", clone, l0)
  l0:Start()
end
function export:f_box_MaterialController_200_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dublin_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0
  l0.B = 0
  l0.Time = 0
  l0._graph = self
  l0._name = "box_MaterialController_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1731190024"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_203_ParameterSet
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1584712501", "1584712501", "S13M040_Main", "box_MaterialController_200.ParameterSet", "box_MaterialController_203.SetParameter", clone, l0)
  l0:SetParameter()
end
function export:f_box_MultipleOR_342_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_343
  l0.CheckpointList = "CheckPoint_3"
  l0 = self.box_MultipleOR_342
  l1 = self.box_MissionCheckpointReach_343
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|374869246", "374869246", "S13M040_Main", "box_MultipleOR_342.Out", "box_MissionCheckpointReach_343.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_84_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InventoryController_v2_176()
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1726890606", "1726890606", "S13M040_Main", "box_SetActionMap_v2_84.Pushed", "box_InventoryController_v2_176.SwitchLocalPlayerInventoryToEmpty", clone, l0)
  l0:SwitchLocalPlayerInventoryToEmpty()
end
function export:f_box_Ordered_Output_163_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_82
  l0.SoundId = "soundbinary/2422823228.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|890005629", "890005629", "S13M040_Main", "box_Ordered_Output_163.Out", "box_PlaySound_v2_82.Play", clone, l0)
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
  l0 = self.box_PlaySound_v2_247
  l0.SoundId = "soundbinary/3381059633.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1857471420", "1857471420", "S13M040_Main", "box_Ordered_Output_163.Out", "box_PlaySound_v2_247.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_163_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_275()
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1763938143", "1763938143", "S13M040_Main", "box_Ordered_Output_163.Out", "box_Simple_Node_275.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_105_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MissionLayer_v2_105
  l1 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|492785317", "492785317", "S13M040_Main", "box_MissionLayer_v2_105.Loaded", "box_MultipleOR_13.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetActionMap_v2_178_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_34
  l0.LayerName = "S13M040_Main_IOP"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|95147383", "95147383", "S13M040_Main", "box_SetActionMap_v2_178.Popped", "box_MissionLayer_v2_34.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_HackableController_v2_311_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1704465525"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_37_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_37_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_37_Out_2
  l0 = self.box_HackableController_v2_311
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1360264021", "1360264021", "S13M040_Main", "box_HackableController_v2_311.Enabled", "box_Ordered_Output_37.In", l0, l1)
  l1:In()
end
function export:f_box_S13_M040_CIN_DataDump_Main_48_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S13_M040_CIN_DataDump_Main_48
  l1 = self.box_S13_PGV_FS_VID_Main_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1146081741", "1146081741", "S13M040_Main", "box_S13_M040_CIN_DataDump_Main_48.Out", "box_S13_PGV_FS_VID_Main_71.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_43_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_43
  l1 = self.box_CLOController_39
  l1.User = l0.Data
  self:OnEnter_box_SecurityCamController_18()
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2052423577", "2052423577", "S13M040_Main", "box_ListForEach_43.EndOfList", "box_SecurityCamController_18.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_ListForEach_43_ForEach()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_43
  l1 = self.box_CLOController_39
  l1.User = l0.Data
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1348839230", "1348839230", "S13M040_Main", "box_ListForEach_43.ForEach", "box_CLOController_39.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_ListForEach_43_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_43
  l1 = self.box_CLOController_39
  l1.User = l0.Data
end
function export:f_box_ListForEach_43_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_43
  l1 = self.box_CLOController_39
  l1.User = l0.Data
end
function export:f_box_ListForEach_43_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_43
  l1 = self.box_CLOController_39
  l1.User = l0.Data
end
function export:f_box_Ordered_Output_153_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_151()
  l0 = self.box_LogicGate_v2_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|263683994", "263683994", "S13M040_Main", "box_Ordered_Output_153.Out", "box_LogicGate_v2_151.Close", clone, l0)
  l0:Close()
end
function export:f_box_Ordered_Output_153_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_144()
  l0 = self.box_LogicGate_v2_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1571685689", "1571685689", "S13M040_Main", "box_Ordered_Output_153.Out", "box_LogicGate_v2_144.Close", clone, l0)
  l0:Close()
end
function export:f_box_Ordered_Output_153_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_152()
  l0 = self.box_LogicGate_v2_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1696308924", "1696308924", "S13M040_Main", "box_Ordered_Output_153.Out", "box_LogicGate_v2_152.Close", clone, l0)
  l0:Close()
end
function export:f_box_Ordered_Output_153_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1574107448"
  l0.Out = self.f_box_Simple_Node_147_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|352276807", "352276807", "S13M040_Main", "box_Ordered_Output_153.Out", "box_Simple_Node_147.In", clone, l0)
  l0:In()
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
  l0 = self.box_MissionCheckpointReach_31
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|248970393", "248970393", "S13M040_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_31.In", clone, l0)
  l0:In()
end
function export:f_box_Hackable_Monitor_205_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_333"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1192516650"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_333_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_333_Out_1
  l0 = self.box_Hackable_Monitor_205
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|438214166", "438214166", "S13M040_Main", "box_Hackable_Monitor_205.HackSuccess", "box_Ordered_Output_333.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_161_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2094239145"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_142_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_142_Out_1
  l0 = self.box_Timer_v2_161
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1015543065", "1015543065", "S13M040_Main", "box_Timer_v2_161.Started", "box_Ordered_Output_142.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_161_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dubai_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0._name = "box_MaterialController_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|298908468"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_158_ParameterSet
  l0 = self.box_Timer_v2_161
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1011523628", "1011523628", "S13M040_Main", "box_Timer_v2_161.TimeElapsed", "box_MaterialController_158.SetParameter", l0, l1)
  l1:SetParameter()
end
function export:f_box_SatelliteCam_111_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DummyCam_120
  l0.CameraEntity = self.SatelliteCamera_Delaware
  l0.DummyHackable = self.delaware_hackable_dummy
  l0.DummyHackable2 = self.bridge_hackable_dummy
  l0.LookatTarget = self.Delaware_Tagpoint
  l0 = self.box_SatelliteCam_111
  l1 = self.box_DummyCam_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1042365276", "1042365276", "S13M040_Main", "box_SatelliteCam_111.Out", "box_DummyCam_120.In", l0, l1)
  l1:In()
end
function export:f_box_S13_PGV_FS_VID_Main_71_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_17
  l0.LayerName = "S13M040_Main"
  l0 = self.box_S13_PGV_FS_VID_Main_71
  l1 = self.box_MissionLayer_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2044477840", "2044477840", "S13M040_Main", "box_S13_PGV_FS_VID_Main_71.Out", "box_MissionLayer_v2_17.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionMessageController_v3_20_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|18352019"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_52_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_52_Out_1
  l0 = self.box_MissionMessageController_v3_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2037992463", "2037992463", "S13M040_Main", "box_MissionMessageController_v3_20.Out", "box_Ordered_Output_52.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_170_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_284
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1629669588", "1629669588", "S13M040_Main", "box_VisibilityController_v2_170.Shown", "box_Timer_v2_284.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_181_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372069285877235"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = 155
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1177817082"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_181
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1927565752", "1927565752", "S13M040_Main", "box_PlaySound_v2_181.Out", "box_MissionMusicController_188.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Timer_v2_286_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_j
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|118030060"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_286
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|182595529", "182595529", "S13M040_Main", "box_Timer_v2_286.TimeElapsed", "box_VisibilityController_v2_244.Show", l0, l1)
  l1:Show()
end
function export:f_box_ListWriter_241_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_241
  self.Drones = l0.Target
end
function export:f_box_ListWriter_241_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_241
  self.Drones = l0.Target
end
function export:f_box_ListWriter_241_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_241
  self.Drones = l0.Target
end
function export:f_box_VisibilityController_v2_103_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TeleportPlayerInsideHma_116
  l0.SpawnPoint = self.S13M040_SpawnPoint_EarthToPlayer
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485442"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|791537428", "791537428", "S13M040_Main", "box_VisibilityController_v2_103.Shown", "box_TeleportPlayerInsideHma_116.In", clone, l0)
  l0:In()
end
function export:f_box_Hackable_Monitor_87_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.Music
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|991565012"
  l0.Out = self.f_box_Integer_Arithmetics_183_Out
  l0 = self.box_Hackable_Monitor_87
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|934740807", "934740807", "S13M040_Main", "box_Hackable_Monitor_87.HackSuccess", "box_Integer_Arithmetics_183.Add", l0, l1)
  l1:Add()
end
function export:f_box_Multiple_AND_145_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1992011604"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_153_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_153_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_153_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_153_Out_3
  l0.Out[4] = DummyFunction
  l0 = self.box_Multiple_AND_145
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|86037358", "86037358", "S13M040_Main", "box_Multiple_AND_145.Out", "box_Ordered_Output_153.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_274_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_112()
  l0 = self.box_MultipleOR_274
  l1 = self.box_LogicGate_v2_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1167983772", "1167983772", "S13M040_Main", "box_MultipleOR_274.Out", "box_LogicGate_v2_112.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_142_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_145()
  l0 = self.box_Multiple_AND_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1316851363", "1316851363", "S13M040_Main", "box_Ordered_Output_142.Out", "box_Multiple_AND_145.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_142_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_171
  l0.Seconds = 0.1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|310111587", "310111587", "S13M040_Main", "box_Ordered_Output_142.Out", "box_Timer_v2_171.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_159_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|660555962"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_143_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_143_Out_1
  l0 = self.box_Timer_v2_159
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|463775807", "463775807", "S13M040_Main", "box_Timer_v2_159.Started", "box_Ordered_Output_143.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_159_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dublin_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0._name = "box_MaterialController_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1555953264"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_box_MaterialController_225_ParameterSet
  l0 = self.box_Timer_v2_159
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2070663303", "2070663303", "S13M040_Main", "box_Timer_v2_159.TimeElapsed", "box_MaterialController_225.SetParameter", l0, l1)
  l1:SetParameter()
end
function export:f_box_MissionLayer_v2_89_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_128
  l0.LayerName = "S13M040_Main_Earth"
  l0 = self.box_MissionLayer_v2_89
  l1 = self.box_MissionLayer_v2_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|2022843525", "2022843525", "S13M040_Main", "box_MissionLayer_v2_89.Loaded", "box_MissionLayer_v2_128.Load", l0, l1)
  l1:Load()
end
function export:f_box_MaterialController_201_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1956166092"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_235_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_235_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1854521100", "1854521100", "S13M040_Main", "box_MaterialController_201.ParameterSet", "box_Ordered_Output_235.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_Simple_Node_275()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_275"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|@EndEarthSequence"
  l0.Out = self.f_box_Simple_Node_275_Out
end
function export:OnEnter_box_Simple_Node_229()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|@StartBinkOverlay"
  l0.Out = self.f_box_Simple_Node_229_Out
end
function export:OnEnter_box_Simple_Node_185()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|@StopBinkOverlay"
  l0.Out = self.f_box_Simple_Node_185_Out
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_MultipleOR_140()
end
function export:OnEnter_box_MultipleOR_157()
end
function export:OnEnter_box_MultipleOR_41()
end
function export:OnEnter_box_MultipleOR_44()
end
function export:OnEnter_box_SecurityCamController_7()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.InitialCamera
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|560729294"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_7_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_7_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_SecurityCamController_18()
  local l0
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
  l0._name = "box_SecurityCamController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|589564186"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_18_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_box_SecurityCamController_18_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_LogicGate_v2_151()
end
function export:OnEnter_box_MultipleOR_46()
end
function export:OnEnter_box_LogicGate_v2_144()
end
function export:OnEnter_box_Timer_v2_348()
  local l0
  l0 = self.box_Timer_v2_348
  l0.Seconds = 5.33
  l0.Loop = 1
end
function export:OnEnter_box_MultipleOR_13()
end
function export:OnEnter_box_InventoryController_v2_176()
  local l0
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0._name = "box_InventoryController_v2_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1062726673"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_box_InventoryController_v2_176_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = self.f_box_InventoryController_v2_176_WheelActionMapDisabled
  l0.WheelActionMapEnabled = DummyFunction
end
function export:OnEnter_box_MultipleOR_132()
end
function export:OnEnter_box_Flying_Drone_Controller_66()
  local l0
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Flying_Drone_Controller_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1189958696"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = self.f_box_Flying_Drone_Controller_66_DisconnectUnavailable
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
end
function export:OnEnter_box_MapPointController_v4_61()
  local l0
  l0 = self.box_MapPointController_v4_61
  l0.MapPoint = self.MissionTarget_DatafarmStart
end
function export:OnEnter_box_Hackable_Monitor_81()
  local l0
  l0 = self.box_Hackable_Monitor_81
  l0.HackableEntity = self.Delaware_Second
end
function export:OnEnter_box_Multiple_AND_254()
end
function export:OnEnter_box_TriggerMonitor_v2_316()
  local l0
  l0 = self.box_TriggerMonitor_v2_316
  l0.Trigger = self.Size_Trigger
end
function export:OnEnter_box_Flying_Drone_Controller_27()
  local l0
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Flying_Drone_Controller_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1505684104"
  l0.CalledBack = DummyFunction
  l0.Available = self.f_box_Flying_Drone_Controller_27_Available
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = self.f_box_Flying_Drone_Controller_27_Disconnected
  l0.CallBackAvailable = self.f_box_Flying_Drone_Controller_27_CallBackAvailable
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = self.f_box_Flying_Drone_Controller_27_DisconnectAvailable
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
end
function export:OnEnter_box_LogicGate_v2_152()
end
function export:OnEnter_box_MultipleOR_98()
end
function export:OnEnter_box_Hackable_Monitor_15()
  local l0
  l0 = self.box_Hackable_Monitor_15
  l0.HackableEntity = self.ServerRoom_VR_ExitNode
end
function export:OnEnter_box_InventoryController_v2_292()
  local l0
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0._name = "box_InventoryController_v2_292"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1732656023"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_box_InventoryController_v2_292_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = self.f_box_InventoryController_v2_292_WheelActionMapEnabled
end
function export:OnEnter_box_MultipleOR_50()
end
function export:OnEnter_box_MultipleOR_65()
end
function export:OnEnter_box_SecurityCamController_56()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.Datafarm_EntryCam
  l0.CameraEntityList = nil
  l0.TargetEntity = self.ServerFarm_InitCamTarget
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@S13M040_Main|1923846661"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_56_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_56_EnterForced
  l0.InitialTargetSet = self.f_box_SecurityCamController_56_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_LogicGate_v2_112()
end
function export:OnEnter_box_MultipleOR_342()
end
function export:OnEnter_box_Multiple_AND_145()
end
function export:OnEnter_box_MultipleOR_274()
end
_compilerVersion = 4
