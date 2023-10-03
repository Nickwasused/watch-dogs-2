export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/System/BinkVideoPlayer_v3.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.DummyCam.lua")
  cbox:RegisterBox("domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("domino/System/FlyingDroneMonitor.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/System/IntegerSelect.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InventoryController_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.lua")
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
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13_m040_cin_datadump.S13_M040_CIN_DataDump_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13_m040_cin_launch.S13_M040_CIN_Launch_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13_PGV_FS_VID.S13_PGV_FS_VID_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13m040_iop.S13M040_IOP_Dubai.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13m040_iop.S13M040_IOP_Dublin.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13m040_iop.S13M040_IOP_Seoul.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.SatelliteCam.lua")
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
  self[12] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
  self[242] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[242]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_242_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[140] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[140]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_140_Out
  self[130] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[130]
  l0._graph = self
  l0.Loaded = self.f_130_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[180] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[180]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_180_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[129] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[129]
  l0._graph = self
  l0.PreOut = self.f_129_PreOut
  l0.PostOut = DummyFunction
  self[122] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[122]
  l0._graph = self
  l0.Out = self.f_122_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[263] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.lua")
  l0 = self[263]
  l0._graph = self
  l0.Out = self.f_263_Out
  self[80] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[80]
  l0._graph = self
  l0.Out = self.f_80_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[157] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[157]
  l0._graph = self
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_157_Out
  self[104] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[104]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_104_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[261] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.lua")
  l0 = self[261]
  l0._graph = self
  l0.Out = self.f_261_Out
  self[54] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_54_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_54_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[285] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[285]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_285_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[221] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[221]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_221_Unloaded
  l0.Reseted = DummyFunction
  self[268] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[268]
  l0._graph = self
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_268_Added
  l0.Removed = self.f_268_Removed
  l0.Out = self.f_268_Out
  self[301] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[301]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_301_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[223] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[223]
  l0._graph = self
  l0.Out = self.f_223_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = DummyFunction
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[339] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[339]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[338] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[338]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_338_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[41] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[41]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_41_Out
  self[110] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.SatelliteCam.lua")
  l0 = self[110]
  l0._graph = self
  l0.Out = self.f_110_Out
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[62] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[62]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_62_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[247] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[247]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[267] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[267]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_267_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[230] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[230]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_230_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[138] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[138]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[328] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[328]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[90] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[90]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_90_Added
  l0.Removed = self.f_90_Removed
  l0.Out = self.f_90_Out
  self[82] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = self.f_82_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[10] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_10_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[171] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[171]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_171_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[107] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[107]
  l0._graph = self
  l0.Loaded = self.f_107_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Loaded = self.f_14_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[35] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[35]
  l0._graph = self
  l0.StartCommunicationOut = self.f_35_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[255] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[255]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_255_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[42] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Enabled = self.f_42_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_42_Executed
  self[337] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[337]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_337_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[172] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[172]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_172_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[118] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[118]
  l0._graph = self
  l0.StartCommunicationOut = self.f_118_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[330] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[330]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[210] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[210]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_210_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[257] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[257]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_257_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[127] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[127]
  l0._graph = self
  l0.Loaded = self.f_127_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13m040_iop.S13M040_IOP_Dublin.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  self[327] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[327]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[265] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.DummyCam.lua")
  l0 = self[265]
  l0._graph = self
  l0.Out = self.f_265_Out
  self[234] = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self[234]
  l0._graph = self
  l0.Started = self.f_234_Started
  l0.Stopped = self.f_234_Stopped
  l0.ForEach = self.f_234_ForEach
  l0.GotNext = self.f_234_GotNext
  l0.EndOfList = self.f_234_EndOfList
  l0.GotFirst = DummyFunction
  self[120] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.DummyCam.lua")
  l0 = self[120]
  l0._graph = self
  l0.Out = self.f_120_Out
  self[236] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[236]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_236_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[44] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[44]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_44_Out
  self[25] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[25]
  l0._graph = self
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_25_Added
  l0.Removed = self.f_25_Removed
  l0.Out = self.f_25_Out
  self[334] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[334]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[9] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_9_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[318] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[318]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[17] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_17_Unloaded
  l0.Reseted = DummyFunction
  self[151] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[151]
  l0._graph = self
  l0.Out = self.f_151_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[310] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[310]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_310_Added
  l0.Removed = self.f_310_Removed
  l0.Out = self.f_310_Out
  self[95] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[95]
  l0._graph = self
  l0.StartCommunicationOut = self.f_95_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[340] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[340]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[280] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[280]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_280_OnUserInPlace
  self[243] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[243]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_243_Added
  l0.Removed = self.f_243_Removed
  l0.Out = self.f_243_Out
  self[256] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[256]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_256_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[278] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[278]
  l0._graph = self
  l0.Activated = self.f_278_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_278_OnUserInPlace
  self[319] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[319]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[347] = cbox:CreateBox("domino/System/UIController.lua")
  l0 = self[347]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Out = DummyFunction
  l0.ContextEnabled = DummyFunction
  l0.ContextEnabledFail = DummyFunction
  l0.ContextDisabled = self.f_347_ContextDisabled
  l0.ContextDisabledFail = DummyFunction
  self[99] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[99]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_99_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[248] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[248]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_248_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[262] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.lua")
  l0 = self[262]
  l0._graph = self
  l0.Out = self.f_262_Out
  self[19] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_19_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[46] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[46]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_46_Out
  self[300] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[300]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_300_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[144] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[144]
  l0._graph = self
  l0.Out = self.f_144_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[211] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[211]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_211_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[302] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[302]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_302_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[250] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[250]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_250_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[294] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[294]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_294_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[156] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[156]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_156_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[276] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[276]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_276_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[331] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[331]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[23] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13m040_iop.S13M040_IOP_Seoul.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = self.f_23_Out
  self[108] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.SatelliteCam.lua")
  l0 = self[108]
  l0._graph = self
  l0.Out = self.f_108_Out
  self[83] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[83]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = self.f_83_StopCommunicationOut
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_83_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[219] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[219]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_219_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[266] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[266]
  l0._graph = self
  l0.Out = self.f_266_Out
  l0.MessageCompleted = DummyFunction
  self[321] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[321]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[348] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[348]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_348_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_348_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_13_Out
  self[53] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[53]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_53_Added
  l0.Removed = self.f_53_Removed
  l0.Out = self.f_53_Out
  self[258] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[258]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_258_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[96] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[96]
  l0._graph = self
  l0.StartCommunicationOut = self.f_96_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[174] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[174]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_174_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[179] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[179]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_179_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[32] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Loaded = self.f_32_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[240] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[240]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_240_Added
  l0.Removed = self.f_240_Removed
  l0.Out = self.f_240_Out
  self[284] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[284]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_284_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[70] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[70]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_70_TeleportDone
  self[132] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[132]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_132_Out
  self[6] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_6_TeleportDone
  self[51] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Enabled = self.f_51_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_51_Executed
  self[117] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[117]
  l0._graph = self
  l0.StartCommunicationOut = self.f_117_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[61] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[61]
  l0._graph = self
  l0.Shown = self.f_61_Shown
  l0.Hidden = self.f_61_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[249] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[249]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_249_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[106] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[106]
  l0._graph = self
  l0.StartCommunicationOut = self.f_106_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[329] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[329]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[114] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[114]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_114_Deactivated
  self[134] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[134]
  l0._graph = self
  l0._DynamicAnchors = {Data = 10}
  l0.Added = self.f_134_Added
  l0.Removed = self.f_134_Removed
  l0.Out = self.f_134_Out
  self[344] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[344]
  l0._graph = self
  l0.Loaded = self.f_344_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[49] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.DummyCam.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = self.f_49_Out
  self[233] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[233]
  l0._graph = self
  l0._DynamicAnchors = {Data = 22}
  l0.Added = self.f_233_Added
  l0.Removed = self.f_233_Removed
  l0.Out = self.f_233_Out
  self[63] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[63]
  l0._graph = self
  l0.Out = self.f_63_Out
  l0.MessageCompleted = DummyFunction
  self[8] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_8_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_11_Unloaded
  l0.Reseted = DummyFunction
  self[297] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[297]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_297_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[207] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[207]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_207_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[28] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[28]
  l0._graph = self
  l0.PreOut = self.f_28_PreOut
  l0.PostOut = DummyFunction
  self[193] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[193]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_193_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[279] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[279]
  l0._graph = self
  l0.Activated = self.f_279_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_279_OnUserInPlace
  self[36] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13m040_iop.S13M040_IOP_Dubai.lua")
  l0 = self[36]
  l0._graph = self
  l0.Out = self.f_36_Out
  self[81] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[81]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_81_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_81_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[264] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.lua")
  l0 = self[264]
  l0._graph = self
  l0.Out = self.f_264_Out
  self[254] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[254]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_254_Out
  self[31] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = self.f_31_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[16]
  l0._graph = self
  self[139] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[139]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_139_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[260] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.lua")
  l0 = self[260]
  l0._graph = self
  l0.Out = self.f_260_Out
  self[167] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[167]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_167_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[38] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[38]
  l0._graph = self
  l0.Out = self.f_38_Out
  l0.MessageCompleted = DummyFunction
  self[316] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[316]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_316_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[101] = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self[101]
  l0._graph = self
  l0._DynamicAnchors = {Case = 2, Match = 2}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_101_Match_0
  l0.Match[1] = self.f_101_Match_1
  l0.None = DummyFunction
  self[121] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[121]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_121_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[239] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[239]
  l0._graph = self
  l0.Out = self.f_239_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[162] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[162]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_162_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[47] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13_m040_cin_launch.S13_M040_CIN_Launch_Main.lua")
  l0 = self[47]
  l0._graph = self
  l0.Out = self.f_47_Out
  self[126] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[126]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_126_Executed
  self[152] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[152]
  l0._graph = self
  l0.Out = self.f_152_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[93] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[93]
  l0._graph = self
  l0.StartCommunicationOut = self.f_93_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[228] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[228]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_228_Added
  l0.Removed = self.f_228_Removed
  l0.Out = self.f_228_Out
  self[169] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[169]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_169_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[100] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.SatelliteCam.lua")
  l0 = self[100]
  l0._graph = self
  l0.Out = self.f_100_Out
  self[69] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[69]
  l0._graph = self
  l0._DynamicAnchors = {Data = 11}
  l0.Added = self.f_69_Added
  l0.Removed = self.f_69_Removed
  l0.Out = self.f_69_Out
  self[346] = cbox:CreateBox("domino/System/UIController.lua")
  l0 = self[346]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Out = DummyFunction
  l0.ContextEnabled = self.f_346_ContextEnabled
  l0.ContextEnabledFail = DummyFunction
  l0.ContextDisabled = DummyFunction
  l0.ContextDisabledFail = DummyFunction
  self[73] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[73]
  l0._graph = self
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_73_Added
  l0.Removed = self.f_73_Removed
  l0.Out = self.f_73_Out
  self[45] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[45]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_45_Executed
  self[282] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[282]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_282_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[98] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[98]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_98_Out
  self[24] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[24]
  l0._graph = self
  l0.StartCommunicationOut = self.f_24_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[128] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[128]
  l0._graph = self
  l0.Loaded = self.f_128_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[149] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[149]
  l0._graph = self
  l0.StartCommunicationOut = self.f_149_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[26] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Activated = self.f_26_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_26_OnUserInPlace
  self[186] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[186]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_186_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[92] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[92]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_92_Completed
  self[15] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_15_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_15_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[109] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.SatelliteCam.lua")
  l0 = self[109]
  l0._graph = self
  l0.Out = self.f_109_Out
  self[259] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.IOPPrep.lua")
  l0 = self[259]
  l0._graph = self
  l0.Out = self.f_259_Out
  self[74] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[74]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_74_Deactivated
  self[253] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[253]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_253_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[55] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = self.f_55_Out
  l0.MessageCompleted = DummyFunction
  self[34] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_34_Unloaded
  l0.Reseted = DummyFunction
  self[343] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[343]
  l0._graph = self
  l0.Out = self.f_343_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[50] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[50]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_50_Out
  self[65] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[65]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_65_Out
  self[40] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Enabled = self.f_40_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_40_Executed
  self[59] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.DummyCam.lua")
  l0 = self[59]
  l0._graph = self
  l0.Out = self.f_59_Out
  self[315] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[315]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_315_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[281] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[281]
  l0._graph = self
  l0.Activated = self.f_281_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_281_OnUserInPlace
  self[124] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[124]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_124_PostOut
  self[60] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[60]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_60_PostOut
  self[184] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[184]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_184_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.MessageCompleted = DummyFunction
  self[67] = cbox:CreateBox("domino/System/FlyingDroneMonitor.lua")
  l0 = self[67]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnDetected = DummyFunction
  l0.OnHidden = DummyFunction
  l0.OnSpawned = DummyFunction
  l0.OnUnSpawned = DummyFunction
  l0.OnDestroyed = DummyFunction
  l0.IsConnected = self.f_67_IsConnected
  l0.IsDisconnected = DummyFunction
  l0.IsPickUp = DummyFunction
  self[102] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[102]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_102_TeleportDone
  self[166] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[166]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_166_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[21] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Loaded = self.f_21_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[252] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[252]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_252_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[97] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[97]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_97_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[112] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[112]
  l0._graph = self
  l0.Out = self.f_112_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[190] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[190]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_190_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[227] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[227]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_227_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[116] = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self[116]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Done = self.f_116_Done
  self[342] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[342]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_342_Out
  self[105] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[105]
  l0._graph = self
  l0.Loaded = self.f_105_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[311] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[311]
  l0._graph = self
  l0.Enabled = self.f_311_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[48] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/s13_m040_cin_datadump.S13_M040_CIN_DataDump_Main.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = self.f_48_Out
  self[43] = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self[43]
  l0._graph = self
  l0.Started = self.f_43_Started
  l0.Stopped = self.f_43_Stopped
  l0.ForEach = self.f_43_ForEach
  l0.GotNext = self.f_43_GotNext
  l0.EndOfList = self.f_43_EndOfList
  l0.GotFirst = DummyFunction
  self[205] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[205]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_205_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[136] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[136]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[161] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[161]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_161_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_161_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[111] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13M040.SatelliteCam.lua")
  l0 = self[111]
  l0._graph = self
  l0.Out = self.f_111_Out
  self[320] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[320]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[71] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S13/s13m040/S13_PGV_FS_VID.S13_PGV_FS_VID_Main.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = self.f_71_Out
  self[20] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = self.f_20_Out
  l0.MessageCompleted = DummyFunction
  self[181] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[181]
  l0._graph = self
  l0.Out = self.f_181_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[155] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[155]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[286] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[286]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_286_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[241] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[241]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_241_Added
  l0.Removed = self.f_241_Removed
  l0.Out = self.f_241_Out
  self[87] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[87]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_87_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[145] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[145]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_145_Out
  self[39] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[39]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[274] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[274]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_274_Out
  self[159] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[159]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_159_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_159_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[89] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[89]
  l0._graph = self
  l0.Loaded = self.f_89_Loaded
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
  l0 = self[12]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_94_Out
  l0:In()
end
function export:CheckPoint_2()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_79_Out
  l0:In()
end
function export:CheckPoint_3()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_341_Out
  l0:In()
end
function export:In()
  local l0
  l0 = self[12]
  l0:Input(0)
end
function export:f_275_Out()
  local l0
  self = self._graph
  l0 = self[112]
  l0:Close()
end
function export:f_229_Out()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Input(1)
end
function export:f_185_Out()
  local l0
  self = self._graph
  self:en_348()
  l0 = self[348]
  l0:Stop()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S13M040_Main"
  l0:Load()
end
function export:f_52_Out_0()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Input = self.All_Meshes
  l0.Data[0] = self.dubai_lines_ON
  l0.Data[1] = self.dublin_lines_ON
  l0.Data[2] = self.seoul_lines_ON
  l0.Data[3] = self.general_lines
  l0.Data[4] = self.city_markers
  l0:Add()
end
function export:f_52_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_135_Out
  l0:In()
end
function export:f_242_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[151]
  l0:In()
end
function export:f_140_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S09M020_NoNethack"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_178_Popped
  l0:Pop()
end
function export:f_130_Loaded()
  local l0
  self = self._graph
  l0 = self[105]
  l0.LayerName = "S13M040_Main_ServerFarm"
  l0:Load()
end
function export:f_180_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.Music
  l0._graph = self
  l0.Out = self.f_191_Out
  l0:Add()
end
function export:f_246_Hidden()
  local l0
  self = self._graph
  l0 = self[236]
  l0.Seconds = 1
  l0:Start()
end
function export:f_129_PreOut()
  local l0
  self = self._graph
  l0 = self[140]
  l0:Input(0)
end
function export:f_122_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_195_Out_0
  l0.Out[1] = self.f_195_Out_1
  l0:In()
end
function export:f_263_Out()
  local l0
  self = self._graph
  l0 = self[55]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective010",
    item = "Objective",
    id = "403005"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_80_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_137_Out
  l0:FromInteger()
end
function export:f_317_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_07
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
function export:f_317_Out_1()
  local l0
  self = self._graph
  l0 = self[319]
  l0.Entity = "9223372056081177685"
  l0.SoundId = "soundbinary/520003169.bnk"
  l0:Play()
end
function export:f_157_Out()
  local l0
  self = self._graph
  l0 = self[101]
  l0.Integer = self.Music
  l0.Case[0] = 2
  l0.Case[1] = 4
  l0:In()
end
function export:f_104_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[239]
  l0.SoundId = "soundbinary/3203099314.bnk"
  l0:Play()
end
function export:f_261_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In()
end
function export:f_335_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_05
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
function export:f_335_Out_1()
  local l0
  self = self._graph
  l0 = self[330]
  l0.Entity = "9223372049785967275"
  l0.SoundId = "soundbinary/3636364637.bnk"
  l0:Play()
end
function export:f_54_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_141_Out_0
  l0.Out[1] = self.f_141_Out_1
  l0.Out[2] = self.f_141_Out_2
  l0:In()
end
function export:f_54_TimeElapsed()
  local l0
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
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_160_ParameterSet
  l0:SetParameter()
end
function export:f_285_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_i
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_125_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_221_Unloaded()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Succeed()
end
function export:f_268_Added()
  local l0
  self = self._graph
  l0 = self[268]
  self.Initial_Meshes = l0.Target
  l0 = self[53]
  l0.Input = self.IOPEntryHackables
  l0.Data[0] = self.Dublin_Hack
  l0.Data[1] = self.Dubai_Hack
  l0.Data[2] = self.Seoul_Hack
  l0:Add()
end
function export:f_268_Out()
  local l0
  self = self._graph
  l0 = self[268]
  self.Initial_Meshes = l0.Target
end
function export:f_268_Removed()
  local l0
  self = self._graph
  l0 = self[268]
  self.Initial_Meshes = l0.Target
end
function export:f_301_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_324_Out_0
  l0.Out[1] = self.f_324_Out_1
  l0.Out[2] = DummyFunction
  l0:In()
end
function export:f_223_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.hacktheplanet_seoullights_0
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_224_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_325_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_01
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
function export:f_325_Out_1()
  local l0
  self = self._graph
  l0 = self[321]
  l0.Entity = "9223372056081177837"
  l0.SoundId = "soundbinary/520003169.bnk"
  l0:Play()
end
function export:f_338_HackSuccess()
  local l0
  self = self._graph
  l0 = self[340]
  l0.Entity = "9223372052756035355"
  l0.SoundId = "soundbinary/3636364637.bnk"
  l0:Play()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[93]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406440561"
  l0:StartCommunication()
end
function export:f_110_Out()
  local l0
  self = self._graph
  l0 = self[111]
  l0.CameraEntity = self.SatelliteCamera_Dublin
  l0.AtomsphereEntity = "9223372055570556049"
  l0.CameraAttachmentEntity = "9223372055570556594"
  l0.InitialTarget = self.Dublin_Tagpoint
  l0:In()
end
function export:f_88_InteractionForced()
  local l0
  self = self._graph
  l0 = self[311]
  l0.HackableEntityList = self.IOPEntryHackables
  l0:EnableHack()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = self[32]
  l0.LayerName = "S13M040_Main_Earth"
  l0:Load()
end
function export:f_141_Out_0()
  local l0
  self = self._graph
  l0 = self[145]
  l0:Condition(0)
end
function export:f_141_Out_1()
  local l0
  self = self._graph
  l0 = self[166]
  l0.Seconds = 0.1
  l0:Start()
end
function export:f_141_Out_2()
  local l0
  self = self._graph
  l0 = self[223]
  l0.Seconds = 6
  l0:Start()
end
function export:f_62_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_173_Out_0
  l0.Out[1] = self.f_173_Out_1
  l0:In()
end
function export:f_267_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_04
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_220_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_230_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.hacktheplanet_seoullights_2
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_231_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_304_Out()
  local l0
  self = self._graph
  l0 = self[259]
  l0:PreIOP()
end
function export:f_90_Added()
  local l0
  self = self._graph
  l0 = self[90]
  self.Drones = l0.Target
end
function export:f_90_Out()
  local l0
  self = self._graph
  l0 = self[90]
  self.Drones = l0.Target
end
function export:f_90_Removed()
  local l0
  self = self._graph
  l0 = self[90]
  self.Drones = l0.Target
end
function export:f_160_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.seoul_lines_ON
  l0.Index = 1
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetParameter()
end
function export:f_154_Out_0()
  local l0
  self = self._graph
  l0 = self[186]
  l0.HackableEntity = "9223372049785967275"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_154_Out_1()
  local l0
  self = self._graph
  l0 = self[87]
  l0.HackableEntity = "9223372056081177733"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_154_Out_2()
  local l0
  self = self._graph
  l0 = self[180]
  l0.HackableEntity = "9223372056081177807"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_154_Out_3()
  local l0
  self = self._graph
  l0 = self[190]
  l0.HackableEntity = "9223372056081177685"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_154_Out_4()
  local l0
  self = self._graph
  l0 = self[193]
  l0.HackableEntity = "9223372056081177683"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_82_Out()
  local l0
  self = self._graph
  l0 = self[35]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406440564"
  l0:StartCommunication()
end
function export:f_158_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dubai_lines_ON
  l0.Index = 1
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetParameter()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_77_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Lock()
end
function export:f_10_HackSuccess()
  local l0
  self = self._graph
  l0 = self[41]
  l0:Input(0)
end
function export:f_171_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[144]
  l0:In()
end
function export:f_107_Loaded()
  local l0
  self = self._graph
  l0 = self[130]
  l0.LayerName = "S13M040_Main_Earth"
  l0:Load()
end
function export:f_14_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_68_InteractionForced()
  local l0
  self = self._graph
  self:en_81()
  l0 = self[81]
  l0:Enable()
end
function export:f_35_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[129]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_326_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_02
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
function export:f_326_Out_1()
  local l0
  self = self._graph
  l0 = self[320]
  l0.Entity = "9223372056081177821"
  l0.SoundId = "soundbinary/520003169.bnk"
  l0:Play()
end
function export:f_255_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_10
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_213_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_42_Enabled()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Command = "IOP_Dublin"
  l0:Enable()
end
function export:f_42_Executed()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Input(1)
end
function export:f_337_HackSuccess()
  local l0
  self = self._graph
  l0 = self[339]
  l0.Entity = "9223372054531599391"
  l0.SoundId = "soundbinary/3636364637.bnk"
  l0:Play()
end
function export:f_192_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Music = l0.Target
  l0 = self[157]
  l0:Input(4)
end
function export:f_29_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.seoul_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0.1
  l0.B = 0
  l0.Time = 3
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_277_ParameterSet
  l0:SetParameter()
end
function export:f_172_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_e_1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_164_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_118_StartCommunicationOut()
  local l0
  self = self._graph
  self:en_229()
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_283_ParameterSet()
  local l0
  self = self._graph
  l0 = self[24]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053612566540"
  l0:StartCommunication()
end
function export:f_336_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_10
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
function export:f_336_Out_1()
  local l0
  self = self._graph
  l0 = self[329]
  l0.Entity = "9223372056081181660"
  l0.SoundId = "soundbinary/3636364637.bnk"
  l0:Play()
end
function export:f_210_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_326_Out_0
  l0.Out[1] = self.f_326_Out_1
  l0:In()
end
function export:f_277_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dublin_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0.1
  l0.B = 0
  l0.Time = 3
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_197_ParameterSet
  l0:SetParameter()
end
function export:f_148_Hidden()
  local l0
  self = self._graph
  l0 = self[139]
  l0.HackableEntity = "9223372047335456193"
  l0:DisableHack()
end
function export:f_257_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_02
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_246_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_127_Loaded()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(0)
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[262]
  l0.Camera = self.SatelliteCamera_Dublin
  l0.Target = self.Dublin_Exit_Tagpoint
  l0:PostIOP()
end
function export:f_324_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_09
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
function export:f_324_Out_1()
  local l0
  self = self._graph
  l0 = self[328]
  l0.Entity = "9223372056081177733"
  l0.SoundId = "soundbinary/520003169.bnk"
  l0:Play()
end
function export:f_265_Out()
  local l0
  self = self._graph
  l0 = self[99]
  l0.HackableEntity = self.InitialCamera
  l0:DisableHack()
end
function export:f_86_Popped()
  local l0
  self = self._graph
  l0 = self[28]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_234_EndOfList()
  local l0
  self = self._graph
  l0 = self[234]
  self.ChildEntity = l0.Data
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.MovingEarthController
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
  l0:Move()
end
function export:f_234_ForEach()
  local l0
  self = self._graph
  l0 = self[234]
  self.ChildEntity = l0.Data
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.MovingEarthController
  l0.Child = self.ChildEntity
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = DummyFunction
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_234_GotNext()
  local l0
  self = self._graph
  l0 = self[234]
  self.ChildEntity = l0.Data
end
function export:f_234_Started()
  local l0
  self = self._graph
  l0 = self[234]
  self.ChildEntity = l0.Data
end
function export:f_234_Stopped()
  local l0
  self = self._graph
  l0 = self[234]
  self.ChildEntity = l0.Data
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_309_Out_0
  l0.Out[1] = self.f_309_Out_1
  l0:In()
end
function export:f_120_Out()
  local l0
  self = self._graph
  l0 = self[49]
  l0.CameraEntity = self.SatelliteCamera_Dubai
  l0.DummyHackable = self.dubai_hackable_dummy
  l0.LookatTarget = self.Dubai_Tagpoint
  l0:In()
end
function export:f_236_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_03
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_214_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_30_Out_0()
  local l0
  self = self._graph
  l0 = self[92]
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "Downloading",
    id = "550990"
  }
  l0.TotalTime = 16
  l0:Start()
