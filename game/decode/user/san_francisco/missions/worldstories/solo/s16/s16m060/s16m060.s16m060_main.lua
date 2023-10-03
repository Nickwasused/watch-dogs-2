export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
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
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
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
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PerkController.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionSpecificIngredients.PlayerOnlyTriggerNoRCTip.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  cbox:RegisterBox("domino/System/RemoteControlledVehicleController.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_cin_bigfoot.S16M060_CIN_BigFoot_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_cin_dedsecmomentum.S16M060_CIN_DedsecMomentum_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.lua")
  cbox:RegisterBox("domino/System/SecurityAlarmPanelController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
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
  self[75] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[75]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_75_Out
  self[35] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[35]
  l0._graph = self
  self[240] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[240]
  l0._graph = self
  l0.Enabled = self.f_240_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[196] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[196]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_196_Disabled
  l0.GotUser = self.f_196_GotUser
  l0.NotGotUser = self.f_196_NotGotUser
  l0.OnUserInPlace = self.f_196_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[247] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[247]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_247_Out
  self[115] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[115]
  l0._graph = self
  l0.Enabled = self.f_115_Enabled
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_115_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[38] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[38]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_38_Out
  self[219] = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self[219]
  l0._graph = self
  l0.PerkAdded = self.f_219_PerkAdded
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self[180] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[180]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_180_Out
  self[199] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.lua")
  l0 = self[199]
  l0._graph = self
  l0.out = DummyFunction
  l0.DroneUnspawned = DummyFunction
  self[6] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[6]
  l0._graph = self
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
  self[116] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[116]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_116_Added
  l0.Removed = self.f_116_Removed
  l0.Out = self.f_116_Out
  self[69] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[69]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[166] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[166]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_166_GotUser
  l0.NotGotUser = self.f_166_NotGotUser
  l0.OnUserInPlace = self.f_166_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[195] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[195]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_195_Out
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[47] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[47]
  l0._graph = self
  l0.Loaded = self.f_47_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[163] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[163]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_163_Disabled
  l0.GotUser = self.f_163_GotUser
  l0.NotGotUser = self.f_163_NotGotUser
  l0.OnUserInPlace = self.f_163_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[58] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[58]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_58_Out
  self[162] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[162]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_162_Out
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
  self[212] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[212]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_212_Out
  self[42] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[42]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_42_Out
  self[36] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_36_Unloaded
  l0.Reseted = DummyFunction
  self[114] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[114]
  l0._graph = self
  l0.Enabled = self.f_114_Enabled
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_114_EnterRadius
  l0.ExitRadius = self.f_114_ExitRadius
  self[235] = cbox:CreateBox("domino/Library/common/MissionSpecificIngredients.PlayerOnlyTriggerNoRCTip.lua")
  l0 = self[235]
  l0._graph = self
  l0.Enter = DummyFunction
  self[97] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[97]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_97_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[37] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[37]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_37_Out
  l0.ResetOut = DummyFunction
  self[44] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[44]
  l0._graph = self
  l0.Enabled = self.f_44_Enabled
  l0.Disabled = self.f_44_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self[14] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_14_EnterRadius
  l0.ExitRadius = DummyFunction
  self[23] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_23_GotUser
  l0.NotGotUser = self.f_23_NotGotUser
  l0.OnUserInPlace = self.f_23_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[234] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[234]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[102] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[102]
  l0._graph = self
  l0.Started = self.f_102_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self[145] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[145]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_145_Out
  l0.ResetOut = DummyFunction
  self[22] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_22_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[161] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[161]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_161_Disabled
  l0.GotUser = self.f_161_GotUser
  l0.NotGotUser = self.f_161_NotGotUser
  l0.OnUserInPlace = self.f_161_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[142] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[142]
  l0._graph = self
  l0.Out = self.f_142_Out
  l0.MessageCompleted = DummyFunction
  self[210] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[210]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_210_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[198] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.lua")
  l0 = self[198]
  l0._graph = self
  l0.out = DummyFunction
  l0.DroneUnspawned = DummyFunction
  self[206] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[206]
  l0._graph = self
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
  self[220] = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self[220]
  l0._graph = self
  l0.PerkAdded = self.f_220_PerkAdded
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self[101] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[101]
  l0._graph = self
  l0.StartCommunicationOut = self.f_101_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[136] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[136]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[170] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[170]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_170_Out
  l0.ResetOut = DummyFunction
  self[30] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_30_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[17] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Loaded = self.f_17_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[154] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[154]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self[106] = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self[106]
  l0._graph = self
  l0.Started = self.f_106_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_106_TimeElapsed
  self[150] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.lua")
  l0 = self[150]
  l0._graph = self
  l0.out = DummyFunction
  l0.DroneUnspawned = DummyFunction
  self[179] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[179]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_179_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_179_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[19] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_19_Disabled
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
  l0.IsUnusable = self.f_19_IsUnusable
  l0.IsUnderwater = self.f_19_IsUnderwater
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
  self[21] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_21_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[148] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[148]
  l0._graph = self
  l0.Enabled = self.f_148_Enabled
  l0.Disabled = DummyFunction
  self[209] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[209]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_209_OnUserInPlace
  self[3] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.Enter = self.f_3_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[141] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[141]
  l0._graph = self
  l0.Out = self.f_141_Out
  l0.MessageCompleted = DummyFunction
  self[228] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[228]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = self.f_228_ArrestStateAnyTarget
  l0.CombatState = DummyFunction
  l0.CombatStateAnyTarget = self.f_228_CombatStateAnyTarget
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = self.f_228_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[18] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_cin_bigfoot.S16M060_CIN_BigFoot_Main.lua")
  l0 = self[18]
  l0._graph = self
  l0.cin_out = self.f_18_cin_out
  self[27] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0.MessageCompleted = DummyFunction
  self[147] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[147]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_147_Out
  l0.ResetOut = DummyFunction
  self[34] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[34]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_34_GotUser
  l0.NotGotUser = self.f_34_NotGotUser
  l0.OnUserInPlace = self.f_34_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[191] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[191]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_191_Out
  self[39] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = self.f_39_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[13] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = self.f_13_Enabled
  l0.Disabled = self.f_13_Disabled
  l0.Enter = self.f_13_Enter
  l0.Leave = self.f_13_Leave
  l0.Use = DummyFunction
  self[221] = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self[221]
  l0._graph = self
  l0.PerkAdded = self.f_221_PerkAdded
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self[66] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[66]
  l0._graph = self
  l0.Enabled = self.f_66_Enabled
  l0.Disabled = self.f_66_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_66_Entered
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
  self[208] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[208]
  l0._graph = self
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
  self[57] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = self.f_57_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[107] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[107]
  l0._graph = self
  l0.StartCommunicationOut = self.f_107_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[168] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[168]
  l0._graph = self
  l0.Enabled = self.f_168_Enabled
  l0.Disabled = self.f_168_Disabled
  l0.GotUser = self.f_168_GotUser
  l0.NotGotUser = self.f_168_NotGotUser
  l0.OnUserInPlace = self.f_168_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[160] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[160]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_160_GotUser
  l0.NotGotUser = self.f_160_NotGotUser
  l0.OnUserInPlace = self.f_160_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[77] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[77]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_77_Out
  self[146] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[146]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_146_Out
  l0.ResetOut = DummyFunction
  self[204] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[204]
  l0._graph = self
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
  self[104] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[104]
  l0._graph = self
  l0.GotNPCList = self.f_104_GotNPCList
  self[71] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[71]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_71_Disabled
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
  l0.IsUnusable = self.f_71_IsUnusable
  l0.IsUnderwater = self.f_71_IsUnderwater
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
  self[222] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[222]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = self.f_222_ArrestStateAnyTarget
  l0.CombatState = DummyFunction
  l0.CombatStateAnyTarget = self.f_222_CombatStateAnyTarget
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = self.f_222_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[216] = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self[216]
  l0._graph = self
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = self.f_216_PerkReseted
  self[29] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[29]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_29_Disabled
  l0.GotUser = self.f_29_GotUser
  l0.NotGotUser = self.f_29_NotGotUser
  l0.OnUserInPlace = self.f_29_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[144] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[144]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[86] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[86]
  l0._graph = self
  l0.StartCommunicationOut = self.f_86_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[217] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[217]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_217_Out
  l0.ResetOut = DummyFunction
  self[233] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[233]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_233_Out
  self[43] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[43]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[56] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[56]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_56_PostOut
  self[125] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[125]
  l0._graph = self
  l0.Out = self.f_125_Out
  l0.MessageCompleted = DummyFunction
  self[88] = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self[88]
  l0._graph = self
  l0.Started = self.f_88_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_88_TimeElapsed
  self[207] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[207]
  l0._graph = self
  l0.Enabled = self.f_207_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_207_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[252] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[252]
  l0._graph = self
  l0.Out = self.f_252_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[248] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[248]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_248_Out
  l0.ResetOut = DummyFunction
  self[229] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[229]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_229_Out
  self[53] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = self.f_53_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[63] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[63]
  l0._graph = self
  self[241] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[241]
  l0._graph = self
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
  self[244] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[244]
  l0._graph = self
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
  self[249] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[249]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_249_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[94] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[94]
  l0._graph = self
  l0.StartCommunicationOut = self.f_94_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[87] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[87]
  l0._graph = self
  l0.StartCommunicationOut = self.f_87_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[73] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[73]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_73_Out
  self[4] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.MessageCompleted = DummyFunction
  self[177] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[177]
  l0._graph = self
  l0.Enabled = self.f_177_Enabled
  l0.Disabled = self.f_177_Disabled
  l0.EnterRadius = self.f_177_EnterRadius
  l0.ExitRadius = DummyFunction
  self[112] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[112]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = DummyFunction
  l0.DBNO = DummyFunction
  l0.AllDead = self.f_112_AllDead
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[117] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[117]
  l0._graph = self
  l0.Out = self.f_117_Out
  l0.MessageCompleted = DummyFunction
  self[20] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_20_GotUser
  l0.NotGotUser = self.f_20_NotGotUser
  l0.OnUserInPlace = self.f_20_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[72] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[72]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_72_Out
  self[78] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[78]
  l0._graph = self
  self[111] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[111]
  l0._graph = self
  l0.Out = self.f_111_Out
  l0.SetTrue = self.f_111_SetTrue
  l0.SetFalse = self.f_111_SetFalse
  l0.Toggled = self.f_111_Toggled
  l0.SetFromBool = self.f_111_SetFromBool
  self[157] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[157]
  l0._graph = self
  l0.Out = self.f_157_Out
  l0.MessageCompleted = DummyFunction
  self[92] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[92]
  l0._graph = self
  l0.StartCommunicationOut = self.f_92_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[5]
  l0._graph = self
  l0.Shown = self.f_5_Shown
  l0.Hidden = self.f_5_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[122] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[122]
  l0._graph = self
  l0.Shown = self.f_122_Shown
  l0.Hidden = self.f_122_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[70] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[70]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_70_Disabled
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
  l0.IsUnusable = self.f_70_IsUnusable
  l0.IsUnderwater = self.f_70_IsUnderwater
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
  self[181] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[181]
  l0._graph = self
  l0.Out = self.f_181_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[140] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[140]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_140_Out
  self[99] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[99]
  l0._graph = self
  l0.StartCommunicationOut = self.f_99_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[52] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[52]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_52_Unloaded
  self[81] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[81]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_81_Out
  self[165] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[165]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_165_Out
  self[98] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[98]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_98_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[24] = cbox:CreateBox("domino/System/SecurityAlarmPanelController.lua")
  l0 = self[24]
  l0._graph = self
  l0.Activated = self.f_24_Activated
  l0.Deactivated = DummyFunction
  self[123] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[123]
  l0._graph = self
  l0.Out = self.f_123_Out
  l0.MessageCompleted = DummyFunction
  self[91] = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self[91]
  l0._graph = self
  l0.Enabled = self.f_91_Enabled
  l0.Disabled = DummyFunction
  l0.None = DummyFunction
  l0.Reinforcing = self.f_91_Reinforcing
  l0.CallingNextWave = self.f_91_CallingNextWave
  l0.CallingNextWaveSucceeded = self.f_91_CallingNextWaveSucceeded
  l0.ReachedWaveChangeThreshold = self.f_91_ReachedWaveChangeThreshold
  l0.WaveChanged = self.f_91_WaveChanged
  l0.EntitySpawned = self.f_91_EntitySpawned
  l0.Finished = self.f_91_Finished
  self[226] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[226]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_226_Out
  self[25] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[25]
  l0._graph = self
  l0.Loaded = self.f_25_Loaded
  l0.Unloaded = DummyFunction
  self[33] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[33]
  l0._graph = self
  l0.Shown = self.f_33_Shown
  l0.Hidden = self.f_33_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[85] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[85]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_85_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[192] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[192]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[126] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[126]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_126_Out
  self[159] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[159]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_159_Disabled
  self[156] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[156]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_156_Disabled
  self[28] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[28]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_28_PostOut
  self[59] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[59]
  l0._graph = self
  l0.Out = self.f_59_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[49] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = self.f_49_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[205] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[205]
  l0._graph = self
  l0.Enabled = self.f_205_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_205_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[251] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[251]
  l0._graph = self
  l0.Loaded = self.f_251_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[48] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[48]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_48_Out
  self[105] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[105]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_105_Out
  self[172] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[172]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_172_Out
  l0.ResetOut = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0.MessageCompleted = self.f_16_MessageCompleted
  self[155] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[155]
  l0._graph = self
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_155_Added
  l0.Removed = self.f_155_Removed
  l0.Out = self.f_155_Out
  self[95] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[95]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_95_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[15] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_cin_dedsecmomentum.S16M060_CIN_DedsecMomentum_Main.lua")
  l0 = self[15]
  l0._graph = self
  l0.out = self.f_15_out
  self[231] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[231]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = self.f_231_ArrestStateAnyTarget
  l0.CombatState = DummyFunction
  l0.CombatStateAnyTarget = self.f_231_CombatStateAnyTarget
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = self.f_231_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[9]
  l0._graph = self
  l0.Shown = self.f_9_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[32] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_32_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_32_ExitRadius
  self[108] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[108]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_108_EnterRadius
  l0.ExitRadius = DummyFunction
  self[173] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[173]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_173_Out
  self[11] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
  self[127] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.lua")
  l0 = self[127]
  l0._graph = self
  l0.out = DummyFunction
  l0.DroneUnspawned = DummyFunction
  self[164] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[164]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_164_Out
  self[178] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[178]
  l0._graph = self
  l0.Enabled = self.f_178_Enabled
  l0.Disabled = self.f_178_Disabled
  l0.Enter = self.f_178_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[167] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[167]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_167_Out
  l0.ResetOut = DummyFunction
  self[253] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[253]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_253_Out
  self[189] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[189]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_189_Disabled
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
  l0.IsUnusable = self.f_189_IsUnusable
  l0.IsUnderwater = self.f_189_IsUnderwater
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
  self[201] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[201]
  l0._graph = self
  l0.Out = self.f_201_Out
  l0.SetTrue = self.f_201_SetTrue
  l0.SetFalse = self.f_201_SetFalse
  l0.Toggled = self.f_201_Toggled
  l0.SetFromBool = self.f_201_SetFromBool
  self[203] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[203]
  l0._graph = self
  l0.Enabled = self.f_203_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_203_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[83] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M060/s16m060_scr.sc16m060_SCR_Main.lua")
  l0 = self[83]
  l0._graph = self
  l0.out = DummyFunction
  l0.DroneUnspawned = DummyFunction
  self[61] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0.Loaded = self.f_61_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[67] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[67]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_67_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[76] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = self.f_76_Out
  l0.MessageCompleted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_7_Disabled
  l0.GotUser = self.f_7_GotUser
  l0.NotGotUser = self.f_7_NotGotUser
  l0.OnUserInPlace = self.f_7_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[109] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[109]
  l0._graph = self
  l0.Attached = self.f_109_Attached
  self[225] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[225]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_225_Out
  self[89] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[89]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_89_Interacted
  self[232] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[232]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_232_Out
  self[65] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[65]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_65_Out
  self[143] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[143]
  l0._graph = self
  l0.Out = self.f_143_Out
  l0.MessageCompleted = DummyFunction
  self[194] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[194]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_194_Out
  l0.ResetOut = DummyFunction
  self[51] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[51]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[176] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[176]
  l0._graph = self
  l0.Out = self.f_176_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[74] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[74]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_74_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[26] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = self.f_26_Out
  l0.MessageCompleted = DummyFunction
  self[134] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[134]
  l0._graph = self
  l0.Out = self.f_134_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[54] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Loaded = self.f_54_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[130] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[130]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
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
  self[84] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[84]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_84_Out
  self[132] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[132]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[158] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[158]
  l0._graph = self
  l0.Out = self.f_158_Out
  l0.MessageCompleted = DummyFunction
  self[41] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[41]
  l0._graph = self
  l0.Enabled = self.f_41_Enabled
  l0.Disabled = self.f_41_Disabled
  l0.EnterRadius = self.f_41_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[90] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[90]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_90_Out
  l0.ResetOut = DummyFunction
  self[62] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[62]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_62_PostOut
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
  l0 = self[17]
  l0.LayerName = "S16M060_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self[47]
  l0.LayerName = "S16M060_Main"
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self[54]
  l0.LayerName = "S16M060_Main"
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  l0 = self[61]
  l0.LayerName = "S16M060_Main"
  l0:Load()
end
function export:CheckPoint_4()
  local l0
  l0 = self[251]
  l0.LayerName = "S16M060_Main"
  l0:Load()
end
function export:In()
  local l0
  l0 = self[2]
  l0.LayerName = "S16M060_Main"
  l0:Load()
end
function export:f_75_Out()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Disable()
end
function export:f_240_Enabled()
  local l0
  self = self._graph
  l0 = self[74]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053455297191"
  l0:StartCommunication()
end
function export:f_196_Disabled()
  local l0
  self = self._graph
  self:en_189()
  l0 = self[189]
  l0:Enable()
end
function export:f_196_GotUser()
  local l0
  self = self._graph
  l0 = self[196]
  self.Server_Lift = l0.UserID
end
function export:f_196_NotGotUser()
  local l0
  self = self._graph
  l0 = self[196]
  self.Server_Lift = l0.UserID
end
function export:f_196_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[196]
  self.Server_Lift = l0.UserID
  l0 = self[191]
  l0:Input(0)
end
function export:f_247_Out()
  local l0
  self = self._graph
  l0 = self[248]
  l0:In(0)
end
function export:f_115_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AI_All_Dead
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_110_A_is_True
  l0.A_is_False = self.f_110_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_115_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_218_Out_0
  l0.Out[1] = self.f_218_Out_1
  l0:In()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_219_PerkAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372056453997549"
  l0.FadeIn = 0
  l0.FadeOut = 0
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0.Started = self.f_64_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  l0:Start()
end
function export:f_149_Out_0()
  local l0
  self = self._graph
  l0 = self[107]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053752785713"
  l0:StartCommunication()
end
function export:f_149_Out_1()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(1)
end
function export:f_175_Deactivated()
  local l0
  self = self._graph
  l0 = self[176]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_180_Out()
  local l0
  self = self._graph
  self:en_178()
  l0 = self[178]
  l0:Disable()
end
function export:f_138_Out_0()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective010",
    item = "Objective",
    id = "345171"
  }
  l0:ShowNewObjective()
