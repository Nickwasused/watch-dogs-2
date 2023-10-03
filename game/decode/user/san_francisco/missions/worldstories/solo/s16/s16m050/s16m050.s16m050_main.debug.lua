export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AssignPatrol_v2.lua")
  cbox:RegisterBox("domino/System/BinkVideoPlayer_v3.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/HiddenCamera.HiddenCameraSetup.debug.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PerkController.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RemoteControlledVehicleController.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M050/s16m050_scr.S16M050_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/ToyCarController.lua")
  cbox:RegisterBox("domino/System/ToyCarMonitor.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/829932899.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/641832591.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/536467250.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1170897341.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1113226022.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S16M050_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main"
  self.PlayerEntity = nil
  self.RC_barge = nil
  self.Captain = nil
  self.AI_check_hacker = nil
  self.AI_Barge_list = {}
  self.Atmosphere_Main_CAM = {}
  self.Atmosphere_2nd_CAM = {}
  self.Atmosphere_3rd_CAM = {}
  self.Atmosphere_4th_CAM = {}
  self.box_PhoneCommunicationController_20 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_20
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|14308699"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_20_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_89 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_89
  l0._graph = self
  l0._name = "box_MultipleOR_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|39238794"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_89_Out
  self.box_ListWriter_105 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_105
  l0._graph = self
  l0._name = "box_ListWriter_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|92690684"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_105_Added
  l0.Removed = self.f_box_ListWriter_105_Removed
  l0.Out = self.f_box_ListWriter_105_Out
  self.box_Security_Camera_Monitor_114 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_114
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|130336243"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_114_OnStartAccessCamera
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_114_OnEndAccessCamera
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_114_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_ListWriter_108 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_108
  l0._graph = self
  l0._name = "box_ListWriter_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|138675686"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_108_Added
  l0.Removed = self.f_box_ListWriter_108_Removed
  l0.Out = self.f_box_ListWriter_108_Out
  self.box_PhoneCommunicationController_75 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_75
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|154624301"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_75_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Perk_Controller_124 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_124
  l0._graph = self
  l0._name = "box_Perk_Controller_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|199889275"
  l0.PerkAdded = self.f_box_Perk_Controller_124_PerkAdded
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Hack_Gameplay_40 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_40
  l0._graph = self
  l0._name = "box_Hack_Gameplay_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|245173641"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_40_Hacked
  self.box_OnceOnly_v3_3 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_3
  l0._graph = self
  l0._name = "box_OnceOnly_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|294888972"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_3_Out
  l0.ResetOut = DummyFunction
  self.box_Security_Camera_Monitor_102 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_102
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|297008215"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_102_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_102_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_MissionMessageController_v3_64 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_64
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|367700809"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_77 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_77
  l0._graph = self
  l0._name = "box_HackableController_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|400900776"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_77_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_77_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionLayer_v2_11 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_11
  l0._graph = self
  l0._name = "box_MissionLayer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|406557100"
  l0.Loaded = self.f_box_MissionLayer_v2_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_59 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_59
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|502392697"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_S16M050_SCR_Main_38 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M050/s16m050_scr.S16M050_SCR_Main.debug.lua")
  l0 = self.box_S16M050_SCR_Main_38
  l0._graph = self
  l0._name = "box_S16M050_SCR_Main_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|527868359"
  l0.out = self.f_box_S16M050_SCR_Main_38_out
  l0.CaptainStressing_out = self.f_box_S16M050_SCR_Main_38_CaptainStressing_out
  l0.SpawnCaptain_out = self.f_box_S16M050_SCR_Main_38_SpawnCaptain_out
  self.box_HackableController_v2_76 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_76
  l0._graph = self
  l0._name = "box_HackableController_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|597240855"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_76_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_76_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PhoneCommunicationController_80 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_80
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|600876467"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_80_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_80_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Assign_Patrol_Controller_v2_72 = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_72
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|603530216"
  l0.Out = self.f_box_Assign_Patrol_Controller_v2_72_Out
  l0.Assigned = self.f_box_Assign_Patrol_Controller_v2_72_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self.box_ListWriter_107 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_107
  l0._graph = self
  l0._name = "box_ListWriter_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|631427459"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_107_Added
  l0.Removed = self.f_box_ListWriter_107_Removed
  l0.Out = self.f_box_ListWriter_107_Out
  self.box_HackableController_v2_92 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_92
  l0._graph = self
  l0._name = "box_HackableController_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|639263809"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_92_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_92_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PhoneCommunicationController_79 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_79
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|678413377"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_79_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_79_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_31 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_31
  l0._graph = self
  l0._name = "box_CLOController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|700475091"
  l0.Activated = self.f_box_CLOController_31_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_31_OnUserInPlace
  self.box_Perk_Controller_25 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_25
  l0._graph = self
  l0._name = "box_Perk_Controller_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|723025403"
  l0.PerkAdded = self.f_box_Perk_Controller_25_PerkAdded
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self.box_Hack_Gameplay_66 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_66
  l0._graph = self
  l0._name = "box_Hack_Gameplay_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|767783672"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_66_Hacked
  self.box_MissionCheckpointReach_18 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_18
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|770589194"
  l0.Out = self.f_box_MissionCheckpointReach_18_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Perk_Controller_23 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_23
  l0._graph = self
  l0._name = "box_Perk_Controller_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|788012400"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = self.f_box_Perk_Controller_23_PerkReseted
  self.box_LMA_Layer_Controller_15 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_15
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|795276797"
  l0.Loaded = self.f_box_LMA_Layer_Controller_15_Loaded
  l0.Unloaded = DummyFunction
  self.box_MultipleOR_27 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_27
  l0._graph = self
  l0._name = "box_MultipleOR_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|831418123"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_27_Out
  self.box_MultipleOR_47 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_47
  l0._graph = self
  l0._name = "box_MultipleOR_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|847830570"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_47_Out
  self.box_PhoneCommunicationController_46 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_46
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|863907061"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_46_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_45 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_45
  l0._graph = self
  l0._name = "box_CinematicPrep_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|904657827"
  l0.PreOut = self.f_box_CinematicPrep_45_PreOut
  l0.PostOut = DummyFunction
  self.box_PhoneCommunicationController_19 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_19
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|911995466"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_51 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_51
  l0._graph = self
  l0._name = "box_PlaySound_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|917314996"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_GetNPC_97 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_97
  l0._graph = self
  l0._name = "box_GetNPC_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|942051078"
  l0.GotNPCList = self.f_box_GetNPC_97_GotNPCList
  self.box_Timer_v2_35 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_35
  l0._graph = self
  l0._name = "box_Timer_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|959126096"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_35_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Teleport_To_SpawnPoint_16 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_16
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1014347146"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_16_TeleportDone
  self.box_Security_Camera_Monitor_103 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_103
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1046769616"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_103_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_103_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_MultipleOR_8 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1066075956"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_HackableController_v2_94 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_94
  l0._graph = self
  l0._name = "box_HackableController_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1070216148"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_94_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_26 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_26
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1074863420"
  l0.Out = self.f_box_MissionMessageController_v3_26_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_123 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_123
  l0._graph = self
  l0._name = "box_PlaySound_v2_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1077526900"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_106 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_106
  l0._graph = self
  l0._name = "box_ListWriter_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1124179232"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_106_Added
  l0.Removed = self.f_box_ListWriter_106_Removed
  l0.Out = self.f_box_ListWriter_106_Out
  self.box_Perk_Controller_125 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_125
  l0._graph = self
  l0._name = "box_Perk_Controller_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1145095437"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = self.f_box_Perk_Controller_125_PerkReseted
  self.box_MissionLayer_v2_17 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_17
  l0._graph = self
  l0._name = "box_MissionLayer_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1175367275"
  l0.Loaded = self.f_box_MissionLayer_v2_17_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MapPointController_v4_99 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_99
  l0._graph = self
  l0._name = "box_MapPointController_v4_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1184088368"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_99_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Timer_v2_54 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_54
  l0._graph = self
  l0._name = "box_Timer_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1195416401"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_54_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_87 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_87
  l0._graph = self
  l0._name = "box_CinematicPrep_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1196991128"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_87_PostOut
  self.box_OnceOnly_v3_73 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_73
  l0._graph = self
  l0._name = "box_OnceOnly_v3_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1206275965"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_73_Out
  l0.ResetOut = self.f_box_OnceOnly_v3_73_ResetOut
  self.box_PlaySound_v2_95 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_95
  l0._graph = self
  l0._name = "box_PlaySound_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1214369688"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Security_Camera_Monitor_98 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_98
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1223330420"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_98_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_98_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_OnceOnly_v3_119 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_119
  l0._graph = self
  l0._name = "box_OnceOnly_v3_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1237736641"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_119_Out
  l0.ResetOut = DummyFunction
  self.box_Security_Camera_Monitor_101 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_101
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1252733218"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_101_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_101_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_HackableController_v2_67 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_67
  l0._graph = self
  l0._name = "box_HackableController_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1281860409"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_67_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_67_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_9 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_9
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1335617949"
  l0.Out = self.f_box_MissionMessageController_v3_9_Out
  l0.MessageCompleted = DummyFunction
  self.box_S16M050_SCR_Main_93 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M050/s16m050_scr.S16M050_SCR_Main.debug.lua")
  l0 = self.box_S16M050_SCR_Main_93
  l0._graph = self
  l0._name = "box_S16M050_SCR_Main_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1344769457"
  l0.out = self.f_box_S16M050_SCR_Main_93_out
  l0.CaptainStressing_out = DummyFunction
  l0.SpawnCaptain_out = DummyFunction
  self.box_TriggerMonitor_v2_58 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_58
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1366299449"
  l0.Enabled = self.f_box_TriggerMonitor_v2_58_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_58_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_58_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_HackableController_v2_33 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_33
  l0._graph = self
  l0._name = "box_HackableController_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1386734188"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_33_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_33_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_126 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_126
  l0._graph = self
  l0._name = "box_Timer_v2_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1429919751"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_126_Started
  l0.Stopped = self.f_box_Timer_v2_126_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_126_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_42 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_42
  l0._graph = self
  l0._name = "box_Timer_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1431011456"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_42_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_37 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_37
  l0._graph = self
  l0._name = "box_Timer_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1447783583"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_37_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_32 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_32
  l0._graph = self
  l0._name = "box_CinematicPrep_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1469059509"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_32_PostOut
  self.box_HiddenCameraSetup_70 = cbox:CreateBox("domino/Library/common/HiddenCamera.HiddenCameraSetup.debug.lua")
  l0 = self.box_HiddenCameraSetup_70
  l0._graph = self
  l0._name = "box_HiddenCameraSetup_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1472475673"
  l0.Out = DummyFunction
  self.box_Hack_Gameplay_10 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_10
  l0._graph = self
  l0._name = "box_Hack_Gameplay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1505743812"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_10_Hacked
  self.box_PlaySound_v2_117 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_117
  l0._graph = self
  l0._name = "box_PlaySound_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1530712972"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_68 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_68
  l0._graph = self
  l0._name = "box_HackableController_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1536227399"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_68_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_68_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Hack_Gameplay_39 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_39
  l0._graph = self
  l0._name = "box_Hack_Gameplay_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1549638050"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_39_Hacked
  self.box_S16M050_SCR_Main_53 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M050/s16m050_scr.S16M050_SCR_Main.debug.lua")
  l0 = self.box_S16M050_SCR_Main_53
  l0._graph = self
  l0._name = "box_S16M050_SCR_Main_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1552904713"
  l0.out = DummyFunction
  l0.CaptainStressing_out = self.f_box_S16M050_SCR_Main_53_CaptainStressing_out
  l0.SpawnCaptain_out = DummyFunction
  self.box_Teleport_To_SpawnPoint_63 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_63
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1582352283"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_63_TeleportDone
  self.box_HackableController_v2_49 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_49
  l0._graph = self
  l0._name = "box_HackableController_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1590807316"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_49_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_49_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_69 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_69
  l0._graph = self
  l0._name = "box_CLOController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1614425880"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_69_OnUserInPlace
  self.box_MissionMessageController_v3_61 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_61
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1646505217"
  l0.Out = self.f_box_MissionMessageController_v3_61_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_60 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_60
  l0._graph = self
  l0._name = "box_OnceOnly_v3_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1667625200"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_60_Out
  l0.ResetOut = DummyFunction
  self.box_PhoneCommunicationController_22 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_22
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1731821489"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_22_OnCommunicationStarted
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_22_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_28 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_28
  l0._graph = self
  l0._name = "box_CinematicPrep_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1760877273"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_28_PostOut
  self.box_Multiple_AND_14 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_14
  l0._graph = self
  l0._name = "box_Multiple_AND_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1793720199"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_14_Out
  self.box_Mission_End_133 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_133
  l0._graph = self
  l0._name = "box_Mission_End_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1804199242"
  self.box_OnceOnly_v3_85 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_85
  l0._graph = self
  l0._name = "box_OnceOnly_v3_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1806008088"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_85_Out
  l0.ResetOut = DummyFunction
  self.box_MissionCheckpointReach_129 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_129
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1894353782"
  l0.Out = self.f_box_MissionCheckpointReach_129_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_HackableController_v2_62 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_62
  l0._graph = self
  l0._name = "box_HackableController_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1896223111"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_62_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_62_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1916509832"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_21 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_21
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1917179837"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_6 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_6
  l0._graph = self
  l0._name = "box_Timer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1921790997"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Toy_Car_Monitor_55 = cbox:CreateBox("domino/System/ToyCarMonitor.lua")
  l0 = self.box_Toy_Car_Monitor_55
  l0._graph = self
  l0._name = "box_Toy_Car_Monitor_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1990031891"
  l0.Enabled = self.f_box_Toy_Car_Monitor_55_Enabled
  l0.Disabled = DummyFunction
  l0.OnDetected = DummyFunction
  l0.OnHidden = DummyFunction
  l0.OnSpawned = DummyFunction
  l0.OnUnSpawned = DummyFunction
  l0.OnDestroyed = DummyFunction
  l0.IsConnected = self.f_box_Toy_Car_Monitor_55_IsConnected
  l0.IsDisconnected = DummyFunction
  l0.IsPickUp = DummyFunction
  l0.StunWasUsed = DummyFunction
  self.box_PlaySound_v2_120 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_120
  l0._graph = self
  l0._name = "box_PlaySound_v2_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2065643805"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_13 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_13
  l0._graph = self
  l0._name = "box_CinematicPrep_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2068022689"
  l0.PreOut = self.f_box_CinematicPrep_13_PreOut
  l0.PostOut = DummyFunction
  self.box_HackableController_v2_48 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_48
  l0._graph = self
  l0._name = "box_HackableController_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2130776477"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_48_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_48_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
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
  l0 = self.box_MissionLayer_v2_11
  l0.LayerName = "S16M050_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|684246434", "684246434", "S16M050_Main", "CheckPoint_0", "box_MissionLayer_v2_11.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_17
  l0.LayerName = "S16M050_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1223945553", "1223945553", "S16M050_Main", "CheckPoint_1", "box_MissionLayer_v2_17.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_Mission_End_133()
  l0 = self.box_Mission_End_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|710068255", "710068255", "S16M050_Main", "CheckPoint_2", "box_Mission_End_133.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S16M050_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|791668682", "791668682", "S16M050_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:Stop()
  local l0
  l0 = self.box_Perk_Controller_23
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|113494298", "113494298", "S16M050_Main", "Stop", "box_Perk_Controller_23.ResetPerks", self, l0)
  l0:ResetPerks()