end
function export:f_30_Out_1()
  local l0
  self = self._graph
  l0 = self[249]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372060065505688"
  l0:StartCommunication()
end
function export:f_30_Out_2()
  local l0
  self = self._graph
  l0 = self[169]
  l0.Seconds = 14
  l0:Start()
end
function export:f_30_Out_3()
  local l0
  self = self._graph
  l0 = self[167]
  l0.Seconds = 2
  l0:Start()
end
function export:f_212_Hidden()
  local l0
  self = self._graph
  l0 = self[257]
  l0.Seconds = 1
  l0:Start()
end
function export:f_22_Hidden()
  local l0
  self = self._graph
  l0 = self[276]
  l0.HackableEntityList = self.IOPEntryHackables
  l0:DisableHack()
end
function export:f_232_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.general_lines
  l0.Index = 1
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_345_ParameterSet
  l0:SetParameter()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = self[96]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406440559"
  l0:StartCommunication()
end
function export:f_25_Added()
  local l0
  self = self._graph
  l0 = self[25]
  self.All_Meshes = l0.Target
  l0 = self[268]
  l0.Input = self.Initial_Meshes
  l0.Data[0] = self.dubai_lines_ON
  l0.Data[1] = self.dublin_lines_ON
  l0.Data[2] = self.seoul_lines_ON
  l0.Data[3] = self.general_lines
  l0.Data[4] = self.hacktheplanet_seoullights_0
  l0.Data[5] = self.hacktheplanet_seoullights_1
  l0.Data[6] = self.hacktheplanet_seoullights_2
  l0.Data[7] = self.hacktheplanet_seoullights_3
  l0:Add()
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = self[25]
  self.All_Meshes = l0.Target
