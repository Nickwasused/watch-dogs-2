export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/EnvironmentWeatherOverride.lua")
  cbox:RegisterBox("domino/System/FelonySystemController_v2.lua")
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PerkController.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionSpecificIngredients.PlayerOnlyTriggerNoRCTip.debug.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  cbox:RegisterBox("domino/System/RemoteControlledVehicleController.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_cin_bigfoot.S16M060_CIN_BigFoot_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_cin_dedsecmomentum.S16M060_CIN_DedsecMomentum_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/SecurityAlarmPanelController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/2286467389.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/504699571.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2725930814.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1143647808.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S16M060_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main"
  self.PlayerEntity = nil
  self.ForkLift_01 = nil
  self.ForkLift_02 = nil
  self.ForkLift_03 = nil
  self.ForkLift_04 = nil
  self.ForkLift_05 = nil
  self.Barge_AI_list = {}
  self.AI_All_Dead = 0
  self.Elevator_Hackable = {}
  self.Elevator_part_list = {}
  self.Server_Lift = nil
  self.FailuerCheck = 1
  self.Chopper_Target = nil
  self.box_MultipleOR_75 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_75
  l0._graph = self
  l0._name = "box_MultipleOR_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|4583089"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_75_Out
  self.box_MissionController_v4_35 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_35
  l0._graph = self
  l0._name = "box_MissionController_v4_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|5285465"
  self.box_HackableController_v2_240 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_240
  l0._graph = self
  l0._name = "box_HackableController_v2_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|31030212"
  l0.Enabled = self.f_box_HackableController_v2_240_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOMonitor_196 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_196
  l0._graph = self
  l0._name = "box_CLOMonitor_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|36534475"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_CLOMonitor_196_Disabled
  l0.GotUser = self.f_box_CLOMonitor_196_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_196_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_196_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MultipleOR_247 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_247
  l0._graph = self
  l0._name = "box_MultipleOR_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|41970385"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_247_Out
  self.box_Hackable_Monitor_115 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_115
  l0._graph = self
  l0._name = "box_Hackable_Monitor_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|57998738"
  l0.Enabled = self.f_box_Hackable_Monitor_115_Enabled
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_115_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MultipleOR_38 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_38
  l0._graph = self
  l0._name = "box_MultipleOR_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|76931368"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_38_Out
  self.box_Perk_Controller_219 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_219
  l0._graph = self
  l0._name = "box_Perk_Controller_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|80857374"
  l0.PerkAdded = self.f_box_Perk_Controller_219_PerkAdded
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self.box_MultipleOR_180 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_180
  l0._graph = self
  l0._name = "box_MultipleOR_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|104055101"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_180_Out
  self.box_sc16m060_SCR_Main_199 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.debug.lua")
  l0 = self.box_sc16m060_SCR_Main_199
  l0._graph = self
  l0._name = "box_sc16m060_SCR_Main_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|123853548"
  l0.out = DummyFunction
  l0.DroneUnspawned = DummyFunction
  self.box_HackableController_v2_6 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_6
  l0._graph = self
  l0._name = "box_HackableController_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|129946774"
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
  self.box_ListWriter_116 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_116
  l0._graph = self
  l0._name = "box_ListWriter_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|145680592"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_116_Added
  l0.Removed = self.f_box_ListWriter_116_Removed
  l0.Out = self.f_box_ListWriter_116_Out
  self.box_PhoneCommunicationController_69 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_69
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|151825569"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOMonitor_166 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_166
  l0._graph = self
  l0._name = "box_CLOMonitor_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|177178868"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_166_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_166_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_166_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MultipleOR_195 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_195
  l0._graph = self
  l0._name = "box_MultipleOR_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|210747082"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_195_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_47 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_47
  l0._graph = self
  l0._name = "box_MissionLayer_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|233975924"
  l0.Loaded = self.f_box_MissionLayer_v2_47_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOMonitor_163 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_163
  l0._graph = self
  l0._name = "box_CLOMonitor_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|236266330"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_CLOMonitor_163_Disabled
  l0.GotUser = self.f_box_CLOMonitor_163_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_163_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_163_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MultipleOR_58 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_58
  l0._graph = self
  l0._name = "box_MultipleOR_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|244176285"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_58_Out
  self.box_MultipleOR_162 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_162
  l0._graph = self
  l0._name = "box_MultipleOR_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|244918086"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_162_Out
  self.box_Timer_v2_100 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_100
  l0._graph = self
  l0._name = "box_Timer_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|247523705"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_100_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_212 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_212
  l0._graph = self
  l0._name = "box_MultipleOR_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|258971178"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_212_Out
  self.box_MultipleOR_42 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_42
  l0._graph = self
  l0._name = "box_MultipleOR_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|279342916"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_42_Out
  self.box_MissionLayer_v2_36 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_36
  l0._graph = self
  l0._name = "box_MissionLayer_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|286703354"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_36_Unloaded
  l0.Reseted = DummyFunction
  self.box_Proximity_Monitor_114 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_114
  l0._graph = self
  l0._name = "box_Proximity_Monitor_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|323292115"
  l0.Enabled = self.f_box_Proximity_Monitor_114_Enabled
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_114_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_114_ExitRadius
  self.box_PlayerOnlyTriggerNoRCTip_235 = cbox:CreateBox("domino/Library/common/MissionSpecificIngredients.PlayerOnlyTriggerNoRCTip.debug.lua")
  l0 = self.box_PlayerOnlyTriggerNoRCTip_235
  l0._graph = self
  l0._name = "box_PlayerOnlyTriggerNoRCTip_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|325226646"
  l0.Enter = DummyFunction
  self.box_HackableController_v2_97 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_97
  l0._graph = self
  l0._name = "box_HackableController_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|325503834"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_97_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_37 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_37
  l0._graph = self
  l0._name = "box_OnceOnly_v3_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|336903103"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_37_Out
  l0.ResetOut = DummyFunction
  self.box_MissionZone_44 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_44
  l0._graph = self
  l0._name = "box_MissionZone_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|343760559"
  l0.Enabled = self.f_box_MissionZone_44_Enabled
  l0.Disabled = self.f_box_MissionZone_44_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_Proximity_Monitor_14 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_14
  l0._graph = self
  l0._name = "box_Proximity_Monitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|355593937"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_14_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_CLOMonitor_23 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_23
  l0._graph = self
  l0._name = "box_CLOMonitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|362192283"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_23_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_23_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_23_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_PlaySound_v2_234 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_234
  l0._graph = self
  l0._name = "box_PlaySound_v2_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|370553566"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PGTController_v2_102 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_102
  l0._graph = self
  l0._name = "box_PGTController_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|371999274"
  l0.Started = self.f_box_PGTController_v2_102_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_OnceOnly_v3_145 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_145
  l0._graph = self
  l0._name = "box_OnceOnly_v3_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|377668593"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_145_Out
  l0.ResetOut = DummyFunction
  self.box_HackableController_v2_22 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_22
  l0._graph = self
  l0._name = "box_HackableController_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|383274803"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_22_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOMonitor_161 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_161
  l0._graph = self
  l0._name = "box_CLOMonitor_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|395322065"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_CLOMonitor_161_Disabled
  l0.GotUser = self.f_box_CLOMonitor_161_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_161_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_161_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MissionMessageController_v3_142 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_142
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|405586750"
  l0.Out = self.f_box_MissionMessageController_v3_142_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_210 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_210
  l0._graph = self
  l0._name = "box_HackableController_v2_210"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|413348261"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_210_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_sc16m060_SCR_Main_198 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.debug.lua")
  l0 = self.box_sc16m060_SCR_Main_198
  l0._graph = self
  l0._name = "box_sc16m060_SCR_Main_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|421869868"
  l0.out = DummyFunction
  l0.DroneUnspawned = DummyFunction
  self.box_HackableController_v2_206 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_206
  l0._graph = self
  l0._name = "box_HackableController_v2_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|483941960"
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
  self.box_Perk_Controller_220 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_220
  l0._graph = self
  l0._name = "box_Perk_Controller_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|486913339"
  l0.PerkAdded = self.f_box_Perk_Controller_220_PerkAdded
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self.box_PhoneCommunicationController_101 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_101
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|508760841"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_101_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_136 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_136
  l0._graph = self
  l0._name = "box_PlaySound_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|523183976"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_170 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_170
  l0._graph = self
  l0._name = "box_OnceOnly_v3_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|527338419"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_170_Out
  l0.ResetOut = DummyFunction
  self.box_PGTController_v2_30 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_30
  l0._graph = self
  l0._name = "box_PGTController_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|543151552"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_30_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionLayer_v2_17 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_17
  l0._graph = self
  l0._name = "box_MissionLayer_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|572763962"
  l0.Loaded = self.f_box_MissionLayer_v2_17_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Intel_Controller_154 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_154
  l0._graph = self
  l0._name = "box_Intel_Controller_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|586140210"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self.box_TimerToScreen_106 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_106
  l0._graph = self
  l0._name = "box_TimerToScreen_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|593830821"
  l0.Started = self.f_box_TimerToScreen_106_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_106_TimeElapsed
  self.box_sc16m060_SCR_Main_150 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.debug.lua")
  l0 = self.box_sc16m060_SCR_Main_150
  l0._graph = self
  l0._name = "box_sc16m060_SCR_Main_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|593973609"
  l0.out = DummyFunction
  l0.DroneUnspawned = DummyFunction
  self.box_Hackable_Monitor_179 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_179
  l0._graph = self
  l0._name = "box_Hackable_Monitor_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|607671740"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_179_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_179_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_VehicleMonitor_v3_19 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_19
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|615998567"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v3_19_Disabled
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
  l0.IsUnusable = self.f_box_VehicleMonitor_v3_19_IsUnusable
  l0.IsUnderwater = self.f_box_VehicleMonitor_v3_19_IsUnderwater
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
  self.box_PGTController_v2_21 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_21
  l0._graph = self
  l0._name = "box_PGTController_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|617417680"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_21_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_Intel_Controller_148 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_148
  l0._graph = self
  l0._name = "box_Intel_Controller_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|631604103"
  l0.Enabled = self.f_box_Intel_Controller_148_Enabled
  l0.Disabled = DummyFunction
  self.box_CLOController_209 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_209
  l0._graph = self
  l0._name = "box_CLOController_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|633179416"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_209_OnUserInPlace
  self.box_TriggerMonitor_v2_3 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_3
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|662038922"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_3_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_3_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_141 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_141
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|667169372"
  l0.Out = self.f_box_MissionMessageController_v3_141_Out
  l0.MessageCompleted = DummyFunction
  self.box_AISquadStateMonitor_228 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_228
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|669987372"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = self.f_box_AISquadStateMonitor_228_ArrestStateAnyTarget
  l0.CombatState = DummyFunction
  l0.CombatStateAnyTarget = self.f_box_AISquadStateMonitor_228_CombatStateAnyTarget
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = self.f_box_AISquadStateMonitor_228_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_S16M060_CIN_BigFoot_Main_18 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_cin_bigfoot.S16M060_CIN_BigFoot_Main.debug.lua")
  l0 = self.box_S16M060_CIN_BigFoot_Main_18
  l0._graph = self
  l0._name = "box_S16M060_CIN_BigFoot_Main_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|705641558"
  l0.cin_out = self.f_box_S16M060_CIN_BigFoot_Main_18_cin_out
  self.box_MissionMessageController_v3_27 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_27
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|707803552"
  l0.Out = self.f_box_MissionMessageController_v3_27_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_147 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_147
  l0._graph = self
  l0._name = "box_OnceOnly_v3_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|710835822"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_147_Out
  l0.ResetOut = DummyFunction
  self.box_CLOMonitor_34 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_34
  l0._graph = self
  l0._name = "box_CLOMonitor_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|719579983"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_34_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_34_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_34_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MultipleOR_191 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_191
  l0._graph = self
  l0._name = "box_MultipleOR_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|730327921"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_191_Out
  self.box_MissionCheckpointReach_39 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_39
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|749832813"
  l0.Out = self.f_box_MissionCheckpointReach_39_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_TriggerMonitor_v2_13 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_13
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|769519083"
  l0.Enabled = self.f_box_TriggerMonitor_v2_13_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_13_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_13_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_13_Leave
  l0.Use = DummyFunction
  self.box_Perk_Controller_221 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_221
  l0._graph = self
  l0._name = "box_Perk_Controller_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|787423325"
  l0.PerkAdded = self.f_box_Perk_Controller_221_PerkAdded
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self.box_VehicleMonitor_v3_66 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_66
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|791337219"
  l0.Enabled = self.f_box_VehicleMonitor_v3_66_Enabled
  l0.Disabled = self.f_box_VehicleMonitor_v3_66_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_66_Entered
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
  self.box_HackableController_v2_208 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_208
  l0._graph = self
  l0._name = "box_HackableController_v2_208"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|795747903"
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
  self.box_PlaySound_v2_57 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_57
  l0._graph = self
  l0._name = "box_PlaySound_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|799124264"
  l0.Out = self.f_box_PlaySound_v2_57_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_107 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_107
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|807805342"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_107_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOMonitor_168 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_168
  l0._graph = self
  l0._name = "box_CLOMonitor_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|807906724"
  l0.Enabled = self.f_box_CLOMonitor_168_Enabled
  l0.Disabled = self.f_box_CLOMonitor_168_Disabled
  l0.GotUser = self.f_box_CLOMonitor_168_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_168_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_168_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_CLOMonitor_160 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_160
  l0._graph = self
  l0._name = "box_CLOMonitor_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|814345003"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_160_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_160_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_160_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MultipleOR_77 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_77
  l0._graph = self
  l0._name = "box_MultipleOR_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|820564111"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_77_Out
  self.box_OnceOnly_v3_146 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_146
  l0._graph = self
  l0._name = "box_OnceOnly_v3_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|823071856"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_146_Out
  l0.ResetOut = DummyFunction
  self.box_HackableController_v2_204 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_204
  l0._graph = self
  l0._name = "box_HackableController_v2_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|827916138"
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
  self.box_GetNPC_104 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_104
  l0._graph = self
  l0._name = "box_GetNPC_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|831879426"
  l0.GotNPCList = self.f_box_GetNPC_104_GotNPCList
  self.box_VehicleMonitor_v3_71 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_71
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|850058067"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v3_71_Disabled
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
  l0.IsUnusable = self.f_box_VehicleMonitor_v3_71_IsUnusable
  l0.IsUnderwater = self.f_box_VehicleMonitor_v3_71_IsUnderwater
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
  self.box_AISquadStateMonitor_222 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_222
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|855787143"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = self.f_box_AISquadStateMonitor_222_ArrestStateAnyTarget
  l0.CombatState = DummyFunction
  l0.CombatStateAnyTarget = self.f_box_AISquadStateMonitor_222_CombatStateAnyTarget
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = self.f_box_AISquadStateMonitor_222_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_Perk_Controller_216 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_216
  l0._graph = self
  l0._name = "box_Perk_Controller_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|857136622"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = self.f_box_Perk_Controller_216_PerkReseted
  self.box_CLOMonitor_29 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_29
  l0._graph = self
  l0._name = "box_CLOMonitor_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|877225226"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_CLOMonitor_29_Disabled
  l0.GotUser = self.f_box_CLOMonitor_29_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_29_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_29_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MapPointController_v4_144 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_144
  l0._graph = self
  l0._name = "box_MapPointController_v4_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|885988659"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_PhoneCommunicationController_86 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_86
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|887641457"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_86_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_217 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_217
  l0._graph = self
  l0._name = "box_OnceOnly_v3_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|895544585"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_217_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_233 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_233
  l0._graph = self
  l0._name = "box_MultipleOR_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|901120897"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_233_Out
  self.box_MissionZone_43 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_43
  l0._graph = self
  l0._name = "box_MissionZone_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|904533451"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_CinematicPrep_56 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_56
  l0._graph = self
  l0._name = "box_CinematicPrep_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|913986695"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_56_PostOut
  self.box_MissionMessageController_v3_125 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_125
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|917649086"
  l0.Out = self.f_box_MissionMessageController_v3_125_Out
  l0.MessageCompleted = DummyFunction
  self.box_TimerToScreen_88 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_88
  l0._graph = self
  l0._name = "box_TimerToScreen_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|926037030"
  l0.Started = self.f_box_TimerToScreen_88_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_88_TimeElapsed
  self.box_TriggerMonitor_v2_207 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_207
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_207"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|945124541"
  l0.Enabled = self.f_box_TriggerMonitor_v2_207_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_207_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionCheckpointReach_252 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_252
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|965940912"
  l0.Out = self.f_box_MissionCheckpointReach_252_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_OnceOnly_v3_248 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_248
  l0._graph = self
  l0._name = "box_OnceOnly_v3_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|988814173"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_248_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_229 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_229
  l0._graph = self
  l0._name = "box_MultipleOR_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1042034743"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_229_Out
  self.box_MissionCheckpointReach_53 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_53
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1070968324"
  l0.Out = self.f_box_MissionCheckpointReach_53_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionController_v4_63 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_63
  l0._graph = self
  l0._name = "box_MissionController_v4_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1073555486"
  self.box_HackableController_v2_241 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_241
  l0._graph = self
  l0._name = "box_HackableController_v2_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1084229006"
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
  self.box_HackableController_v2_244 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_244
  l0._graph = self
  l0._name = "box_HackableController_v2_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1117130752"
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
  self.box_Timer_v2_249 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_249
  l0._graph = self
  l0._name = "box_Timer_v2_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1117780848"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_249_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_94 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_94
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1142711082"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_94_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_87 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_87
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1150017667"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_87_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_73 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_73
  l0._graph = self
  l0._name = "box_MultipleOR_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1169869071"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_73_Out
  self.box_MissionMessageController_v3_4 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_4
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1174168078"
  l0.Out = self.f_box_MissionMessageController_v3_4_Out
  l0.MessageCompleted = DummyFunction
  self.box_Proximity_Monitor_177 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_177
  l0._graph = self
  l0._name = "box_Proximity_Monitor_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1185842666"
  l0.Enabled = self.f_box_Proximity_Monitor_177_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_177_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_177_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_PawnHealthMonitor_v3_112 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_112
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1193773473"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = DummyFunction
  l0.DBNO = DummyFunction
  l0.AllDead = self.f_box_PawnHealthMonitor_v3_112_AllDead
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_MissionMessageController_v3_117 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_117
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1195446423"
  l0.Out = self.f_box_MissionMessageController_v3_117_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOMonitor_20 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_20
  l0._graph = self
  l0._name = "box_CLOMonitor_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1210251049"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_20_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_20_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_20_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_Multiple_AND_72 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_72
  l0._graph = self
  l0._name = "box_Multiple_AND_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1225281818"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_72_Out
  self.box_MissionController_v4_78 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_78
  l0._graph = self
  l0._name = "box_MissionController_v4_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1247017970"
  self.box_SetBoolean_v2_111 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_111
  l0._graph = self
  l0._name = "box_SetBoolean_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1265558226"
  l0.Out = self.f_box_SetBoolean_v2_111_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_111_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_111_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_111_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_111_SetFromBool
  self.box_MissionMessageController_v3_157 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_157
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1277109085"
  l0.Out = self.f_box_MissionMessageController_v3_157_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_92 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_92
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1282059929"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_92_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MapPointController_v4_5 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_5
  l0._graph = self
  l0._name = "box_MapPointController_v4_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1289144612"
  l0.Shown = self.f_box_MapPointController_v4_5_Shown
  l0.Hidden = self.f_box_MapPointController_v4_5_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v4_122 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_122
  l0._graph = self
  l0._name = "box_MapPointController_v4_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1314579967"
  l0.Shown = self.f_box_MapPointController_v4_122_Shown
  l0.Hidden = self.f_box_MapPointController_v4_122_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_VehicleMonitor_v3_70 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_70
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1316860083"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v3_70_Disabled
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
  l0.IsUnusable = self.f_box_VehicleMonitor_v3_70_IsUnusable
  l0.IsUnderwater = self.f_box_VehicleMonitor_v3_70_IsUnderwater
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
  self.box_PlaySound_v2_181 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_181
  l0._graph = self
  l0._name = "box_PlaySound_v2_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1330442756"
  l0.Out = self.f_box_PlaySound_v2_181_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_140 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_140
  l0._graph = self
  l0._name = "box_MultipleOR_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1338141914"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_140_Out
  self.box_PhoneCommunicationController_99 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_99
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1344690378"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_99_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_LMA_Layer_Controller_52 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_52
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1345088635"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_52_Unloaded
  self.box_MultipleOR_81 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_81
  l0._graph = self
  l0._name = "box_MultipleOR_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1355403170"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_81_Out
  self.box_MultipleOR_165 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_165
  l0._graph = self
  l0._name = "box_MultipleOR_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1368536684"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_165_Out
  self.box_HackableController_v2_98 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_98
  l0._graph = self
  l0._name = "box_HackableController_v2_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1375772718"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_98_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Security_Alarm_Panel_Controller_24 = cbox:CreateBox("domino/System/SecurityAlarmPanelController.lua")
  l0 = self.box_Security_Alarm_Panel_Controller_24
  l0._graph = self
  l0._name = "box_Security_Alarm_Panel_Controller_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1383435234"
  l0.Activated = self.f_box_Security_Alarm_Panel_Controller_24_Activated
  l0.Deactivated = DummyFunction
  self.box_MissionMessageController_v3_123 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_123
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1395760604"
  l0.Out = self.f_box_MissionMessageController_v3_123_Out
  l0.MessageCompleted = DummyFunction
  self.box_ReinforcementSystemMonitor_v2_91 = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self.box_ReinforcementSystemMonitor_v2_91
  l0._graph = self
  l0._name = "box_ReinforcementSystemMonitor_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1415386618"
  l0.Enabled = self.f_box_ReinforcementSystemMonitor_v2_91_Enabled
  l0.Disabled = DummyFunction
  l0.None = DummyFunction
  l0.Reinforcing = self.f_box_ReinforcementSystemMonitor_v2_91_Reinforcing
  l0.CallingNextWave = self.f_box_ReinforcementSystemMonitor_v2_91_CallingNextWave
  l0.CallingNextWaveSucceeded = self.f_box_ReinforcementSystemMonitor_v2_91_CallingNextWaveSucceeded
  l0.ReachedWaveChangeThreshold = self.f_box_ReinforcementSystemMonitor_v2_91_ReachedWaveChangeThreshold
  l0.WaveChanged = self.f_box_ReinforcementSystemMonitor_v2_91_WaveChanged
  l0.EntitySpawned = self.f_box_ReinforcementSystemMonitor_v2_91_EntitySpawned
  l0.Finished = self.f_box_ReinforcementSystemMonitor_v2_91_Finished
  self.box_MultipleOR_226 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_226
  l0._graph = self
  l0._name = "box_MultipleOR_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1419613218"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_226_Out
  self.box_LMA_Layer_Controller_25 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_25
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1419879727"
  l0.Loaded = self.f_box_LMA_Layer_Controller_25_Loaded
  l0.Unloaded = DummyFunction
  self.box_MapPointController_v4_33 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_33
  l0._graph = self
  l0._name = "box_MapPointController_v4_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1431251802"
  l0.Shown = self.f_box_MapPointController_v4_33_Shown
  l0.Hidden = self.f_box_MapPointController_v4_33_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v4_85 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_85
  l0._graph = self
  l0._name = "box_MapPointController_v4_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1460108305"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_85_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_PlaySound_v2_192 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_192
  l0._graph = self
  l0._name = "box_PlaySound_v2_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1505119263"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_126 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_126
  l0._graph = self
  l0._name = "box_MultipleOR_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1521934720"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_126_Out
  self.box_Intel_Controller_159 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_159
  l0._graph = self
  l0._name = "box_Intel_Controller_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1547760048"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_159_Disabled
  self.box_Intel_Controller_156 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_156
  l0._graph = self
  l0._name = "box_Intel_Controller_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1552361718"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_156_Disabled
  self.box_CinematicPrep_28 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_28
  l0._graph = self
  l0._name = "box_CinematicPrep_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1569242217"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_28_PostOut
  self.box_MissionCheckpointReach_59 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_59
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1590495687"
  l0.Out = self.f_box_MissionCheckpointReach_59_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionCheckpointReach_49 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_49
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1592251175"
  l0.Out = self.f_box_MissionCheckpointReach_49_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_TriggerMonitor_v2_205 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_205
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1599084687"
  l0.Enabled = self.f_box_TriggerMonitor_v2_205_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_205_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionLayer_v2_251 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_251
  l0._graph = self
  l0._name = "box_MissionLayer_v2_251"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1611389682"
  l0.Loaded = self.f_box_MissionLayer_v2_251_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_48 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_48
  l0._graph = self
  l0._name = "box_MultipleOR_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1622474949"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_48_Out
  self.box_MultipleOR_105 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_105
  l0._graph = self
  l0._name = "box_MultipleOR_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1631411823"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_105_Out
  self.box_OnceOnly_v3_172 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_172
  l0._graph = self
  l0._name = "box_OnceOnly_v3_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1651560592"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_172_Out
  l0.ResetOut = DummyFunction
  self.box_MissionMessageController_v3_16 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_16
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1668979760"
  l0.Out = self.f_box_MissionMessageController_v3_16_Out
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_16_MessageCompleted
  self.box_ListWriter_155 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_155
  l0._graph = self
  l0._name = "box_ListWriter_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1674958334"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_155_Added
  l0.Removed = self.f_box_ListWriter_155_Removed
  l0.Out = self.f_box_ListWriter_155_Out
  self.box_Timer_v2_95 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_95
  l0._graph = self
  l0._name = "box_Timer_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1686983104"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_95_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_S16M060_CIN_DedsecMomentum_Main_15 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_cin_dedsecmomentum.S16M060_CIN_DedsecMomentum_Main.debug.lua")
  l0 = self.box_S16M060_CIN_DedsecMomentum_Main_15
  l0._graph = self
  l0._name = "box_S16M060_CIN_DedsecMomentum_Main_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1698894347"
  l0.out = self.f_box_S16M060_CIN_DedsecMomentum_Main_15_out
  self.box_AISquadStateMonitor_231 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_231
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1699127826"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = self.f_box_AISquadStateMonitor_231_ArrestStateAnyTarget
  l0.CombatState = DummyFunction
  l0.CombatStateAnyTarget = self.f_box_AISquadStateMonitor_231_CombatStateAnyTarget
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = self.f_box_AISquadStateMonitor_231_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_MapPointController_v4_9 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_9
  l0._graph = self
  l0._name = "box_MapPointController_v4_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1701737612"
  l0.Shown = self.f_box_MapPointController_v4_9_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Proximity_Monitor_32 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_32
  l0._graph = self
  l0._name = "box_Proximity_Monitor_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1705002331"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_32_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_32_ExitRadius
  self.box_Proximity_Monitor_108 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_108
  l0._graph = self
  l0._name = "box_Proximity_Monitor_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1705916212"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_108_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_MultipleOR_173 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_173
  l0._graph = self
  l0._name = "box_MultipleOR_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1709124048"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_173_Out
  self.box_MultipleOR_11 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1737984987"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_sc16m060_SCR_Main_127 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.debug.lua")
  l0 = self.box_sc16m060_SCR_Main_127
  l0._graph = self
  l0._name = "box_sc16m060_SCR_Main_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1747945942"
  l0.out = DummyFunction
  l0.DroneUnspawned = DummyFunction
  self.box_MultipleOR_164 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_164
  l0._graph = self
  l0._name = "box_MultipleOR_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1764166617"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_164_Out
  self.box_TriggerMonitor_v2_178 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_178
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1765841753"
  l0.Enabled = self.f_box_TriggerMonitor_v2_178_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_178_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_178_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_OnceOnly_v3_167 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_167
  l0._graph = self
  l0._name = "box_OnceOnly_v3_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1776834965"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_167_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_253 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_253
  l0._graph = self
  l0._name = "box_MultipleOR_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1787152825"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_253_Out
  self.box_VehicleMonitor_v3_189 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_189
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1890895007"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v3_189_Disabled
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
  l0.IsUnusable = self.f_box_VehicleMonitor_v3_189_IsUnusable
  l0.IsUnderwater = self.f_box_VehicleMonitor_v3_189_IsUnderwater
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
  self.box_SetBoolean_v2_201 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_201
  l0._graph = self
  l0._name = "box_SetBoolean_v2_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1895542718"
  l0.Out = self.f_box_SetBoolean_v2_201_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_201_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_201_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_201_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_201_SetFromBool
  self.box_TriggerMonitor_v2_203 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_203
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1896847353"
  l0.Enabled = self.f_box_TriggerMonitor_v2_203_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_203_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_sc16m060_SCR_Main_83 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.debug.lua")
  l0 = self.box_sc16m060_SCR_Main_83
  l0._graph = self
  l0._name = "box_sc16m060_SCR_Main_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1914118667"
  l0.out = DummyFunction
  l0.DroneUnspawned = DummyFunction
  self.box_MissionLayer_v2_61 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_61
  l0._graph = self
  l0._name = "box_MissionLayer_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1919956917"
  l0.Loaded = self.f_box_MissionLayer_v2_61_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_67 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_67
  l0._graph = self
  l0._name = "box_Timer_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1923224668"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_67_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_76 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_76
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1924800330"
  l0.Out = self.f_box_MissionMessageController_v3_76_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOMonitor_7 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_7
  l0._graph = self
  l0._name = "box_CLOMonitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1928510438"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_CLOMonitor_7_Disabled
  l0.GotUser = self.f_box_CLOMonitor_7_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_7_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_7_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_SnapAndBind_109 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_109
  l0._graph = self
  l0._name = "box_SnapAndBind_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1931390940"
  l0.Attached = self.f_box_SnapAndBind_109_Attached
  self.box_MultipleOR_225 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_225
  l0._graph = self
  l0._name = "box_MultipleOR_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1954261042"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_225_Out
  self.box_Interact_Gameplay_89 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_89
  l0._graph = self
  l0._name = "box_Interact_Gameplay_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1955605744"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_89_Interacted
  self.box_MultipleOR_232 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_232
  l0._graph = self
  l0._name = "box_MultipleOR_232"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1970860531"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_232_Out
  self.box_MultipleOR_65 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_65
  l0._graph = self
  l0._name = "box_MultipleOR_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1975564187"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_65_Out
  self.box_MissionMessageController_v3_143 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_143
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1981154580"
  l0.Out = self.f_box_MissionMessageController_v3_143_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_194 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_194
  l0._graph = self
  l0._name = "box_OnceOnly_v3_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1982096903"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_194_Out
  l0.ResetOut = DummyFunction
  self.box_PhoneCommunicationController_51 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_51
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1983116476"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_176 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_176
  l0._graph = self
  l0._name = "box_PlaySound_v2_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1989982359"
  l0.Out = self.f_box_PlaySound_v2_176_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_74 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_74
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2013040767"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_74_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_26 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_26
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2034859739"
  l0.Out = self.f_box_MissionMessageController_v3_26_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_134 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_134
  l0._graph = self
  l0._name = "box_PlaySound_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2037437137"
  l0.Out = self.f_box_PlaySound_v2_134_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_54 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_54
  l0._graph = self
  l0._name = "box_MissionLayer_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2041725627"
  l0.Loaded = self.f_box_MissionLayer_v2_54_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PlaySound_v2_130 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_130
  l0._graph = self
  l0._name = "box_PlaySound_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2049621133"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_93 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_93
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2064544371"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_93_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_84 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_84
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2079983084"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_box_PhoneCommunicationController_84_Out
  self.box_PlaySound_v2_132 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_132
  l0._graph = self
  l0._name = "box_PlaySound_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2095013853"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_158 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_158
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2098006202"
  l0.Out = self.f_box_MissionMessageController_v3_158_Out
  l0.MessageCompleted = DummyFunction
  self.box_Player_Proximity_Monitor_41 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_41
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2110051520"
  l0.Enabled = self.f_box_Player_Proximity_Monitor_41_Enabled
  l0.Disabled = self.f_box_Player_Proximity_Monitor_41_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_41_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_OnceOnly_v3_90 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_90
  l0._graph = self
  l0._name = "box_OnceOnly_v3_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2138098837"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_90_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_62 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_62
  l0._graph = self
  l0._name = "box_CinematicPrep_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2143416903"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_62_PostOut
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
  l0 = self.box_MissionLayer_v2_17
  l0.LayerName = "S16M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2015920037", "2015920037", "S16M060_Main", "CheckPoint_0", "box_MissionLayer_v2_17.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_47
  l0.LayerName = "S16M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|933455656", "933455656", "S16M060_Main", "CheckPoint_1", "box_MissionLayer_v2_47.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_54
  l0.LayerName = "S16M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1558115396", "1558115396", "S16M060_Main", "CheckPoint_2", "box_MissionLayer_v2_54.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  l0 = self.box_MissionLayer_v2_61
  l0.LayerName = "S16M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|866792499", "866792499", "S16M060_Main", "CheckPoint_3", "box_MissionLayer_v2_61.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_4()
  local l0
  l0 = self.box_MissionLayer_v2_251
  l0.LayerName = "S16M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|974090098", "974090098", "S16M060_Main", "CheckPoint_4", "box_MissionLayer_v2_251.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S16M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1538187293", "1538187293", "S16M060_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_MultipleOR_75_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_19()
  l0 = self.box_MultipleOR_75
  l1 = self.box_VehicleMonitor_v3_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1250222287", "1250222287", "S16M060_Main", "box_MultipleOR_75.Out", "box_VehicleMonitor_v3_19.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_240_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_74
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053455297191"
  l0 = self.box_HackableController_v2_240
  l1 = self.box_PhoneCommunicationController_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1847222506", "1847222506", "S16M060_Main", "box_HackableController_v2_240.Enabled", "box_PhoneCommunicationController_74.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_CLOMonitor_196_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_189()
  l0 = self.box_CLOMonitor_196
  l1 = self.box_VehicleMonitor_v3_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1957583057", "1957583057", "S16M060_Main", "box_CLOMonitor_196.Disabled", "box_VehicleMonitor_v3_189.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_196_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_196
  self.Server_Lift = l0.UserID
