export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/TimeScaleController.lua")
end
function export:Init(cbox)
  local l0
  self.Activated = DummyFunction
  self.CheckPointLoaded = DummyFunction
  self.MissionZone = "9223372048270749712"
  self.PostEMP_Layer = "S15M030_PostEMP"
  self.Mission_Layer = "S15M030_Main"
  self[3] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[13] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[6] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[6]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_6_PostOut
  self[19] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_19_Out
  self[11] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Loaded = self.f_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[5] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Loaded = self.f_5_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[18] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_18_Out
  self[7] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[12] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
  self[1] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.SetTrue = self.f_1_SetTrue
  l0.SetFalse = self.f_1_SetFalse
  l0.Toggled = self.f_1_Toggled
  l0.SetFromBool = self.f_1_SetFromBool
  self[8] = cbox:CreateBox("Domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = self.f_8_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = self.f_8_SoftQuitCompleted
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
  l0 = self[3]
  l0.Checkpoint = self.SetCheckpoint
  l0:In()
end
function export:CheckpointIn()
  local l0
  l0 = self[5]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:f_3_Out()
  self = self._graph
  self:Activated()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TimeScaleController.lua")]
  l0.TimeScale = 0
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_14_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Lock()
end
function export:f_17_Is_nil()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(0)
end
function export:f_17_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipPostCinematicFromCheckpoint
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_16_A_is_True
  l0.A_is_False = self.f_16_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.MissionArea = self.MissionZoneSupplied
  l0.MissionLayer = self.MissionLayer
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  l0:Enable()
end
function export:f_9_A_is_False()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_9_A_is_True()
  local l0
  self = self._graph
  l0 = self[11]
  l0.LayerName = self.AfterEMP_Layer
  l0:Load()
end
function export:f_6_PostOut()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(0)
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Checkpoint = self.SetCheckpoint
  l0:In()
end
function export:f_10_A_is_False()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_10_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:SetTimeOfDay()
end
function export:f_11_Loaded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(0)
end
function export:f_16_A_is_False()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(1)
end
function export:f_16_A_is_True()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(1)
end
function export:f_5_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Post_EMP
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_9_A_is_True
  l0.A_is_False = self.f_9_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_14_Locked()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_15_A_is_True()
  local l0
  self = self._graph
  l0 = self[13]
  l0.LayerName = self.AfterEMP_Layer
  l0:Unload()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.SkipPostCinematicFromCheckpoint
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_17_Is_nil
  l0.Is_not_nil = self.f_17_Is_not_nil
  l0:In()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ForceTimeOfDay
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_10_A_is_True
  l0.A_is_False = self.f_10_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[1]
  self.FromCheckpoint = l0.Target
end
function export:f_1_SetFalse()
  local l0
  self = self._graph
  l0 = self[1]
  self.FromCheckpoint = l0.Target
end
function export:f_1_SetFromBool()
  local l0
  self = self._graph
  l0 = self[1]
  self.FromCheckpoint = l0.Target
end
function export:f_1_SetTrue()
  local l0
  self = self._graph
  l0 = self[1]
  self.FromCheckpoint = l0.Target
  self:CheckPointLoaded()
end
function export:f_1_Toggled()
  local l0
  self = self._graph
  l0 = self[1]
  self.FromCheckpoint = l0.Target
end
function export:f_8_Enabled()
  local l0
  self = self._graph
  l0 = self[1]
  l0:True()
end
function export:f_8_SoftQuitCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Post_EMP
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_15_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:Activated()
end
function export:CheckPointLoaded()
end
_compilerVersion = 4