end
function export:f_25_Removed()
  local l0
  self = self._graph
  l0 = self[25]
  self.All_Meshes = l0.Target
end
function export:f_7_CanExitSet()
  local l0
  self = self._graph
  self:en_7()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_7_EnterForced()
  local l0
  self = self._graph
  l0 = self[104]
  l0.Seconds = 1
  l0:Start()
end
function export:f_341_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[344]
  l0.LayerName = "S13M040_Main"
  l0:Load()
end
function export:f_218_Hidden()
  local l0
  self = self._graph
  l0 = self[282]
  l0.Seconds = 1
  l0:Start()
end
function export:f_133_Hidden()
  local l0
  self = self._graph
  l0 = self[102]
  l0.SpawnPoint = self.S13M40_SpawnPoint_PlayerToEarth
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_9_HackSuccess()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Input(0)
end
function export:f_78_Unlocked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "exotic_mission_pausemenu"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_86_Popped
  l0:Pop()
end
function export:f_18_CanExitSet()
  local l0
  self = self._graph
  self:en_18()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceUserOutOfCamera()
end
function export:f_18_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_103_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_91_Hidden()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective060",
    item = "Objective",
    id = "560738"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_17_Unloaded()
  local l0
  self = self._graph
  l0 = self[11]
  l0.LayerName = "S13M040_Main_ServerFarm"
  l0:Unload()
