export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/HackableController_v2.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("Domino/System/TeleportEntity.lua")
  cbox:RegisterBox("Domino/System/TimeScaleController.lua")
end
function export:Init(cbox)
  local l0
  self.Activated = DummyFunction
  self.CheckPointLoaded = DummyFunction
  self.Reference_WJR = nil
  self[16] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[9] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Loaded = self.f_9_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/TeleportEntity.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.TeleportDone = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[7] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[7]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_7_PostOut
  self[1] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_1_OnUserInPlace
  self[5] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.SetTrue = self.f_5_SetTrue
  l0.SetFalse = self.f_5_SetFalse
  l0.Toggled = self.f_5_Toggled
  l0.SetFromBool = self.f_5_SetFromBool
  self[10] = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_10_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[8] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[3] = cbox:CreateBox("Domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = self.f_3_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = self.f_3_SoftQuitCompleted
  self[14] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_14_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Activate()
  local l0
  l0 = self[8]
  l0.Checkpoint = self.SetCheckpoint
  l0:In()
end
function export:CheckpointIn()
  local l0
  l0 = self[9]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:f_12_A_is_False()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(1)
end
function export:f_12_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:SetTimeOfDay()
end
function export:f_9_Loaded()
  local l0
  self = self._graph
  l0 = self[1]
  l0.CLO = "9223372047020211132"
  l0:Activate()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TimeScaleController.lua")]
  l0.TimeScale = 0
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_13_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Lock()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ForceTimeOfDay
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_12_A_is_True
  l0.A_is_False = self.f_12_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.MissionArea = self.MissionZoneSupplied
  l0.MissionLayer = self.MissionLayer
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  l0:Enable()
end
function export:f_7_PostOut()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Checkpoint = self.SetCheckpoint
  l0:In()
end
function export:f_1_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[1]
  self.Reference_WJR = l0.UserID
  l0 = self[10]
  l0.HackableEntity = self.Reference_WJR
  l0:ForceHack()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[5]
  self.FromCheckpoint = l0.Target
end
function export:f_5_SetFalse()
  local l0
  self = self._graph
  l0 = self[5]
  self.FromCheckpoint = l0.Target
end
function export:f_5_SetFromBool()
  local l0
  self = self._graph
  l0 = self[5]
  self.FromCheckpoint = l0.Target
end
function export:f_5_SetTrue()
  local l0
  self = self._graph
  l0 = self[5]
  self.FromCheckpoint = l0.Target
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Reference_WJR
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:FromEntity()
end
function export:f_5_Toggled()
  local l0
  self = self._graph
  l0 = self[5]
  self.FromCheckpoint = l0.Target
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.WJR_ID = l0.Target
  self:CheckPointLoaded()
end
function export:f_10_HackForced()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Entity = self.Reference_WJR
  l0.Destination = "9223372052878654684"
  l0:In()
end
function export:f_13_Locked()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(0)
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.WJR_ID = l0.Target
  self:Activated()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.WJRRef_IN
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:FromEntity()
end
function export:f_3_Enabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0:True()
end
function export:f_3_SoftQuitCompleted()
  local l0
  self = self._graph
  l0 = self[16]
  l0.LayerName = "S15M030_PostEMP"
  l0:Unload()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:Activated()
end
function export:CheckPointLoaded()
end
_compilerVersion = 4