end
function export:f_138_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669166"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_128_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_213_Disabled()
  local l0
  self = self._graph
  l0 = self[220]
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  l0:AddPerk()
end
function export:f_183_Deactivated()
  local l0
  self = self._graph
  l0 = self[181]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_116_Added()
  local l0
  self = self._graph
  l0 = self[116]
  self.Elevator_Hackable = l0.Target
  l0 = self[155]
  l0.Input = self.Elevator_part_list
  l0.Data[0] = "9223372049380251052"
  l0.Data[1] = "9223372049380251054"
  l0.Data[2] = "9223372049380251050"
  l0.Data[3] = "9223372049380251056"
  l0.Data[4] = "9223372049380251058"
  l0:Add()
end
function export:f_116_Out()
  local l0
  self = self._graph
  l0 = self[116]
  self.Elevator_Hackable = l0.Target
end
function export:f_116_Removed()
  local l0
  self = self._graph
  l0 = self[116]
  self.Elevator_Hackable = l0.Target
end
function export:f_166_GotUser()
  local l0
  self = self._graph
  l0 = self[166]
  self.Server_Lift = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_246_Out_0
  l0.Out[1] = self.f_246_Out_1
  l0:In()
end
function export:f_166_NotGotUser()
  local l0
  self = self._graph
  l0 = self[166]
  self.Server_Lift = l0.UserID
  self:en_168()
  l0 = self[168]
  l0:Enable()