end
function export:f_151_Out()
  local l0
  self = self._graph
  l0 = self[95]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406437034"
  l0:StartCommunication()
end
function export:f_310_Added()
  local l0
  self = self._graph
  l0 = self[310]
  self.Drones = l0.Target
end
function export:f_310_Out()
  local l0
  self = self._graph
  l0 = self[310]
  self.Drones = l0.Target
end
function export:f_310_Removed()
  local l0
  self = self._graph
  l0 = self[310]
  self.Drones = l0.Target
end
function export:f_95_StartCommunicationOut()
  local l0
  self = self._graph
  self:en_229()
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_231_Hidden()
  local l0
  self = self._graph
  l0 = self[227]
  l0.Seconds = 1
  l0:Start()
end
function export:f_298_Out_0()
  local l0
  self = self._graph
  l0 = self[297]
  l0.HackableEntity = self.ServerRackNode_1
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_298_Out_1()
  local l0
  self = self._graph
  l0 = self[302]
  l0.HackableEntity = self.ServerRackNode_2
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_298_Out_2()
  local l0
  self = self._graph
  l0 = self[294]
  l0.HackableEntity = self.ServerRackNode_3
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_298_Out_3()
  local l0
  self = self._graph
  l0 = self[301]
  l0.HackableEntity = self.ServerRackNode_4
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_298_Out_4()
  local l0
  self = self._graph
  l0 = self[300]
  l0.HackableEntity = self.ServerRackNode_5
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_298_Out_5()
  local l0
  self = self._graph
  l0 = self[211]
  l0.HackableEntity = self.ServerRackNode_6
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_298_Out_6()
  local l0
  self = self._graph
  l0 = self[210]
  l0.HackableEntity = self.ServerRackNode_7
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_298_Out_7()
  local l0
  self = self._graph
  l0 = self[184]
  l0.HackableEntity = self.ServerRackNode_8
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_298_Out_8()
  local l0
  self = self._graph
  l0 = self[205]
  l0.HackableEntity = self.ServerRackNode_9
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_298_Out_9()
  local l0
  self = self._graph
  l0 = self[207]
  l0.HackableEntity = self.ServerRackNode_10
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_298_Out_10()
  local l0
  self = self._graph
  l0 = self[337]
  l0.HackableEntity = "9223372054531599391"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_298_Out_11()
  local l0
  self = self._graph
  l0 = self[338]
  l0.HackableEntity = "9223372052756035355"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_143_Out_0()
  local l0
  self = self._graph
  l0 = self[145]
  l0:Condition(2)
end
function export:f_143_Out_1()
  local l0
  self = self._graph
  l0 = self[242]
  l0.Seconds = 0.1
  l0:Start()
end
function export:f_280_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self[280]
  l1 = self[243]
  l1.Data[0] = l0.UserID
  l1.Input = self.Drones
  l1:Add()
end
function export:f_243_Added()
  local l0
  self = self._graph
  l0 = self[243]
  self.Drones = l0.Target
end
function export:f_243_Out()
  local l0
  self = self._graph
  l0 = self[243]
  self.Drones = l0.Target
end
function export:f_243_Removed()
  local l0
  self = self._graph
  l0 = self[243]
  self.Drones = l0.Target
end
function export:f_256_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_07
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_218_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_137_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.Music = l0.Target
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 9
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_58_Out
  l0:SetTimeOfDay()
end
function export:f_119_Out_0()
  local l0
  self = self._graph
  l0 = self[261]
  l0:PreIOP()
end
function export:f_119_Out_1()
  local l0
  self = self._graph
  self:en_185()
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_278_Activated()
  local l0
  self = self._graph
  l0 = self[279]
  l0.CLO = self.AltDroneB
  l0:Activate()
end
function export:f_278_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self[278]
  l1 = self[240]
  l1.Data[0] = l0.UserID
  l1.Input = self.Drones
  l1:Add()
end
function export:f_347_ContextDisabled()
  local l0
  self = self._graph
  l0 = self[342]
  l0:Input(1)
end
function export:f_198_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.general_lines
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0.1
  l0.B = 0
  l0.Time = 3
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetParameter()
end
function export:f_99_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.DubaiToSeoulBlocker
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_308_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_248_TimeElapsed()
  local l0
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
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_232_ParameterSet
  l0:SetParameter()
end
function export:f_262_Out()
  local l0
  self = self._graph
  l0 = self[266]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective010",
    item = "Objective",
    id = "403005"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_79_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[107]
  l0.LayerName = "S13M040_Main"
  l0:Load()
end
function export:f_19_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[114]
  l0:Deactivate()
end
function export:f_187_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Music = l0.Target
  l0 = self[157]
  l0:Input(3)
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = self[117]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406437033"
  l0:StartCommunication()
end
function export:f_300_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_336_Out_0
  l0.Out[1] = self.f_336_Out_1
  l0:In()
end
function export:f_144_Out()
  local l0
  self = self._graph
  l0 = self[118]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053612566538"
  l0:StartCommunication()
