export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CounterHackerController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/SpawnerController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M040C/s12_m040c_scr.S12_M040C_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M040C/S12M040C.S12M040C_DestroyObj.debug.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S12M040C_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main"
  self.PlayerEntity = nil
  self.InteractObj3 = "9223372046621028430"
  self.PickupObj1 = "9223372046737841950"
  self.IconObj2A = "9223372047425964636"
  self.IconObj2C = "9223372046621028424"
  self.InteractObj1 = "9223372047796977206"
  self.PawnHacker = nil
  self.IconObj1 = "9223372046621027859"
  self.IconObj3 = "9223372046621028428"
  self.InteractObj2C = "9223372046621028426"
  self.InteractObj2B = "9223372046621028422"
  self.InteractObj2A = "9223372046621028416"
  self.IconObj2B = "9223372046621028420"
  self.DestructableObj2C = "9223372047347105087"
  self.TagPointMissionArea = "9223372046995425970"
  self.CLOHacker = "9223372046621076701"
  self.PGTMissionAreaM4C = "9223372046621052575"
  self.PGTMissionAreaM4A = "9223372046737935285"
  self.LookTriggerHacker = "9223372047347290699"
  self.LookTriggerObj2A = "9223372047425964634"
  self.LookTriggerObj2C = "9223372047347290701"
  self.LookTriggerObj2B = "9223372047347290703"
  self.LookTriggerObj1 = "9223372047347290707"
  self.DestructableObj2D = "9223372047388708154"
  self.LookTriggerObj2D = "9223372047425964634"
  self.IconObj2D = "9223372047425964636"
  self.DestroyIncrement = 0
  self.DestroyTotal = 2
  self.DestructableObj2E = "9223372047388708156"
  self.LookTriggerObj2E = "9223372047425964640"
  self.IconObj2E = "9223372047425964638"
  self.DestructableObj2F = "9223372047388708158"
  self.IconObj2F = "9223372047425964644"
  self.LookTriggerObj2F = "9223372047425964642"
  self.Robot = nil
  self.SecondEncounter = {}
  self.PawnHackerLeader = nil
  self.CLOToSpawn = nil
  self.EnemiesRemaining = {}
  self.RobotPawn = nil
  self.DestructableObj2AEntity = nil
  self.DestructableObj2BEntity = nil
  self.DestructableObj2ACLO = "9223372048457453512"
  self.DestructableObj2BCLO = "9223372048457453513"
  self.leaveMissionArea = "9223372048349441387"
  self.objSearchArea = "9223372049138751587"
  self.CLOBikerLeader = "9223372047074318504"
  self.PawnBikerLeader = nil
  self.ObjectiveATM_1 = "9223372057434273908"
  self.ObjectiveATM_2 = "9223372057434273910"
  self.ObjectiveATM_3 = "9223372057434273912"
  self.IconATM_2 = "9223372047425964636"
  self.IconATM_3 = "9223372046621028420"
  self.ATMGroup_Boathouse = {}
  self.ATMGroup_Shed = {}
  self.ATMGroup_Yard = {}
  self.IconATM_Yard = "9223372059159525840"
  self.IconATM_Shed = "9223372046621027859"
  self.IconATM_Boathouse = "9223372046621028420"
  self.FXGroup_Shed = {}
  self.FXGroup_Yard = {}
  self.FXGroup_Boathouse = {}
  self.box_CinematicPrep_30 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_30
  l0._graph = self
  l0._name = "box_CinematicPrep_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|64167489"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_30_PostOut
  self.box_S12_M040C_SCR_Main_4 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M040C/s12_m040c_scr.S12_M040C_SCR_Main.debug.lua")
  l0 = self.box_S12_M040C_SCR_Main_4
  l0._graph = self
  l0._name = "box_S12_M040C_SCR_Main_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|80034755"
  l0.out = self.f_box_S12_M040C_SCR_Main_4_out
  self.box_MultipleOR_72 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_72
  l0._graph = self
  l0._name = "box_MultipleOR_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|124122310"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_72_Out
  self.box_ListWriter_37 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_37
  l0._graph = self
  l0._name = "box_ListWriter_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|203675961"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_37_Added
  l0.Removed = self.f_box_ListWriter_37_Removed
  l0.Out = self.f_box_ListWriter_37_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionZone_87 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_87
  l0._graph = self
  l0._name = "box_MissionZone_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|392653185"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_PGTController_v2_62 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_62
  l0._graph = self
  l0._name = "box_PGTController_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|413435442"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_62_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_Multiple_AND_13 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_13
  l0._graph = self
  l0._name = "box_Multiple_AND_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|559361755"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_13_Out
  self.box_ListWriter_17 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_17
  l0._graph = self
  l0._name = "box_ListWriter_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|641916841"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_17_Added
  l0.Removed = self.f_box_ListWriter_17_Removed
  l0.Out = self.f_box_ListWriter_17_Out
  self.box_Mission_End_23 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_23
  l0._graph = self
  l0._name = "box_Mission_End_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|671357258"
  self.box_ListWriter_14 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_14
  l0._graph = self
  l0._name = "box_ListWriter_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|684462439"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_14_Added
  l0.Removed = self.f_box_ListWriter_14_Removed
  l0.Out = self.f_box_ListWriter_14_Out
  self.box_S12M040C_DestroyObj_34 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M040C/S12M040C.S12M040C_DestroyObj.debug.lua")
  l0 = self.box_S12M040C_DestroyObj_34
  l0._graph = self
  l0._name = "box_S12M040C_DestroyObj_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|758913336"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.AllBroken = self.f_box_S12M040C_DestroyObj_34_AllBroken
  self.box_CounterHackerController_18 = cbox:CreateBox("domino/System/CounterHackerController.lua")
  l0 = self.box_CounterHackerController_18
  l0._graph = self
  l0._name = "box_CounterHackerController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|803767597"
  l0.Out = DummyFunction
  l0.ProfilerDisruptionEnabled = self.f_box_CounterHackerController_18_ProfilerDisruptionEnabled
  l0.NetHackDisruptionEnabled = DummyFunction
  l0.RcDisruptionEnabled = DummyFunction
  l0.HackingDisruptionEnabled = DummyFunction
  l0.ProfilerDisruptionDisabled = DummyFunction
  l0.NetHackDisruptionDisabled = DummyFunction
  l0.RcDisruptionDisabled = DummyFunction
  l0.HackingDisruptionDisabled = DummyFunction
  self.box_LivingCity_Spawner_Controller_22 = cbox:CreateBox("domino/System/SpawnerController.lua")
  l0 = self.box_LivingCity_Spawner_Controller_22
  l0._graph = self
  l0._name = "box_LivingCity_Spawner_Controller_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|814630850"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Triggered = self.f_box_LivingCity_Spawner_Controller_22_Triggered
  l0.InitialSpawnDone = DummyFunction
  self.box_MissionMessageController_v3_11 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_11
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1079531871"
  l0.Out = self.f_box_MissionMessageController_v3_11_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_71 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_71
  l0._graph = self
  l0._name = "box_MissionLayer_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1102730028"
  l0.Loaded = self.f_box_MissionLayer_v2_71_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_12 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_12
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1179993806"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriter_35 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_35
  l0._graph = self
  l0._name = "box_ListWriter_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1200649130"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_35_Added
  l0.Removed = self.f_box_ListWriter_35_Removed
  l0.Out = self.f_box_ListWriter_35_Out
  self.box_MissionMessageController_v3_15 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_15
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1294477585"
  l0.Out = self.f_box_MissionMessageController_v3_15_Out
  l0.MessageCompleted = DummyFunction
  self.box_S12M040C_DestroyObj_36 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M040C/S12M040C.S12M040C_DestroyObj.debug.lua")
  l0 = self.box_S12M040C_DestroyObj_36
  l0._graph = self
  l0._name = "box_S12M040C_DestroyObj_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1346853947"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.AllBroken = self.f_box_S12M040C_DestroyObj_36_AllBroken
  self.box_ListWriter_7 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_7
  l0._graph = self
  l0._name = "box_ListWriter_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1370338223"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_7_Added
  l0.Removed = self.f_box_ListWriter_7_Removed
  l0.Out = self.f_box_ListWriter_7_Out
  self.box_MissionMessageController_v3_84 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_84
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1392697527"
  l0.Out = self.f_box_MissionMessageController_v3_84_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_9 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_9
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1719198379"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_9_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_16 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_16
  l0._graph = self
  l0._name = "box_Timer_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1733409956"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Escape_Gameplay_92 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_92
  l0._graph = self
  l0._name = "box_Escape_Gameplay_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1736765965"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_92_Escaped
  l0.LeftArea = DummyFunction
  self.box_MissionMessageController_v3_114 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_114
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1796222529"
  l0.Out = self.f_box_MissionMessageController_v3_114_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_38 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_38
  l0._graph = self
  l0._name = "box_ListWriter_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1837021716"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_38_Added
  l0.Removed = self.f_box_ListWriter_38_Removed
  l0.Out = self.f_box_ListWriter_38_Out
  self.box_MissionCheckpointReach_69 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_69
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1864842917"
  l0.Out = self.f_box_MissionCheckpointReach_69_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_20 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_20
  l0._graph = self
  l0._name = "box_Timer_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1994820223"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_20_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_10 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_10
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|2009952483"
  l0.Out = self.f_box_MissionMessageController_v3_10_Out
  l0.MessageCompleted = DummyFunction
  self.box_S12M040C_DestroyObj_39 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M040C/S12M040C.S12M040C_DestroyObj.debug.lua")
  l0 = self.box_S12M040C_DestroyObj_39
  l0._graph = self
  l0._name = "box_S12M040C_DestroyObj_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|2031810084"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.AllBroken = self.f_box_S12M040C_DestroyObj_39_AllBroken
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
  l0.LayerName = "S12M040C_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|854221146", "854221146", "S12M040C_Main", "CheckPoint_0", "box_MissionLayer_v2_71.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_Mission_End_23()
  l0 = self.box_Mission_End_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|995876224", "995876224", "S12M040C_Main", "CheckPoint_1", "box_Mission_End_23.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S12M040C_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1104553538", "1104553538", "S12M040C_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_CinematicPrep_30_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_15
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S12.S12M040C.Objectives.Objective01",
    item = "Objective",
    id = "643485"
  }
  l0.IncrementalObjectiveTotal = 3
  l0 = self.box_CinematicPrep_30
  l1 = self.box_MissionMessageController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|157009061", "157009061", "S12M040C_Main", "box_CinematicPrep_30.PostOut", "box_MissionMessageController_v3_15.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_S12_M040C_SCR_Main_4_out()
  local l0, l1
  self = self._graph
  l0 = self.box_S12_M040C_SCR_Main_4
  l1 = self.box_LivingCity_Spawner_Controller_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1342207014", "1342207014", "S12M040C_Main", "box_S12_M040C_SCR_Main_4.out", "box_LivingCity_Spawner_Controller_22.TriggerInitialSpawn", l0, l1)
  l1:TriggerInitialSpawn()