end
function export:f_box_CLOMonitor_196_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_196
  self.Server_Lift = l0.UserID
end
function export:f_box_CLOMonitor_196_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_196
  self.Server_Lift = l0.UserID
  self:OnEnter_box_MultipleOR_191()
  l1 = self.box_MultipleOR_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1920011886", "1920011886", "S16M060_Main", "box_CLOMonitor_196.OnUserInPlace", "box_MultipleOR_191.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_247_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_247
  l1 = self.box_OnceOnly_v3_248
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1337060880", "1337060880", "S16M060_Main", "box_MultipleOR_247.Out", "box_OnceOnly_v3_248.In", l0, l1)
  l1:In(0)
end
function export:f_box_Hackable_Monitor_115_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AI_All_Dead
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|922346320"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_110_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_110_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Hackable_Monitor_115
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1166282622", "1166282622", "S16M060_Main", "box_Hackable_Monitor_115.Enabled", "box_Compare_Boolean_v2_110.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_115_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|741393302"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_218_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_218_Out_1
  l0 = self.box_Hackable_Monitor_115
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1603192583", "1603192583", "S16M060_Main", "box_Hackable_Monitor_115.HackSuccess", "box_Ordered_Output_218.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_38_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MultipleOR_38
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|783551135", "783551135", "S16M060_Main", "box_MultipleOR_38.Out", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Perk_Controller_219_PerkAdded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372056453997549"
  l0.FadeIn = 0
  l0.FadeOut = 0
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1858319803"
  l0.Started = self.f_box_EnvironmentWeatherOverride_64_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Perk_Controller_219
  l1 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|805672591", "805672591", "S16M060_Main", "box_Perk_Controller_219.PerkAdded", "box_EnvironmentWeatherOverride_64.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_149_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_107
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053752785713"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|933431236", "933431236", "S16M060_Main", "box_Ordered_Output_149.Out", "box_PhoneCommunicationController_107.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_149_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1945701882", "1945701882", "S16M060_Main", "box_Ordered_Output_149.Out", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionMusicController_175_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_176
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|656481515", "656481515", "S16M060_Main", "box_MissionMusicController_175.Deactivated", "box_PlaySound_v2_176.Play", clone, l0)
  l0:Play()