end
function export:f_211_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_325_Out_0
  l0.Out[1] = self.f_325_Out_1
  l0:In()
end
function export:f_302_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_317_Out_0
  l0.Out[1] = self.f_317_Out_1
  l0:In()
end
function export:f_250_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_05
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
function export:f_215_Hidden()
  local l0
  self = self._graph
  l0 = self[219]
  l0.Seconds = 1
  l0:Start()
end
function export:f_294_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_322_Out_0
  l0.Out[1] = self.f_322_Out_1
  l0:In()
end
function export:f_165_Shown()
  local l0
  self = self._graph
  l0 = self[162]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_156_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[174]
  l0.Seconds = 24
  l0:Start()
end
function export:f_290_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_j
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetParameter()
end
function export:f_276_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_222_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_309_Out_0()
  local l0
  self = self._graph
  l0 = self[140]
  l0:Input(1)
end
function export:f_309_Out_1()
  local l0
  self = self._graph
  self:en_275()
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[263]
  l0.Camera = self.SatelliteCamera_Seoul
  l0.Target = self.Seoul_Exit_Tagpoint
  l0:PostIOP()
end
function export:f_108_Out()
  local l0
  self = self._graph
  l0 = self[109]
  l0.CameraEntity = self.SatelliteCamera_Dubai
  l0.AtomsphereEntity = "9223372055570556037"
  l0.CameraAttachmentEntity = "9223372065542843551"
  l0.InitialTarget = self.Dubai_Tagpoint
  l0:In()
end
function export:f_83_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.AllCitiesCircuitBox
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = self.f_88_InteractionForced
  l0.Out = DummyFunction
  l0:ForceInteract()
end
function export:f_83_StopCommunicationOut()
  local l0
  self = self._graph
  l0 = self[98]
  l0:Input(1)
end
function export:f_270_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_e_1
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_272_ParameterSet
  l0:SetParameter()
end
function export:f_219_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_09
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_217_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_266_Out()
  local l0
  self = self._graph
  l0 = self[159]
  l0.Seconds = 1
  l0:Start()
end
function export:f_183_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Music = l0.Target
  l0 = self[157]
  l0:Input(1)
end
function export:f_289_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_i
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_290_ParameterSet
  l0:SetParameter()
end
function export:f_348_Started()
  local l0
  self = self._graph
  l0 = self[274]
  l0:Input(0)
end
function export:f_348_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[274]
  l0:Input(1)
end
function export:f_287_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_g
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_288_ParameterSet
  l0:SetParameter()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_64_Out
  l0:SetTimeOfDay()
end
function export:f_53_Added()
  local l0
  self = self._graph
  l0 = self[53]
  self.IOPEntryHackables = l0.Target
  l0 = self[233]
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
  l0:Add()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = self[53]
  self.IOPEntryHackables = l0.Target
end
function export:f_53_Removed()
  local l0
  self = self._graph
  l0 = self[53]
  self.IOPEntryHackables = l0.Target
end
function export:f_258_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_01
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_212_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_96_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_115_Out_0
  l0.Out[1] = self.f_115_Out_1
  l0:In()
end
function export:f_176_Switched()
  local l0
  self = self._graph
  self:en_176()
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0:DisableWheelActionMap()
end
function export:f_176_WheelActionMapDisabled()
  local l0
  self = self._graph
  l0 = self[346]
  l0.UIContext = "HideMinimap"
  l0:EnableUIContext()
end
function export:f_306_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_131_Out
  l0:In()
end
function export:f_94_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[89]
  l0.LayerName = "S13M040_Main"
  l0:Load()
end
function export:f_220_Hidden()
  local l0
  self = self._graph
  l0 = self[250]
  l0.Seconds = 1
  l0:Start()
end
function export:f_174_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[155]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055160345691"
  l0:StartCommunication()
end
function export:f_214_Hidden()
  local l0
  self = self._graph
  l0 = self[267]
  l0.Seconds = 1
  l0:Start()
end
function export:f_179_TimeElapsed()
  local l0
  self = self._graph
  self:en_27()
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0:MakeAvailable()
end
function export:f_32_Loaded()
  local l0
  self = self._graph
  l0 = self[14]
  l0.LayerName = "S13M040_Main_IOP"
  l0:Load()
end
function export:f_240_Added()
  local l0
  self = self._graph
  l0 = self[240]
  self.Drones = l0.Target
end
function export:f_240_Out()
  local l0
  self = self._graph
  l0 = self[240]
  self.Drones = l0.Target
end
function export:f_240_Removed()
  local l0
  self = self._graph
  l0 = self[240]
  self.Drones = l0.Target
end
function export:f_72_Out_0()
  local l0
  self = self._graph
  self:en_56()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetInitialTarget()
end
function export:f_72_Out_1()
  local l0
  self = self._graph
  l0 = self[278]
  l0.CLO = self.AltDroneA
  l0:Activate()
end
function export:f_284_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_h
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_251_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_70_TeleportDone()
  local l0
  self = self._graph
  l0 = self[122]
  l0.Checkpoint = "CheckPoint_2"
  l0:In()
end
function export:f_132_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_30_Out_0
  l0.Out[1] = self.f_30_Out_1
  l0.Out[2] = self.f_30_Out_2
  l0.Out[3] = self.f_30_Out_3
  l0:In()
end
function export:f_113_Out_0()
  local l0
  self = self._graph
  l0 = self[260]
  l0:PreIOP()
end
function export:f_113_Out_1()
  local l0
  self = self._graph
  self:en_185()
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_6_TeleportDone()
  local l0
  self = self._graph
  l0 = self[50]
  l0:Input(0)
end
function export:f_323_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_06
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
function export:f_323_Out_1()
  local l0
  self = self._graph
  l0 = self[318]
  l0.Entity = "9223372056081177671"
  l0.SoundId = "soundbinary/520003169.bnk"
  l0:Play()
end
function export:f_51_Enabled()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Command = "IOP_Seoul"
  l0:Enable()
end
function export:f_51_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:In()
end
function export:f_117_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_119_Out_0
  l0.Out[1] = self.f_119_Out_1
  l0:In()
end
function export:f_150_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.puzzleLights
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_148_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_222_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_75_Out_0
  l0.Out[1] = self.f_75_Out_1
  l0.Out[2] = self.f_75_Out_2
  l0:In()
end
function export:f_66_DisconnectUnavailable()
  local l0
  self = self._graph
  self:en_66()
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0:MakeCallBackUnavailable()
end
function export:f_333_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_04
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
function export:f_333_Out_1()
  local l0
  self = self._graph
  l0 = self[334]
  l0.Entity = "9223372056081177788"
  l0.SoundId = "soundbinary/136636566.bnk"
  l0:Play()
end
function export:f_61_Hidden()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Enable()
end
function export:f_61_Shown()
  local l0
  self = self._graph
  l0 = self[62]
  l0.HackableEntity = self.DataFarm_AccessNode
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_249_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[254]
  l0:Condition(1)
end
function export:f_106_StartCommunicationOut()
  local l0
  self = self._graph
  self:en_229()
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_115_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 0
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_304_Out
  l0:SetTimeOfDay()
end
function export:f_115_Out_1()
  local l0
  self = self._graph
  self:en_185()
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_114_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_78_Unlocked
  l0.Out = DummyFunction
  l0:Unlock()
end
function export:f_134_Added()
  local l0
  self = self._graph
  l0 = self[134]
  self.puzzleLights = l0.Target
  l0 = self[69]
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
  l0:Add()
end
function export:f_134_Out()
  local l0
  self = self._graph
  l0 = self[134]
  self.puzzleLights = l0.Target
end
function export:f_134_Removed()
  local l0
  self = self._graph
  l0 = self[134]
  self.puzzleLights = l0.Target
end
function export:f_344_Loaded()
  local l0
  self = self._graph
  l0 = self[342]
  l0:Input(0)
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = self[59]
  l0.CameraEntity = self.SatelliteCamera_Seoul
  l0.DummyHackable = self.seoul_hackable_dummy
  l0.DummyHackable2 = self._2ndbridge_hackable_dummy
  l0.LookatTarget = self.Seoul_Tagpoint
  l0:In()
end
function export:f_224_Hidden()
  local l0
  self = self._graph
  l0 = self[121]
  l0.Seconds = 1
  l0:Start()
end
function export:f_233_Added()
  local l0
  self = self._graph
  l0 = self[233]
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
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_200_ParameterSet
  l0:SetParameter()
end
function export:f_233_Out()
  local l0
  self = self._graph
  l0 = self[233]
  self.EarthEntities = l0.Target
end
function export:f_233_Removed()
  local l0
  self = self._graph
  l0 = self[233]
  self.EarthEntities = l0.Target
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = self[161]
  l0.Seconds = 1
  l0:Start()