end
function export:f_box_MultipleOR_72_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_69
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_72
  l1 = self.box_MissionCheckpointReach_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1869034331", "1869034331", "S12M040C_Main", "box_MultipleOR_72.Out", "box_MissionCheckpointReach_69.In", l0, l1)
  l1:In()
end
function export:f_box_SetTimeOfDay_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|2111182647", "2111182647", "S12M040C_Main", "box_SetTimeOfDay_6.Out", "box_Timer_v2_20.Start", clone, l0)
  l0:Start()
end
function export:f_box_ListWriter_37_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_37
  self.ATMGroup_Shed = l0.Target
  l0 = self.box_ListWriter_35
  l0.Input = self.ATMGroup_Yard
  l0.Data[0] = "9223372058180578428"
  l0.Data[1] = "9223372059159338536"
  l0.Data[2] = "9223372057434273910"
  l0.Data[3] = "9223372059159338538"
  l0 = self.box_ListWriter_37
  l1 = self.box_ListWriter_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|2080780355", "2080780355", "S12M040C_Main", "box_ListWriter_37.Added", "box_ListWriter_35.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_37_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_37
  self.ATMGroup_Shed = l0.Target
end
function export:f_box_ListWriter_37_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_37
  self.ATMGroup_Shed = l0.Target