end
function export:f_166_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[166]
  self.Server_Lift = l0.UserID
end
function export:f_195_Out()
  local l0
  self = self._graph
  self:en_189()
  l0 = self[189]
  l0:Disable()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = self[25]
  l0.LMALayerName = "Barge_LMA"
  l0:Load()
end
function export:f_47_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_46_Out
  l0:In()
end
function export:f_163_Disabled()
  local l0
  self = self._graph
  l0 = self[164]
  l0:Input(1)
end
function export:f_163_GotUser()
  local l0
  self = self._graph
  l0 = self[163]
  self.Server_Lift = l0.UserID
end
function export:f_163_NotGotUser()
  local l0
  self = self._graph
  l0 = self[163]
  self.Server_Lift = l0.UserID
end
function export:f_163_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[163]
  self.Server_Lift = l0.UserID
  self:en_163()
  l0:Disable()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Checkpoint = "CheckPoint_2"
  l0:In()
end
function export:f_162_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_245_Out_0
  l0.Out[1] = self.f_245_Out_1
  l0:In()
end
function export:f_100_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[147]
  l0:In(0)
end
function export:f_212_Out()
  local l0
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
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_230_ChaseStarted
  l0.SearchStarted = self.f_230_SearchStarted
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StartChase()
end
function export:f_42_Out()
  local l0
  self = self._graph
  self:en_43()
  l0 = self[43]
  l0:Enable()
end
function export:f_36_Unloaded()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Succeed()
end
function export:f_113_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_50_Out
  l0:In()
end
function export:f_113_Out_1()
  local l0
  self = self._graph
  l0 = self[84]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346334"
  l0:StartCommunication()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[48]
  l0:Input(1)
end
function export:f_114_Enabled()
  local l0
  self = self._graph
  l0 = self[116]
  l0.Input = self.Elevator_Hackable
  l0.Data[0] = "9223372049380251052"
  l0.Data[1] = "9223372049380251054"
  l0:Add()
end
function export:f_114_EnterRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_169_Out_0
  l0.Out[1] = self.f_169_Out_1
  l0:In()
end
function export:f_114_ExitRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_171_Out_0
  l0.Out[1] = self.f_171_Out_1
  l0:In()
end
function export:f_68_Started()
  local l0
  self = self._graph
  l0 = self[205]
  l0.Trigger = "9223372046830378951"
  l0.CheckNow = 1
  l0:Enable()
end
function export:f_97_Disabled()
  local l0
  self = self._graph
  l0 = self[98]
  l0.HackableEntity = self.ForkLift_03
  l0:DisableHack()