end
function export:f_8_HackSuccess()
  local l0
  self = self._graph
  l0 = self[46]
  l0:Input(0)
end
function export:f_57_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.skull_meshes
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_150_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_57_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_a_1
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_271_ParameterSet
  l0:SetParameter()
end
function export:f_305_Out()
  local l0
  self = self._graph
  l0 = self[264]
  l0.Camera = self.SatelliteCamera_Dubai
  l0.Target = self.Dubai_Exit_Tagpoint
  l0:PostIOP()
end
function export:f_195_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "exotic_mission_pausemenu"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_84_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_195_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372069285877235"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_11_Unloaded()
  local l0
  self = self._graph
  l0 = self[221]
  l0.LayerName = "S13M040_Main_Earth"
  l0:Unload()
end
function export:f_131_Out()
  local l0
  self = self._graph
  l0 = self[132]
  l0:Input(1)
end
function export:f_297_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_323_Out_0
  l0.Out[1] = self.f_323_Out_1
  l0:In()
end
function export:f_207_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_335_Out_0
  l0.Out[1] = self.f_335_Out_1
  l0:In()
end
function export:f_28_PreOut()
  local l0
  self = self._graph
  l0 = self[179]
  l0:Start()
end
function export:f_164_Shown()
  local l0
  self = self._graph
  l0 = self[252]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_193_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.Music
  l0._graph = self
  l0.Out = self.f_192_Out
  l0:Add()
end
function export:f_269_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_d_1
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_270_ParameterSet
  l0:SetParameter()
end
function export:f_279_Activated()
  local l0
  self = self._graph
  l0 = self[281]
  l0.CLO = self.AltDroneC
  l0:Activate()
end
function export:f_279_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self[279]
  l1 = self[241]
  l1.Data[0] = l0.UserID
  l1.Input = self.Drones
  l1:Add()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 9
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_305_Out
  l0:SetTimeOfDay()
end
function export:f_76_Locked()
  local l0
  self = self._graph
  l0 = self[134]
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
  l0:Add()
end
function export:f_81_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_163_Out_0
  l0.Out[1] = self.f_163_Out_1
  l0.Out[2] = self.f_163_Out_2
  l0:In()
end
function export:f_81_HackSuccess()
  local l0
  self = self._graph
  self:en_81()
  l0 = self[81]
  l0:Disable()
end
function export:f_264_Out()
  local l0
  self = self._graph
  l0 = self[63]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective010",
    item = "Objective",
    id = "403005"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_272_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_f
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_287_ParameterSet
  l0:SetParameter()
end
function export:f_254_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0:ShowMissionComplete()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[47]
  l0:In()
end
function export:f_139_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_307_Out_0
  l0.Out[1] = self.f_307_Out_1
  l0:In()
end
function export:f_260_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0:In()
end
function export:f_189_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Music = l0.Target
  l0 = self[157]
  l0:Input(0)
end
function export:f_167_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_06
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_245_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 8}
  l0.Out[0] = self.f_175_Out_0
  l0.Out[1] = self.f_175_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = self.f_175_Out_3
  l0.Out[4] = self.f_175_Out_4
  l0.Out[5] = self.f_175_Out_5
  l0.Out[6] = DummyFunction
  l0.Out[7] = DummyFunction
  l0:In()
end
function export:f_316_Enter()
  local l0, l1
  self = self._graph
  l0 = self[316]
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l1.Entity1 = l0.Collider
  l1.Entity2 = self.PlayerEntity
  l1._graph = self
  l1.Out = DummyFunction
  l1.Equal = DummyFunction
  l1.NotEqual = self.f_146_NotEqual
  l1:In()
end
function export:f_101_Match_0()
  local l0
  self = self._graph
  l0 = self[138]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_101_Match_1()
  local l0
  self = self._graph
  l0 = self[136]
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0:Play()
end
function export:f_121_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.hacktheplanet_seoullights_3
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_33_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_239_Out()
  local l0
  self = self._graph
  l0 = self[124]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_162_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_d_1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_168_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SpawnPoint = self.S13M40_SpawnPoint_PlayerToEarth
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485441"
  l0:In()
end
function export:f_126_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.puzzleLights
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_306_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_245_Hidden()
  local l0
  self = self._graph
  l0 = self[256]
  l0.Seconds = 1
  l0:Start()
end
function export:f_27_Available()
  local l0
  self = self._graph
  self:en_27()
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0:MakeCallBackAvailable()
end
function export:f_27_CallBackAvailable()
  local l0
  self = self._graph
  self:en_27()
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0:MakeDisconnectAvailable()
end
function export:f_27_DisconnectAvailable()
  local l0
  self = self._graph
  self:en_27()
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0:Disconnect()
end
function export:f_27_Disconnected()
  local l0
  self = self._graph
  l0 = self[43]
  l0.List = self.Drones
  l0:Start()
end
function export:f_152_Out()
  local l0
  self = self._graph
  l0 = self[106]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406440562"
  l0:StartCommunication()
end
function export:f_93_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_113_Out_0
  l0.Out[1] = self.f_113_Out_1
  l0:In()
end
function export:f_228_Added()
  local l0
  self = self._graph
  l0 = self[228]
  self.AllCameraDummies = l0.Target
  l0 = self[100]
  l0.CameraEntity = self.InitialCamera
  l0.AtomsphereEntity = "9223372055218869598"
  l0.CameraAttachmentEntity = "9223372055570556596"
  l0.InitialTarget = self.Delaware_Tagpoint
  l0:In()
end
function export:f_228_Out()
  local l0
  self = self._graph
  l0 = self[228]
  self.AllCameraDummies = l0.Target
end
function export:f_228_Removed()
  local l0
  self = self._graph
  l0 = self[228]
  self.AllCameraDummies = l0.Target
end
function export:f_169_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_c_1
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_165_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_332_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_03
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
function export:f_332_Out_1()
  local l0
  self = self._graph
  l0 = self[331]
  l0.Entity = "9223372056081177807"
  l0.SoundId = "soundbinary/136636566.bnk"
  l0:Play()
end
function export:f_100_Out()
  local l0
  self = self._graph
  l0 = self[108]
  l0.CameraEntity = self.SatelliteCamera_Delaware
  l0.AtomsphereEntity = "9223372055218869598"
  l0.CameraAttachmentEntity = "9223372055570556596"
  l0.InitialTarget = self.Delaware_Tagpoint
  l0:In()
end
function export:f_288_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_h
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_289_ParameterSet
  l0:SetParameter()
end
function export:f_69_Added()
  local l0
  self = self._graph
  l0 = self[69]
  self.skull_meshes = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_57_Out_0
  l0.Out[1] = self.f_57_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = DummyFunction
  l0:In()
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = self[69]
  self.skull_meshes = l0.Target
end
function export:f_69_Removed()
  local l0
  self = self._graph
  l0 = self[69]
  self.skull_meshes = l0.Target
end
function export:f_225_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dublin_lines_ON
  l0.Index = 1
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetParameter()
end
function export:f_123_Shown()
  local l0
  self = self._graph
  l0 = self[253]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_217_Hidden()
  local l0
  self = self._graph
  l0 = self[255]
  l0.Seconds = 1
  l0:Start()
end
function export:f_147_Out()
  local l0
  self = self._graph
  l0 = self[248]
  l0.Seconds = 3
  l0:Start()
end
function export:f_346_ContextEnabled()
  local l0
  self = self._graph
  l0 = self[26]
  l0.CLO = "9223372047335489767"
  l0:Activate()
end
function export:f_251_Shown()
  local l0
  self = self._graph
  l0 = self[285]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_345_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.city_markers
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0.2
  l0.B = 1
  l0.Time = 3
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_283_ParameterSet
  l0:SetParameter()
end
function export:f_191_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Music = l0.Target
  l0 = self[157]
  l0:Input(2)
end
function export:f_73_Added()
  local l0
  self = self._graph
  l0 = self[73]
  self.AllCameras = l0.Target
  l0 = self[228]
  l0.Input = self.AllCameraDummies
  l0.Data[0] = self.bridge_hackable_dummy
  l0.Data[1] = self.dublin_hackable_dummy
  l0.Data[2] = self.seoul_hackable_dummy
  l0.Data[3] = self.delaware_hackable_dummy
  l0.Data[4] = self.dubai_hackable_dummy
  l0.Data[5] = self._2ndbridge_hackable_dummy
  l0:Add()
end
function export:f_73_Out()
  local l0
  self = self._graph
  l0 = self[73]
  self.AllCameras = l0.Target
end
function export:f_73_Removed()
  local l0
  self = self._graph
  l0 = self[73]
  self.AllCameras = l0.Target
end
function export:f_182_Out_0()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Seconds = 2
  l0:Start()