end
function export:f_box_Ordered_Output_28_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_87()
  l0 = self.box_MissionZone_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|2070238502", "2070238502", "S12M040C_Main", "box_Ordered_Output_28.Out", "box_MissionZone_87.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|543278347", "543278347", "S12M040C_Main", "box_MissionLayer_v2_2.Loaded", "box_MultipleOR_72.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PGTController_v2_62_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_62
  l1 = self.box_CounterHackerController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1264616360", "1264616360", "S12M040C_Main", "box_PGTController_v2_62.AllSpawned", "box_CounterHackerController_18.EnableProfilerDisruption", l0, l1)
  l1:EnableProfilerDisruption()
end
function export:f_box_Multiple_AND_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_9
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048366123225"
  l0 = self.box_Multiple_AND_13
  l1 = self.box_PhoneCommunicationController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|885277410", "885277410", "S12M040C_Main", "box_Multiple_AND_13.Out", "box_PhoneCommunicationController_9.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_ListWriter_17_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_17
  self.FXGroup_Boathouse = l0.Target
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 24
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|186913647"
  l0.Out = self.f_box_SetTimeOfDay_6_Out
  l0 = self.box_ListWriter_17
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|784918671", "784918671", "S12M040C_Main", "box_ListWriter_17.Added", "box_SetTimeOfDay_6.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_ListWriter_17_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_17
  self.FXGroup_Boathouse = l0.Target