end
function export:f_246_Out_0()
  local l0
  self = self._graph
  l0 = self[165]
  l0:Input(1)
end
function export:f_246_Out_1()
  local l0
  self = self._graph
  l0 = self[247]
  l0:Input(1)
end
function export:f_37_Out()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Enable()
end
function export:f_44_Disabled()
  local l0
  self = self._graph
  l0 = self[26]
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
  l0:UpdateObjective()
end
function export:f_44_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_138_Out_0
  l0.Out[1] = self.f_138_Out_1
  l0:In()
end
function export:f_14_EnterRadius()
  local l0
  self = self._graph
  l0 = self[24]
  l0.AlarmEntity = "9223372052961134672"
  l0.Instigator = self.Server_Lift
  l0:ActivateAlarm()
end
function export:f_23_GotUser()
  local l0
  self = self._graph
  l0 = self[23]
  self.ForkLift_05 = l0.UserID
end
function export:f_23_NotGotUser()
  local l0
  self = self._graph
  l0 = self[23]
  self.ForkLift_05 = l0.UserID
end
function export:f_23_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[23]
  self.ForkLift_05 = l0.UserID
  self:en_71()
  l0 = self[71]
  l0:Enable()
end
function export:f_120_Out()
  local l0
  self = self._graph
  l0 = self[201]
  l0:False()
end
function export:f_102_Started()
  local l0
  self = self._graph
  l0 = self[166]
  l0.CLO = "9223372067049059805"
  l0:GetUser()
end
function export:f_145_Out()
  local l0
  self = self._graph
  l0 = self[93]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053455297197"
  l0:StartCommunication()
end
function export:f_242_Movable()
  local l0
  self = self._graph
  l0 = self[252]
  l0.CheckpointList = "CheckPoint_4"
  l0:In()
end
function export:f_22_Disabled()
  local l0
  self = self._graph
  l0 = self[97]
  l0.HackableEntity = self.ForkLift_02
  l0:DisableHack()
end
function export:f_161_Disabled()
  local l0
  self = self._graph
  l0 = self[162]
  l0:Input(0)
end
function export:f_161_GotUser()
  local l0
  self = self._graph
  l0 = self[161]
  self.Server_Lift = l0.UserID
end
function export:f_161_NotGotUser()
  local l0
  self = self._graph
  l0 = self[161]
  self.Server_Lift = l0.UserID
end
function export:f_161_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[161]
  self.Server_Lift = l0.UserID
  l0 = self[173]
  l0:Input(0)
end
function export:f_142_Out()
  local l0
  self = self._graph
  l0 = self[156]
  l0.EntityList = self.Elevator_part_list
  l0:Disable()
end
function export:f_210_Disabled()
  local l0
  self = self._graph
  l0 = self[22]
  l0.HackableEntity = self.ForkLift_05
  l0:DisableHack()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[30]
  l0.PGTMissionArea = "9223372047775332894"
  l0:Start()
end
function export:f_250_Out_0()
  local l0
  self = self._graph
  l0 = self[95]
  l0.Seconds = 25
  l0:Start()
end
function export:f_250_Out_1()
  local l0
  self = self._graph
  l0 = self[249]
  l0.Seconds = 4
  l0:Start()
end
function export:f_220_PerkAdded()
  local l0
  self = self._graph
  self:en_228()
  l0 = self[228]
  l0:Enable()
end
function export:f_101_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_254_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_170_Out()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Hide()
end
function export:f_151_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 4
  l0.Minute = 20
  l0._graph = self
  l0.Out = self.f_31_Out
  l0:SetTimeOfDay()
end
function export:f_30_AllSpawned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 4
  l0.Minute = 20
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:SetTimeOfDay()
end
function export:f_17_Loaded()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(1)
end
function export:f_214_Disabled()
  local l0
  self = self._graph
  l0 = self[221]
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  l0:AddPerk()
end
function export:f_106_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_149_Out_0
  l0.Out[1] = self.f_149_Out_1
  l0:In()
end
function export:f_106_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[105]
  l0:Input(1)
end
function export:f_179_Disabled()
  local l0
  self = self._graph
  l0 = self[167]
  l0:In(0)
end
function export:f_179_HackSuccess()
  local l0
  self = self._graph
  l0 = self[180]
  l0:Input(2)
end
function export:f_19_Disabled()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Condition(0)
end
function export:f_19_IsUnderwater()
  local l0
  self = self._graph
  l0 = self[75]
  l0:Input(1)
end
function export:f_19_IsUnusable()
  local l0
  self = self._graph
  l0 = self[75]
  l0:Input(0)
end
function export:f_21_AllSpawned()
  local l0
  self = self._graph
  l0 = self[57]
  l0.SoundId = "soundbinary/1143647808.bnk"
  l0:Play()
end
function export:f_148_Enabled()
  local l0
  self = self._graph
  l0 = self[27]
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
  l0:UpdateObjective()
end
function export:f_223_ChaseStarted()
  local l0
  self = self._graph
  l0 = self[225]
  l0:Input(0)
end
function export:f_223_SearchStarted()
  local l0
  self = self._graph
  l0 = self[225]
  l0:Input(1)
end
function export:f_209_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[28]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_224_Out_0
  l0.Out[1] = self.f_224_Out_1
  l0:In()
end
function export:f_3_Enter()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_141_Out()
  local l0
  self = self._graph
  l0 = self[86]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053455297192"
  l0:StartCommunication()
end
function export:f_228_ArrestStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[228]
  self.Chopper_Target = l0.ArrestedTarget
  l0 = self[233]
  l0:Input(2)
end
function export:f_228_CombatStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[233]
  l0:Input(0)
end
function export:f_228_SearchStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[233]
  l0:Input(1)
end
function export:f_193_Out_0()
  local l0
  self = self._graph
  l0 = self[207]
  l0.Trigger = "9223372046830378951"
  l0.CheckNow = 1
  l0:Enable()
end
function export:f_193_Out_1()
  local l0
  self = self._graph
  l0 = self[192]
  l0.SoundId = "soundbinary/2725930814.bnk"
  l0:Play()
end
function export:f_18_cin_out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372056453997549"
  l0.FadeIn = 0
  l0.FadeOut = 0
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_118_Stopped
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  l0:Stop()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[141]
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective020",
    item = "Objective",
    id = "345172"
  }
  l0:IncrementObjective()
end
function export:f_147_Out()
  local l0
  self = self._graph
  l0 = self[101]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053752785713"
  l0:StartCommunication()
end
function export:f_135_Out_0()
  local l0
  self = self._graph
  l0 = self[253]
  l0:Input(0)
end
function export:f_135_Out_1()
  local l0
  self = self._graph
  l0 = self[134]
  l0.SoundId = "soundbinary/504699571.bnk"
  l0:Play()
end
function export:f_34_GotUser()
  local l0
  self = self._graph
  l0 = self[34]
  self.ForkLift_02 = l0.UserID
end
function export:f_34_NotGotUser()
  local l0
  self = self._graph
  l0 = self[34]
  self.ForkLift_02 = l0.UserID
end
function export:f_34_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[34]
  self.ForkLift_02 = l0.UserID
  self:en_19()
  l0 = self[19]
  l0:Enable()
end
function export:f_191_Out()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_218_Out_0()
  local l0
  self = self._graph
  l0 = self[126]
  l0:Input(0)
end
function export:f_218_Out_1()
  local l0
  self = self._graph
  self:en_114()
  l0 = self[114]
  l0:Disable()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Input(0)
end
function export:f_13_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_236_Out_0
  l0.Out[1] = self.f_236_Out_1
  l0:In()
end
function export:f_13_Enabled()
  local l0
  self = self._graph
  self:en_235()
  l0 = self[235]
  l0:Enable()