end
function export:f_182_Out_1()
  local l0
  self = self._graph
  l0 = self[181]
  l0.SoundId = "soundbinary/81442961.bnk"
  l0:Play()
end
function export:f_177_Pushed()
  local l0
  self = self._graph
  l0 = self[74]
  l0:Deactivate()
end
function export:f_45_Executed()
  local l0
  self = self._graph
  l0 = self[46]
  l0:Input(1)
end
function export:f_282_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_08
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_215_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_98_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Initial_Meshes
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_29_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_24_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.DelawareCircuitBox
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = self.f_68_InteractionForced
  l0.Out = DummyFunction
  l0:ForceInteract()
end
function export:f_128_Loaded()
  local l0
  self = self._graph
  l0 = self[21]
  l0.LayerName = "S13M040_Main_IOP"
  l0:Load()
end
function export:f_149_StartCommunicationOut()
  local l0
  self = self._graph
  self:en_316()
  l0 = self[316]
  l0:Disable()
end
function export:f_26_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_72_Out_0
  l0.Out[1] = self.f_72_Out_1
  l0:In()
end
function export:f_26_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[26]
  self.RC = l0.UserID
  l0 = self[90]
  l0.Input = self.Drones
  l0.Data[0] = self.RC
  l0:Add()
end
function export:f_33_Hidden()
  local l0
  self = self._graph
  l0 = self[230]
  l0.Seconds = 1
  l0:Start()
end
function export:f_75_Out_0()
  local l0
  self = self._graph
  l0 = self[83]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406437031"
  l0:StartCommunication()
end
function export:f_75_Out_1()
  local l0
  self = self._graph
  l0 = self[97]
  l0.Seconds = 15
  l0:Start()
end
function export:f_75_Out_2()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Input(0)
end
function export:f_307_Out_0()
  local l0
  self = self._graph
  l0 = self[126]
  l0.Command = "Skip_VRPuzzle"
  l0:Enable()
end
function export:f_307_Out_1()
  local l0
  self = self._graph
  l0 = self[70]
  l0.SpawnPoint = self.S13M040_SpawnPoint_CheckPoint_2
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_186_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.Music
  l0._graph = self
  l0.Out = self.f_189_Out
  l0:Add()
end
function export:f_92_Completed()
  local l0
  self = self._graph
  l0 = self[315]
  l0.Seconds = 10
  l0:Start()
end
function export:f_15_Disabled()
  local l0
  self = self._graph
  l0 = self[132]
  l0:Input(0)
end
function export:f_15_HackSuccess()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Disable()
end
function export:f_197_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dubai_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0.1
  l0.B = 0
  l0.Time = 3
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_198_ParameterSet
  l0:SetParameter()
end
function export:f_202_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.general_lines
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0
  l0.B = 0
  l0.Time = 0
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_201_ParameterSet
  l0:SetParameter()
end
function export:f_109_Out()
  local l0
  self = self._graph
  l0 = self[110]
  l0.CameraEntity = self.SatelliteCamera_Seoul
  l0.AtomsphereEntity = "9223372056081269514"
  l0.CameraAttachmentEntity = "9223372065542843558"
  l0.InitialTarget = self.Seoul_Tagpoint
  l0:In()
end
function export:f_173_Out_0()
  local l0
  self = self._graph
  self:en_61()
  l0 = self[61]
  l0:Hide()
end
function export:f_173_Out_1()
  local l0
  self = self._graph
  l0 = self[156]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055160345690"
  l0:StartCommunication()
end
function export:f_259_Out()
  local l0
  self = self._graph
  l0 = self[36]
  l0:In()
end
function export:f_74_Deactivated()
  local l0
  self = self._graph
  l0 = self[73]
  l0.Input = self.AllCameras
  l0.Data[0] = self.SatelliteCamera_Delaware
  l0.Data[1] = self.SatelliteCamera_Dubai
  l0.Data[2] = self.SatelliteCamera_Seoul
  l0.Data[3] = self.SatelliteCamera_Dublin
  l0:Add()
end
function export:f_37_Out_0()
  local l0
  self = self._graph
  l0 = self[10]
  l0.HackableEntity = self.Seoul_Hack
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_37_Out_1()
  local l0
  self = self._graph
  l0 = self[9]
  l0.HackableEntity = self.Dubai_Hack
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_37_Out_2()
  local l0
  self = self._graph
  l0 = self[8]
  l0.HackableEntity = self.Dublin_Hack
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_322_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.puzzleLights_08
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
function export:f_322_Out_1()
  local l0
  self = self._graph
  l0 = self[327]
  l0.Entity = "9223372056081177703"
  l0.SoundId = "soundbinary/136636566.bnk"
  l0:Play()
end
function export:f_253_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_g
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_170_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Seconds = 1
  l0:Start()
end
function export:f_34_Unloaded()
  local l0
  self = self._graph
  l0 = self[127]
  l0.LayerName = "S13M040_Main_ServerFarm"
  l0:Load()
end
function export:f_343_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0:In()
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_76_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Lock()
end
function export:f_203_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dubai_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0
  l0.B = 0
  l0.Time = 0
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_202_ParameterSet
  l0:SetParameter()
end
function export:f_135_Out()
  local l0
  self = self._graph
  l0 = self[51]
  l0.Command = "Final_VRPuzzle"
  l0:Enable()
end
function export:f_292_Switched()
  local l0
  self = self._graph
  self:en_292()
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0:EnableWheelActionMap()
end
function export:f_292_WheelActionMapEnabled()
  local l0
  self = self._graph
  l0 = self[347]
  l0.UIContext = "HideMinimap"
  l0:DisableUIContext()
end
function export:f_273_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_c_1
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_269_ParameterSet
  l0:SetParameter()
end
function export:f_50_Out()
  local l0
  self = self._graph
  l0 = self[80]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_65_Out()
  local l0
  self = self._graph
  self:en_348()
  l0 = self[348]
  l0:Start()
end
function export:f_40_Enabled()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Command = "IOP_Dubai"
  l0:Enable()
end
function export:f_40_Executed()
  local l0
  self = self._graph
  l0 = self[41]
  l0:Input(1)
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[265]
  l0.CameraEntity = self.SatelliteCamera_Dublin
  l0.DummyHackable = self.dublin_hackable_dummy
  l0.LookatTarget = self.Dublin_Tagpoint
  l0:In()
end
function export:f_315_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[254]
  l0:Condition(0)
end
function export:f_281_Activated()
  local l0
  self = self._graph
  l0 = self[280]
  l0.CLO = self.AltDroneD
  l0:Activate()
end
function export:f_281_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self[281]
  l1 = self[310]
  l1.Data[0] = l0.UserID
  l1.Input = self.Drones
  l1:Add()
end
function export:f_124_PostOut()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective010",
    item = "Objective",
    id = "403005"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_146_NotEqual()
  local l0
  self = self._graph
  l0 = self[149]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055160345692"
  l0:StartCommunication()
end
function export:f_175_Out_0()
  local l0
  self = self._graph
  self:en_316()
  l0 = self[316]
  l0:Enable()
end
function export:f_175_Out_1()
  local l0
  self = self._graph
  self:en_61()
  l0 = self[61]
  l0:Show()
end
function export:f_175_Out_3()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Enable()
end
function export:f_175_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 12}
  l0.Out[0] = self.f_298_Out_0
  l0.Out[1] = self.f_298_Out_1
  l0.Out[2] = self.f_298_Out_2
  l0.Out[3] = self.f_298_Out_3
  l0.Out[4] = self.f_298_Out_4
  l0.Out[5] = self.f_298_Out_5
  l0.Out[6] = self.f_298_Out_6
  l0.Out[7] = self.f_298_Out_7
  l0.Out[8] = self.f_298_Out_8
  l0.Out[9] = self.f_298_Out_9
  l0.Out[10] = self.f_298_Out_10
  l0.Out[11] = self.f_298_Out_11
  l0:In()
end
function export:f_175_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_154_Out_0
  l0.Out[1] = self.f_154_Out_1
  l0.Out[2] = self.f_154_Out_2
  l0.Out[3] = self.f_154_Out_3
  l0.Out[4] = self.f_154_Out_4
  l0.Out[5] = DummyFunction
  l0:In()
end
function export:f_60_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_91_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_271_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.gal_server_skull_b_1
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 1
  l0.G = 0
  l0.B = 0
  l0.Time = 0.01
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_273_ParameterSet
  l0:SetParameter()
end
function export:f_184_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_332_Out_0
  l0.Out[1] = self.f_332_Out_1
  l0:In()
end
function export:f_77_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S09M020_NoNethack"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_177_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_182_Out_0
  l0.Out[1] = self.f_182_Out_1
  l0:In()
