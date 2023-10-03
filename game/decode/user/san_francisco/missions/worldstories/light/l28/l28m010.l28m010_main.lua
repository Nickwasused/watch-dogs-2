export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
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
  self[4] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[4]
  l0._graph = self
  l0.NewBeatStarted = self.f_4_NewBeatStarted
  self[5] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.MessageCompleted = DummyFunction
  self[7] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[7]
  l0._graph = self
  self[13] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[13]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[21] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = self.f_21_Out
  l0.SetTrue = self.f_21_SetTrue
  l0.SetFalse = self.f_21_SetFalse
  l0.Toggled = self.f_21_Toggled
  l0.SetFromBool = self.f_21_SetFromBool
  self[6] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_6_Out
  l0.ResetOut = DummyFunction
  self[12] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_12_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_12_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[3] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_3_Interacted
  self[8] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = self.f_8_Enabled
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_8_OnPhoneCallEnded
  self[11] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_11_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[14] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_14_Disabled
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
  self:en_4()
  l0 = self[4]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_7()
  l0 = self[7]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_4()
  l0 = self[4]
  l0:StartNewBeat()
end
function export:f_4_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M010a.Objectives.Objective010",
    item = "Objective",
    id = "550103"
  }
  l0:ShowNewObjective()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0:In()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[21]
  self.ComputerHacked = l0.Target
end
function export:f_21_SetFalse()
  local l0
  self = self._graph
  l0 = self[21]
  self.ComputerHacked = l0.Target
end
function export:f_21_SetFromBool()
  local l0
  self = self._graph
  l0 = self[21]
  self.ComputerHacked = l0.Target
end
function export:f_21_SetTrue()
  local l0
  self = self._graph
  l0 = self[21]
  self.ComputerHacked = l0.Target
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Hinge_Hackable_Door_1
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_9_MovedBackward
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
function export:f_21_Toggled()
  local l0
  self = self._graph
  l0 = self[21]
  self.ComputerHacked = l0.Target
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Enable()
end
function export:f_18_Out_1()
  local l0
  self = self._graph
  l0 = self[3]
  l0.CLO = self.L28M010_CityLifeObject_ServerKeyboard
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367342"
  l0:StartCommunication()
end
function export:f_12_Disabled()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In(0)
end
function export:f_12_HackSuccess()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Disable()
end
function export:f_3_Interacted()
  local l0
  self = self._graph
  l0 = self[21]
  l0:True()
end
function export:f_8_Enabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0.ItemDB = "Items.9223372050357367273"
  l0:ExecuteRewards()
end
function export:f_8_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:End()
end
function export:f_9_MovedBackward()
  local l0
  self = self._graph
  l0 = self[14]
  l0.HackableEntity = self.Keypad_HackableEntity_6
  l0:DisableHack()
end
function export:f_11_Disabled()
  local l0
  self = self._graph
  l0 = self[8]
  l0.ItemDb = "Items.9223372050357367273"
  l0:Enable()
end
function export:f_14_Disabled()
  local l0
  self = self._graph
  l0 = self[11]
  l0.HackableEntity = self.Keypad_HackableEntity_5
  l0:DisableHack()
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.ProgressionLayer = "ProgressionLayers.9223372049691744216"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.HackableEntity = self.Keypad_HackableEntity_5
end
_compilerVersion = 4