end
function export:f_box_MultipleOR_180_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_178()
  l0 = self.box_MultipleOR_180
  l1 = self.box_TriggerMonitor_v2_178
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|64725894", "64725894", "S16M060_Main", "box_MultipleOR_180.Out", "box_TriggerMonitor_v2_178.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_138_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_4
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective010",
    item = "Objective",
    id = "345171"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1311230416", "1311230416", "S16M060_Main", "box_Ordered_Output_138.Out", "box_MissionMessageController_v3_4.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_138_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669166"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1674467757"
  l0.Activated = self.f_box_MissionMusicController_128_Activated
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1857895949", "1857895949", "S16M060_Main", "box_Ordered_Output_138.Out", "box_MissionMusicController_128.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_FelonySystemController_v2_213_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Perk_Controller_220
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1112164690", "1112164690", "S16M060_Main", "box_FelonySystemController_v2_213.Disabled", "box_Perk_Controller_220.AddPerk", clone, l0)
  l0:AddPerk()
end
function export:f_box_MissionMusicController_183_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_181
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|278545560", "278545560", "S16M060_Main", "box_MissionMusicController_183.Deactivated", "box_PlaySound_v2_181.Play", clone, l0)
  l0:Play()
end
function export:f_box_ListWriter_116_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_116
  self.Elevator_Hackable = l0.Target
  l0 = self.box_ListWriter_155
  l0.Input = self.Elevator_part_list
  l0.Data[0] = "9223372049380251052"
  l0.Data[1] = "9223372049380251054"
  l0.Data[2] = "9223372049380251050"
  l0.Data[3] = "9223372049380251056"
  l0.Data[4] = "9223372049380251058"
  l0 = self.box_ListWriter_116
  l1 = self.box_ListWriter_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1752630960", "1752630960", "S16M060_Main", "box_ListWriter_116.Added", "box_ListWriter_155.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_116_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_116
  self.Elevator_Hackable = l0.Target
end
function export:f_box_ListWriter_116_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_116
  self.Elevator_Hackable = l0.Target
end
function export:f_box_CLOMonitor_166_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_166
  self.Server_Lift = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|331741173"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_246_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_246_Out_1
  l0 = self.box_CLOMonitor_166
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|816843186", "816843186", "S16M060_Main", "box_CLOMonitor_166.GotUser", "box_Ordered_Output_246.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_166_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_166
  self.Server_Lift = l0.UserID
  self:OnEnter_box_CLOMonitor_168()
  l1 = self.box_CLOMonitor_168
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|26400659", "26400659", "S16M060_Main", "box_CLOMonitor_166.NotGotUser", "box_CLOMonitor_168.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_166_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_166
  self.Server_Lift = l0.UserID
end
function export:f_box_MultipleOR_195_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_189()
  l0 = self.box_MultipleOR_195
  l1 = self.box_VehicleMonitor_v3_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1770044940", "1770044940", "S16M060_Main", "box_MultipleOR_195.Out", "box_VehicleMonitor_v3_189.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_25
  l0.LMALayerName = "Barge_LMA"
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_LMA_Layer_Controller_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1316349594", "1316349594", "S16M060_Main", "box_MissionLayer_v2_2.Loaded", "box_LMA_Layer_Controller_25.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_47_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|303365321"
  l0.Out = self.f_box_Get_Player_ID_46_Out
  l0 = self.box_MissionLayer_v2_47
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|266852403", "266852403", "S16M060_Main", "box_MissionLayer_v2_47.Loaded", "box_Get_Player_ID_46.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_163_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_164()
  l0 = self.box_CLOMonitor_163
  l1 = self.box_MultipleOR_164
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|419528647", "419528647", "S16M060_Main", "box_CLOMonitor_163.Disabled", "box_MultipleOR_164.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CLOMonitor_163_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_163
  self.Server_Lift = l0.UserID
end
function export:f_box_CLOMonitor_163_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_163
  self.Server_Lift = l0.UserID
end
function export:f_box_CLOMonitor_163_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_163
  self.Server_Lift = l0.UserID
  self:OnEnter_box_CLOMonitor_163()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1729770205", "1729770205", "S16M060_Main", "box_CLOMonitor_163.OnUserInPlace", "box_CLOMonitor_163.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_58_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_53
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_58
  l1 = self.box_MissionCheckpointReach_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|82792233", "82792233", "S16M060_Main", "box_MultipleOR_58.Out", "box_MissionCheckpointReach_53.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_162_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1241040380"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_245_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_245_Out_1
  l0 = self.box_MultipleOR_162
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1390435274", "1390435274", "S16M060_Main", "box_MultipleOR_162.Out", "box_Ordered_Output_245.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_100_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_100
  l1 = self.box_OnceOnly_v3_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|77732901", "77732901", "S16M060_Main", "box_Timer_v2_100.TimeElapsed", "box_OnceOnly_v3_147.In", l0, l1)
  l1:In(0)
end
function export:f_box_MultipleOR_212_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = self.Chopper_Target
  l0.FelonyType = "Police"
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372069125108832"
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_230"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1649410322"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_box_FelonyTargetController_230_ChaseStarted
  l0.SearchStarted = self.f_box_FelonyTargetController_230_SearchStarted
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_MultipleOR_212
  l1 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|15677500", "15677500", "S16M060_Main", "box_MultipleOR_212.Out", "box_FelonyTargetController_230.StartChase", l0, l1)
  l1:StartChase()
end
function export:f_box_MultipleOR_42_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_43()
  l0 = self.box_MultipleOR_42
  l1 = self.box_MissionZone_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1293382522", "1293382522", "S16M060_Main", "box_MultipleOR_42.Out", "box_MissionZone_43.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_36_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_36
  l1 = self.box_MissionController_v4_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1980551759", "1980551759", "S16M060_Main", "box_MissionLayer_v2_36.Unloaded", "box_MissionController_v4_35.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Ordered_Output_113_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1086819283"
  l0.Out = self.f_box_Simple_Node_50_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1526581522", "1526581522", "S16M060_Main", "box_Ordered_Output_113.Out", "box_Simple_Node_50.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_113_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_84
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346334"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1450648190", "1450648190", "S16M060_Main", "box_Ordered_Output_113.Out", "box_PhoneCommunicationController_84.StartCommunication", clone, l0)
  l0:StartCommunication()
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
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1453540706", "1453540706", "S16M060_Main", "box_Get_Player_ID_46.Out", "box_MultipleOR_48.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Proximity_Monitor_114_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_116
  l0.Input = self.Elevator_Hackable
  l0.Data[0] = "9223372049380251052"
  l0.Data[1] = "9223372049380251054"
  l0 = self.box_Proximity_Monitor_114
  l1 = self.box_ListWriter_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1009438103", "1009438103", "S16M060_Main", "box_Proximity_Monitor_114.Enabled", "box_ListWriter_116.Add", l0, l1)
  l1:Add()
end
function export:f_box_Proximity_Monitor_114_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2021992877"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_169_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_169_Out_1
  l0 = self.box_Proximity_Monitor_114
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1812763227", "1812763227", "S16M060_Main", "box_Proximity_Monitor_114.EnterRadius", "box_Ordered_Output_169.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_114_ExitRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1870104615"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_171_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_171_Out_1
  l0 = self.box_Proximity_Monitor_114
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1243977839", "1243977839", "S16M060_Main", "box_Proximity_Monitor_114.ExitRadius", "box_Ordered_Output_171.In", l0, l1)
  l1:In()
end
function export:f_box_EnvironmentWeatherOverride_68_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_205
  l0.Trigger = "9223372046830378951"
  l0.CheckNow = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1398561627", "1398561627", "S16M060_Main", "box_EnvironmentWeatherOverride_68.Started", "box_TriggerMonitor_v2_205.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_HackableController_v2_97_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_98
  l0.HackableEntity = self.ForkLift_03
  l0 = self.box_HackableController_v2_97
  l1 = self.box_HackableController_v2_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|177939567", "177939567", "S16M060_Main", "box_HackableController_v2_97.Disabled", "box_HackableController_v2_98.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Ordered_Output_246_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_165()
  l0 = self.box_MultipleOR_165
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|144469419", "144469419", "S16M060_Main", "box_Ordered_Output_246.Out", "box_MultipleOR_165.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_246_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_247()
  l0 = self.box_MultipleOR_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1160945209", "1160945209", "S16M060_Main", "box_Ordered_Output_246.Out", "box_MultipleOR_247.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_OnceOnly_v3_37_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_OnceOnly_v3_37
  l1 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|374573045", "374573045", "S16M060_Main", "box_OnceOnly_v3_37.Out", "box_TriggerMonitor_v2_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionZone_44_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_26
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060",
    item = "Objective",
    id = "693243"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective020",
    item = "Objective",
    id = "345172"
  }
  l0 = self.box_MissionZone_44
  l1 = self.box_MissionMessageController_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1306293308", "1306293308", "S16M060_Main", "box_MissionZone_44.Disabled", "box_MissionMessageController_v3_26.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_MissionZone_44_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|121546451"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_138_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_138_Out_1
  l0 = self.box_MissionZone_44
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1401734947", "1401734947", "S16M060_Main", "box_MissionZone_44.Enabled", "box_Ordered_Output_138.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_14_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = self.box_Security_Alarm_Panel_Controller_24
  l0.AlarmEntity = "9223372052961134672"
  l0.Instigator = self.Server_Lift
  l0 = self.box_Proximity_Monitor_14
  l1 = self.box_Security_Alarm_Panel_Controller_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|644602226", "644602226", "S16M060_Main", "box_Proximity_Monitor_14.EnterRadius", "box_Security_Alarm_Panel_Controller_24.ActivateAlarm", l0, l1)
  l1:ActivateAlarm()
end
function export:f_box_CLOMonitor_23_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_23
  self.ForkLift_05 = l0.UserID
end
function export:f_box_CLOMonitor_23_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_23
  self.ForkLift_05 = l0.UserID
end
function export:f_box_CLOMonitor_23_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_23
  self.ForkLift_05 = l0.UserID
  self:OnEnter_box_VehicleMonitor_v3_71()
  l1 = self.box_VehicleMonitor_v3_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|648926457", "648926457", "S16M060_Main", "box_CLOMonitor_23.OnUserInPlace", "box_VehicleMonitor_v3_71.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Lanes_Restrictions_Control_120_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_201
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1109774671", "1109774671", "S16M060_Main", "box_Lanes_Restrictions_Control_120.Out", "box_SetBoolean_v2_201.False", clone, l0)
  l0:False()
end
function export:f_box_PGTController_v2_102_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_166
  l0.CLO = "9223372067049059805"
  l0 = self.box_PGTController_v2_102
  l1 = self.box_CLOMonitor_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|478976788", "478976788", "S16M060_Main", "box_PGTController_v2_102.Started", "box_CLOMonitor_166.GetUser", l0, l1)
  l1:GetUser()
end
function export:f_box_OnceOnly_v3_145_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_93
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053455297197"
  l0 = self.box_OnceOnly_v3_145
  l1 = self.box_PhoneCommunicationController_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|76941911", "76941911", "S16M060_Main", "box_OnceOnly_v3_145.Out", "box_PhoneCommunicationController_93.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Vehicle_Controller_242_Movable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_252
  l0.CheckpointList = "CheckPoint_4"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1434989944", "1434989944", "S16M060_Main", "box_Vehicle_Controller_242.Movable", "box_MissionCheckpointReach_252.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_22_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_97
  l0.HackableEntity = self.ForkLift_02
  l0 = self.box_HackableController_v2_22
  l1 = self.box_HackableController_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2013689425", "2013689425", "S16M060_Main", "box_HackableController_v2_22.Disabled", "box_HackableController_v2_97.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_CLOMonitor_161_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_161
  l1 = self.box_MultipleOR_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|57646332", "57646332", "S16M060_Main", "box_CLOMonitor_161.Disabled", "box_MultipleOR_162.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_161_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_161
  self.Server_Lift = l0.UserID
end
function export:f_box_CLOMonitor_161_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_161
  self.Server_Lift = l0.UserID