end
function export:f_box_ListWriter_17_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_17
  self.FXGroup_Boathouse = l0.Target
end
function export:f_box_ListWriter_14_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_14
  self.FXGroup_Yard = l0.Target
  l0 = self.box_ListWriter_17
  l0.Input = self.FXGroup_Boathouse
  l0.Data[0] = "9223372067187977379"
  l0.Data[1] = "9223372067187977377"
  l0.Data[2] = "9223372067187977373"
  l0.Data[3] = "9223372067187977371"
  l0.Data[4] = "9223372067187977375"
  l0 = self.box_ListWriter_14
  l1 = self.box_ListWriter_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|729249460", "729249460", "S12M040C_Main", "box_ListWriter_14.Added", "box_ListWriter_17.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_14_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_14
  self.FXGroup_Yard = l0.Target
end
function export:f_box_ListWriter_14_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_14
  self.FXGroup_Yard = l0.Target
end
function export:f_box_S12M040C_DestroyObj_34_AllBroken()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_11
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_S12M040C_DestroyObj_34
  l1 = self.box_MissionMessageController_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|223751068", "223751068", "S12M040C_Main", "box_S12M040C_DestroyObj_34.AllBroken", "box_MissionMessageController_v3_11.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_CounterHackerController_18_ProfilerDisruptionEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_37
  l0.Input = self.ATMGroup_Shed
  l0.Data[0] = "9223372057434273908"
  l0 = self.box_CounterHackerController_18
  l1 = self.box_ListWriter_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|303874467", "303874467", "S12M040C_Main", "box_CounterHackerController_18.ProfilerDisruptionEnabled", "box_ListWriter_37.Add", l0, l1)
  l1:Add()
end
function export:f_box_LivingCity_Spawner_Controller_22_Triggered()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_62
  l0.PGTMissionArea = self.PGTMissionAreaM4C
  l0 = self.box_LivingCity_Spawner_Controller_22
  l1 = self.box_PGTController_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1691235620", "1691235620", "S12M040C_Main", "box_LivingCity_Spawner_Controller_22.Triggered", "box_PGTController_v2_62.Start", l0, l1)
  l1:Start()
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
  l0 = self.box_S12_M040C_SCR_Main_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|670915783", "670915783", "S12M040C_Main", "box_Get_Player_ID_1.Out", "box_S12_M040C_SCR_Main_4.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_MissionMessageController_v3_11
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|2138512509", "2138512509", "S12M040C_Main", "box_MissionMessageController_v3_11.Out", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_MissionLayer_v2_71_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_MissionLayer_v2_71
  l1 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|517178078", "517178078", "S12M040C_Main", "box_MissionLayer_v2_71.Loaded", "box_MultipleOR_72.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: MISC INITIALIZATION", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Ordered Output')-- Comment: MISC INITIALIZATION")
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|213445054"
  l0._DynamicAnchors = {Out = 1}
  l0.Out[0] = self.f_box_Ordered_Output_28_Out_0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|549474341", "549474341", "S12M040C_Main", "box_Simple_Node_5.Out", "box_Ordered_Output_28.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriter_35_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_35
  self.ATMGroup_Yard = l0.Target
  l0 = self.box_ListWriter_38
  l0.Input = self.ATMGroup_Boathouse
  l0.Data[0] = "9223372057434273912"
  l0.Data[1] = "9223372058180578432"
  l0.Data[2] = "9223372059159352502"
  l0 = self.box_ListWriter_35
  l1 = self.box_ListWriter_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|546498594", "546498594", "S12M040C_Main", "box_ListWriter_35.Added", "box_ListWriter_38.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_35_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_35
  self.ATMGroup_Yard = l0.Target