end
function export:f_13_Enter()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Disable()
end
function export:f_13_Leave()
  local l0
  self = self._graph
  l0 = self[94]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053752785709"
  l0:StartCommunication()
end
function export:f_221_PerkAdded()
  local l0
  self = self._graph
  self:en_231()
  l0 = self[231]
  l0:Enable()
end
function export:f_66_Disabled()
  local l0
  self = self._graph
  l0 = self[67]
  l0.Seconds = 5
  l0:Start()
end
function export:f_66_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_40_Out_0
  l0.Out[1] = self.f_40_Out_1
  l0:In()
end
function export:f_66_Entered()
  local l0
  self = self._graph
  l0 = self[66]
  l0:Disable()
end
function export:f_153_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_193_Out_0
  l0.Out[1] = self.f_193_Out_1
  l0:In()
end
function export:f_236_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Server_Lift
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = self.f_242_Movable
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:SetAsMovable()
end
function export:f_236_Out_1()
  local l0
  self = self._graph
  self:en_235()
  l0 = self[235]
  l0:Disable()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 4
  l0.Minute = 20
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:SetTimeOfDay()
end
function export:f_107_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Server_Lift
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = self.f_239_Unmovable
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:SetAsUnmovable()
end
function export:f_168_Disabled()
  local l0
  self = self._graph
  l0 = self[247]
  l0:Input(0)
end
function export:f_168_Enabled()
  local l0
  self = self._graph
  l0 = self[165]
  l0:Input(0)
end
function export:f_168_GotUser()
  local l0
  self = self._graph
  l0 = self[168]
  self.Server_Lift = l0.UserID
end
function export:f_168_NotGotUser()
  local l0
  self = self._graph
  l0 = self[168]
  self.Server_Lift = l0.UserID
end
function export:f_168_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[168]
  self.Server_Lift = l0.UserID
  self:en_168()
  l0:Disable()
end
function export:f_160_GotUser()
  local l0
  self = self._graph
  l0 = self[160]
  self.Server_Lift = l0.UserID
  l0 = self[164]
  l0:Input(0)
end
function export:f_160_NotGotUser()
  local l0
  self = self._graph
  l0 = self[160]
  self.Server_Lift = l0.UserID
  self:en_163()
  l0 = self[163]
  l0:Enable()
end
function export:f_160_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[160]
  self.Server_Lift = l0.UserID
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[39]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_77_Out()
  local l0
  self = self._graph
  self:en_71()
  l0 = self[71]
  l0:Disable()
end
function export:f_152_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_80_Out_0
  l0.Out[1] = self.f_80_Out_1
  l0.Out[2] = self.f_80_Out_2
  l0.Out[3] = self.f_80_Out_3
  l0.Out[4] = self.f_80_Out_4
  l0.Out[5] = self.f_80_Out_5
  l0:In()
end
function export:f_146_Out()
  local l0
  self = self._graph
  l0 = self[99]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053752785711"
  l0:StartCommunication()
end
function export:f_104_GotNPCList()
  local l0
  self = self._graph
  l0 = self[104]
  self.Barge_AI_list = l0.NPCList
  l0 = self[112]
  l0.PawnList = self.Barge_AI_list
  l0:Enable()
end
function export:f_71_Disabled()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Condition(2)
end
function export:f_71_IsUnderwater()
  local l0
  self = self._graph
  l0 = self[77]
  l0:Input(1)
end
function export:f_71_IsUnusable()
  local l0
  self = self._graph
  l0 = self[77]
  l0:Input(0)
end
function export:f_222_ArrestStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[222]
  self.Chopper_Target = l0.ArrestedTarget
  l0 = self[232]
  l0:Input(2)
end
function export:f_222_CombatStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[232]
  l0:Input(0)
end
function export:f_222_SearchStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[232]
  l0:Input(1)
end
function export:f_216_PerkReseted()
  local l0
  self = self._graph
  l0 = self[36]
  l0.LayerName = "S16M060_Main"
  l0:Unload()
end
function export:f_96_Out()
  local l0
  self = self._graph
  l0 = self[126]
  l0:Input(2)
end
function export:f_96_UserForcedOutOfRC()
  local l0
  self = self._graph
  l0 = self[210]
  l0.HackableEntity = self.Server_Lift
  l0:DisableHack()
end
function export:f_29_Disabled()
  local l0
  self = self._graph
  self:en_161()
  l0 = self[161]
  l0:Disable()
end
function export:f_29_GotUser()
  local l0
  self = self._graph
  l0 = self[29]
  self.Server_Lift = l0.UserID
  l0 = self[173]
  l0:Input(1)
end
function export:f_29_NotGotUser()
  local l0
  self = self._graph
  l0 = self[29]
  self.Server_Lift = l0.UserID
  self:en_161()
  l0 = self[161]
  l0:Enable()
end
function export:f_29_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[29]
  self.Server_Lift = l0.UserID
end
function export:f_86_StartCommunicationOut()
  local l0
  self = self._graph
  self:en_178()
  l0 = self[178]
  l0:Enable()
end
function export:f_217_Out()
  local l0
  self = self._graph
  self:en_114()
  l0 = self[114]
  l0:Enable()
end
function export:f_233_Out()
  local l0
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
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_227_ChaseStarted
  l0.SearchStarted = self.f_227_SearchStarted
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StartChase()
end
function export:f_197_Out_0()
  local l0
  self = self._graph
  l0 = self[91]
  l0.Affiliation = "Boys"
  l0:Enable()
end
function export:f_197_Out_1()
  local l0
  self = self._graph
  l0 = self[83]
  l0:StartLights()
end
function export:f_197_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_227_ChaseStarted()
  local l0
  self = self._graph
  l0 = self[226]
  l0:Input(0)
end
function export:f_227_SearchStarted()
  local l0
  self = self._graph
  l0 = self[226]
  l0:Input(1)
end
function export:f_56_PostOut()
  local l0
  self = self._graph
  l0 = self[123]
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
  l0:ShowNewObjective()
end
function export:f_125_Out()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Enable()
end
function export:f_110_A_is_False()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Entity1 = "9223372046830379175"
  l0.Entity2 = self.Server_Lift
  l0.Radius = 4
  l0.CheckDistance3D = 1
  l0.CheckNow = 1
  l0:Enable()
end
function export:f_110_A_is_True()
  local l0
  self = self._graph
  l0 = self[108]
  l0.Entity1 = "9223372046830379175"
  l0.Entity2 = self.Server_Lift
  l0.Radius = 4
  l0.CheckDistance3D = 1
  l0.CheckNow = 1
  l0:Enable()
end
function export:f_88_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_88_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[105]
  l0:Input(0)
end
function export:f_129_Out_0()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Enable()
end
function export:f_207_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_82_Out_0
  l0.Out[1] = self.f_82_Out_1
  l0.Out[2] = self.f_82_Out_2
  l0.Out[3] = self.f_82_Out_3
  l0.Out[4] = self.f_82_Out_4
  l0.Out[5] = self.f_82_Out_5
  l0:In()
end
function export:f_207_Enter()
  local l0
  self = self._graph
  l0 = self[208]
  l0.HackableEntity = "9223372059747496663"
  l0:DisableHack()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  l0.UserEntity = nil
  l0.RCEntity = self.Server_Lift
  l0.CanExit = nil
  l0._graph = self
  l0.Out = self.f_96_Out
  l0.UserForcedOutOfRC = self.f_96_UserForcedOutOfRC
  l0.CanExitChanged = DummyFunction
  l0:ForceUserOutOfRC()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:f_252_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0:ShowMissionComplete()
end
function export:f_79_Out_0()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:GetUser()
end
function export:f_79_Out_1()
  local l0
  self = self._graph
  l0 = self[34]
  l0.CLO = "9223372048044280312"
  l0:Enable()
end
function export:f_79_Out_2()
  local l0
  self = self._graph
  l0 = self[20]
  l0.CLO = "9223372048044280311"
  l0:Enable()