end
function export:f_box_CLOMonitor_161_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_161
  self.Server_Lift = l0.UserID
  self:OnEnter_box_MultipleOR_173()
  l1 = self.box_MultipleOR_173
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|399952475", "399952475", "S16M060_Main", "box_CLOMonitor_161.OnUserInPlace", "box_MultipleOR_173.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_142_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_156
  l0.EntityList = self.Elevator_part_list
  l0 = self.box_MissionMessageController_v3_142
  l1 = self.box_Intel_Controller_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1150621472", "1150621472", "S16M060_Main", "box_MissionMessageController_v3_142.Out", "box_Intel_Controller_156.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_210_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_22
  l0.HackableEntity = self.ForkLift_05
  l0 = self.box_HackableController_v2_210
  l1 = self.box_HackableController_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1367705921", "1367705921", "S16M060_Main", "box_HackableController_v2_210.Disabled", "box_HackableController_v2_22.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Get_Player_ID_55_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_30
  l0.PGTMissionArea = "9223372047775332894"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|826206312", "826206312", "S16M060_Main", "box_Get_Player_ID_55.Out", "box_PGTController_v2_30.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_250_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_95
  l0.Seconds = 25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1323930637", "1323930637", "S16M060_Main", "box_Ordered_Output_250.Out", "box_Timer_v2_95.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_250_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_249
  l0.Seconds = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|166724896", "166724896", "S16M060_Main", "box_Ordered_Output_250.Out", "box_Timer_v2_249.Start", clone, l0)
  l0:Start()
end
function export:f_box_Perk_Controller_220_PerkAdded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_228()
  l0 = self.box_Perk_Controller_220
  l1 = self.box_AISquadStateMonitor_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1832853018", "1832853018", "S16M060_Main", "box_Perk_Controller_220.PerkAdded", "box_AISquadStateMonitor_228.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PhoneCommunicationController_101_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_254"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1077903034"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_254_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_PhoneCommunicationController_101
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1602867787", "1602867787", "S16M060_Main", "box_PhoneCommunicationController_101.StartCommunicationOut", "box_Ordered_Output_254.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_170_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_33()
  l0 = self.box_OnceOnly_v3_170
  l1 = self.box_MapPointController_v4_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|766570099", "766570099", "S16M060_Main", "box_OnceOnly_v3_170.Out", "box_MapPointController_v4_33.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VisibilityController_v2_151_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 4
  l0.Minute = 20
  l0._graph = self
  l0._name = "box_SetTimeOfDay_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1308937654"
  l0.Out = self.f_box_SetTimeOfDay_31_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1902700331", "1902700331", "S16M060_Main", "box_VisibilityController_v2_151.Hidden", "box_SetTimeOfDay_31.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_PGTController_v2_30_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 4
  l0.Minute = 20
  l0._graph = self
  l0._name = "box_SetTimeOfDay_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1966960038"
  l0.Out = self.f_box_SetTimeOfDay_12_Out
  l0 = self.box_PGTController_v2_30
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|582476930", "582476930", "S16M060_Main", "box_PGTController_v2_30.AllSpawned", "box_SetTimeOfDay_12.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_MissionLayer_v2_17_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_MissionLayer_v2_17
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1266704213", "1266704213", "S16M060_Main", "box_MissionLayer_v2_17.Loaded", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_FelonySystemController_v2_214_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Perk_Controller_221
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1736690521", "1736690521", "S16M060_Main", "box_FelonySystemController_v2_214.Disabled", "box_Perk_Controller_221.AddPerk", clone, l0)
  l0:AddPerk()
end
function export:f_box_TimerToScreen_106_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|95119162"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_149_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_149_Out_1
  l0 = self.box_TimerToScreen_106
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1947681651", "1947681651", "S16M060_Main", "box_TimerToScreen_106.Started", "box_Ordered_Output_149.In", l0, l1)
  l1:In()
end
function export:f_box_TimerToScreen_106_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_105()
  l0 = self.box_TimerToScreen_106
  l1 = self.box_MultipleOR_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|466802137", "466802137", "S16M060_Main", "box_TimerToScreen_106.TimeElapsed", "box_MultipleOR_105.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Hackable_Monitor_179_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_179
  l1 = self.box_OnceOnly_v3_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|947804955", "947804955", "S16M060_Main", "box_Hackable_Monitor_179.Disabled", "box_OnceOnly_v3_167.In", l0, l1)
  l1:In(0)
end
function export:f_box_Hackable_Monitor_179_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_180()
  l0 = self.box_Hackable_Monitor_179
  l1 = self.box_MultipleOR_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|268995803", "268995803", "S16M060_Main", "box_Hackable_Monitor_179.HackSuccess", "box_MultipleOR_180.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_VehicleMonitor_v3_19_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_72()
  l0 = self.box_VehicleMonitor_v3_19
  l1 = self.box_Multiple_AND_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1200178554", "1200178554", "S16M060_Main", "box_VehicleMonitor_v3_19.Disabled", "box_Multiple_AND_72.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_VehicleMonitor_v3_19_IsUnderwater()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_75()
  l0 = self.box_VehicleMonitor_v3_19
  l1 = self.box_MultipleOR_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2052653699", "2052653699", "S16M060_Main", "box_VehicleMonitor_v3_19.IsUnderwater", "box_MultipleOR_75.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_19_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_75()
  l0 = self.box_VehicleMonitor_v3_19
  l1 = self.box_MultipleOR_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1684265685", "1684265685", "S16M060_Main", "box_VehicleMonitor_v3_19.IsUnusable", "box_MultipleOR_75.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PGTController_v2_21_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_57
  l0.SoundId = "soundbinary/1143647808.bnk"
  l0 = self.box_PGTController_v2_21
  l1 = self.box_PlaySound_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|717626853", "717626853", "S16M060_Main", "box_PGTController_v2_21.AllSpawned", "box_PlaySound_v2_57.Play", l0, l1)
  l1:Play()
end
function export:f_box_Intel_Controller_148_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_27
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060",
    item = "Objective",
    id = "693243"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective020",
    item = "Objective",
    id = "345172"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective030",
    item = "Objective",
    id = "345173"
  }
  l0 = self.box_Intel_Controller_148
  l1 = self.box_MissionMessageController_v3_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1576012909", "1576012909", "S16M060_Main", "box_Intel_Controller_148.Enabled", "box_MissionMessageController_v3_27.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_FelonyTargetController_223_ChaseStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_225()
  l0 = self.box_MultipleOR_225
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1834773434", "1834773434", "S16M060_Main", "box_FelonyTargetController_223.ChaseStarted", "box_MultipleOR_225.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_FelonyTargetController_223_SearchStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_225()
  l0 = self.box_MultipleOR_225
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1509738579", "1509738579", "S16M060_Main", "box_FelonyTargetController_223.SearchStarted", "box_MultipleOR_225.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CLOController_209_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_28
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CLOController_209
  l1 = self.box_CinematicPrep_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|191948791", "191948791", "S16M060_Main", "box_CLOController_209.OnUserInPlace", "box_CinematicPrep_28.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_TriggerMonitor_v2_3_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1272231774"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_224_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_224_Out_1
  l0 = self.box_TriggerMonitor_v2_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1644651035", "1644651035", "S16M060_Main", "box_TriggerMonitor_v2_3.Disabled", "box_Ordered_Output_224.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_3_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_3()
  l0 = self.box_TriggerMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1579758404", "1579758404", "S16M060_Main", "box_TriggerMonitor_v2_3.Enter", "box_TriggerMonitor_v2_3.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_141_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_86
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053455297192"
  l0 = self.box_MissionMessageController_v3_141
  l1 = self.box_PhoneCommunicationController_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|606387557", "606387557", "S16M060_Main", "box_MissionMessageController_v3_141.Out", "box_PhoneCommunicationController_86.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_AISquadStateMonitor_228_ArrestStateAnyTarget()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateMonitor_228
  self.Chopper_Target = l0.ArrestedTarget
  self:OnEnter_box_MultipleOR_233()
  l1 = self.box_MultipleOR_233
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1194707071", "1194707071", "S16M060_Main", "box_AISquadStateMonitor_228.ArrestStateAnyTarget", "box_MultipleOR_233.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_AISquadStateMonitor_228_CombatStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_233()
  l0 = self.box_AISquadStateMonitor_228
  l1 = self.box_MultipleOR_233
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|713849143", "713849143", "S16M060_Main", "box_AISquadStateMonitor_228.CombatStateAnyTarget", "box_MultipleOR_233.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_228_SearchStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_233()
  l0 = self.box_AISquadStateMonitor_228
  l1 = self.box_MultipleOR_233
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1012459319", "1012459319", "S16M060_Main", "box_AISquadStateMonitor_228.SearchStateAnyTarget", "box_MultipleOR_233.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_193_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_207
  l0.Trigger = "9223372046830378951"
  l0.CheckNow = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|803981508", "803981508", "S16M060_Main", "box_Ordered_Output_193.Out", "box_TriggerMonitor_v2_207.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_193_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_192
  l0.SoundId = "soundbinary/2725930814.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|136783088", "136783088", "S16M060_Main", "box_Ordered_Output_193.Out", "box_PlaySound_v2_192.Play", clone, l0)
  l0:Play()
end
function export:f_box_S16M060_CIN_BigFoot_Main_18_cin_out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372056453997549"
  l0.FadeIn = 0
  l0.FadeOut = 0
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1289021081"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_EnvironmentWeatherOverride_118_Stopped
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_S16M060_CIN_BigFoot_Main_18
  l1 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1866181107", "1866181107", "S16M060_Main", "box_S16M060_CIN_BigFoot_Main_18.cin_out", "box_EnvironmentWeatherOverride_118.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MissionMessageController_v3_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_141
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective020",
    item = "Objective",
    id = "345172"
  }
  l0 = self.box_MissionMessageController_v3_27
  l1 = self.box_MissionMessageController_v3_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1154238641", "1154238641", "S16M060_Main", "box_MissionMessageController_v3_27.Out", "box_MissionMessageController_v3_141.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_OnceOnly_v3_147_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_101
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053752785713"
  l0 = self.box_OnceOnly_v3_147
  l1 = self.box_PhoneCommunicationController_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|819897097", "819897097", "S16M060_Main", "box_OnceOnly_v3_147.Out", "box_PhoneCommunicationController_101.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_135_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_253()
  l0 = self.box_MultipleOR_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1248509180", "1248509180", "S16M060_Main", "box_Ordered_Output_135.Out", "box_MultipleOR_253.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_135_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_134
  l0.SoundId = "soundbinary/504699571.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|435420805", "435420805", "S16M060_Main", "box_Ordered_Output_135.Out", "box_PlaySound_v2_134.Play", clone, l0)
  l0:Play()
end
function export:f_box_CLOMonitor_34_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_34
  self.ForkLift_02 = l0.UserID
end
function export:f_box_CLOMonitor_34_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_34
  self.ForkLift_02 = l0.UserID
end
function export:f_box_CLOMonitor_34_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_34
  self.ForkLift_02 = l0.UserID
  self:OnEnter_box_VehicleMonitor_v3_19()
  l1 = self.box_VehicleMonitor_v3_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|277604928", "277604928", "S16M060_Main", "box_CLOMonitor_34.OnUserInPlace", "box_VehicleMonitor_v3_19.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_191_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOMonitor_7()
  l0 = self.box_MultipleOR_191
  l1 = self.box_CLOMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1278871177", "1278871177", "S16M060_Main", "box_MultipleOR_191.Out", "box_CLOMonitor_7.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_218_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_126()
  l0 = self.box_MultipleOR_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|973277585", "973277585", "S16M060_Main", "box_Ordered_Output_218.Out", "box_MultipleOR_126.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_218_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_114()
  l0 = self.box_Proximity_Monitor_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1019099140", "1019099140", "S16M060_Main", "box_Ordered_Output_218.Out", "box_Proximity_Monitor_114.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_39_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_MissionCheckpointReach_39
  l1 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|84870855", "84870855", "S16M060_Main", "box_MissionCheckpointReach_39.Out", "box_MultipleOR_48.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_13_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_236"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|798993641"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_236_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_236_Out_1
  l0 = self.box_TriggerMonitor_v2_13
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1601723449", "1601723449", "S16M060_Main", "box_TriggerMonitor_v2_13.Disabled", "box_Ordered_Output_236.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_13_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlayerOnlyTriggerNoRCTip_235()
  l0 = self.box_TriggerMonitor_v2_13
  l1 = self.box_PlayerOnlyTriggerNoRCTip_235
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1863157318", "1863157318", "S16M060_Main", "box_TriggerMonitor_v2_13.Enabled", "box_PlayerOnlyTriggerNoRCTip_235.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_13_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1914990694", "1914990694", "S16M060_Main", "box_TriggerMonitor_v2_13.Enter", "box_TriggerMonitor_v2_13.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TriggerMonitor_v2_13_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_94
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053752785709"
  l0 = self.box_TriggerMonitor_v2_13
  l1 = self.box_PhoneCommunicationController_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1892680535", "1892680535", "S16M060_Main", "box_TriggerMonitor_v2_13.Leave", "box_PhoneCommunicationController_94.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Perk_Controller_221_PerkAdded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_231()
  l0 = self.box_Perk_Controller_221
  l1 = self.box_AISquadStateMonitor_231
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2016950013", "2016950013", "S16M060_Main", "box_Perk_Controller_221.PerkAdded", "box_AISquadStateMonitor_231.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v3_66_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_67
  l0.Seconds = 5
  l0 = self.box_VehicleMonitor_v3_66
  l1 = self.box_Timer_v2_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1633205658", "1633205658", "S16M060_Main", "box_VehicleMonitor_v3_66.Disabled", "box_Timer_v2_67.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleMonitor_v3_66_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1334035863"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_40_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_40_Out_1
  l0 = self.box_VehicleMonitor_v3_66
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1484092182", "1484092182", "S16M060_Main", "box_VehicleMonitor_v3_66.Enabled", "box_Ordered_Output_40.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_66_Entered()
  local l0
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_66()
  l0 = self.box_VehicleMonitor_v3_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2111962944", "2111962944", "S16M060_Main", "box_VehicleMonitor_v3_66.Entered", "box_VehicleMonitor_v3_66.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_VisibilityController_v2_153_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|679930802"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_193_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_193_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|196921701", "196921701", "S16M060_Main", "box_VisibilityController_v2_153.Hidden", "box_Ordered_Output_193.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_236_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Server_Lift
  l0._graph = self
  l0._name = "box_Vehicle_Controller_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|381403024"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = self.f_box_Vehicle_Controller_242_Movable
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1950146940", "1950146940", "S16M060_Main", "box_Ordered_Output_236.Out", "box_Vehicle_Controller_242.SetAsMovable", clone, l0)
  l0:SetAsMovable()
end
function export:f_box_Ordered_Output_236_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlayerOnlyTriggerNoRCTip_235()
  l0 = self.box_PlayerOnlyTriggerNoRCTip_235
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|548482785", "548482785", "S16M060_Main", "box_Ordered_Output_236.Out", "box_PlayerOnlyTriggerNoRCTip_235.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PlaySound_v2_57_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 4
  l0.Minute = 20
  l0._graph = self
  l0._name = "box_SetTimeOfDay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2130174902"
  l0.Out = self.f_box_SetTimeOfDay_10_Out
  l0 = self.box_PlaySound_v2_57
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|69022258", "69022258", "S16M060_Main", "box_PlaySound_v2_57.Out", "box_SetTimeOfDay_10.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_PhoneCommunicationController_107_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Server_Lift
  l0._graph = self
  l0._name = "box_Vehicle_Controller_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1352102897"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = self.f_box_Vehicle_Controller_239_Unmovable
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_PhoneCommunicationController_107
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|467286410", "467286410", "S16M060_Main", "box_PhoneCommunicationController_107.StartCommunicationOut", "box_Vehicle_Controller_239.SetAsUnmovable", l0, l1)
  l1:SetAsUnmovable()
end
function export:f_box_CLOMonitor_168_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_247()
  l0 = self.box_CLOMonitor_168
  l1 = self.box_MultipleOR_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1753309421", "1753309421", "S16M060_Main", "box_CLOMonitor_168.Disabled", "box_MultipleOR_247.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_168_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_165()
  l0 = self.box_CLOMonitor_168
  l1 = self.box_MultipleOR_165
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|92613585", "92613585", "S16M060_Main", "box_CLOMonitor_168.Enabled", "box_MultipleOR_165.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_168_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_168
  self.Server_Lift = l0.UserID