end
function export:f_box_PhoneCommunicationController_20_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_26
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective030",
    item = "Objective",
    id = "345167"
  }
  l0 = self.box_PhoneCommunicationController_20
  l1 = self.box_MissionMessageController_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1799015583", "1799015583", "S16M050_Main", "box_PhoneCommunicationController_20.OnCommunicationFinished", "box_MissionMessageController_v3_26.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_89_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S17M010_NoMovement"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2003926025"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_34_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_MultipleOR_89
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1661886541", "1661886541", "S16M050_Main", "box_MultipleOR_89.Out", "box_SetActionMap_v2_34.Push", l0, l1)
  l1:Push()
end
function export:f_box_SecurityCamController_29_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_29()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1304527781", "1304527781", "S16M050_Main", "box_SecurityCamController_29.CanExitSet", "box_SecurityCamController_29.ForceUserOutOfCamera", clone, l0)
  l0:ForceUserOutOfCamera()
end
function export:f_box_SecurityCamController_29_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1022019208"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_116_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_116_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1372614949", "1372614949", "S16M050_Main", "box_SecurityCamController_29.UserForcedOutOfCamera", "box_Ordered_Output_116.In", clone, l0)
  l0:In()
end
function export:f_box_RemoteControlledVehicleController_50_UserForcedOutOfRC()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S16M05_NoSmartphone"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1910914452"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_56_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1554646941", "1554646941", "S16M050_Main", "box_RemoteControlledVehicleController_50.UserForcedOutOfRC", "box_SetActionMap_v2_56.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hack_Gameplay_39
  l0.Entity = "9223372046675047741"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1416759566", "1416759566", "S16M050_Main", "box_Ordered_Output_12.Out", "box_Hack_Gameplay_39.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hack_Gameplay_40
  l0.Entity = "9223372059747496663"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1769125086", "1769125086", "S16M050_Main", "box_Ordered_Output_12.Out", "box_Hack_Gameplay_40.Start", clone, l0)
  l0:Start()
