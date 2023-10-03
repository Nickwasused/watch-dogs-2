export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L28M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main"
  self.PlayerEntity = nil
  self.MissionStartTrigger_0 = "9223372049691744227"
  self.DebugAnnotationTextEntity_358 = "9223372049902191265"
  self.DebugAnnotationTextEntity_359 = "9223372049902191271"
  self.NotActivatedByDefault_0 = "9223372049902242357"
  self.DebugAnnotationTextEntity_357 = "9223372049902191264"
  self.ComputerHacked = 0
  self.L28M010_TEMP_DoorOpen_ProximityTrigger_3579 = "9223372053758657195"
  self.NotActivatedByDefault_10 = "9223372049691744225"
  self.Hinge_Hackable_Door_1 = "9223372057006493035"
  self.Keypad_HackableEntity_6 = "9223372057006493043"
  self.Keypad_HackableEntity_5 = "9223372057006493041"
  self.L28M010_CityLifeObject_ServerKeyboard = "9223372061798228081"
  self.box_FreeRoam_Beat_4 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_4
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|303365720"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_4_NewBeatStarted
  self.box_RewardController_v3_5 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_5
  l0._graph = self
  l0._name = "box_RewardController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|365898356"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_MissionMessageController_v3_2 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_2
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|426541707"
  l0.Out = self.f_box_MissionMessageController_v3_2_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Mission_End_7 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_7
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|532915809"
  self.box_PhoneCommunicationController_13 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_13
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|696991158"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_21 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_21
  l0._graph = self
  l0._name = "box_SetBoolean_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1044310480"
  l0.Out = self.f_box_SetBoolean_v2_21_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_21_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_21_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_21_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_21_SetFromBool
  self.box_OnceOnly_v3_6 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_6
  l0._graph = self
  l0._name = "box_OnceOnly_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1181558371"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_6_Out
  l0.ResetOut = DummyFunction
  self.box_Hackable_Monitor_12 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_12
  l0._graph = self
  l0._name = "box_Hackable_Monitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1201127463"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_12_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_12_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_FreeRoam_Interact_Gameplay_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Interact_Gameplay_3
  l0._graph = self
  l0._name = "box_FreeRoam_Interact_Gameplay_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1258527630"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_Interact_Gameplay_3_Interacted
  self.box_Reward_Phone_Call_Monitor_8 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_8
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1852233030"
  l0.Enabled = self.f_box_Reward_Phone_Call_Monitor_8_Enabled
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_8_OnPhoneCallEnded
  self.box_HackableController_v2_11 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_11
  l0._graph = self
  l0._name = "box_HackableController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|2020453506"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_11_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_14 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_14
  l0._graph = self
  l0._name = "box_HackableController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|2057496781"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_14_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
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
  self:OnEnter_box_FreeRoam_Beat_4()
  l0 = self.box_FreeRoam_Beat_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1095679375", "1095679375", "L28M010_Main", "CheckPoint_0", "box_FreeRoam_Beat_4.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_7()
  l0 = self.box_FreeRoam_Mission_End_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1335165058", "1335165058", "L28M010_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_7.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_4()
  l0 = self.box_FreeRoam_Beat_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1165263189", "1165263189", "L28M010_Main", "In", "box_FreeRoam_Beat_4.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_Beat_4_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_2
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M010a.Objectives.Objective010",
    item = "Objective",
    id = "550103"
  }
  l0 = self.box_FreeRoam_Beat_4
  l1 = self.box_MissionMessageController_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|733250802", "733250802", "L28M010_Main", "box_FreeRoam_Beat_4.NewBeatStarted", "box_MissionMessageController_v3_2.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1130787566"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0 = self.box_MissionMessageController_v3_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1698986563", "1698986563", "L28M010_Main", "box_MissionMessageController_v3_2.Out", "box_Ordered_Output_18.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_21_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.ComputerHacked = l0.Target