end
function export:f_box_CLOMonitor_168_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_168
  self.Server_Lift = l0.UserID
end
function export:f_box_CLOMonitor_168_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_168
  self.Server_Lift = l0.UserID
  self:OnEnter_box_CLOMonitor_168()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1210467692", "1210467692", "S16M060_Main", "box_CLOMonitor_168.OnUserInPlace", "box_CLOMonitor_168.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOMonitor_160_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_160
  self.Server_Lift = l0.UserID
  self:OnEnter_box_MultipleOR_164()
  l1 = self.box_MultipleOR_164
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|806366935", "806366935", "S16M060_Main", "box_CLOMonitor_160.GotUser", "box_MultipleOR_164.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_160_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_160
  self.Server_Lift = l0.UserID
  self:OnEnter_box_CLOMonitor_163()
  l1 = self.box_CLOMonitor_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1282517699", "1282517699", "S16M060_Main", "box_CLOMonitor_160.NotGotUser", "box_CLOMonitor_163.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_160_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_160
  self.Server_Lift = l0.UserID
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
  l0 = self.box_MissionCheckpointReach_39
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1430090890", "1430090890", "S16M060_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_39.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_77_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_71()
  l0 = self.box_MultipleOR_77
  l1 = self.box_VehicleMonitor_v3_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|744009053", "744009053", "S16M060_Main", "box_MultipleOR_77.Out", "box_VehicleMonitor_v3_71.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_VisibilityController_v2_152_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1886456283"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_80_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_80_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_80_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_80_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_80_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_80_Out_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1611905074", "1611905074", "S16M060_Main", "box_VisibilityController_v2_152.Hidden", "box_Ordered_Output_80.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_146_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_99
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053752785711"
  l0 = self.box_OnceOnly_v3_146
  l1 = self.box_PhoneCommunicationController_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2138276109", "2138276109", "S16M060_Main", "box_OnceOnly_v3_146.Out", "box_PhoneCommunicationController_99.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_GetNPC_104_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_104
  self.Barge_AI_list = l0.NPCList
  l0 = self.box_PawnHealthMonitor_v3_112
  l0.PawnList = self.Barge_AI_list
  l0 = self.box_GetNPC_104
  l1 = self.box_PawnHealthMonitor_v3_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1642978918", "1642978918", "S16M060_Main", "box_GetNPC_104.GotNPCList", "box_PawnHealthMonitor_v3_112.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v3_71_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_72()
  l0 = self.box_VehicleMonitor_v3_71
  l1 = self.box_Multiple_AND_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|361698527", "361698527", "S16M060_Main", "box_VehicleMonitor_v3_71.Disabled", "box_Multiple_AND_72.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_VehicleMonitor_v3_71_IsUnderwater()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_77()
  l0 = self.box_VehicleMonitor_v3_71
  l1 = self.box_MultipleOR_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|263594470", "263594470", "S16M060_Main", "box_VehicleMonitor_v3_71.IsUnderwater", "box_MultipleOR_77.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_71_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_77()
  l0 = self.box_VehicleMonitor_v3_71
  l1 = self.box_MultipleOR_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2080329133", "2080329133", "S16M060_Main", "box_VehicleMonitor_v3_71.IsUnusable", "box_MultipleOR_77.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_222_ArrestStateAnyTarget()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateMonitor_222
  self.Chopper_Target = l0.ArrestedTarget
  self:OnEnter_box_MultipleOR_232()
  l1 = self.box_MultipleOR_232
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1742564785", "1742564785", "S16M060_Main", "box_AISquadStateMonitor_222.ArrestStateAnyTarget", "box_MultipleOR_232.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_AISquadStateMonitor_222_CombatStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_232()
  l0 = self.box_AISquadStateMonitor_222
  l1 = self.box_MultipleOR_232
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1664101169", "1664101169", "S16M060_Main", "box_AISquadStateMonitor_222.CombatStateAnyTarget", "box_MultipleOR_232.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_222_SearchStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_232()
  l0 = self.box_AISquadStateMonitor_222
  l1 = self.box_MultipleOR_232
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|275229652", "275229652", "S16M060_Main", "box_AISquadStateMonitor_222.SearchStateAnyTarget", "box_MultipleOR_232.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Perk_Controller_216_PerkReseted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_36
  l0.LayerName = "S16M060_Main"
  l0 = self.box_Perk_Controller_216
  l1 = self.box_MissionLayer_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|8700176", "8700176", "S16M060_Main", "box_Perk_Controller_216.PerkReseted", "box_MissionLayer_v2_36.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_RemoteControlledVehicleController_96_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_126()
  l0 = self.box_MultipleOR_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|400156304", "400156304", "S16M060_Main", "box_RemoteControlledVehicleController_96.Out", "box_MultipleOR_126.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_RemoteControlledVehicleController_96_UserForcedOutOfRC()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_210
  l0.HackableEntity = self.Server_Lift
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1963077030", "1963077030", "S16M060_Main", "box_RemoteControlledVehicleController_96.UserForcedOutOfRC", "box_HackableController_v2_210.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_CLOMonitor_29_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOMonitor_161()
  l0 = self.box_CLOMonitor_29
  l1 = self.box_CLOMonitor_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1833635658", "1833635658", "S16M060_Main", "box_CLOMonitor_29.Disabled", "box_CLOMonitor_161.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_CLOMonitor_29_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_29
  self.Server_Lift = l0.UserID
  self:OnEnter_box_MultipleOR_173()
  l1 = self.box_MultipleOR_173
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1083239347", "1083239347", "S16M060_Main", "box_CLOMonitor_29.GotUser", "box_MultipleOR_173.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CLOMonitor_29_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_29
  self.Server_Lift = l0.UserID
  self:OnEnter_box_CLOMonitor_161()
  l1 = self.box_CLOMonitor_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2137395408", "2137395408", "S16M060_Main", "box_CLOMonitor_29.NotGotUser", "box_CLOMonitor_161.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_29_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_29
  self.Server_Lift = l0.UserID
end
function export:f_box_PhoneCommunicationController_86_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_178()
  l0 = self.box_PhoneCommunicationController_86
  l1 = self.box_TriggerMonitor_v2_178
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1913753823", "1913753823", "S16M060_Main", "box_PhoneCommunicationController_86.StartCommunicationOut", "box_TriggerMonitor_v2_178.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_217_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_114()
  l0 = self.box_OnceOnly_v3_217
  l1 = self.box_Proximity_Monitor_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1838104148", "1838104148", "S16M060_Main", "box_OnceOnly_v3_217.Out", "box_Proximity_Monitor_114.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_233_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = self.Chopper_Target
  l0.FelonyType = "Police"
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372069125108832"
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|911661642"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_box_FelonyTargetController_227_ChaseStarted
  l0.SearchStarted = self.f_box_FelonyTargetController_227_SearchStarted
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_MultipleOR_233
  l1 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1828437929", "1828437929", "S16M060_Main", "box_MultipleOR_233.Out", "box_FelonyTargetController_227.StartChase", l0, l1)
  l1:StartChase()
end
function export:f_box_Ordered_Output_197_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ReinforcementSystemMonitor_v2_91
  l0.Affiliation = "Boys"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|978802639", "978802639", "S16M060_Main", "box_Ordered_Output_197.Out", "box_ReinforcementSystemMonitor_v2_91.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_197_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_sc16m060_SCR_Main_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|586109675", "586109675", "S16M060_Main", "box_Ordered_Output_197.Out", "box_sc16m060_SCR_Main_83.StartLights", clone, l0)
  l0:StartLights()
end
function export:f_box_Ordered_Output_197_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1886939233"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|826474042", "826474042", "S16M060_Main", "box_Ordered_Output_197.Out", "box_FelonySystemController_v2_211.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_FelonyTargetController_227_ChaseStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_226()
  l0 = self.box_MultipleOR_226
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|758042603", "758042603", "S16M060_Main", "box_FelonyTargetController_227.ChaseStarted", "box_MultipleOR_226.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_FelonyTargetController_227_SearchStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_226()
  l0 = self.box_MultipleOR_226
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1079686759", "1079686759", "S16M060_Main", "box_FelonyTargetController_227.SearchStarted", "box_MultipleOR_226.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CinematicPrep_56_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_123
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060",
    item = "Objective",
    id = "693243"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective020",
    item = "Objective",
    id = "345172"
  }
  l0 = self.box_CinematicPrep_56
  l1 = self.box_MissionMessageController_v3_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1672830718", "1672830718", "S16M060_Main", "box_CinematicPrep_56.PostOut", "box_MissionMessageController_v3_123.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_125_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_32()
  l0 = self.box_MissionMessageController_v3_125
  l1 = self.box_Proximity_Monitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1918203532", "1918203532", "S16M060_Main", "box_MissionMessageController_v3_125.Out", "box_Proximity_Monitor_32.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Boolean_v2_110_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Proximity_Monitor_14
  l0.Entity1 = "9223372046830379175"
  l0.Entity2 = self.Server_Lift
  l0.Radius = 4
  l0.CheckDistance3D = 1
  l0.CheckNow = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|224979944", "224979944", "S16M060_Main", "box_Compare_Boolean_v2_110.A_is_False", "box_Proximity_Monitor_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_110_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Proximity_Monitor_108
  l0.Entity1 = "9223372046830379175"
  l0.Entity2 = self.Server_Lift
  l0.Radius = 4
  l0.CheckDistance3D = 1
  l0.CheckNow = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|699805192", "699805192", "S16M060_Main", "box_Compare_Boolean_v2_110.A_is_True", "box_Proximity_Monitor_108.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TimerToScreen_88_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|947643590"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_TimerToScreen_88
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|21990000", "21990000", "S16M060_Main", "box_TimerToScreen_88.Started", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_TimerToScreen_88_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_105()
  l0 = self.box_TimerToScreen_88
  l1 = self.box_MultipleOR_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|673612141", "673612141", "S16M060_Main", "box_TimerToScreen_88.TimeElapsed", "box_MultipleOR_105.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_129_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_41()
  l0 = self.box_Player_Proximity_Monitor_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1003736618", "1003736618", "S16M060_Main", "box_Ordered_Output_129.Out", "box_Player_Proximity_Monitor_41.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_207_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1648272057"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_82_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_82_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_82_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_82_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_82_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_82_Out_5
  l0 = self.box_TriggerMonitor_v2_207
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|162099052", "162099052", "S16M060_Main", "box_TriggerMonitor_v2_207.Enabled", "box_Ordered_Output_82.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_207_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_208
  l0.HackableEntity = "9223372059747496663"
  l0 = self.box_TriggerMonitor_v2_207
  l1 = self.box_HackableController_v2_208
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|556807509", "556807509", "S16M060_Main", "box_TriggerMonitor_v2_207.Enter", "box_HackableController_v2_208.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  l0.UserEntity = nil
  l0.RCEntity = self.Server_Lift
  l0.CanExit = nil
  l0._graph = self
  l0._name = "box_RemoteControlledVehicleController_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|866864731"
  l0.Out = self.f_box_RemoteControlledVehicleController_96_Out
  l0.UserForcedOutOfRC = self.f_box_RemoteControlledVehicleController_96_UserForcedOutOfRC
  l0.CanExitChanged = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1169128367", "1169128367", "S16M060_Main", "box_Ordered_Output_8.Out", "box_RemoteControlledVehicleController_96.ForceUserOutOfRC", clone, l0)
  l0:ForceUserOutOfRC()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|428813414", "428813414", "S16M060_Main", "box_Ordered_Output_8.Out", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionCheckpointReach_252_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_252
  l1 = self.box_MissionMessageController_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1986757202", "1986757202", "S16M060_Main", "box_MissionCheckpointReach_252.Out", "box_MissionMessageController_v3_16.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Ordered_Output_79_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_7()
  l0 = self.box_CLOMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1999604928", "1999604928", "S16M060_Main", "box_Ordered_Output_79.Out", "box_CLOMonitor_7.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_Ordered_Output_79_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_34
  l0.CLO = "9223372048044280312"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1731307121", "1731307121", "S16M060_Main", "box_Ordered_Output_79.Out", "box_CLOMonitor_34.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_79_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_20
  l0.CLO = "9223372048044280311"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|163954464", "163954464", "S16M060_Main", "box_Ordered_Output_79.Out", "box_CLOMonitor_20.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_79_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_23
  l0.CLO = "9223372047642426891"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1575524177", "1575524177", "S16M060_Main", "box_Ordered_Output_79.Out", "box_CLOMonitor_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_OnceOnly_v3_248_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_241
  l0.HackableEntity = self.Server_Lift
  l0 = self.box_OnceOnly_v3_248
  l1 = self.box_HackableController_v2_241
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|104831317", "104831317", "S16M060_Main", "box_OnceOnly_v3_248.Out", "box_HackableController_v2_241.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MultipleOR_229_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_231()
  l0 = self.box_MultipleOR_229
  l1 = self.box_AISquadStateMonitor_231
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2065893357", "2065893357", "S16M060_Main", "box_MultipleOR_229.Out", "box_AISquadStateMonitor_231.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionCheckpointReach_53_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1146214721"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_131_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_131_Out_1
  l0 = self.box_MissionCheckpointReach_53
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|132229833", "132229833", "S16M060_Main", "box_MissionCheckpointReach_53.Out", "box_Ordered_Output_131.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_254_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_sc16m060_SCR_Main_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|890631280", "890631280", "S16M060_Main", "box_Ordered_Output_254.Out", "box_sc16m060_SCR_Main_150.DroneTimerStarted", clone, l0)
  l0:DroneTimerStarted()
end
function export:f_box_Simple_Node_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_44()
  l0 = self.box_MissionZone_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1256734412", "1256734412", "S16M060_Main", "box_Simple_Node_50.Out", "box_MissionZone_44.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_243_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_66()
  l0 = self.box_VehicleMonitor_v3_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1942579394", "1942579394", "S16M060_Main", "box_Ordered_Output_243.Out", "box_VehicleMonitor_v3_66.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_249_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Server_Lift
  l0._graph = self
  l0._name = "box_Vehicle_Controller_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1432258997"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
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
  l0 = self.box_Timer_v2_249
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1805846818", "1805846818", "S16M060_Main", "box_Timer_v2_249.TimeElapsed", "box_Vehicle_Controller_238.SetAsUnmovable", l0, l1)
  l1:SetAsUnmovable()
end
function export:f_box_PhoneCommunicationController_94_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_143
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060",
    item = "Objective",
    id = "693243"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective020",
    item = "Objective",
    id = "345172"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective040",
    item = "Objective",
    id = "637647"
  }
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective060",
    item = "Objective",
    id = "637649"
  }
  l0 = self.box_PhoneCommunicationController_94
  l1 = self.box_MissionMessageController_v3_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1909584363", "1909584363", "S16M060_Main", "box_PhoneCommunicationController_94.StartCommunicationOut", "box_MissionMessageController_v3_143.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_Ordered_Output_131_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_89
  l0.Entity = "9223372052537130373"
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|539786930", "539786930", "S16M060_Main", "box_Ordered_Output_131.Out", "box_Interact_Gameplay_89.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_131_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_130
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2026104419", "2026104419", "S16M060_Main", "box_Ordered_Output_131.Out", "box_PlaySound_v2_130.Play", clone, l0)
  l0:Play()
end
function export:f_box_PhoneCommunicationController_87_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_125
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060",
    item = "Objective",
    id = "693243"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective020",
    item = "Objective",
    id = "345172"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective070",
    item = "Objective",
    id = "646626"
  }
  l0 = self.box_PhoneCommunicationController_87
  l1 = self.box_MissionMessageController_v3_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1658222780", "1658222780", "S16M060_Main", "box_PhoneCommunicationController_87.StartCommunicationOut", "box_MissionMessageController_v3_125.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_EnvironmentWeatherOverride_119_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372065263966442"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|795584032"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_153_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|639215224", "639215224", "S16M060_Main", "box_EnvironmentWeatherOverride_119.Started", "box_VisibilityController_v2_153.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_MultipleOR_73_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_70()
  l0 = self.box_MultipleOR_73
  l1 = self.box_VehicleMonitor_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1011457286", "1011457286", "S16M060_Main", "box_MultipleOR_73.Out", "box_VehicleMonitor_v3_70.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionMessageController_v3_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_5()
  l0 = self.box_MissionMessageController_v3_4
  l1 = self.box_MapPointController_v4_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|102892587", "102892587", "S16M060_Main", "box_MissionMessageController_v3_4.Out", "box_MapPointController_v4_5.Show", l0, l1)
  l1:Show()