end
function export:f_box_ListWriter_35_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_35
  self.ATMGroup_Yard = l0.Target
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_87()
  l0 = self.box_MissionZone_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1277379522", "1277379522", "S12M040C_Main", "box_Ordered_Output_8.Out", "box_MissionZone_87.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Escape_Gameplay_92
  l0.Entity = "9223372046995425970"
  l0.Entity_AreaRadius = 225
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|183047171", "183047171", "S12M040C_Main", "box_Ordered_Output_8.Out", "box_Escape_Gameplay_92.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionMessageController_v3_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1548487394"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_53_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_53_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_53_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_53_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_53_Out_4
  l0 = self.box_MissionMessageController_v3_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|16089453", "16089453", "S12M040C_Main", "box_MissionMessageController_v3_15.Out", "box_Ordered_Output_53.In", l0, l1)
  l1:In()
end
function export:f_box_S12M040C_DestroyObj_36_AllBroken()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_114
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_S12M040C_DestroyObj_36
  l1 = self.box_MissionMessageController_v3_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|2105292456", "2105292456", "S12M040C_Main", "box_S12M040C_DestroyObj_36.AllBroken", "box_MissionMessageController_v3_114.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_ListWriter_7_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_7
  self.FXGroup_Shed = l0.Target
  l0 = self.box_ListWriter_14
  l0.Input = self.FXGroup_Yard
  l0.Data[0] = "9223372067187977361"
  l0.Data[1] = "9223372067187977362"
  l0.Data[2] = "9223372067187977363"
  l0.Data[3] = "9223372067187977364"
  l0.Data[4] = "9223372067187977365"
  l0 = self.box_ListWriter_7
  l1 = self.box_ListWriter_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1053315872", "1053315872", "S12M040C_Main", "box_ListWriter_7.Added", "box_ListWriter_14.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_7_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_7
  self.FXGroup_Shed = l0.Target
end
function export:f_box_ListWriter_7_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_7
  self.FXGroup_Shed = l0.Target
end
function export:f_box_MissionMessageController_v3_84_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1254288673"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_MissionMessageController_v3_84
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|125413319", "125413319", "S12M040C_Main", "box_MissionMessageController_v3_84.Out", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_53_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1111507291"
  l0.Out = self.f_box_Simple_Node_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1054063113", "1054063113", "S12M040C_Main", "box_Ordered_Output_53.Out", "box_Simple_Node_5.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_53_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S12M040C_DestroyObj_36
  l0.ATMGroupList = self.ATMGroup_Shed
  l0.ObjectiveMapIcon = self.IconATM_Shed
  l0.YInteractObject = "9223372066999314172"
  l0.ParticleGroupList = self.FXGroup_Shed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1021972486", "1021972486", "S12M040C_Main", "box_Ordered_Output_53.Out", "box_S12M040C_DestroyObj_36.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_53_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S12M040C_DestroyObj_39
  l0.ATMGroupList = self.ATMGroup_Yard
  l0.ObjectiveMapIcon = self.IconATM_Yard
  l0.YInteractObject = "9223372066999315146"
  l0.ParticleGroupList = self.FXGroup_Yard
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1248554705", "1248554705", "S12M040C_Main", "box_Ordered_Output_53.Out", "box_S12M040C_DestroyObj_39.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_53_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S12M040C_DestroyObj_34
  l0.ATMGroupList = self.ATMGroup_Boathouse
  l0.ObjectiveMapIcon = self.IconATM_Boathouse
  l0.YInteractObject = "9223372066999314176"
  l0.ParticleGroupList = self.FXGroup_Boathouse
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|450928187", "450928187", "S12M040C_Main", "box_Ordered_Output_53.Out", "box_S12M040C_DestroyObj_34.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_53_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_16
  l0.Seconds = 15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|524252860", "524252860", "S12M040C_Main", "box_Ordered_Output_53.Out", "box_Timer_v2_16.Start", clone, l0)
  l0:Start()