end
function export:f_box_ListWriter_105_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_105
  self.Atmosphere_4th_CAM = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1287135557"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_112_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_112_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_112_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_112_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_112_Out_4
  l0 = self.box_ListWriter_105
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1288248061", "1288248061", "S16M050_Main", "box_ListWriter_105.Added", "box_Ordered_Output_112.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_105_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_105
  self.Atmosphere_4th_CAM = l0.Target
end
function export:f_box_ListWriter_105_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_105
  self.Atmosphere_4th_CAM = l0.Target
end
function export:f_box_Security_Camera_Monitor_114_OnEndAccessCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_47()
  l0 = self.box_Security_Camera_Monitor_114
  l1 = self.box_MultipleOR_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|363261646", "363261646", "S16M050_Main", "box_Security_Camera_Monitor_114.OnEndAccessCamera", "box_MultipleOR_47.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Security_Camera_Monitor_114_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_47()
  l0 = self.box_Security_Camera_Monitor_114
  l1 = self.box_MultipleOR_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1686142644", "1686142644", "S16M050_Main", "box_Security_Camera_Monitor_114.OnStartAccessCamera", "box_MultipleOR_47.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Security_Camera_Monitor_114_OnStartExitCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_73()
  l0 = self.box_Security_Camera_Monitor_114
  l1 = self.box_OnceOnly_v3_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1806354238", "1806354238", "S16M050_Main", "box_Security_Camera_Monitor_114.OnStartExitCamera", "box_OnceOnly_v3_73.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_ListWriter_108_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_108
  self.Atmosphere_Main_CAM = l0.Target
  l0 = self.box_ListWriter_107
  l0.Input = self.Atmosphere_2nd_CAM
  l0.Data[0] = "9223372065760408681"
  l0.Data[1] = "9223372065760408683"
  l0.Data[2] = "9223372065760408687"
  l0.Data[3] = "9223372071013923793"
  l0.Data[4] = "9223372071013923801"
  l0.Data[5] = "9223372071013923799"
  l0 = self.box_ListWriter_108
  l1 = self.box_ListWriter_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|288514603", "288514603", "S16M050_Main", "box_ListWriter_108.Added", "box_ListWriter_107.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_108_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_108
  self.Atmosphere_Main_CAM = l0.Target
end
function export:f_box_ListWriter_108_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_108
  self.Atmosphere_Main_CAM = l0.Target
end
function export:f_box_MaterialController_88_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_119()
  l0 = self.box_OnceOnly_v3_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1388228214", "1388228214", "S16M050_Main", "box_MaterialController_88.ByIndexSet", "box_OnceOnly_v3_119.In", clone, l0)
  l0:In(1)
end
function export:f_box_PhoneCommunicationController_75_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_114()
  l0 = self.box_PhoneCommunicationController_75
  l1 = self.box_Security_Camera_Monitor_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|83673758", "83673758", "S16M050_Main", "box_PhoneCommunicationController_75.OnCommunicationFinished", "box_Security_Camera_Monitor_114.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SecurityCamController_7_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S09M020_NoNethack"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|821848012"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_91_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1879250378", "1879250378", "S16M050_Main", "box_SecurityCamController_7.CanExitSet", "box_SetActionMap_v2_91.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_SecurityCamController_7_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_7()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|286961629", "286961629", "S16M050_Main", "box_SecurityCamController_7.EnterForced", "box_SecurityCamController_7.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_Perk_Controller_124_PerkAdded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_129
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_Perk_Controller_124
  l1 = self.box_MissionCheckpointReach_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|780638875", "780638875", "S16M050_Main", "box_Perk_Controller_124.PerkAdded", "box_MissionCheckpointReach_129.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_15
  l0.LMALayerName = "Barge_LMA"
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_LMA_Layer_Controller_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1493837142", "1493837142", "S16M050_Main", "box_MissionLayer_v2_2.Loaded", "box_LMA_Layer_Controller_15.Load", l0, l1)
  l1:Load()
end
function export:f_box_Hack_Gameplay_40_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_80
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825662"
  l0 = self.box_Hack_Gameplay_40
  l1 = self.box_PhoneCommunicationController_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|4081919", "4081919", "S16M050_Main", "box_Hack_Gameplay_40.Hacked", "box_PhoneCommunicationController_80.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_OnceOnly_v3_3_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_126()
  l0 = self.box_OnceOnly_v3_3
  l1 = self.box_Timer_v2_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1918302633", "1918302633", "S16M050_Main", "box_OnceOnly_v3_3.Out", "box_Timer_v2_126.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_102_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_110()
  l0 = self.box_Security_Camera_Monitor_102
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|75922329", "75922329", "S16M050_Main", "box_Security_Camera_Monitor_102.OnStartAccessCamera", "box_VisibilityController_v2_110.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Security_Camera_Monitor_102_OnStartExitCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_110()
  l0 = self.box_Security_Camera_Monitor_102
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1269572043", "1269572043", "S16M050_Main", "box_Security_Camera_Monitor_102.OnStartExitCamera", "box_VisibilityController_v2_110.Show", l0, l1)
  l1:Show()
end
function export:f_box_SetActionMap_v2_90_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1699214675"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_127_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_127_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|563098206", "563098206", "S16M050_Main", "box_SetActionMap_v2_90.Pushed", "box_Ordered_Output_127.In", clone, l0)
  l0:In()
end
function export:f_box_DPad_Hackable_Controller_4_Added()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_5
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1080793731", "1080793731", "S16M050_Main", "box_DPad_Hackable_Controller_4.Added", "box_Timer_v2_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_77_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_77()
  l0 = self.box_HackableController_v2_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|156390152", "156390152", "S16M050_Main", "box_HackableController_v2_77.Disabled", "box_HackableController_v2_77.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_77_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_62()
  l0 = self.box_HackableController_v2_77
  l1 = self.box_HackableController_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|735470460", "735470460", "S16M050_Main", "box_HackableController_v2_77.ProfilingDisabled", "box_HackableController_v2_62.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Ordered_Output_118_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_94
  l0.HackableEntity = self.RC_barge
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1595322359", "1595322359", "S16M050_Main", "box_Ordered_Output_118.Out", "box_HackableController_v2_94.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_118_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_117
  l0.SoundId = "soundbinary/829932899.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1724636754", "1724636754", "S16M050_Main", "box_Ordered_Output_118.Out", "box_PlaySound_v2_117.Play", clone, l0)
  l0:Play()