end
function export:f_box_Proximity_Monitor_177_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_179()
  l0 = self.box_Proximity_Monitor_177
  l1 = self.box_Hackable_Monitor_179
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1593140232", "1593140232", "S16M060_Main", "box_Proximity_Monitor_177.Disabled", "box_Hackable_Monitor_179.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Proximity_Monitor_177_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_179()
  l0 = self.box_Proximity_Monitor_177
  l1 = self.box_Hackable_Monitor_179
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1317395634", "1317395634", "S16M060_Main", "box_Proximity_Monitor_177.Enabled", "box_Hackable_Monitor_179.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_177_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_180()
  l0 = self.box_Proximity_Monitor_177
  l1 = self.box_MultipleOR_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|602895640", "602895640", "S16M060_Main", "box_Proximity_Monitor_177.EnterRadius", "box_MultipleOR_180.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PawnHealthMonitor_v3_112_AllDead()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_111
  l0.Bool = self.AI_All_Dead
  l0 = self.box_PawnHealthMonitor_v3_112
  l1 = self.box_SetBoolean_v2_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1690351230", "1690351230", "S16M060_Main", "box_PawnHealthMonitor_v3_112.AllDead", "box_SetBoolean_v2_111.True", l0, l1)
  l1:True()
end
function export:f_box_MissionMessageController_v3_117_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_117
  l1 = self.box_OnceOnly_v3_217
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1370369833", "1370369833", "S16M060_Main", "box_MissionMessageController_v3_117.Out", "box_OnceOnly_v3_217.In", l0, l1)
  l1:In(0)
end
function export:f_box_CLOMonitor_20_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_20
  self.ForkLift_03 = l0.UserID
end
function export:f_box_CLOMonitor_20_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_20
  self.ForkLift_03 = l0.UserID
end
function export:f_box_CLOMonitor_20_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_20
  self.ForkLift_03 = l0.UserID
  self:OnEnter_box_VehicleMonitor_v3_70()
  l1 = self.box_VehicleMonitor_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1539385711", "1539385711", "S16M060_Main", "box_CLOMonitor_20.OnUserInPlace", "box_VehicleMonitor_v3_70.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Multiple_AND_72_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FailuerCheck
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_200"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2058634177"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_200_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Multiple_AND_72
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|367550101", "367550101", "S16M060_Main", "box_Multiple_AND_72.Out", "box_Compare_Boolean_v2_200.In", l0, l1)
  l1:In()
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
  l0.InteractionEntity = "9223372052537130373"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1654520773"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_237_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1834908483", "1834908483", "S16M060_Main", "box_Get_Player_ID_60.Out", "box_InteractionScriptController_237.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_245_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_56
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|702396735", "702396735", "S16M060_Main", "box_Ordered_Output_245.Out", "box_CinematicPrep_56.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_245_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_244
  l0.HackableEntity = self.Server_Lift
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1115920056", "1115920056", "S16M060_Main", "box_Ordered_Output_245.Out", "box_HackableController_v2_244.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_SetBoolean_v2_111_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_111
  self.AI_All_Dead = l0.Target
end
function export:f_box_SetBoolean_v2_111_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_111
  self.AI_All_Dead = l0.Target
end
function export:f_box_SetBoolean_v2_111_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_111
  self.AI_All_Dead = l0.Target
end
function export:f_box_SetBoolean_v2_111_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_111
  self.AI_All_Dead = l0.Target
end
function export:f_box_SetBoolean_v2_111_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_111
  self.AI_All_Dead = l0.Target
end
function export:f_box_Ordered_Output_224_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_51
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053455297190"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|733588129", "733588129", "S16M060_Main", "box_Ordered_Output_224.Out", "box_PhoneCommunicationController_51.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_224_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_222()
  l0 = self.box_AISquadStateMonitor_222
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|363013245", "363013245", "S16M060_Main", "box_Ordered_Output_224.Out", "box_AISquadStateMonitor_222.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMessageController_v3_157_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_158
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective040",
    item = "Objective",
    id = "637647"
  }
  l0 = self.box_MissionMessageController_v3_157
  l1 = self.box_MissionMessageController_v3_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1655866584", "1655866584", "S16M060_Main", "box_MissionMessageController_v3_157.Out", "box_MissionMessageController_v3_158.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_PhoneCommunicationController_92_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_76
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060",
    item = "Objective",
    id = "693243"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective020",
    item = "Objective",
    id = "345172"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective040",
    item = "Objective",
    id = "637647"
  }
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective050",
    item = "Objective",
    id = "637648"
  }
  l0 = self.box_PhoneCommunicationController_92
  l1 = self.box_MissionMessageController_v3_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|491709679", "491709679", "S16M060_Main", "box_PhoneCommunicationController_92.StartCommunicationOut", "box_MissionMessageController_v3_76.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_EnvironmentWeatherOverride_118_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_52
  l0.LMALayerName = "Barge_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|499106259", "499106259", "S16M060_Main", "box_EnvironmentWeatherOverride_118.Stopped", "box_LMA_Layer_Controller_52.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_MapPointController_v4_5_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_58()
  l0 = self.box_MapPointController_v4_5
  l1 = self.box_MultipleOR_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1459376817", "1459376817", "S16M060_Main", "box_MapPointController_v4_5.Hidden", "box_MultipleOR_58.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MapPointController_v4_5_Shown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|935952472"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_129_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_MapPointController_v4_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2072962716", "2072962716", "S16M060_Main", "box_MapPointController_v4_5.Shown", "box_Ordered_Output_129.In", l0, l1)
  l1:In()
end
function export:f_box_SetTimeOfDay_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Perk_Controller_219
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1461736913", "1461736913", "S16M060_Main", "box_SetTimeOfDay_31.Out", "box_Perk_Controller_219.AddPerk", clone, l0)
  l0:AddPerk()
end
function export:f_box_MapPointController_v4_122_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_115()
  l0 = self.box_MapPointController_v4_122
  l1 = self.box_Hackable_Monitor_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|943068872", "943068872", "S16M060_Main", "box_MapPointController_v4_122.Hidden", "box_Hackable_Monitor_115.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_122_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_115()
  l0 = self.box_MapPointController_v4_122
  l1 = self.box_Hackable_Monitor_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1679795288", "1679795288", "S16M060_Main", "box_MapPointController_v4_122.Shown", "box_Hackable_Monitor_115.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v3_70_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_72()
  l0 = self.box_VehicleMonitor_v3_70
  l1 = self.box_Multiple_AND_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1815097812", "1815097812", "S16M060_Main", "box_VehicleMonitor_v3_70.Disabled", "box_Multiple_AND_72.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_VehicleMonitor_v3_70_IsUnderwater()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_73()
  l0 = self.box_VehicleMonitor_v3_70
  l1 = self.box_MultipleOR_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1060074431", "1060074431", "S16M060_Main", "box_VehicleMonitor_v3_70.IsUnderwater", "box_MultipleOR_73.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_70_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_73()
  l0 = self.box_VehicleMonitor_v3_70
  l1 = self.box_MultipleOR_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1906191921", "1906191921", "S16M060_Main", "box_VehicleMonitor_v3_70.IsUnusable", "box_MultipleOR_73.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlaySound_v2_181_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669166"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|373990457"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_181
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|173572900", "173572900", "S16M060_Main", "box_PlaySound_v2_181.Out", "box_MissionMusicController_182.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_40_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_209
  l0.CLO = "9223372057525963241"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|988773520", "988773520", "S16M060_Main", "box_Ordered_Output_40.Out", "box_CLOController_209.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_40_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_81()
  l0 = self.box_MultipleOR_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1201998537", "1201998537", "S16M060_Main", "box_Ordered_Output_40.Out", "box_MultipleOR_81.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_140_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_33()
  l0 = self.box_MultipleOR_140
  l1 = self.box_MapPointController_v4_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|728707650", "728707650", "S16M060_Main", "box_MultipleOR_140.Out", "box_MapPointController_v4_33.Show", l0, l1)
  l1:Show()
end
function export:f_box_PhoneCommunicationController_99_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_100
  l0.Seconds = 22
  l0 = self.box_PhoneCommunicationController_99
  l1 = self.box_Timer_v2_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|968415102", "968415102", "S16M060_Main", "box_PhoneCommunicationController_99.StartCommunicationOut", "box_Timer_v2_100.Start", l0, l1)
  l1:Start()
end
function export:f_box_LMA_Layer_Controller_52_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_52
  l1 = self.box_S16M060_CIN_DedsecMomentum_Main_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|710102564", "710102564", "S16M060_Main", "box_LMA_Layer_Controller_52.Unloaded", "box_S16M060_CIN_DedsecMomentum_Main_15.In", l0, l1)
  l1:In()
end
function export:f_box_Vehicle_Controller_239_Unmovable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_sc16m060_SCR_Main_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|364047599", "364047599", "S16M060_Main", "box_Vehicle_Controller_239.Unmovable", "box_sc16m060_SCR_Main_127.DroneTimerStarted", clone, l0)
  l0:DroneTimerStarted()
end
function export:f_box_MultipleOR_81_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|987293682"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_79_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_79_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_79_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_79_Out_3
  l0 = self.box_MultipleOR_81
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|81946017", "81946017", "S16M060_Main", "box_MultipleOR_81.Out", "box_Ordered_Output_79.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_165_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_165
  l1 = self.box_OnceOnly_v3_172
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1355857912", "1355857912", "S16M060_Main", "box_MultipleOR_165.Out", "box_OnceOnly_v3_172.In", l0, l1)
  l1:In(0)
end
function export:f_box_HackableController_v2_98_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_98
  l1 = self.box_OnceOnly_v3_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|292577397", "292577397", "S16M060_Main", "box_HackableController_v2_98.Disabled", "box_OnceOnly_v3_145.In", l0, l1)
  l1:In(0)
end
function export:f_box_Security_Alarm_Panel_Controller_24_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_92
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053455297194"
  l0 = self.box_Security_Alarm_Panel_Controller_24
  l1 = self.box_PhoneCommunicationController_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1465366638", "1465366638", "S16M060_Main", "box_Security_Alarm_Panel_Controller_24.Activated", "box_PhoneCommunicationController_92.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMessageController_v3_123_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_58()
  l0 = self.box_MissionMessageController_v3_123
  l1 = self.box_MultipleOR_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1250767185", "1250767185", "S16M060_Main", "box_MissionMessageController_v3_123.Out", "box_MultipleOR_58.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ReinforcementSystemMonitor_v2_91_CallingNextWave()
  local l0
  self = self._graph
  l0 = self.box_ReinforcementSystemMonitor_v2_91
  self.Barge_AI_list = l0.EventNPCList
end
function export:f_box_ReinforcementSystemMonitor_v2_91_CallingNextWaveSucceeded()
  local l0
  self = self._graph
  l0 = self.box_ReinforcementSystemMonitor_v2_91
  self.Barge_AI_list = l0.EventNPCList
end
function export:f_box_ReinforcementSystemMonitor_v2_91_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_102
  l0.PGTMissionArea = "9223372047775332894"
  l0.AgentList = self.Barge_AI_list
  l0 = self.box_ReinforcementSystemMonitor_v2_91
  l1 = self.box_PGTController_v2_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|493627888", "493627888", "S16M060_Main", "box_ReinforcementSystemMonitor_v2_91.Enabled", "box_PGTController_v2_102.Start", l0, l1)
  l1:Start()
end
function export:f_box_ReinforcementSystemMonitor_v2_91_EntitySpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_ReinforcementSystemMonitor_v2_91
  self.Barge_AI_list = l0.EventNPCList
  l1 = self.box_GetNPC_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1069999365", "1069999365", "S16M060_Main", "box_ReinforcementSystemMonitor_v2_91.EntitySpawned", "box_GetNPC_104.GetEnemiesAlive", l0, l1)
  l1:GetEnemiesAlive()
end
function export:f_box_ReinforcementSystemMonitor_v2_91_Finished()
  local l0
  self = self._graph
  l0 = self.box_ReinforcementSystemMonitor_v2_91
  self.Barge_AI_list = l0.EventNPCList
end
function export:f_box_ReinforcementSystemMonitor_v2_91_ReachedWaveChangeThreshold()
  local l0
  self = self._graph
  l0 = self.box_ReinforcementSystemMonitor_v2_91
  self.Barge_AI_list = l0.EventNPCList
end
function export:f_box_ReinforcementSystemMonitor_v2_91_Reinforcing()
  local l0
  self = self._graph
  l0 = self.box_ReinforcementSystemMonitor_v2_91
  self.Barge_AI_list = l0.EventNPCList
end
function export:f_box_ReinforcementSystemMonitor_v2_91_WaveChanged()
  local l0
  self = self._graph
  l0 = self.box_ReinforcementSystemMonitor_v2_91
  self.Barge_AI_list = l0.EventNPCList
end
function export:f_box_MultipleOR_226_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_228()
  l0 = self.box_MultipleOR_226
  l1 = self.box_AISquadStateMonitor_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1099402531", "1099402531", "S16M060_Main", "box_MultipleOR_226.Out", "box_AISquadStateMonitor_228.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_LMA_Layer_Controller_25_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_LMA_Layer_Controller_25
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|496087405", "496087405", "S16M060_Main", "box_LMA_Layer_Controller_25.Loaded", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MapPointController_v4_33_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_122()
  l0 = self.box_MapPointController_v4_33
  l1 = self.box_MapPointController_v4_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|581039109", "581039109", "S16M060_Main", "box_MapPointController_v4_33.Hidden", "box_MapPointController_v4_122.Show", l0, l1)
  l1:Show()
end
function export:f_box_MapPointController_v4_33_Shown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1482902317"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_124_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_124_Out_1
  l0 = self.box_MapPointController_v4_33
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1226374599", "1226374599", "S16M060_Main", "box_MapPointController_v4_33.Shown", "box_Ordered_Output_124.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v4_85_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_140()
  l0 = self.box_MapPointController_v4_85
  l1 = self.box_MultipleOR_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|731714123", "731714123", "S16M060_Main", "box_MapPointController_v4_85.Hidden", "box_MultipleOR_140.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_133_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TimerToScreen_88
  l0.Seconds = 60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1533761094", "1533761094", "S16M060_Main", "box_Ordered_Output_133.Out", "box_TimerToScreen_88.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_133_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_132
  l0.SoundId = "soundbinary/3552307770.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|766414894", "766414894", "S16M060_Main", "box_Ordered_Output_133.Out", "box_PlaySound_v2_132.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_124_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_117
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060",
    item = "Objective",
    id = "693243"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective020",
    item = "Objective",
    id = "345172"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective040",
    item = "Objective",
    id = "637647"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|454049906", "454049906", "S16M060_Main", "box_Ordered_Output_124.Out", "box_MissionMessageController_v3_117.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_Ordered_Output_124_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_126()
  l0 = self.box_MultipleOR_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|480297132", "480297132", "S16M060_Main", "box_Ordered_Output_124.Out", "box_MultipleOR_126.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_126_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_122()
  l0 = self.box_MultipleOR_126
  l1 = self.box_MapPointController_v4_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1314062643", "1314062643", "S16M060_Main", "box_MultipleOR_126.Out", "box_MapPointController_v4_122.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Intel_Controller_159_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TimerToScreen_106
  l0.Seconds = 5
  l0 = self.box_Intel_Controller_159
  l1 = self.box_TimerToScreen_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1329683666", "1329683666", "S16M060_Main", "box_Intel_Controller_159.Disabled", "box_TimerToScreen_106.Start", l0, l1)
  l1:Start()