end
function export:f_79_Out_3()
  local l0
  self = self._graph
  l0 = self[23]
  l0.CLO = "9223372047642426891"
  l0:Enable()
end
function export:f_248_Out()
  local l0
  self = self._graph
  l0 = self[241]
  l0.HackableEntity = self.Server_Lift
  l0:DisableHack()
end
function export:f_229_Out()
  local l0
  self = self._graph
  self:en_231()
  l0 = self[231]
  l0:Disable()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_131_Out_0
  l0.Out[1] = self.f_131_Out_1
  l0:In()
end
function export:f_254_Out_0()
  local l0
  self = self._graph
  l0 = self[150]
  l0:DroneTimerStarted()
end
function export:f_50_Out()
  local l0
  self = self._graph
  self:en_44()
  l0 = self[44]
  l0:Disable()
end
function export:f_243_Out_0()
  local l0
  self = self._graph
  l0 = self[66]
  l0:Enable()
end
function export:f_249_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Server_Lift
  l0._graph = self
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
  l0:SetAsUnmovable()
end
function export:f_94_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[143]
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
  l0:UpdateObjective()
end
function export:f_131_Out_0()
  local l0
  self = self._graph
  l0 = self[89]
  l0.Entity = "9223372052537130373"
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_131_Out_1()
  local l0
  self = self._graph
  l0 = self[130]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_87_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[125]
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
  l0:UpdateObjective()
end
function export:f_119_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372065263966442"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_153_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_73_Out()
  local l0
  self = self._graph
  self:en_70()
  l0 = self[70]
  l0:Disable()
end
function export:f_4_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Show()
end
function export:f_177_Disabled()
  local l0
  self = self._graph
  self:en_179()
  l0 = self[179]
  l0:Disable()
end
function export:f_177_Enabled()
  local l0
  self = self._graph
  self:en_179()
  l0 = self[179]
  l0:Enable()
end
function export:f_177_EnterRadius()
  local l0
  self = self._graph
  l0 = self[180]
  l0:Input(1)
end
function export:f_112_AllDead()
  local l0
  self = self._graph
  l0 = self[111]
  l0.Bool = self.AI_All_Dead
  l0:True()
end
function export:f_117_Out()
  local l0
  self = self._graph
  l0 = self[217]
  l0:In(0)
end
function export:f_20_GotUser()
  local l0
  self = self._graph
  l0 = self[20]
  self.ForkLift_03 = l0.UserID
end
function export:f_20_NotGotUser()
  local l0
  self = self._graph
  l0 = self[20]
  self.ForkLift_03 = l0.UserID
end
function export:f_20_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[20]
  self.ForkLift_03 = l0.UserID
  self:en_70()
  l0 = self[70]
  l0:Enable()
end
function export:f_72_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FailuerCheck
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_200_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372052537130373"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_237_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_245_Out_0()
  local l0
  self = self._graph
  l0 = self[56]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_245_Out_1()
  local l0
  self = self._graph
  l0 = self[244]
  l0.HackableEntity = self.Server_Lift
  l0:DisableHack()
end
function export:f_111_Out()
  local l0
  self = self._graph
  l0 = self[111]
  self.AI_All_Dead = l0.Target
end
function export:f_111_SetFalse()
  local l0
  self = self._graph
  l0 = self[111]
  self.AI_All_Dead = l0.Target
end
function export:f_111_SetFromBool()
  local l0
  self = self._graph
  l0 = self[111]
  self.AI_All_Dead = l0.Target
end
function export:f_111_SetTrue()
  local l0
  self = self._graph
  l0 = self[111]
  self.AI_All_Dead = l0.Target
end
function export:f_111_Toggled()
  local l0
  self = self._graph
  l0 = self[111]
  self.AI_All_Dead = l0.Target
end
function export:f_224_Out_0()
  local l0
  self = self._graph
  l0 = self[51]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053455297190"
  l0:StartCommunication()
end
function export:f_224_Out_1()
  local l0
  self = self._graph
  self:en_222()
  l0 = self[222]
  l0:Enable()
end
function export:f_157_Out()
  local l0
  self = self._graph
  l0 = self[158]
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective040",
    item = "Objective",
    id = "637647"
  }
  l0:IncrementObjective()
end
function export:f_92_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[76]
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
  l0:UpdateObjective()
end
function export:f_118_Stopped()
  local l0
  self = self._graph
  l0 = self[52]
  l0.LMALayerName = "Barge_LMA"
  l0:Unload()
end
function export:f_5_Hidden()
  local l0
  self = self._graph
  l0 = self[58]
  l0:Input(0)
end
function export:f_5_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_129_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[219]
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  l0:AddPerk()
end
function export:f_122_Hidden()
  local l0
  self = self._graph
  self:en_115()
  l0 = self[115]
  l0:Disable()
end
function export:f_122_Shown()
  local l0
  self = self._graph
  self:en_115()
  l0 = self[115]
  l0:Enable()
end
function export:f_70_Disabled()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Condition(1)
end
function export:f_70_IsUnderwater()
  local l0
  self = self._graph
  l0 = self[73]
  l0:Input(1)
end
function export:f_70_IsUnusable()
  local l0
  self = self._graph
  l0 = self[73]
  l0:Input(0)
end
function export:f_181_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669166"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_40_Out_0()
  local l0
  self = self._graph
  l0 = self[209]
  l0.CLO = "9223372057525963241"
  l0:Activate()
end
function export:f_40_Out_1()
  local l0
  self = self._graph
  l0 = self[81]
  l0:Input(0)
end
function export:f_140_Out()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Show()
end
function export:f_99_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[100]
  l0.Seconds = 22
  l0:Start()
end
function export:f_52_Unloaded()
  local l0
  self = self._graph
  l0 = self[15]
  l0:In()
end
function export:f_239_Unmovable()
  local l0
  self = self._graph
  l0 = self[127]
  l0:DroneTimerStarted()
end
function export:f_81_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_79_Out_0
  l0.Out[1] = self.f_79_Out_1
  l0.Out[2] = self.f_79_Out_2
  l0.Out[3] = self.f_79_Out_3
  l0:In()
end
function export:f_165_Out()
  local l0
  self = self._graph
  l0 = self[172]
  l0:In(0)
end
function export:f_98_Disabled()
  local l0
  self = self._graph
  l0 = self[145]
  l0:In(0)
end
function export:f_24_Activated()
  local l0
  self = self._graph
  l0 = self[92]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053455297194"
  l0:StartCommunication()
end
function export:f_123_Out()
  local l0
  self = self._graph
  l0 = self[58]
  l0:Input(1)
end
function export:f_91_CallingNextWave()
  local l0
  self = self._graph
  l0 = self[91]
  self.Barge_AI_list = l0.EventNPCList
end
function export:f_91_CallingNextWaveSucceeded()
  local l0
  self = self._graph
  l0 = self[91]
  self.Barge_AI_list = l0.EventNPCList
end
function export:f_91_Enabled()
  local l0
  self = self._graph
  l0 = self[102]
  l0.PGTMissionArea = "9223372047775332894"
  l0.AgentList = self.Barge_AI_list
  l0:Start()
end
function export:f_91_EntitySpawned()
  local l0
  self = self._graph
  l0 = self[91]
  self.Barge_AI_list = l0.EventNPCList
  l0 = self[104]
  l0:GetEnemiesAlive()
end
function export:f_91_Finished()
  local l0
  self = self._graph
  l0 = self[91]
  self.Barge_AI_list = l0.EventNPCList
end
function export:f_91_ReachedWaveChangeThreshold()
  local l0
  self = self._graph
  l0 = self[91]
  self.Barge_AI_list = l0.EventNPCList
end
function export:f_91_Reinforcing()
  local l0
  self = self._graph
  l0 = self[91]
  self.Barge_AI_list = l0.EventNPCList