end
function export:f_box_MissionLayer_v2_11_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_89()
  l0 = self.box_MissionLayer_v2_11
  l1 = self.box_MultipleOR_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2078512771", "2078512771", "S16M050_Main", "box_MissionLayer_v2_11.Loaded", "box_MultipleOR_89.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_130_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_108
  l0.Input = self.Atmosphere_Main_CAM
  l0.Data[0] = "9223372065760408681"
  l0.Data[1] = "9223372065760408683"
  l0.Data[2] = "9223372065760408685"
  l0.Data[3] = "9223372071013923795"
  l0.Data[4] = "9223372071013923801"
  l0.Data[5] = "9223372071013923799"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|221731121", "221731121", "S16M050_Main", "box_Ordered_Output_130.Out", "box_ListWriter_108.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_130_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257058"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|593377932"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1185200357", "1185200357", "S16M050_Main", "box_Ordered_Output_130.Out", "box_SmartphoneAppController_131.SetHidden", clone, l0)
  l0:SetHidden()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_84_ActivatedPlayOnBinkChannel()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Controller_84()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|169709506", "169709506", "S16M050_Main", "box_Media_System_Custom_Broadcast_Controller_84.ActivatedPlayOnBinkChannel", "box_Media_System_Custom_Broadcast_Controller_84.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_Ordered_Output_82_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_119()
  l0 = self.box_OnceOnly_v3_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1278793758", "1278793758", "S16M050_Main", "box_Ordered_Output_82.Out", "box_OnceOnly_v3_119.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_82_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S16M050_SCR_Main_53
  l0.Captain_In = self.Captain
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1531916019", "1531916019", "S16M050_Main", "box_Ordered_Output_82.Out", "box_S16M050_SCR_Main_53.In_CaptainReact", clone, l0)
  l0:In_CaptainReact()
end
function export:f_box_SmartphoneAppController_132_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_32
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2036830385", "2036830385", "S16M050_Main", "box_SmartphoneAppController_132.InstalledSet", "box_CinematicPrep_32.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_S16M050_SCR_Main_38_CaptainStressing_out()
  local l0
  self = self._graph
  l0 = self.box_S16M050_SCR_Main_38
  self.Captain = l0.Captain_Out
end
function export:f_box_S16M050_SCR_Main_38_out()
  local l0
  self = self._graph
  l0 = self.box_S16M050_SCR_Main_38
  self.Captain = l0.Captain_Out
end
function export:f_box_S16M050_SCR_Main_38_SpawnCaptain_out()
  local l0, l1
  self = self._graph
  l0 = self.box_S16M050_SCR_Main_38
  self.Captain = l0.Captain_Out
  l1 = self.box_GetNPC_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1906614056", "1906614056", "S16M050_Main", "box_S16M050_SCR_Main_38.SpawnCaptain_out", "box_GetNPC_97.GetAllAlive", l0, l1)
  l1:GetAllAlive()
end
function export:f_box_HackableController_v2_76_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_76()
  l0 = self.box_HackableController_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1469794737", "1469794737", "S16M050_Main", "box_HackableController_v2_76.Disabled", "box_HackableController_v2_76.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_76_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_68()
  l0 = self.box_HackableController_v2_76
  l1 = self.box_HackableController_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1398885407", "1398885407", "S16M050_Main", "box_HackableController_v2_76.ProfilingDisabled", "box_HackableController_v2_68.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PhoneCommunicationController_80_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_14()
  l0 = self.box_PhoneCommunicationController_80
  l1 = self.box_Multiple_AND_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2026924427", "2026924427", "S16M050_Main", "box_PhoneCommunicationController_80.OnCommunicationFinished", "box_Multiple_AND_14.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_PhoneCommunicationController_80_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_64
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective021",
    item = "SubObjective1",
    id = "693250"
  }
  l0 = self.box_PhoneCommunicationController_80
  l1 = self.box_MissionMessageController_v3_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|601915210", "601915210", "S16M050_Main", "box_PhoneCommunicationController_80.StartCommunicationOut", "box_MissionMessageController_v3_64.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Assign_Patrol_Controller_v2_72_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_HiddenCameraSetup_70
  l0.NPC = self.AI_check_hacker
  l0.HiddenCamera = "9223372052441885552"
  l0 = self.box_Assign_Patrol_Controller_v2_72
  l1 = self.box_HiddenCameraSetup_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1714066353", "1714066353", "S16M050_Main", "box_Assign_Patrol_Controller_v2_72.Assigned", "box_HiddenCameraSetup_70.In", l0, l1)
  l1:In()
end
function export:f_box_Assign_Patrol_Controller_v2_72_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Assign_Patrol_Controller_v2_72
  l1 = self.box_S16M050_SCR_Main_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|146996680", "146996680", "S16M050_Main", "box_Assign_Patrol_Controller_v2_72.Out", "box_S16M050_SCR_Main_38.SpawnCaptain", l0, l1)
  l1:SpawnCaptain()
end
function export:f_box_ListWriter_107_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_107
  self.Atmosphere_2nd_CAM = l0.Target
  l0 = self.box_ListWriter_106
  l0.Input = self.Atmosphere_3rd_CAM
  l0.Data[0] = "9223372065760408681"
  l0.Data[1] = "9223372065760408685"
  l0.Data[2] = "9223372065760408687"
  l0.Data[3] = "9223372071013923793"
  l0.Data[4] = "9223372071013923795"
  l0.Data[5] = "9223372071013923799"
  l0 = self.box_ListWriter_107
  l1 = self.box_ListWriter_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2079602357", "2079602357", "S16M050_Main", "box_ListWriter_107.Added", "box_ListWriter_106.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_107_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_107
  self.Atmosphere_2nd_CAM = l0.Target
end
function export:f_box_ListWriter_107_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_107
  self.Atmosphere_2nd_CAM = l0.Target
end
function export:f_box_HackableController_v2_92_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_92()
  l0 = self.box_HackableController_v2_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1072730798", "1072730798", "S16M050_Main", "box_HackableController_v2_92.Disabled", "box_HackableController_v2_92.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_92_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_31
  l0.CLO = "9223372047363201533"
  l0 = self.box_HackableController_v2_92
  l1 = self.box_CLOController_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1254978550", "1254978550", "S16M050_Main", "box_HackableController_v2_92.ProfilingDisabled", "box_CLOController_31.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PhoneCommunicationController_79_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_14()
  l0 = self.box_PhoneCommunicationController_79
  l1 = self.box_Multiple_AND_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2113073876", "2113073876", "S16M050_Main", "box_PhoneCommunicationController_79.OnCommunicationFinished", "box_Multiple_AND_14.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_PhoneCommunicationController_79_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_21
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective020",
    item = "SubObjective2",
    id = "345166"
  }
  l0 = self.box_PhoneCommunicationController_79
  l1 = self.box_MissionMessageController_v3_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1676295004", "1676295004", "S16M050_Main", "box_PhoneCommunicationController_79.StartCommunicationOut", "box_MissionMessageController_v3_21.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_CLOController_31_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_31
  l1 = self.box_Toy_Car_Monitor_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|207834738", "207834738", "S16M050_Main", "box_CLOController_31.Activated", "box_Toy_Car_Monitor_55.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_31_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_31
  self.RC_barge = l0.UserID
end
function export:f_box_Perk_Controller_25_PerkAdded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_Perk_Controller_25
  l1 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1516808672", "1516808672", "S16M050_Main", "box_Perk_Controller_25.PerkAdded", "box_MultipleOR_27.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Hack_Gameplay_66_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1389800112"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_115_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_115_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_115_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_115_Out_3
  l0 = self.box_Hack_Gameplay_66
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|583347158", "583347158", "S16M050_Main", "box_Hack_Gameplay_66.Hacked", "box_Ordered_Output_115.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_18_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|409002875"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_130_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_130_Out_1
  l0 = self.box_MissionCheckpointReach_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1789428519", "1789428519", "S16M050_Main", "box_MissionCheckpointReach_18.Out", "box_Ordered_Output_130.In", l0, l1)
  l1:In()
end
function export:f_box_Perk_Controller_23_PerkReseted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257058"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1204102284"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0 = self.box_Perk_Controller_23
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1396830126", "1396830126", "S16M050_Main", "box_Perk_Controller_23.PerkReseted", "box_SmartphoneAppController_24.SetInstalled", l0, l1)
  l1:SetInstalled()