end
function export:f_box_Intel_Controller_156_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1465976948"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_133_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_133_Out_1
  l0 = self.box_Intel_Controller_156
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2005182343", "2005182343", "S16M060_Main", "box_Intel_Controller_156.Disabled", "box_Ordered_Output_133.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_28_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_49
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_CinematicPrep_28
  l1 = self.box_MissionCheckpointReach_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2137318191", "2137318191", "S16M060_Main", "box_CinematicPrep_28.PostOut", "box_MissionCheckpointReach_49.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_59_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1947866609"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_137_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_137_Out_1
  l0 = self.box_MissionCheckpointReach_59
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|555688014", "555688014", "S16M060_Main", "box_MissionCheckpointReach_59.Out", "box_Ordered_Output_137.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_49_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_44()
  l0 = self.box_MissionCheckpointReach_49
  l1 = self.box_MissionZone_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|78119392", "78119392", "S16M060_Main", "box_MissionCheckpointReach_49.Out", "box_MissionZone_44.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_205_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372065263966442"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|820924129"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_152_Hidden
  l0.Out = DummyFunction
  l0 = self.box_TriggerMonitor_v2_205
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1243619354", "1243619354", "S16M060_Main", "box_TriggerMonitor_v2_205.Enabled", "box_VisibilityController_v2_152.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TriggerMonitor_v2_205_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_206
  l0.HackableEntity = "9223372059747496663"
  l0 = self.box_TriggerMonitor_v2_205
  l1 = self.box_HackableController_v2_206
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|146652044", "146652044", "S16M060_Main", "box_TriggerMonitor_v2_205.Enter", "box_HackableController_v2_206.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MissionLayer_v2_251_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_253()
  l0 = self.box_MissionLayer_v2_251
  l1 = self.box_MultipleOR_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1747870072", "1747870072", "S16M060_Main", "box_MissionLayer_v2_251.Loaded", "box_MultipleOR_253.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_48_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_203
  l0.Trigger = "9223372046830378951"
  l0.CheckNow = 1
  l0 = self.box_MultipleOR_48
  l1 = self.box_TriggerMonitor_v2_203
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1178546614", "1178546614", "S16M060_Main", "box_MultipleOR_48.Out", "box_TriggerMonitor_v2_203.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_105_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_105
  l1 = self.box_OnceOnly_v3_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|454274205", "454274205", "S16M060_Main", "box_MultipleOR_105.Out", "box_OnceOnly_v3_37.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_82_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_160
  l0.CLO = "9223372067049059805"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1165937587", "1165937587", "S16M060_Main", "box_Ordered_Output_82.Out", "box_CLOMonitor_160.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_Ordered_Output_82_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1781365761", "1781365761", "S16M060_Main", "box_Ordered_Output_82.Out", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_82_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_81()
  l0 = self.box_MultipleOR_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|672992534", "672992534", "S16M060_Main", "box_Ordered_Output_82.Out", "box_MultipleOR_81.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_82_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669166"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = 0
  l0._graph = self
  l0._name = "box_MissionMusicController_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|129479062"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_183_Deactivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|761519994", "761519994", "S16M060_Main", "box_Ordered_Output_82.Out", "box_MissionMusicController_183.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_82_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_sc16m060_SCR_Main_199
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|632879327", "632879327", "S16M060_Main", "box_Ordered_Output_82.Out", "box_sc16m060_SCR_Main_199.StartLights", clone, l0)
  l0:StartLights()
end
function export:f_box_Ordered_Output_82_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|579032802"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_v2_214_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|526271087", "526271087", "S16M060_Main", "box_Ordered_Output_82.Out", "box_FelonySystemController_v2_214.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_FelonyTargetController_230_ChaseStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_229()
  l0 = self.box_MultipleOR_229
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|935231104", "935231104", "S16M060_Main", "box_FelonyTargetController_230.ChaseStarted", "box_MultipleOR_229.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_FelonyTargetController_230_SearchStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_229()
  l0 = self.box_MultipleOR_229
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1428873957", "1428873957", "S16M060_Main", "box_FelonyTargetController_230.SearchStarted", "box_MultipleOR_229.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_OnceOnly_v3_172_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_243"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1104267320"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_243_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_OnceOnly_v3_172
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|527689113", "527689113", "S16M060_Main", "box_OnceOnly_v3_172.Out", "box_Ordered_Output_243.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_237_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_21
  l0.PGTMissionArea = "9223372047775332894"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|813290404", "813290404", "S16M060_Main", "box_InteractionScriptController_237.Disabled", "box_PGTController_v2_21.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_202_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_63
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "Mission failed",
    id = "165440"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|863113622", "863113622", "S16M060_Main", "box_Compare_Boolean_v2_202.A_is_True", "box_MissionController_v4_63.Fail", clone, l0)
  l0:Fail()
end
function export:f_box_MissionMessageController_v3_16_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|711943482"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_135_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_135_Out_1
  l0 = self.box_MissionMessageController_v3_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1137807197", "1137807197", "S16M060_Main", "box_MissionMessageController_v3_16.MessageCompleted", "box_Ordered_Output_135.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_16_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_43()
  l0 = self.box_MissionMessageController_v3_16
  l1 = self.box_MissionZone_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|714935923", "714935923", "S16M060_Main", "box_MissionMessageController_v3_16.Out", "box_MissionZone_43.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionMusicController_128_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_234
  l0.SoundId = "soundbinary/2286467389.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1239268759", "1239268759", "S16M060_Main", "box_MissionMusicController_128.Activated", "box_PlaySound_v2_234.Play", clone, l0)
  l0:Play()
end
function export:f_box_ListWriter_155_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_155
  self.Elevator_part_list = l0.Target
  l0 = self.box_Intel_Controller_154
  l0.EntityList = self.Elevator_part_list
  l0 = self.box_ListWriter_155
  l1 = self.box_Intel_Controller_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1332733508", "1332733508", "S16M060_Main", "box_ListWriter_155.Added", "box_Intel_Controller_154.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_155_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_155
  self.Elevator_part_list = l0.Target
end
function export:f_box_ListWriter_155_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_155
  self.Elevator_part_list = l0.Target
end
function export:f_box_Timer_v2_95_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_95
  l1 = self.box_OnceOnly_v3_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|976955876", "976955876", "S16M060_Main", "box_Timer_v2_95.TimeElapsed", "box_OnceOnly_v3_146.In", l0, l1)
  l1:In(0)
end
function export:f_box_S16M060_CIN_DedsecMomentum_Main_15_out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1780564439"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySystemController_v2_215_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_S16M060_CIN_DedsecMomentum_Main_15
  l1 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1703035524", "1703035524", "S16M060_Main", "box_S16M060_CIN_DedsecMomentum_Main_15.out", "box_FelonySystemController_v2_215.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AISquadStateMonitor_231_ArrestStateAnyTarget()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateMonitor_231
  self.Chopper_Target = l0.ArrestedTarget
  self:OnEnter_box_MultipleOR_212()
  l1 = self.box_MultipleOR_212
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|490095775", "490095775", "S16M060_Main", "box_AISquadStateMonitor_231.ArrestStateAnyTarget", "box_MultipleOR_212.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_231_CombatStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_212()
  l0 = self.box_AISquadStateMonitor_231
  l1 = self.box_MultipleOR_212
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1867811180", "1867811180", "S16M060_Main", "box_AISquadStateMonitor_231.CombatStateAnyTarget", "box_MultipleOR_212.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_231_SearchStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_212()
  l0 = self.box_AISquadStateMonitor_231
  l1 = self.box_MultipleOR_212
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|516094009", "516094009", "S16M060_Main", "box_AISquadStateMonitor_231.SearchStateAnyTarget", "box_MultipleOR_212.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_MapPointController_v4_9_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_148
  l0.Entity = self.Server_Lift
  l0 = self.box_MapPointController_v4_9
  l1 = self.box_Intel_Controller_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1019221649", "1019221649", "S16M060_Main", "box_MapPointController_v4_9.Shown", "box_Intel_Controller_148.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_32_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_85
  l0.MapPoint = "9223372046830379170"
  l0 = self.box_Proximity_Monitor_32
  l1 = self.box_MapPointController_v4_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2051408970", "2051408970", "S16M060_Main", "box_Proximity_Monitor_32.Disabled", "box_MapPointController_v4_85.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Proximity_Monitor_32_ExitRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_32()
  l0 = self.box_Proximity_Monitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|699428640", "699428640", "S16M060_Main", "box_Proximity_Monitor_32.ExitRadius", "box_Proximity_Monitor_32.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Proximity_Monitor_108_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_157
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060",
    item = "Objective",
    id = "693243"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective020",
    item = "Objective",
    id = "345172"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective040",
    item = "Objective",
    id = "637647"
  }
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective050",
    item = "Objective",
    id = "637648"
  }
  l0 = self.box_Proximity_Monitor_108
  l1 = self.box_MissionMessageController_v3_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1139821254", "1139821254", "S16M060_Main", "box_Proximity_Monitor_108.EnterRadius", "box_MissionMessageController_v3_157.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_MultipleOR_173_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOMonitor_29()
  l0 = self.box_MultipleOR_173
  l1 = self.box_CLOMonitor_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1533737479", "1533737479", "S16M060_Main", "box_MultipleOR_173.Out", "box_CLOMonitor_29.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_6
  l0.HackableEntityList = self.Elevator_Hackable
  l0 = self.box_MultipleOR_11
  l1 = self.box_HackableController_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|192218471", "192218471", "S16M060_Main", "box_MultipleOR_11.Out", "box_HackableController_v2_6.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MultipleOR_164_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_62
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MultipleOR_164
  l1 = self.box_CinematicPrep_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1375064683", "1375064683", "S16M060_Main", "box_MultipleOR_164.Out", "box_CinematicPrep_62.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_TriggerMonitor_v2_178_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_177()
  l0 = self.box_TriggerMonitor_v2_178
  l1 = self.box_Proximity_Monitor_177
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1448414076", "1448414076", "S16M060_Main", "box_TriggerMonitor_v2_178.Disabled", "box_Proximity_Monitor_177.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_178_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_177()
  l0 = self.box_TriggerMonitor_v2_178
  l1 = self.box_Proximity_Monitor_177
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1540122053", "1540122053", "S16M060_Main", "box_TriggerMonitor_v2_178.Enabled", "box_Proximity_Monitor_177.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_178_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_180()
  l0 = self.box_TriggerMonitor_v2_178
  l1 = self.box_MultipleOR_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1293739066", "1293739066", "S16M060_Main", "box_TriggerMonitor_v2_178.Enter", "box_MultipleOR_180.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_OnceOnly_v3_167_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_87
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053455297193"
  l0 = self.box_OnceOnly_v3_167
  l1 = self.box_PhoneCommunicationController_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|646785960", "646785960", "S16M060_Main", "box_OnceOnly_v3_167.Out", "box_PhoneCommunicationController_87.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_FelonySystemController_v2_215_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Perk_Controller_216
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1736019108", "1736019108", "S16M060_Main", "box_FelonySystemController_v2_215.Enabled", "box_Perk_Controller_216.ResetPerks", clone, l0)
  l0:ResetPerks()
end
function export:f_box_MultipleOR_253_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055142762454"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
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
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|366742006"
  l0.Out = self.f_box_Lanes_Restrictions_Control_120_Out
  l0 = self.box_MultipleOR_253
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1314588600", "1314588600", "S16M060_Main", "box_MultipleOR_253.Out", "box_Lanes_Restrictions_Control_120.In", l0, l1)
  l1:In()
end
function export:f_box_EnvironmentWeatherOverride_64_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|911018493"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_197_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_197_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_197_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|345049180", "345049180", "S16M060_Main", "box_EnvironmentWeatherOverride_64.Started", "box_Ordered_Output_197.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_171_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_90()
  l0 = self.box_OnceOnly_v3_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|912304933", "912304933", "S16M060_Main", "box_Ordered_Output_171.Out", "box_OnceOnly_v3_90.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_171_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_170()
  l0 = self.box_OnceOnly_v3_170
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1033778945", "1033778945", "S16M060_Main", "box_Ordered_Output_171.Out", "box_OnceOnly_v3_170.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Ordered_Output_80_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_29()
  l0 = self.box_CLOMonitor_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|411986093", "411986093", "S16M060_Main", "box_Ordered_Output_80.Out", "box_CLOMonitor_29.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_Ordered_Output_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1997999126"
  l0.Out = self.f_box_Simple_Node_45_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|402336481", "402336481", "S16M060_Main", "box_Ordered_Output_80.Out", "box_Simple_Node_45.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_80_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_81()
  l0 = self.box_MultipleOR_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|153362836", "153362836", "S16M060_Main", "box_Ordered_Output_80.Out", "box_MultipleOR_81.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_80_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669166"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = 0
  l0._graph = self
  l0._name = "box_MissionMusicController_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|95723215"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_175_Deactivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|593870347", "593870347", "S16M060_Main", "box_Ordered_Output_80.Out", "box_MissionMusicController_175.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_80_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_sc16m060_SCR_Main_198
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|967211431", "967211431", "S16M060_Main", "box_Ordered_Output_80.Out", "box_sc16m060_SCR_Main_198.StartLights", clone, l0)
  l0:StartLights()
end
function export:f_box_Ordered_Output_80_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_213"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|122622432"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_v2_213_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2036105290", "2036105290", "S16M060_Main", "box_Ordered_Output_80.Out", "box_FelonySystemController_v2_213.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_VehicleMonitor_v3_189_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_189
  l1 = self.box_OnceOnly_v3_194
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|925024159", "925024159", "S16M060_Main", "box_VehicleMonitor_v3_189.Disabled", "box_OnceOnly_v3_194.In", l0, l1)
  l1:In(0)
end
function export:f_box_VehicleMonitor_v3_189_IsUnderwater()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_195()
  l0 = self.box_VehicleMonitor_v3_189
  l1 = self.box_MultipleOR_195
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1703531304", "1703531304", "S16M060_Main", "box_VehicleMonitor_v3_189.IsUnderwater", "box_MultipleOR_195.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_189_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_195()
  l0 = self.box_VehicleMonitor_v3_189
  l1 = self.box_MultipleOR_195
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1400431047", "1400431047", "S16M060_Main", "box_VehicleMonitor_v3_189.IsUnusable", "box_MultipleOR_195.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_201_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_201
  self.FailuerCheck = l0.Target
end
function export:f_box_SetBoolean_v2_201_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_201
  self.FailuerCheck = l0.Target
  l1 = self.box_S16M060_CIN_BigFoot_Main_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|933559599", "933559599", "S16M060_Main", "box_SetBoolean_v2_201.SetFalse", "box_S16M060_CIN_BigFoot_Main_18.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_201_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_201
  self.FailuerCheck = l0.Target
end
function export:f_box_SetBoolean_v2_201_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_201
  self.FailuerCheck = l0.Target
end
function export:f_box_SetBoolean_v2_201_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_201
  self.FailuerCheck = l0.Target
end
function export:f_box_TriggerMonitor_v2_203_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372065263966442"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|538944283"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_151_Hidden
  l0.Out = DummyFunction
  l0 = self.box_TriggerMonitor_v2_203
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|611539237", "611539237", "S16M060_Main", "box_TriggerMonitor_v2_203.Enabled", "box_VisibilityController_v2_151.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TriggerMonitor_v2_203_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_204
  l0.HackableEntity = "9223372059747496663"
  l0 = self.box_TriggerMonitor_v2_203
  l1 = self.box_HackableController_v2_204
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|113057421", "113057421", "S16M060_Main", "box_TriggerMonitor_v2_203.Enter", "box_HackableController_v2_204.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MissionLayer_v2_61_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1227866942"
  l0.Out = self.f_box_Get_Player_ID_60_Out
  l0 = self.box_MissionLayer_v2_61
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1236312005", "1236312005", "S16M060_Main", "box_MissionLayer_v2_61.Loaded", "box_Get_Player_ID_60.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_67_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_69
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825670"
  l0 = self.box_Timer_v2_67
  l1 = self.box_PhoneCommunicationController_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1572594192", "1572594192", "S16M060_Main", "box_Timer_v2_67.TimeElapsed", "box_PhoneCommunicationController_69.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMessageController_v3_76_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_142
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective040",
    item = "Objective",
    id = "637647"
  }
  l0 = self.box_MissionMessageController_v3_76
  l1 = self.box_MissionMessageController_v3_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1031961824", "1031961824", "S16M060_Main", "box_MissionMessageController_v3_76.Out", "box_MissionMessageController_v3_142.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_CLOMonitor_7_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOMonitor_196()
  l0 = self.box_CLOMonitor_7
  l1 = self.box_CLOMonitor_196
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1302576988", "1302576988", "S16M060_Main", "box_CLOMonitor_7.Disabled", "box_CLOMonitor_196.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_CLOMonitor_7_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_7
  self.Server_Lift = l0.UserID
  self:OnEnter_box_MultipleOR_191()
  l1 = self.box_MultipleOR_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1795771", "1795771", "S16M060_Main", "box_CLOMonitor_7.GotUser", "box_MultipleOR_191.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CLOMonitor_7_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_7
  self.Server_Lift = l0.UserID
  self:OnEnter_box_CLOMonitor_196()
  l1 = self.box_CLOMonitor_196
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|198251482", "198251482", "S16M060_Main", "box_CLOMonitor_7.NotGotUser", "box_CLOMonitor_196.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_7_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_7
  self.Server_Lift = l0.UserID