end
function export:f_91_WaveChanged()
  local l0
  self = self._graph
  l0 = self[91]
  self.Barge_AI_list = l0.EventNPCList
end
function export:f_226_Out()
  local l0
  self = self._graph
  self:en_228()
  l0 = self[228]
  l0:Disable()
end
function export:f_25_Loaded()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(0)
end
function export:f_33_Hidden()
  local l0
  self = self._graph
  self:en_122()
  l0 = self[122]
  l0:Show()
end
function export:f_33_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_124_Out_0
  l0.Out[1] = self.f_124_Out_1
  l0:In()
end
function export:f_85_Hidden()
  local l0
  self = self._graph
  l0 = self[140]
  l0:Input(0)
end
function export:f_133_Out_0()
  local l0
  self = self._graph
  l0 = self[88]
  l0.Seconds = 60
  l0:Start()
end
function export:f_133_Out_1()
  local l0
  self = self._graph
  l0 = self[132]
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0:Play()
end
function export:f_124_Out_0()
  local l0
  self = self._graph
  l0 = self[117]
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
  l0:UpdateObjective()
end
function export:f_124_Out_1()
  local l0
  self = self._graph
  l0 = self[126]
  l0:Input(1)
end
function export:f_126_Out()
  local l0
  self = self._graph
  self:en_122()
  l0 = self[122]
  l0:Hide()
end
function export:f_159_Disabled()
  local l0
  self = self._graph
  l0 = self[106]
  l0.Seconds = 5
  l0:Start()
end
function export:f_156_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_133_Out_0
  l0.Out[1] = self.f_133_Out_1
  l0:In()
end
function export:f_28_PostOut()
  local l0
  self = self._graph
  l0 = self[49]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_137_Out_0
  l0.Out[1] = self.f_137_Out_1
  l0:In()
end
function export:f_49_Out()
  local l0
  self = self._graph
  self:en_44()
  l0 = self[44]
  l0:Enable()
end
function export:f_205_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372065263966442"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_152_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_205_Enter()
  local l0
  self = self._graph
  l0 = self[206]
  l0.HackableEntity = "9223372059747496663"
  l0:DisableHack()
end
function export:f_251_Loaded()
  local l0
  self = self._graph
  l0 = self[253]
  l0:Input(1)
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = self[203]
  l0.Trigger = "9223372046830378951"
  l0.CheckNow = 1
  l0:Enable()
end
function export:f_105_Out()
  local l0
  self = self._graph
  l0 = self[37]
  l0:In(0)
end
function export:f_82_Out_0()
  local l0
  self = self._graph
  l0 = self[160]
  l0.CLO = "9223372067049059805"
  l0:GetUser()
end
function export:f_82_Out_1()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Input(1)
end
function export:f_82_Out_2()
  local l0
  self = self._graph
  l0 = self[81]
  l0:Input(2)
end
function export:f_82_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669166"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = 0
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_183_Deactivated
  l0:Deactivate()
end
function export:f_82_Out_4()
  local l0
  self = self._graph
  l0 = self[199]
  l0:StartLights()
end
function export:f_82_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_214_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_230_ChaseStarted()
  local l0
  self = self._graph
  l0 = self[229]
  l0:Input(0)
end
function export:f_230_SearchStarted()
  local l0
  self = self._graph
  l0 = self[229]
  l0:Input(1)
end
function export:f_172_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_243_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_237_Disabled()
  local l0
  self = self._graph
  l0 = self[21]
  l0.PGTMissionArea = "9223372047775332894"
  l0:Start()
end
function export:f_202_A_is_True()
  local l0
  self = self._graph
  l0 = self[63]
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "Mission failed",
    id = "165440"
  }
  l0:Fail()
end
function export:f_16_MessageCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_135_Out_0
  l0.Out[1] = self.f_135_Out_1
  l0:In()
end
function export:f_16_Out()
  local l0
  self = self._graph
  self:en_43()
  l0 = self[43]
  l0:Disable()
end
function export:f_128_Activated()
  local l0
  self = self._graph
  l0 = self[234]
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0:Play()
end
function export:f_155_Added()
  local l0
  self = self._graph
  l0 = self[155]
  self.Elevator_part_list = l0.Target
  l0 = self[154]
  l0.EntityList = self.Elevator_part_list
  l0:Enable()
end
function export:f_155_Out()
  local l0
  self = self._graph
  l0 = self[155]
  self.Elevator_part_list = l0.Target
end
function export:f_155_Removed()
  local l0
  self = self._graph
  l0 = self[155]
  self.Elevator_part_list = l0.Target
end
function export:f_95_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[146]
  l0:In(0)
end
function export:f_15_out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_215_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Enable()
end
function export:f_231_ArrestStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[231]
  self.Chopper_Target = l0.ArrestedTarget
  l0 = self[212]
  l0:Input(1)
end
function export:f_231_CombatStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[212]
  l0:Input(0)
end
function export:f_231_SearchStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[212]
  l0:Input(2)
end
function export:f_9_Shown()
  local l0
  self = self._graph
  l0 = self[148]
  l0.Entity = self.Server_Lift
  l0:Enable()
end
function export:f_32_Disabled()
  local l0
  self = self._graph
  l0 = self[85]
  l0.MapPoint = "9223372046830379170"
  l0:Hide()
end
function export:f_32_ExitRadius()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Disable()
end
function export:f_108_EnterRadius()
  local l0
  self = self._graph
  l0 = self[157]
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
  l0:UpdateObjective()
end
function export:f_173_Out()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Disable()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.HackableEntityList = self.Elevator_Hackable
  l0:DisableHack()
end
function export:f_164_Out()
  local l0
  self = self._graph
  l0 = self[62]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_178_Disabled()
  local l0
  self = self._graph
  self:en_177()
  l0 = self[177]
  l0:Disable()
end
function export:f_178_Enabled()
  local l0
  self = self._graph
  self:en_177()
  l0 = self[177]
  l0:Enable()
end
function export:f_178_Enter()
  local l0
  self = self._graph
  l0 = self[180]
  l0:Input(0)
end
function export:f_167_Out()
  local l0
  self = self._graph
  l0 = self[87]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053455297193"
  l0:StartCommunication()
end
function export:f_215_Enabled()
  local l0
  self = self._graph
  l0 = self[216]
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  l0:ResetPerks()
end
function export:f_253_Out()
  local l0
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
  l0.Out = self.f_120_Out
  l0:In()
end
function export:f_64_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_197_Out_0
  l0.Out[1] = self.f_197_Out_1
  l0.Out[2] = self.f_197_Out_2
  l0:In()
end
function export:f_171_Out_0()
  local l0
  self = self._graph
  l0 = self[90]
  l0:In(0)
end
function export:f_171_Out_1()
  local l0
  self = self._graph
  l0 = self[170]
  l0:Reset()
end
function export:f_80_Out_0()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:GetUser()
end
function export:f_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_45_Out
  l0:In()
end
function export:f_80_Out_2()
  local l0
  self = self._graph
  l0 = self[81]
  l0:Input(1)
end
function export:f_80_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669166"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = 0
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_175_Deactivated
  l0:Deactivate()
end
function export:f_80_Out_4()
  local l0
  self = self._graph
  l0 = self[198]
  l0:StartLights()
end
function export:f_80_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_213_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_189_Disabled()
  local l0
  self = self._graph
  l0 = self[194]
  l0:In(0)
end
function export:f_189_IsUnderwater()
  local l0
  self = self._graph
  l0 = self[195]
  l0:Input(1)
end
function export:f_189_IsUnusable()
  local l0
  self = self._graph
  l0 = self[195]
  l0:Input(0)
end
function export:f_201_Out()
  local l0
  self = self._graph
  l0 = self[201]
  self.FailuerCheck = l0.Target
end
function export:f_201_SetFalse()
  local l0
  self = self._graph
  l0 = self[201]
  self.FailuerCheck = l0.Target
  l0 = self[18]
  l0:In()