end
function export:f_box_LMA_Layer_Controller_15_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_89()
  l0 = self.box_LMA_Layer_Controller_15
  l1 = self.box_MultipleOR_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|877550868", "877550868", "S16M050_Main", "box_LMA_Layer_Controller_15.Loaded", "box_MultipleOR_89.Input", l0, l1)
  l1:Input(0)
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
  l0 = self.box_Perk_Controller_124
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2130411920", "2130411920", "S16M050_Main", "box_Get_Player_ID_1.Out", "box_Perk_Controller_124.AddPerk", clone, l0)
  l0:AddPerk()
end
function export:f_box_SetActionMap_v2_91_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S16M05_NoSmartphone"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1656296053"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_30_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|25001171", "25001171", "S16M050_Main", "box_SetActionMap_v2_91.Popped", "box_SetActionMap_v2_30.Push", clone, l0)
  l0:Push()
end
function export:f_box_MultipleOR_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_18
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_27
  l1 = self.box_MissionCheckpointReach_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|880278396", "880278396", "S16M050_Main", "box_MultipleOR_27.Out", "box_MissionCheckpointReach_18.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_47_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_73()
  l0 = self.box_MultipleOR_47
  l1 = self.box_OnceOnly_v3_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1610191883", "1610191883", "S16M050_Main", "box_MultipleOR_47.Out", "box_OnceOnly_v3_73.In", l0, l1)
  l1:In(0)
end
function export:f_box_PhoneCommunicationController_46_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_9
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective030",
    item = "Objective",
    id = "345167"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective020",
    item = "SubObjective2",
    id = "345166"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective021",
    item = "SubObjective1",
    id = "693250"
  }
  l0 = self.box_PhoneCommunicationController_46
  l1 = self.box_MissionMessageController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|203132721", "203132721", "S16M050_Main", "box_PhoneCommunicationController_46.OnCommunicationStarted", "box_MissionMessageController_v3_9.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_CinematicPrep_45_PreOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_29()
  l0 = self.box_CinematicPrep_45
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1464564550", "1464564550", "S16M050_Main", "box_CinematicPrep_45.PreOut", "box_SecurityCamController_29.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_GetNPC_97_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_97
  self.AI_Barge_list = l0.NPCList
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = nil
  l0.HackableEntityList = self.AI_Barge_list
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0.HackCategoryType[2] = nil
  l0.HackCategoryType[3] = nil
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1402099560"
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_box_DPad_Hackable_Controller_96_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0 = self.box_GetNPC_97
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2106662251", "2106662251", "S16M050_Main", "box_GetNPC_97.GotNPCList", "box_DPad_Hackable_Controller_96.RemoveAll", l0, l1)
  l1:RemoveAll()
end
function export:f_box_SetActionMap_v2_36_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_To_SpawnPoint_63
  l0.SpawnPoint = "9223372046675048218"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485445"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1169524466", "1169524466", "S16M050_Main", "box_SetActionMap_v2_36.Popped", "box_Teleport_To_SpawnPoint_63.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_35_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_61
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective010",
    item = "Objective",
    id = "345165"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_Timer_v2_35
  l1 = self.box_MissionMessageController_v3_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2108445512", "2108445512", "S16M050_Main", "box_Timer_v2_35.TimeElapsed", "box_MissionMessageController_v3_61.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Teleport_To_SpawnPoint_16_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_42
  l0.Seconds = 2
  l0 = self.box_Teleport_To_SpawnPoint_16
  l1 = self.box_Timer_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1733357084", "1733357084", "S16M050_Main", "box_Teleport_To_SpawnPoint_16.TeleportDone", "box_Timer_v2_42.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_116_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  l0.UserEntity = nil
  l0.RCEntity = self.RC_barge
  l0.CanExit = nil
  l0._graph = self
  l0._name = "box_RemoteControlledVehicleController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|59487917"
  l0.Out = DummyFunction
  l0.UserForcedOutOfRC = self.f_box_RemoteControlledVehicleController_50_UserForcedOutOfRC
  l0.CanExitChanged = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1441175245", "1441175245", "S16M050_Main", "box_Ordered_Output_116.Out", "box_RemoteControlledVehicleController_50.ForceUserOutOfRC", clone, l0)
  l0:ForceUserOutOfRC()
end
function export:f_box_Ordered_Output_116_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_95
  l0.SoundId = "soundbinary/1170897341.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2037066553", "2037066553", "S16M050_Main", "box_Ordered_Output_116.Out", "box_PlaySound_v2_95.Play", clone, l0)
  l0:Play()
end
function export:f_box_Security_Camera_Monitor_103_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_111()
  l0 = self.box_Security_Camera_Monitor_103
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|325686964", "325686964", "S16M050_Main", "box_Security_Camera_Monitor_103.OnStartAccessCamera", "box_VisibilityController_v2_111.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Security_Camera_Monitor_103_OnStartExitCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_111()
  l0 = self.box_Security_Camera_Monitor_103
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1990196177", "1990196177", "S16M050_Main", "box_Security_Camera_Monitor_103.OnStartExitCamera", "box_VisibilityController_v2_111.Show", l0, l1)
  l1:Show()
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BinkVideoPlayer_v3_78()
  l0 = self.box_MultipleOR_8
  l1 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2138729756", "2138729756", "S16M050_Main", "box_MultipleOR_8.Out", "box_BinkVideoPlayer_v3_78.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_94_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_22
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825668"
  l0 = self.box_HackableController_v2_94
  l1 = self.box_PhoneCommunicationController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2121730364", "2121730364", "S16M050_Main", "box_HackableController_v2_94.Disabled", "box_PhoneCommunicationController_22.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMessageController_v3_26_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Hack_Gameplay_10
  l0.Entity = "9223372059747499289"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0 = self.box_MissionMessageController_v3_26
  l1 = self.box_Hack_Gameplay_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|839099395", "839099395", "S16M050_Main", "box_MissionMessageController_v3_26.Out", "box_Hack_Gameplay_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_121_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_7()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|921096096", "921096096", "S16M050_Main", "box_Ordered_Output_121.Out", "box_SecurityCamController_7.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_Ordered_Output_121_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_120
  l0.SoundId = "soundbinary/641832591.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1901851438", "1901851438", "S16M050_Main", "box_Ordered_Output_121.Out", "box_PlaySound_v2_120.Play", clone, l0)
  l0:Play()
end
function export:f_box_ListWriter_106_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_106
  self.Atmosphere_3rd_CAM = l0.Target
  l0 = self.box_ListWriter_105
  l0.Input = self.Atmosphere_4th_CAM
  l0.Data[0] = "9223372065760408683"
  l0.Data[1] = "9223372065760408685"
  l0.Data[2] = "9223372065760408687"
  l0.Data[3] = "9223372071013923793"
  l0.Data[4] = "9223372071013923795"
  l0.Data[5] = "9223372071013923801"
  l0 = self.box_ListWriter_106
  l1 = self.box_ListWriter_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|474728104", "474728104", "S16M050_Main", "box_ListWriter_106.Added", "box_ListWriter_105.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_106_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_106
  self.Atmosphere_3rd_CAM = l0.Target
end
function export:f_box_ListWriter_106_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_106
  self.Atmosphere_3rd_CAM = l0.Target
end
function export:f_box_Perk_Controller_125_PerkReseted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257058"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|456921672"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_132_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0 = self.box_Perk_Controller_125
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|175197173", "175197173", "S16M050_Main", "box_Perk_Controller_125.PerkReseted", "box_SmartphoneAppController_132.SetInstalled", l0, l1)
  l1:SetInstalled()
end
function export:f_box_MissionLayer_v2_17_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Perk_Controller_25
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  l0 = self.box_MissionLayer_v2_17
  l1 = self.box_Perk_Controller_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|719883611", "719883611", "S16M050_Main", "box_MissionLayer_v2_17.Loaded", "box_Perk_Controller_25.AddPerk", l0, l1)
  l1:AddPerk()