end
function export:f_67_IsConnected()
  local l0
  self = self._graph
  self:en_66()
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0:MakeDisconnectUnavailable()
end
function export:f_168_Shown()
  local l0
  self = self._graph
  l0 = self[172]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_102_TeleportDone()
  local l0
  self = self._graph
  l0 = self[50]
  l0:Input(1)
end
function export:f_213_Hidden()
  local l0
  self = self._graph
  l0 = self[258]
  l0.Seconds = 1
  l0:Start()
end
function export:f_125_Shown()
  local l0
  self = self._graph
  l0 = self[286]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_166_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[152]
  l0:In()
end
function export:f_21_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_133_Hidden
  l0:Hide()
end
function export:f_252_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_f
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_123_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_308_Hidden()
  local l0
  self = self._graph
  self:en_7()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_97_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[98]
  l0:Input(0)
end
function export:f_56_CanExitSet()
  local l0
  self = self._graph
  self:en_56()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_56_EnterForced()
  local l0
  self = self._graph
  l0 = self[60]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_56_InitialTargetSet()
  local l0
  self = self._graph
  self:en_56()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_112_Out()
  local l0
  self = self._graph
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
  l0.Started = DummyFunction
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  l0:Start()
end
function export:f_190_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.Music
  l0._graph = self
  l0.Out = self.f_187_Out
  l0:Add()
end
function export:f_227_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.hacktheplanet_seoullights_1
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
function export:f_116_Done()
  local l0
  self = self._graph
  self:en_292()
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0:SwitchLocalPlayerInventoryToNormal()
end
function export:f_235_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.All_Meshes
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_22_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_235_Out_1()
  local l0
  self = self._graph
  l0 = self[234]
  l0.List = self.EarthEntities
  l0:Start()
end
function export:f_200_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = self.dublin_lines_ON
  l0.Index = 0
  l0.ParameterName = "DiffuseColor1"
  l0.R = 0
  l0.G = 0
  l0.B = 0
  l0.Time = 0
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_203_ParameterSet
  l0:SetParameter()
end
function export:f_342_Out()
  local l0
  self = self._graph
  l0 = self[343]
  l0.CheckpointList = "CheckPoint_3"
  l0:In()
end
function export:f_84_Pushed()
  local l0
  self = self._graph
  self:en_176()
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0:SwitchLocalPlayerInventoryToEmpty()
end
function export:f_163_Out_0()
  local l0
  self = self._graph
  l0 = self[82]
  l0.SoundId = "soundbinary/2422823228.bnk"
  l0:Play()
end
function export:f_163_Out_1()
  local l0
  self = self._graph
  l0 = self[247]
  l0.SoundId = "soundbinary/3381059633.bnk"
  l0:Play()
end
function export:f_163_Out_2()
  local l0
  self = self._graph
  self:en_275()
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0:In()
end
function export:f_105_Loaded()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(1)
end
function export:f_178_Popped()
  local l0
  self = self._graph
  l0 = self[34]
  l0.LayerName = "S13M040_Main_IOP"
  l0:Unload()
end
function export:f_311_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_37_Out_0
  l0.Out[1] = self.f_37_Out_1
  l0.Out[2] = self.f_37_Out_2
  l0:In()
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = self[71]
  l0:In()
end
function export:f_43_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self[43]
  l1 = self[39]
  l1.User = l0.Data
  self:en_18()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_43_ForEach()
  local l0, l1
  self = self._graph
  l0 = self[43]
  l1 = self[39]
  l1.User = l0.Data
  l1:UnspawnUser()
end
function export:f_43_GotNext()
  local l0, l1
  self = self._graph
  l0 = self[43]
  l1 = self[39]
  l1.User = l0.Data
end
function export:f_43_Started()
  local l0, l1
  self = self._graph
  l0 = self[43]
  l1 = self[39]
  l1.User = l0.Data
end
function export:f_43_Stopped()
  local l0, l1
  self = self._graph
  l0 = self[43]
  l1 = self[39]
  l1.User = l0.Data
end
function export:f_153_Out_0()
  local l0
  self = self._graph
  l0 = self[151]
  l0:Close()
end
function export:f_153_Out_1()
  local l0
  self = self._graph
  l0 = self[144]
  l0:Close()
end
function export:f_153_Out_2()
  local l0
  self = self._graph
  l0 = self[152]
  l0:Close()
end
function export:f_153_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_147_Out
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[31]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_205_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_333_Out_0
  l0.Out[1] = self.f_333_Out_1
  l0:In()
end
function export:f_161_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_142_Out_0
  l0.Out[1] = self.f_142_Out_1
  l0:In()
end
function export:f_161_TimeElapsed()
  local l0
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
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_158_ParameterSet
  l0:SetParameter()
end
function export:f_111_Out()
  local l0
  self = self._graph
  l0 = self[120]
  l0.CameraEntity = self.SatelliteCamera_Delaware
  l0.DummyHackable = self.delaware_hackable_dummy
  l0.DummyHackable2 = self.bridge_hackable_dummy
  l0.LookatTarget = self.Delaware_Tagpoint
  l0:In()
end
function export:f_71_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0.LayerName = "S13M040_Main"
  l0:Unload()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_52_Out_0
  l0.Out[1] = self.f_52_Out_1
  l0:In()
end
function export:f_170_Shown()
  local l0
  self = self._graph
  l0 = self[284]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_181_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372069285877235"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = 155
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Deactivate()
end
function export:f_286_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.gal_server_skull_j
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
function export:f_241_Added()
  local l0
  self = self._graph
  l0 = self[241]
  self.Drones = l0.Target
end
function export:f_241_Out()
  local l0
  self = self._graph
  l0 = self[241]
  self.Drones = l0.Target
end
function export:f_241_Removed()
  local l0
  self = self._graph
  l0 = self[241]
  self.Drones = l0.Target
end
function export:f_103_Shown()
  local l0
  self = self._graph
  l0 = self[116]
  l0.SpawnPoint = self.S13M040_SpawnPoint_EarthToPlayer
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485442"
  l0:In()
end
function export:f_87_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.Music
  l0._graph = self
  l0.Out = self.f_183_Out
  l0:Add()
end
function export:f_145_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_153_Out_0
  l0.Out[1] = self.f_153_Out_1
  l0.Out[2] = self.f_153_Out_2
  l0.Out[3] = self.f_153_Out_3
  l0.Out[4] = DummyFunction
  l0:In()
end
function export:f_274_Out()
  local l0
  self = self._graph
  l0 = self[112]
  l0:In()
end
function export:f_142_Out_0()
  local l0
  self = self._graph
  l0 = self[145]
  l0:Condition(1)
end
function export:f_142_Out_1()
  local l0
  self = self._graph
  l0 = self[171]
  l0.Seconds = 0.1
  l0:Start()
end
function export:f_159_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_143_Out_0
  l0.Out[1] = self.f_143_Out_1
  l0:In()
end
function export:f_159_TimeElapsed()
  local l0
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
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = self.f_225_ParameterSet
  l0:SetParameter()
end
function export:f_89_Loaded()
  local l0
  self = self._graph
  l0 = self[128]
  l0.LayerName = "S13M040_Main_Earth"
  l0:Load()
end
function export:f_201_ParameterSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_235_Out_0
  l0.Out[1] = self.f_235_Out_1
  l0:In()
end
function export:en_275()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_275_Out
end
function export:en_229()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_229_Out
end
function export:en_185()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_185_Out
end
function export:en_7()
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
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_7_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_7_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_18()
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
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_18_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_18_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_348()
  local l0
  l0 = self[348]
  l0.Seconds = 5.33
  l0.Loop = 1
end
function export:en_176()
  local l0
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_176_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = self.f_176_WheelActionMapDisabled
  l0.WheelActionMapEnabled = DummyFunction
end
function export:en_66()
  local l0
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
  l0.DisconnectUnavailable = self.f_66_DisconnectUnavailable
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
end
function export:en_61()
  local l0
  l0 = self[61]
  l0.MapPoint = self.MissionTarget_DatafarmStart
end
function export:en_81()
  local l0
  l0 = self[81]
  l0.HackableEntity = self.Delaware_Second
end
function export:en_316()
  local l0
  l0 = self[316]
  l0.Trigger = self.Size_Trigger
end
function export:en_27()
  local l0
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0.CalledBack = DummyFunction
  l0.Available = self.f_27_Available
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = self.f_27_Disconnected
  l0.CallBackAvailable = self.f_27_CallBackAvailable
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = self.f_27_DisconnectAvailable
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.HackableEntity = self.ServerRoom_VR_ExitNode
end
function export:en_292()
  local l0
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_292_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = self.f_292_WheelActionMapEnabled
end
function export:en_56()
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
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_56_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_56_EnterForced
  l0.InitialTargetSet = self.f_56_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
_compilerVersion = 4