end
function export:f_201_SetFromBool()
  local l0
  self = self._graph
  l0 = self[201]
  self.FailuerCheck = l0.Target
end
function export:f_201_SetTrue()
  local l0
  self = self._graph
  l0 = self[201]
  self.FailuerCheck = l0.Target
end
function export:f_201_Toggled()
  local l0
  self = self._graph
  l0 = self[201]
  self.FailuerCheck = l0.Target
end
function export:f_203_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372065263966442"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_151_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_203_Enter()
  local l0
  self = self._graph
  l0 = self[204]
  l0.HackableEntity = "9223372059747496663"
  l0:DisableHack()
end
function export:f_61_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_60_Out
  l0:In()
end
function export:f_67_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[69]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825670"
  l0:StartCommunication()
end
function export:f_76_Out()
  local l0
  self = self._graph
  l0 = self[142]
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M060.Objectives.Objective040",
    item = "Objective",
    id = "637647"
  }
  l0:IncrementObjective()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  self:en_196()
  l0 = self[196]
  l0:Disable()
end
function export:f_7_GotUser()
  local l0
  self = self._graph
  l0 = self[7]
  self.Server_Lift = l0.UserID
  l0 = self[191]
  l0:Input(1)
end
function export:f_7_NotGotUser()
  local l0
  self = self._graph
  l0 = self[7]
  self.Server_Lift = l0.UserID
  self:en_196()
  l0 = self[196]
  l0:Enable()
end
function export:f_7_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[7]
  self.Server_Lift = l0.UserID
end
function export:f_109_Attached()
  local l0
  self = self._graph
  l0 = self[9]
  l0.MapPoint = "9223372046830379170"
  l0:Show()
end
function export:f_137_Out_0()
  local l0
  self = self._graph
  l0 = self[109]
  l0.Parent = self.Server_Lift
  l0.Child = "9223372046830379170"
  l0.zPosOffset = 2.2
  l0:Attach()
end
function export:f_137_Out_1()
  local l0
  self = self._graph
  l0 = self[136]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_225_Out()
  local l0
  self = self._graph
  self:en_222()
  l0 = self[222]
  l0:Disable()
end
function export:f_89_Interacted()
  local l0
  self = self._graph
  l0 = self[240]
  l0.HackableEntity = self.Server_Lift
  l0:EnableHack()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372056453997549"
  l0.FadeIn = 0
  l0.FadeOut = 0
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0.Started = self.f_68_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  l0:Start()
end
function export:f_232_Out()
  local l0
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
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_223_ChaseStarted
  l0.SearchStarted = self.f_223_SearchStarted
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StartChase()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[59]
  l0.Checkpoint = "CheckPoint_3"
  l0:In()
end
function export:f_143_Out()
  local l0
  self = self._graph
  self:en_144()
  l0 = self[144]
  l0:Show()
end
function export:f_194_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FailuerCheck
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_202_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_176_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669166"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Input(2)
end
function export:f_74_OnCommunicationStarted()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Input(0)
end
function export:f_169_Out_0()
  local l0
  self = self._graph
  l0 = self[170]
  l0:In(0)
end
function export:f_169_Out_1()
  local l0
  self = self._graph
  l0 = self[90]
  l0:Reset()
end
function export:f_26_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Hide()
end
function export:f_134_Out()
  local l0
  self = self._graph
  self:en_144()
  l0 = self[144]
  l0:Hide()
end
function export:f_54_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_55_Out
  l0:In()
end
function export:f_200_A_is_True()
  local l0
  self = self._graph
  l0 = self[78]
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "Mission failed",
    id = "165440"
  }
  l0:Fail()
end
function export:f_93_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_250_Out_0
  l0.Out[1] = self.f_250_Out_1
  l0:In()
end
function export:f_84_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Input(0)
end
function export:f_158_Out()
  local l0
  self = self._graph
  l0 = self[159]
  l0.EntityList = self.Elevator_part_list
  l0:Disable()
end
function export:f_41_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_113_Out_0
  l0.Out[1] = self.f_113_Out_1
  l0:In()
end
function export:f_41_Enabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_41_EnterRadius()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Disable()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372056453997549"
  l0.FadeIn = 0
  l0.FadeOut = 0
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0.Started = self.f_119_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  l0:Start()
end
function export:f_90_Out()
  local l0
  self = self._graph
  l0 = self[140]
  l0:Input(1)
end
function export:f_62_PostOut()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Input(1)
end
function export:en_196()
  local l0
  l0 = self[196]
  l0.CLO = "9223372067049059805"
end
function export:en_115()
  local l0
  l0 = self[115]
  l0.HackableEntityList = self.Elevator_Hackable
end
function export:en_163()
  local l0
  l0 = self[163]
  l0.CLO = "9223372067049059805"
end
function export:en_114()
  local l0
  l0 = self[114]
  l0.Entity1 = self.Server_Lift
  l0.Entity2 = "9223372055142759890"
  l0.Radius = 2.8
  l0.CheckNow = 1
end
function export:en_235()
  local l0
  l0 = self[235]
  l0.Trigger = "9223372073445745593"
end
function export:en_44()
  local l0
  l0 = self[44]
  l0.MissionArea = "9223372047951013074"
  l0.MissionLayer = "S16M060_Main"
  l0.LmaLayer = "Barge_LMA"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_161()
  local l0
  l0 = self[161]
  l0.CLO = "9223372067049059805"
end
function export:en_179()
  local l0
  l0 = self[179]
  l0.HackableEntity = self.Server_Lift
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.Vehicle = self.ForkLift_02
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Trigger = "9223372046830378951"
  l0.CheckNow = 1
end
function export:en_228()
  local l0
  l0 = self[228]
  l0.Affiliation = "SFPD"
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.Trigger = "9223372046830379173"
  l0.CheckNow = 1
end
function export:en_168()
  local l0
  l0 = self[168]
  l0.CLO = "9223372067049059805"
end
function export:en_71()
  local l0
  l0 = self[71]
  l0.Vehicle = self.ForkLift_05
end
function export:en_222()
  local l0
  l0 = self[222]
  l0.Affiliation = "SFPD"
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.CLO = "9223372067049059805"
end
function export:en_144()
  local l0
  l0 = self[144]
  l0.MapPoint = "9223372046830379172"
end
function export:en_43()
  local l0
  l0 = self[43]
  l0.MissionArea = "9223372047951013076"
  l0.MissionLayer = "S16M060_Main"
  l0.LmaLayer = "Barge_LMA"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_177()
  local l0
  l0 = self[177]
  l0.Entity1 = self.Server_Lift
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 5
  l0.CheckDistance3D = 1
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.MapPoint = "9223372046830378953"
end
function export:en_122()
  local l0
  l0 = self[122]
  l0.MapPoint = "9223372060751356445"
end
function export:en_70()
  local l0
  l0 = self[70]
  l0.Vehicle = self.ForkLift_03
end
function export:en_33()
  local l0
  l0 = self[33]
  l0.MapPoint = "9223372055142759888"
end
function export:en_231()
  local l0
  l0 = self[231]
  l0.Affiliation = "SFPD"
end
function export:en_32()
  local l0
  l0 = self[32]
  l0.Entity1 = "9223372052537129959"
  l0.Entity2 = self.Server_Lift
  l0.Radius = 2.5
  l0.CheckDistance3D = 1
  l0.CheckNow = 1
end
function export:en_178()
  local l0
  l0 = self[178]
  l0.Trigger = "9223372046830379165"
  l0.CheckNow = 1
end
function export:en_189()
  local l0
  l0 = self[189]
  l0.Vehicle = self.Server_Lift
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.CLO = "9223372067049059805"
end
function export:en_41()
  local l0
  l0 = self[41]
  l0.TargetEntity = "9223372047951013077"
  l0.Radius = 120
end
_compilerVersion = 4