end
function export:f_box_MapPointController_v4_99_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_6
  l0.Seconds = 2
  l0 = self.box_MapPointController_v4_99
  l1 = self.box_Timer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1769735141", "1769735141", "S16M050_Main", "box_MapPointController_v4_99.Hidden", "box_Timer_v2_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_54_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372063154542486"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|148536277"
  l0.ByIndexSet = self.f_box_MaterialController_88_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0 = self.box_Timer_v2_54
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|389803350", "389803350", "S16M050_Main", "box_Timer_v2_54.TimeElapsed", "box_MaterialController_88.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_CinematicPrep_87_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_87
  l1 = self.box_Timer_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2123812617", "2123812617", "S16M050_Main", "box_CinematicPrep_87.PostOut", "box_Timer_v2_35.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_73_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_66()
  l0 = self.box_OnceOnly_v3_73
  l1 = self.box_Hack_Gameplay_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1933200042", "1933200042", "S16M050_Main", "box_OnceOnly_v3_73.Out", "box_Hack_Gameplay_66.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_73_ResetOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_66()
  l0 = self.box_OnceOnly_v3_73
  l1 = self.box_Hack_Gameplay_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1464140211", "1464140211", "S16M050_Main", "box_OnceOnly_v3_73.ResetOut", "box_Hack_Gameplay_66.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Security_Camera_Monitor_98_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_104()
  l0 = self.box_Security_Camera_Monitor_98
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|511120274", "511120274", "S16M050_Main", "box_Security_Camera_Monitor_98.OnStartAccessCamera", "box_VisibilityController_v2_104.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Security_Camera_Monitor_98_OnStartExitCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_104()
  l0 = self.box_Security_Camera_Monitor_98
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|706273951", "706273951", "S16M050_Main", "box_Security_Camera_Monitor_98.OnStartExitCamera", "box_VisibilityController_v2_104.Show", l0, l1)
  l1:Show()
end
function export:f_box_OnceOnly_v3_119_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_51
  l0.SoundId = "soundbinary/536467250.bnk"
  l0 = self.box_OnceOnly_v3_119
  l1 = self.box_PlaySound_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|978279616", "978279616", "S16M050_Main", "box_OnceOnly_v3_119.Out", "box_PlaySound_v2_51.Play", l0, l1)
  l1:Play()
end
function export:f_box_Security_Camera_Monitor_101_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_109()
  l0 = self.box_Security_Camera_Monitor_101
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|723313738", "723313738", "S16M050_Main", "box_Security_Camera_Monitor_101.OnStartAccessCamera", "box_VisibilityController_v2_109.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Security_Camera_Monitor_101_OnStartExitCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_109()
  l0 = self.box_Security_Camera_Monitor_101
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1374086795", "1374086795", "S16M050_Main", "box_Security_Camera_Monitor_101.OnStartExitCamera", "box_VisibilityController_v2_109.Show", l0, l1)
  l1:Show()
end
function export:f_box_HackableController_v2_67_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_67()
  l0 = self.box_HackableController_v2_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1347399633", "1347399633", "S16M050_Main", "box_HackableController_v2_67.Disabled", "box_HackableController_v2_67.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_67_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_76()
  l0 = self.box_HackableController_v2_67
  l1 = self.box_HackableController_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2128984243", "2128984243", "S16M050_Main", "box_HackableController_v2_67.ProfilingDisabled", "box_HackableController_v2_76.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Ordered_Output_112_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Atmosphere_3rd_CAM
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1664060026"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_113_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1885881684", "1885881684", "S16M050_Main", "box_Ordered_Output_112.Out", "box_VisibilityController_v2_113.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_112_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_98
  l0.CameraEntity = "9223372065760408673"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|413656480", "413656480", "S16M050_Main", "box_Ordered_Output_112.Out", "box_Security_Camera_Monitor_98.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_112_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_101
  l0.CameraEntity = "9223372065760408675"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1962356172", "1962356172", "S16M050_Main", "box_Ordered_Output_112.Out", "box_Security_Camera_Monitor_101.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_112_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_102
  l0.CameraEntity = "9223372065760408677"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|81153220", "81153220", "S16M050_Main", "box_Ordered_Output_112.Out", "box_Security_Camera_Monitor_102.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_112_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_103
  l0.CameraEntity = "9223372065760408679"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1688934969", "1688934969", "S16M050_Main", "box_Ordered_Output_112.Out", "box_Security_Camera_Monitor_103.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMessageController_v3_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|65328046"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0 = self.box_MissionMessageController_v3_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|58977487", "58977487", "S16M050_Main", "box_MissionMessageController_v3_9.Out", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_S16M050_SCR_Main_93_out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S17M010_NoMovement"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|949813901"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_36_Popped
  l0 = self.box_S16M050_SCR_Main_93
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|649189595", "649189595", "S16M050_Main", "box_S16M050_SCR_Main_93.out", "box_SetActionMap_v2_36.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_TriggerMonitor_v2_58_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_58
  l1 = self.box_OnceOnly_v3_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|15181347", "15181347", "S16M050_Main", "box_TriggerMonitor_v2_58.Disabled", "box_OnceOnly_v3_60.In", l0, l1)
  l1:In(0)