end
function export:f_box_PhoneCommunicationController_9_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_84
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S12.S12M040C.Objectives.Objective02",
    item = "Objective",
    id = "656253"
  }
  l0 = self.box_PhoneCommunicationController_9
  l1 = self.box_MissionMessageController_v3_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1320938708", "1320938708", "S12M040C_Main", "box_PhoneCommunicationController_9.StartCommunicationOut", "box_MissionMessageController_v3_84.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Timer_v2_16_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_12
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048366123220"
  l0 = self.box_Timer_v2_16
  l1 = self.box_PhoneCommunicationController_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|367694765", "367694765", "S12M040C_Main", "box_Timer_v2_16.TimeElapsed", "box_PhoneCommunicationController_12.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Escape_Gameplay_92_Escaped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_23()
  l0 = self.box_Escape_Gameplay_92
  l1 = self.box_Mission_End_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|561283978", "561283978", "S12M040C_Main", "box_Escape_Gameplay_92.Escaped", "box_Mission_End_23.End", l0, l1)
  l1:End()
end
function export:f_box_MissionMessageController_v3_114_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_MissionMessageController_v3_114
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|661542313", "661542313", "S12M040C_Main", "box_MissionMessageController_v3_114.Out", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_ListWriter_38_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_38
  self.ATMGroup_Boathouse = l0.Target
  l0 = self.box_ListWriter_7
  l0.Input = self.FXGroup_Shed
  l0.Data[0] = "9223372067187977369"
  l0.Data[1] = "9223372067187977367"
  l0 = self.box_ListWriter_38
  l1 = self.box_ListWriter_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1297315090", "1297315090", "S12M040C_Main", "box_ListWriter_38.Added", "box_ListWriter_7.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_38_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_38
  self.ATMGroup_Boathouse = l0.Target
end
function export:f_box_ListWriter_38_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_38
  self.ATMGroup_Boathouse = l0.Target
end
function export:f_box_MissionCheckpointReach_69_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionCheckpointReach_69
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|218506917", "218506917", "S12M040C_Main", "box_MissionCheckpointReach_69.Out", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_20_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_30
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_20
  l1 = self.box_CinematicPrep_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|811168938", "811168938", "S12M040C_Main", "box_Timer_v2_20.TimeElapsed", "box_CinematicPrep_30.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionMessageController_v3_10_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_MissionMessageController_v3_10
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|1355919221", "1355919221", "S12M040C_Main", "box_MissionMessageController_v3_10.Out", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_S12M040C_DestroyObj_39_AllBroken()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_10
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0 = self.box_S12M040C_DestroyObj_39
  l1 = self.box_MissionMessageController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M040C\\S12M040C.domino|@S12M040C_Main|952791651", "952791651", "S12M040C_Main", "box_S12M040C_DestroyObj_39.AllBroken", "box_MissionMessageController_v3_10.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:OnEnter_box_MultipleOR_72()
end
function export:OnEnter_box_MissionZone_87()
  local l0
  l0 = self.box_MissionZone_87
  l0.MissionArea = "9223372048786320203"
  l0.MissionLayer = "S12M040C_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_Multiple_AND_13()
end
function export:OnEnter_box_Mission_End_23()
  local l0
  l0 = self.box_Mission_End_23
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "S12M040C_Main"
  l0.TeamSpeak = "PhoneCommunicationSettingsDb.9223372055108868044"
  l0.ShowMissionComplete = 1
end
_compilerVersion = 4