end
function export:f_box_SnapAndBind_109_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_9
  l0.MapPoint = "9223372046830379170"
  l0 = self.box_SnapAndBind_109
  l1 = self.box_MapPointController_v4_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|758569308", "758569308", "S16M060_Main", "box_SnapAndBind_109.Attached", "box_MapPointController_v4_9.Show", l0, l1)
  l1:Show()
end
function export:f_box_Ordered_Output_137_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_109
  l0.Parent = self.Server_Lift
  l0.Child = "9223372046830379170"
  l0.zPosOffset = 2.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|638695036", "638695036", "S16M060_Main", "box_Ordered_Output_137.Out", "box_SnapAndBind_109.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Ordered_Output_137_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_136
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1771280655", "1771280655", "S16M060_Main", "box_Ordered_Output_137.Out", "box_PlaySound_v2_136.Play", clone, l0)
  l0:Play()
end
function export:f_box_MultipleOR_225_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_222()
  l0 = self.box_MultipleOR_225
  l1 = self.box_AISquadStateMonitor_222
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1767236095", "1767236095", "S16M060_Main", "box_MultipleOR_225.Out", "box_AISquadStateMonitor_222.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Interact_Gameplay_89_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_240
  l0.HackableEntity = self.Server_Lift
  l0 = self.box_Interact_Gameplay_89
  l1 = self.box_HackableController_v2_240
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1140512975", "1140512975", "S16M060_Main", "box_Interact_Gameplay_89.Interacted", "box_HackableController_v2_240.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_SetTimeOfDay_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372056453997549"
  l0.FadeIn = 0
  l0.FadeOut = 0
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|323523668"
  l0.Started = self.f_box_EnvironmentWeatherOverride_68_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|149157839", "149157839", "S16M060_Main", "box_SetTimeOfDay_12.Out", "box_EnvironmentWeatherOverride_68.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_232_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = self.Chopper_Target
  l0.FelonyType = "Police"
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372069125108832"
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_223"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|631735208"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_box_FelonyTargetController_223_ChaseStarted
  l0.SearchStarted = self.f_box_FelonyTargetController_223_SearchStarted
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_MultipleOR_232
  l1 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1065081143", "1065081143", "S16M060_Main", "box_MultipleOR_232.Out", "box_FelonyTargetController_223.StartChase", l0, l1)
  l1:StartChase()
end
function export:f_box_MultipleOR_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_59
  l0.Checkpoint = "CheckPoint_3"
  l0 = self.box_MultipleOR_65
  l1 = self.box_MissionCheckpointReach_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|305462984", "305462984", "S16M060_Main", "box_MultipleOR_65.Out", "box_MissionCheckpointReach_59.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_143_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_144()
  l0 = self.box_MissionMessageController_v3_143
  l1 = self.box_MapPointController_v4_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1694878748", "1694878748", "S16M060_Main", "box_MissionMessageController_v3_143.Out", "box_MapPointController_v4_144.Show", l0, l1)
  l1:Show()
end
function export:f_box_OnceOnly_v3_194_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FailuerCheck
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1658914818"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_202_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_OnceOnly_v3_194
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|662718255", "662718255", "S16M060_Main", "box_OnceOnly_v3_194.Out", "box_Compare_Boolean_v2_202.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_176_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669166"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|822896709"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_176
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2018404004", "2018404004", "S16M060_Main", "box_PlaySound_v2_176.Out", "box_MissionMusicController_174.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Simple_Node_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1903700491", "1903700491", "S16M060_Main", "box_Simple_Node_45.Out", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_PhoneCommunicationController_74_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_PhoneCommunicationController_74
  l1 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1516923585", "1516923585", "S16M060_Main", "box_PhoneCommunicationController_74.OnCommunicationStarted", "box_MultipleOR_65.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_169_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_170()
  l0 = self.box_OnceOnly_v3_170
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1315429861", "1315429861", "S16M060_Main", "box_Ordered_Output_169.Out", "box_OnceOnly_v3_170.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_169_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_90()
  l0 = self.box_OnceOnly_v3_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1787821304", "1787821304", "S16M060_Main", "box_Ordered_Output_169.Out", "box_OnceOnly_v3_90.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_MissionMessageController_v3_26_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_5()
  l0 = self.box_MissionMessageController_v3_26
  l1 = self.box_MapPointController_v4_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1028867329", "1028867329", "S16M060_Main", "box_MissionMessageController_v3_26.Out", "box_MapPointController_v4_5.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_PlaySound_v2_134_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_144()
  l0 = self.box_PlaySound_v2_134
  l1 = self.box_MapPointController_v4_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1629603288", "1629603288", "S16M060_Main", "box_PlaySound_v2_134.Out", "box_MapPointController_v4_144.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionLayer_v2_54_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|463221103"
  l0.Out = self.f_box_Get_Player_ID_55_Out
  l0 = self.box_MissionLayer_v2_54
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|557770116", "557770116", "S16M060_Main", "box_MissionLayer_v2_54.Loaded", "box_Get_Player_ID_55.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_200_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_78
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "Mission failed",
    id = "165440"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|799829751", "799829751", "S16M060_Main", "box_Compare_Boolean_v2_200.A_is_True", "box_MissionController_v4_78.Fail", clone, l0)
  l0:Fail()
end
function export:f_box_PhoneCommunicationController_93_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_250"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|485618563"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_250_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_250_Out_1
  l0 = self.box_PhoneCommunicationController_93
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2147181363", "2147181363", "S16M060_Main", "box_PhoneCommunicationController_93.StartCommunicationOut", "box_Ordered_Output_250.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_84_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_PhoneCommunicationController_84
  l1 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1948184320", "1948184320", "S16M060_Main", "box_PhoneCommunicationController_84.Out", "box_MultipleOR_42.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_158_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_159
  l0.EntityList = self.Elevator_part_list
  l0 = self.box_MissionMessageController_v3_158
  l1 = self.box_Intel_Controller_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1903781976", "1903781976", "S16M060_Main", "box_MissionMessageController_v3_158.Out", "box_Intel_Controller_159.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Player_Proximity_Monitor_41_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|296663004"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_113_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_113_Out_1
  l0 = self.box_Player_Proximity_Monitor_41
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|481427595", "481427595", "S16M060_Main", "box_Player_Proximity_Monitor_41.Disabled", "box_Ordered_Output_113.In", l0, l1)
  l1:In()
end
function export:f_box_Player_Proximity_Monitor_41_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_3()
  l0 = self.box_Player_Proximity_Monitor_41
  l1 = self.box_TriggerMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|872757072", "872757072", "S16M060_Main", "box_Player_Proximity_Monitor_41.Enabled", "box_TriggerMonitor_v2_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Player_Proximity_Monitor_41_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_41()
  l0 = self.box_Player_Proximity_Monitor_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1342679066", "1342679066", "S16M060_Main", "box_Player_Proximity_Monitor_41.EnterRadius", "box_Player_Proximity_Monitor_41.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_SetTimeOfDay_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372056453997549"
  l0.FadeIn = 0
  l0.FadeOut = 0
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|1167868422"
  l0.Started = self.f_box_EnvironmentWeatherOverride_119_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|2137466201", "2137466201", "S16M060_Main", "box_SetTimeOfDay_10.Out", "box_EnvironmentWeatherOverride_119.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_90_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_140()
  l0 = self.box_OnceOnly_v3_90
  l1 = self.box_MultipleOR_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|943123607", "943123607", "S16M060_Main", "box_OnceOnly_v3_90.Out", "box_MultipleOR_140.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CinematicPrep_62_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_CinematicPrep_62
  l1 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\S16M060.domino|@S16M060_Main|557368913", "557368913", "S16M060_Main", "box_CinematicPrep_62.PostOut", "box_MultipleOR_65.Input", l0, l1)
  l1:Input(1)
end
function export:OnEnter_box_MultipleOR_75()
end
function export:OnEnter_box_CLOMonitor_196()
  local l0
  l0 = self.box_CLOMonitor_196
  l0.CLO = "9223372067049059805"
end
function export:OnEnter_box_MultipleOR_247()
end
function export:OnEnter_box_Hackable_Monitor_115()
  local l0
  l0 = self.box_Hackable_Monitor_115
  l0.HackableEntityList = self.Elevator_Hackable
end
function export:OnEnter_box_MultipleOR_38()
end
function export:OnEnter_box_MultipleOR_180()
end
function export:OnEnter_box_MultipleOR_195()
end
function export:OnEnter_box_CLOMonitor_163()
  local l0
  l0 = self.box_CLOMonitor_163
  l0.CLO = "9223372067049059805"
end
function export:OnEnter_box_MultipleOR_58()
end
function export:OnEnter_box_MultipleOR_212()
end
function export:OnEnter_box_MultipleOR_42()
end
function export:OnEnter_box_Proximity_Monitor_114()
  local l0
  l0 = self.box_Proximity_Monitor_114
  l0.Entity1 = self.Server_Lift
  l0.Entity2 = "9223372055142759890"
  l0.Radius = 2.8
  l0.CheckNow = 1
end
function export:OnEnter_box_PlayerOnlyTriggerNoRCTip_235()
  local l0
  l0 = self.box_PlayerOnlyTriggerNoRCTip_235
  l0.Trigger = "9223372073445745593"
end
function export:OnEnter_box_MissionZone_44()
  local l0
  l0 = self.box_MissionZone_44
  l0.MissionArea = "9223372047951013074"
  l0.MissionLayer = "S16M060_Main"
  l0.LmaLayer = "Barge_LMA"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_CLOMonitor_161()
  local l0
  l0 = self.box_CLOMonitor_161
  l0.CLO = "9223372067049059805"
end
function export:OnEnter_box_OnceOnly_v3_170()
end
function export:OnEnter_box_Hackable_Monitor_179()
  local l0
  l0 = self.box_Hackable_Monitor_179
  l0.HackableEntity = self.Server_Lift
end
function export:OnEnter_box_VehicleMonitor_v3_19()
  local l0
  l0 = self.box_VehicleMonitor_v3_19
  l0.Vehicle = self.ForkLift_02
end
function export:OnEnter_box_TriggerMonitor_v2_3()
  local l0
  l0 = self.box_TriggerMonitor_v2_3
  l0.Trigger = "9223372046830378951"
  l0.CheckNow = 1
end
function export:OnEnter_box_AISquadStateMonitor_228()
  local l0
  l0 = self.box_AISquadStateMonitor_228
  l0.Affiliation = "SFPD"
end
function export:OnEnter_box_MultipleOR_191()
end
function export:OnEnter_box_TriggerMonitor_v2_13()
  local l0
  l0 = self.box_TriggerMonitor_v2_13
  l0.Trigger = "9223372046830379173"
  l0.CheckNow = 1
end
function export:OnEnter_box_VehicleMonitor_v3_66()
end
function export:OnEnter_box_CLOMonitor_168()
  local l0
  l0 = self.box_CLOMonitor_168
  l0.CLO = "9223372067049059805"
end
function export:OnEnter_box_MultipleOR_77()
end
function export:OnEnter_box_VehicleMonitor_v3_71()
  local l0
  l0 = self.box_VehicleMonitor_v3_71
  l0.Vehicle = self.ForkLift_05
end
function export:OnEnter_box_AISquadStateMonitor_222()
  local l0
  l0 = self.box_AISquadStateMonitor_222
  l0.Affiliation = "SFPD"
end
function export:OnEnter_box_CLOMonitor_29()
  local l0
  l0 = self.box_CLOMonitor_29
  l0.CLO = "9223372067049059805"
end
function export:OnEnter_box_MapPointController_v4_144()
  local l0
  l0 = self.box_MapPointController_v4_144
  l0.MapPoint = "9223372046830379172"
end
function export:OnEnter_box_MultipleOR_233()
end
function export:OnEnter_box_MissionZone_43()
  local l0
  l0 = self.box_MissionZone_43
  l0.MissionArea = "9223372047951013076"
  l0.MissionLayer = "S16M060_Main"
  l0.LmaLayer = "Barge_LMA"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_229()
end
function export:OnEnter_box_MultipleOR_73()
end
function export:OnEnter_box_Proximity_Monitor_177()
  local l0
  l0 = self.box_Proximity_Monitor_177
  l0.Entity1 = self.Server_Lift
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 5
  l0.CheckDistance3D = 1
end
function export:OnEnter_box_Multiple_AND_72()
end
function export:OnEnter_box_MapPointController_v4_5()
  local l0
  l0 = self.box_MapPointController_v4_5
  l0.MapPoint = "9223372046830378953"
end
function export:OnEnter_box_MapPointController_v4_122()
  local l0
  l0 = self.box_MapPointController_v4_122
  l0.MapPoint = "9223372060751356445"
end
function export:OnEnter_box_VehicleMonitor_v3_70()
  local l0
  l0 = self.box_VehicleMonitor_v3_70
  l0.Vehicle = self.ForkLift_03
end
function export:OnEnter_box_MultipleOR_140()
end
function export:OnEnter_box_MultipleOR_81()
end
function export:OnEnter_box_MultipleOR_165()
end
function export:OnEnter_box_MultipleOR_226()
end
function export:OnEnter_box_MapPointController_v4_33()
  local l0
  l0 = self.box_MapPointController_v4_33
  l0.MapPoint = "9223372055142759888"
end
function export:OnEnter_box_MultipleOR_126()
end
function export:OnEnter_box_MultipleOR_48()
end
function export:OnEnter_box_MultipleOR_105()
end
function export:OnEnter_box_AISquadStateMonitor_231()
  local l0
  l0 = self.box_AISquadStateMonitor_231
  l0.Affiliation = "SFPD"
end
function export:OnEnter_box_Proximity_Monitor_32()
  local l0
  l0 = self.box_Proximity_Monitor_32
  l0.Entity1 = "9223372052537129959"
  l0.Entity2 = self.Server_Lift
  l0.Radius = 2.5
  l0.CheckDistance3D = 1
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_173()
end
function export:OnEnter_box_MultipleOR_11()
end
function export:OnEnter_box_MultipleOR_164()
end
function export:OnEnter_box_TriggerMonitor_v2_178()
  local l0
  l0 = self.box_TriggerMonitor_v2_178
  l0.Trigger = "9223372046830379165"
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_253()
end
function export:OnEnter_box_VehicleMonitor_v3_189()
  local l0
  l0 = self.box_VehicleMonitor_v3_189
  l0.Vehicle = self.Server_Lift
end
function export:OnEnter_box_CLOMonitor_7()
  local l0
  l0 = self.box_CLOMonitor_7
  l0.CLO = "9223372067049059805"
end
function export:OnEnter_box_MultipleOR_225()
end
function export:OnEnter_box_MultipleOR_232()
end
function export:OnEnter_box_MultipleOR_65()
end
function export:OnEnter_box_Player_Proximity_Monitor_41()
  local l0
  l0 = self.box_Player_Proximity_Monitor_41
  l0.TargetEntity = "9223372047951013077"
  l0.Radius = 120
end
function export:OnEnter_box_OnceOnly_v3_90()
end
_compilerVersion = 4