end
function export:f_box_TriggerMonitor_v2_58_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Toy_Car_Controller_52()
  l0 = self.box_TriggerMonitor_v2_58
  l1 = Boxes[PathID("domino/System/ToyCarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|661389586", "661389586", "S16M050_Main", "box_TriggerMonitor_v2_58.Enabled", "box_Toy_Car_Controller_52.MakeDisconnectUnavailable", l0, l1)
  l1:MakeDisconnectUnavailable()
end
function export:f_box_TriggerMonitor_v2_58_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_58()
  l0 = self.box_TriggerMonitor_v2_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1898451230", "1898451230", "S16M050_Main", "box_TriggerMonitor_v2_58.Enter", "box_TriggerMonitor_v2_58.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_HackableController_v2_33_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_33()
  l0 = self.box_HackableController_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|558713291", "558713291", "S16M050_Main", "box_HackableController_v2_33.Disabled", "box_HackableController_v2_33.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_33_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_28
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_33
  l1 = self.box_CinematicPrep_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1199548648", "1199548648", "S16M050_Main", "box_HackableController_v2_33.ProfilingDisabled", "box_CinematicPrep_28.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_115_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1532878979"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_41_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|642043129", "642043129", "S16M050_Main", "box_Ordered_Output_115.Out", "box_Show_Or_Hide_All_UI_41.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_115_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_114()
  l0 = self.box_Security_Camera_Monitor_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1202528358", "1202528358", "S16M050_Main", "box_Ordered_Output_115.Out", "box_Security_Camera_Monitor_114.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_115_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372063485543539"
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1775958850"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_86_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1669693888", "1669693888", "S16M050_Main", "box_Ordered_Output_115.Out", "box_Dynamic_Media_Controller_86.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_115_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_126()
  l0 = self.box_Timer_v2_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|2043883644", "2043883644", "S16M050_Main", "box_Ordered_Output_115.Out", "box_Timer_v2_126.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_DPad_Hackable_Controller_96_RemovedAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = nil
  l0.HackableEntityList = self.AI_Barge_list
  l0.HackCategoryType[0] = "Contextual"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|366202277"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = self.f_box_DPad_Hackable_Controller_4_Added
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1850530669", "1850530669", "S16M050_Main", "box_DPad_Hackable_Controller_96.RemovedAll", "box_DPad_Hackable_Controller_4.Add", clone, l0)
  l0:Add()
end
function export:f_box_Timer_v2_126_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_Timer_v2_126
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|714704065", "714704065", "S16M050_Main", "box_Timer_v2_126.Started", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_126_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BinkVideoPlayer_v3_78()
  l0 = self.box_Timer_v2_126
  l1 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|782438636", "782438636", "S16M050_Main", "box_Timer_v2_126.Stopped", "box_BinkVideoPlayer_v3_78.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Timer_v2_126_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_Timer_v2_126
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1940035366", "1940035366", "S16M050_Main", "box_Timer_v2_126.TimeElapsed", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_42_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Perk_Controller_125
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  l0 = self.box_Timer_v2_42
  l1 = self.box_Perk_Controller_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|94966049", "94966049", "S16M050_Main", "box_Timer_v2_42.TimeElapsed", "box_Perk_Controller_125.ResetPerks", l0, l1)
  l1:ResetPerks()
end
function export:f_box_Timer_v2_37_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_87
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_37
  l1 = self.box_CinematicPrep_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|102099092", "102099092", "S16M050_Main", "box_Timer_v2_37.TimeElapsed", "box_CinematicPrep_87.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CinematicPrep_32_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_133()
  l0 = self.box_CinematicPrep_32
  l1 = self.box_Mission_End_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|769395674", "769395674", "S16M050_Main", "box_CinematicPrep_32.PostOut", "box_Mission_End_133.End", l0, l1)
  l1:End()
end
function export:f_box_Hack_Gameplay_10_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|405638394"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_118_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_118_Out_1
  l0 = self.box_Hack_Gameplay_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1346621621", "1346621621", "S16M050_Main", "box_Hack_Gameplay_10.Hacked", "box_Ordered_Output_118.In", l0, l1)
  l1:In()
end
function export:f_box_Show_Or_Hide_All_UI_41_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_13
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1697819681", "1697819681", "S16M050_Main", "box_Show_Or_Hide_All_UI_41.Hidden", "box_CinematicPrep_13.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_SecurityCamController_83_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S09M020_NoNethack"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|364976274"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_90_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|121768046", "121768046", "S16M050_Main", "box_SecurityCamController_83.CanExitSet", "box_SetActionMap_v2_90.Push", clone, l0)
  l0:Push()
end
function export:f_box_SecurityCamController_83_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_83()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1122771323", "1122771323", "S16M050_Main", "box_SecurityCamController_83.EnterForced", "box_SecurityCamController_83.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_HackableController_v2_68_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_68()
  l0 = self.box_HackableController_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|513844298", "513844298", "S16M050_Main", "box_HackableController_v2_68.Disabled", "box_HackableController_v2_68.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_68_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_77()
  l0 = self.box_HackableController_v2_68
  l1 = self.box_HackableController_v2_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1618437067", "1618437067", "S16M050_Main", "box_HackableController_v2_68.ProfilingDisabled", "box_HackableController_v2_77.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Hack_Gameplay_39_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_79
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825660"
  l0 = self.box_Hack_Gameplay_39
  l1 = self.box_PhoneCommunicationController_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|607869477", "607869477", "S16M050_Main", "box_Hack_Gameplay_39.Hacked", "box_PhoneCommunicationController_79.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_S16M050_SCR_Main_53_CaptainStressing_out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_45
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_S16M050_SCR_Main_53
  l1 = self.box_CinematicPrep_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|85409911", "85409911", "S16M050_Main", "box_S16M050_SCR_Main_53.CaptainStressing_out", "box_CinematicPrep_45.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_Teleport_To_SpawnPoint_63_TeleportDone()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_Teleport_To_SpawnPoint_63
  l1 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1669730197", "1669730197", "S16M050_Main", "box_Teleport_To_SpawnPoint_63.TeleportDone", "box_MultipleOR_27.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Toy_Car_Controller_52_CallBackUnavailable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|674900830", "674900830", "S16M050_Main", "box_Toy_Car_Controller_52.CallBackUnavailable", "box_OnceOnly_v3_85.In", clone, l0)
  l0:In(0)
end
function export:f_box_Toy_Car_Controller_52_DisconnectUnavailable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Toy_Car_Controller_52()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|699359187", "699359187", "S16M050_Main", "box_Toy_Car_Controller_52.DisconnectUnavailable", "box_Toy_Car_Controller_52.MakeCallBackUnavailable", clone, l0)
  l0:MakeCallBackUnavailable()
end
function export:f_box_HackableController_v2_49_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_49()
  l0 = self.box_HackableController_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1215846665", "1215846665", "S16M050_Main", "box_HackableController_v2_49.Disabled", "box_HackableController_v2_49.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_49_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_67()
  l0 = self.box_HackableController_v2_49
  l1 = self.box_HackableController_v2_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1236061211", "1236061211", "S16M050_Main", "box_HackableController_v2_49.ProfilingDisabled", "box_HackableController_v2_67.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_CLOController_69_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_69
  self.AI_check_hacker = l0.UserID
  l0 = self.box_Assign_Patrol_Controller_v2_72
  l0.NPC = self.AI_check_hacker
  l0.Patrol = "9223372048044195401"
  l0 = self.box_CLOController_69
  l1 = self.box_Assign_Patrol_Controller_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|348293486", "348293486", "S16M050_Main", "box_CLOController_69.OnUserInPlace", "box_Assign_Patrol_Controller_v2_72.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_MissionMessageController_v3_61_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_75
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825629"
  l0 = self.box_MissionMessageController_v3_61
  l1 = self.box_PhoneCommunicationController_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|815522736", "815522736", "S16M050_Main", "box_MissionMessageController_v3_61.Out", "box_PhoneCommunicationController_75.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_SetActionMap_v2_30_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_92()
  l0 = self.box_HackableController_v2_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1548749977", "1548749977", "S16M050_Main", "box_SetActionMap_v2_30.Pushed", "box_HackableController_v2_92.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Show_Or_Hide_All_UI_43_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_46
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825631"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1677886362", "1677886362", "S16M050_Main", "box_Show_Or_Hide_All_UI_43.Shown", "box_PhoneCommunicationController_46.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_VisibilityController_v2_113_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1961859669"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_122_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_122_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|190593927", "190593927", "S16M050_Main", "box_VisibilityController_v2_113.Hidden", "box_Ordered_Output_122.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_60_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_59
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825658"
  l0 = self.box_OnceOnly_v3_60
  l1 = self.box_PhoneCommunicationController_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1784996302", "1784996302", "S16M050_Main", "box_OnceOnly_v3_60.Out", "box_PhoneCommunicationController_59.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_127_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_37
  l0.Seconds = 1.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|161818180", "161818180", "S16M050_Main", "box_Ordered_Output_127.Out", "box_Timer_v2_37.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_127_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1581319497", "1581319497", "S16M050_Main", "box_Ordered_Output_127.Out", "box_OnceOnly_v3_3.In", clone, l0)
  l0:In(0)
end
function export:f_box_SecurityCamController_100_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_100()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1132798341", "1132798341", "S16M050_Main", "box_SecurityCamController_100.CanExitSet", "box_SecurityCamController_100.ForceUserOutOfCamera", clone, l0)
  l0:ForceUserOutOfCamera()
end
function export:f_box_SecurityCamController_100_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_99
  l0.MapPoint = "9223372048548780762"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|202732492", "202732492", "S16M050_Main", "box_SecurityCamController_100.UserForcedOutOfCamera", "box_MapPointController_v4_99.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_PhoneCommunicationController_22_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|440481684"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_82_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_82_Out_1
  l0 = self.box_PhoneCommunicationController_22
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1091600880", "1091600880", "S16M050_Main", "box_PhoneCommunicationController_22.OnCommunicationFinished", "box_Ordered_Output_82.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_22_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_54
  l0.Seconds = 12
  l0 = self.box_PhoneCommunicationController_22
  l1 = self.box_Timer_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1349703088", "1349703088", "S16M050_Main", "box_PhoneCommunicationController_22.OnCommunicationStarted", "box_Timer_v2_54.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_28_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1659130372"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_43_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_28
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|936886584", "936886584", "S16M050_Main", "box_CinematicPrep_28.PostOut", "box_Show_Or_Hide_All_UI_43.Show", l0, l1)
  l1:Show()
end
function export:f_box_Dynamic_Media_Controller_86_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Controller_84()
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|511923533", "511923533", "S16M050_Main", "box_Dynamic_Media_Controller_86.ChannelChanged", "box_Media_System_Custom_Broadcast_Controller_84.ActivatePlayOnBinkChannel", clone, l0)
  l0:ActivatePlayOnBinkChannel()
end
function export:f_box_Multiple_AND_14_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_20
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825664"
  l0 = self.box_Multiple_AND_14
  l1 = self.box_PhoneCommunicationController_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1885165032", "1885165032", "S16M050_Main", "box_Multiple_AND_14.Out", "box_PhoneCommunicationController_20.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_OnceOnly_v3_85_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_19
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825666"
  l0 = self.box_OnceOnly_v3_85
  l1 = self.box_PhoneCommunicationController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1409974093", "1409974093", "S16M050_Main", "box_OnceOnly_v3_85.Out", "box_PhoneCommunicationController_19.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionCheckpointReach_129_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_129
  l1 = self.box_S16M050_SCR_Main_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1806201474", "1806201474", "S16M050_Main", "box_MissionCheckpointReach_129.Out", "box_S16M050_SCR_Main_93.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_62_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_62()
  l0 = self.box_HackableController_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1228168489", "1228168489", "S16M050_Main", "box_HackableController_v2_62.Disabled", "box_HackableController_v2_62.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_62_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_33()
  l0 = self.box_HackableController_v2_62
  l1 = self.box_HackableController_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1408299735", "1408299735", "S16M050_Main", "box_HackableController_v2_62.ProfilingDisabled", "box_HackableController_v2_33.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_SetActionMap_v2_56_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_To_SpawnPoint_16
  l0.SpawnPoint = "9223372047363236327"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372068252315069"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1055641398", "1055641398", "S16M050_Main", "box_SetActionMap_v2_56.Popped", "box_Teleport_To_SpawnPoint_16.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_48()
  l0 = self.box_Timer_v2_5
  l1 = self.box_HackableController_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|838178328", "838178328", "S16M050_Main", "box_Timer_v2_5.TimeElapsed", "box_HackableController_v2_48.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Timer_v2_6_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1108367850"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_121_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_121_Out_1
  l0 = self.box_Timer_v2_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|705470378", "705470378", "S16M050_Main", "box_Timer_v2_6.TimeElapsed", "box_Ordered_Output_121.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_122_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_83()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1004059987", "1004059987", "S16M050_Main", "box_Ordered_Output_122.Out", "box_SecurityCamController_83.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_Ordered_Output_122_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_123
  l0.SoundId = "soundbinary/1113226022.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|555049804", "555049804", "S16M050_Main", "box_Ordered_Output_122.Out", "box_PlaySound_v2_123.Play", clone, l0)
  l0:Play()