end
function export:f_box_SetBoolean_v2_21_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.ComputerHacked = l0.Target
end
function export:f_box_SetBoolean_v2_21_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.ComputerHacked = l0.Target
end
function export:f_box_SetBoolean_v2_21_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.ComputerHacked = l0.Target
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Hinge_Hackable_Door_1
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1879298115"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_box_MoveableEntityController_9_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_SetBoolean_v2_21
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|139666805", "139666805", "L28M010_Main", "box_SetBoolean_v2_21.SetTrue", "box_MoveableEntityController_9.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_SetBoolean_v2_21_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.ComputerHacked = l0.Target
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_12()
  l0 = self.box_Hackable_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1420411860", "1420411860", "L28M010_Main", "box_Ordered_Output_18.Out", "box_Hackable_Monitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Interact_Gameplay_3
  l0.CLO = self.L28M010_CityLifeObject_ServerKeyboard
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|519221355", "519221355", "L28M010_Main", "box_Ordered_Output_18.Out", "box_FreeRoam_Interact_Gameplay_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_13
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367342"
  l0 = self.box_OnceOnly_v3_6
  l1 = self.box_PhoneCommunicationController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|255504069", "255504069", "L28M010_Main", "box_OnceOnly_v3_6.Out", "box_PhoneCommunicationController_13.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Hackable_Monitor_12_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_12
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1526241329", "1526241329", "L28M010_Main", "box_Hackable_Monitor_12.Disabled", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(0)
end
function export:f_box_Hackable_Monitor_12_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_12()
  l0 = self.box_Hackable_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|499648823", "499648823", "L28M010_Main", "box_Hackable_Monitor_12.HackSuccess", "box_Hackable_Monitor_12.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_FreeRoam_Interact_Gameplay_3_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Interact_Gameplay_3
  l1 = self.box_SetBoolean_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|2132027106", "2132027106", "L28M010_Main", "box_FreeRoam_Interact_Gameplay_3.Interacted", "box_SetBoolean_v2_21.True", l0, l1)
  l1:True()
end
function export:f_box_Reward_Phone_Call_Monitor_8_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_5
  l0.ItemDB = "Items.9223372050357367273"
  l0 = self.box_Reward_Phone_Call_Monitor_8
  l1 = self.box_RewardController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|101550658", "101550658", "L28M010_Main", "box_Reward_Phone_Call_Monitor_8.Enabled", "box_RewardController_v3_5.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Reward_Phone_Call_Monitor_8_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_7()
  l0 = self.box_Reward_Phone_Call_Monitor_8
  l1 = self.box_FreeRoam_Mission_End_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|1800124477", "1800124477", "L28M010_Main", "box_Reward_Phone_Call_Monitor_8.OnPhoneCallEnded", "box_FreeRoam_Mission_End_7.End", l0, l1)
  l1:End()
end
function export:f_box_MoveableEntityController_9_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_14
  l0.HackableEntity = self.Keypad_HackableEntity_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|938170503", "938170503", "L28M010_Main", "box_MoveableEntityController_9.MovedBackward", "box_HackableController_v2_14.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_HackableController_v2_11_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_8
  l0.ItemDb = "Items.9223372050357367273"
  l0 = self.box_HackableController_v2_11
  l1 = self.box_Reward_Phone_Call_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|614955755", "614955755", "L28M010_Main", "box_HackableController_v2_11.Disabled", "box_Reward_Phone_Call_Monitor_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_14_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_11
  l0.HackableEntity = self.Keypad_HackableEntity_5
  l0 = self.box_HackableController_v2_14
  l1 = self.box_HackableController_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M010.domino|@L28M010_Main|744620092", "744620092", "L28M010_Main", "box_HackableController_v2_14.Disabled", "box_HackableController_v2_11.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:OnEnter_box_FreeRoam_Beat_4()
  local l0
  l0 = self.box_FreeRoam_Beat_4
  l0.ProgressionLayer = "ProgressionLayers.9223372049691744216"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Mission_End_7()
  local l0
  l0 = self.box_FreeRoam_Mission_End_7
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_Hackable_Monitor_12()
  local l0
  l0 = self.box_Hackable_Monitor_12
  l0.HackableEntity = self.Keypad_HackableEntity_5
end
_compilerVersion = 4