end
function export:f_box_Toy_Car_Monitor_55_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_69
  l0.CLO = "9223372048044195403"
  l0 = self.box_Toy_Car_Monitor_55
  l1 = self.box_CLOController_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1039206525", "1039206525", "S16M050_Main", "box_Toy_Car_Monitor_55.Enabled", "box_CLOController_69.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Toy_Car_Monitor_55_IsConnected()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_58()
  l0 = self.box_Toy_Car_Monitor_55
  l1 = self.box_TriggerMonitor_v2_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|67076730", "67076730", "S16M050_Main", "box_Toy_Car_Monitor_55.IsConnected", "box_TriggerMonitor_v2_58.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetActionMap_v2_34_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|17723121", "17723121", "S16M050_Main", "box_SetActionMap_v2_34.Pushed", "box_Get_Player_ID_1.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_13_PreOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_100()
  l0 = self.box_CinematicPrep_13
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1097623121", "1097623121", "S16M050_Main", "box_CinematicPrep_13.PreOut", "box_SecurityCamController_100.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_HackableController_v2_48_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_48()
  l0 = self.box_HackableController_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|231799757", "231799757", "S16M050_Main", "box_HackableController_v2_48.Disabled", "box_HackableController_v2_48.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_48_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_49()
  l0 = self.box_HackableController_v2_48
  l1 = self.box_HackableController_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1216904918", "1216904918", "S16M050_Main", "box_HackableController_v2_48.ProfilingDisabled", "box_HackableController_v2_49.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:OnEnter_box_MultipleOR_89()
end
function export:OnEnter_box_SecurityCamController_29()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = {
    "9223372047363234965",
    "9223372047775188570",
    "9223372047775188576",
    "9223372047775189181"
  }
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 1
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|40599965"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_29_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_box_SecurityCamController_29_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_Security_Camera_Monitor_114()
  local l0
  l0 = self.box_Security_Camera_Monitor_114
  l0.CameraEntity = "9223372065760408673"
  l0.CheckNow = 1
end
function export:OnEnter_box_SecurityCamController_7()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372052830700219"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|154762790"
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
function export:OnEnter_box_HackableController_v2_77()
  local l0
  l0 = self.box_HackableController_v2_77
  l0.HackableEntity = "9223372047642353130"
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Controller_84()
  local l0
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372061845822504"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|419545314"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = self.f_box_Media_System_Custom_Broadcast_Controller_84_ActivatedPlayOnBinkChannel
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_HackableController_v2_76()
  local l0
  l0 = self.box_HackableController_v2_76
  l0.HackableEntity = "9223372047642353122"
end
function export:OnEnter_box_HackableController_v2_92()
  local l0
  l0 = self.box_HackableController_v2_92
  l0.HackableEntity = "9223372055142921749"
end
function export:OnEnter_box_VisibilityController_v2_109()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Atmosphere_2nd_CAM
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|662670100"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_110()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Atmosphere_3rd_CAM
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|701049682"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_104()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Atmosphere_Main_CAM
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|703041279"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_Hack_Gameplay_66()
  local l0
  l0 = self.box_Hack_Gameplay_66
  l0.Entity = "9223372061059668753"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
end
function export:OnEnter_box_MultipleOR_27()
end
function export:OnEnter_box_MultipleOR_47()
end
function export:OnEnter_box_MultipleOR_8()
end
function export:OnEnter_box_OnceOnly_v3_73()
end
function export:OnEnter_box_VisibilityController_v2_111()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Atmosphere_4th_CAM
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1219953222"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_OnceOnly_v3_119()
end
function export:OnEnter_box_HackableController_v2_67()
  local l0
  l0 = self.box_HackableController_v2_67
  l0.HackableEntity = "9223372047642353121"
end
function export:OnEnter_box_TriggerMonitor_v2_58()
  local l0
  l0 = self.box_TriggerMonitor_v2_58
  l0.Trigger = "9223372053024825656"
end
function export:OnEnter_box_HackableController_v2_33()
  local l0
  l0 = self.box_HackableController_v2_33
  l0.HackableEntity = "9223372049380251054"
end
function export:OnEnter_box_Timer_v2_126()
  local l0
  l0 = self.box_Timer_v2_126
  l0.Seconds = 4
  l0.Loop = 1
end
function export:OnEnter_box_SecurityCamController_83()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372065760408677"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1534045437"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_83_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_83_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_HackableController_v2_68()
  local l0
  l0 = self.box_HackableController_v2_68
  l0.HackableEntity = "9223372047642353129"
end
function export:OnEnter_box_Toy_Car_Controller_52()
  local l0
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = self.RC_barge
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1588775654"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = self.f_box_Toy_Car_Controller_52_CallBackUnavailable
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = self.f_box_Toy_Car_Controller_52_DisconnectUnavailable
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
end
function export:OnEnter_box_HackableController_v2_49()
  local l0
  l0 = self.box_HackableController_v2_49
  l0.HackableEntity = "9223372047642353120"
end
function export:OnEnter_box_SecurityCamController_100()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = nil
  l0.TargetEntity = "9223372048548774858"
  l0.CanEnter = nil
  l0.CanExit = 1
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1716686073"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_100_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_box_SecurityCamController_100_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_Multiple_AND_14()
end
function export:OnEnter_box_Mission_End_133()
  local l0
  l0 = self.box_Mission_End_133
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S16M050_Main"
  l0.LmaLayer = "Barge_LMA"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_BinkVideoPlayer_v3_78()
  local l0
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
  l0._name = "box_BinkVideoPlayer_v3_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M050\\S16M050.domino|@S16M050_Main|1874191125"
  l0.Started = DummyFunction
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
end
function export:OnEnter_box_HackableController_v2_62()
  local l0
  l0 = self.box_HackableController_v2_62
  l0.HackableEntity = "9223372049380251052"
end
function export:OnEnter_box_HackableController_v2_48()
  local l0
  l0 = self.box_HackableController_v2_48
  l0.HackableEntity = "9223372047642353128"
end
_compilerVersion = 4
