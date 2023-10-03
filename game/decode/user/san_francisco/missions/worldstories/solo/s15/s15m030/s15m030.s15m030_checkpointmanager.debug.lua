export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/TimeScaleController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S15M030_CheckpointManager"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager"
  self.Activated = DummyFunction
  self.CheckPointLoaded = DummyFunction
  self.MissionZone = "9223372048270749712"
  self.PostEMP_Layer = "S15M030_PostEMP"
  self.Mission_Layer = "S15M030_Main"
  self.box_MissionCheckpointReach_3 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_3
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|59617634"
  l0.Out = self.f_box_MissionCheckpointReach_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_13 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_13
  l0._graph = self
  l0._name = "box_MissionLayer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|99645400"
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_4 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_4
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|386033502"
  l0.Out = self.f_box_MissionCheckpointReach_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CinematicPrep_6 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_6
  l0._graph = self
  l0._name = "box_CinematicPrep_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|665419359"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_6_PostOut
  self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|713752210"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_MissionLayer_v2_11 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_11
  l0._graph = self
  l0._name = "box_MissionLayer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1116569285"
  l0.Loaded = self.f_box_MissionLayer_v2_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_5 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1253422668"
  l0.Loaded = self.f_box_MissionLayer_v2_5_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1295999706"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1597601070"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1639217164"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_SetBoolean_v2_1 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_1
  l0._graph = self
  l0._name = "box_SetBoolean_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1821207760"
  l0.Out = self.f_box_SetBoolean_v2_1_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_1_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_1_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_1_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_1_SetFromBool
  self.box_MissionZone_8 = cbox:CreateBox("Domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_8
  l0._graph = self
  l0._name = "box_MissionZone_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|2063054276"
  l0.Enabled = self.f_box_MissionZone_8_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = self.f_box_MissionZone_8_SoftQuitCompleted
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
  l0 = self.box_MissionCheckpointReach_3
  l0.Checkpoint = self.SetCheckpoint
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|901244668", "901244668", "S15M030_CheckpointManager", "Activate", "box_MissionCheckpointReach_3.In", self, l0)
  l0:In()
end
function export:CheckpointIn()
  local l0
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|107301865", "107301865", "S15M030_CheckpointManager", "CheckpointIn", "box_MissionLayer_v2_5.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionCheckpointReach_3_Out()
  local l0
  self = self._graph
  l0 = self.box_MissionCheckpointReach_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|987170305", "987170305", "S15M030_CheckpointManager", "box_MissionCheckpointReach_3.Out", "Activated", l0, self)
  self:Activated()
end
function export:f_box_SetTimeOfDay_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TimeScaleController.lua")]
  l0.TimeScale = 0
  l0._graph = self
  l0._name = "box_TimeScale_Controller_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1278967945"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_14_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1586735985", "1586735985", "S15M030_CheckpointManager", "box_SetTimeOfDay_2.Out", "box_TimeScale_Controller_14.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_Test_if_Nil_17_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|211354220", "211354220", "S15M030_CheckpointManager", "box_Test_if_Nil_17.Is_nil", "box_MultipleOR_18.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_17_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipPostCinematicFromCheckpoint
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1245839448"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_16_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_16_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1863007083", "1863007083", "S15M030_CheckpointManager", "box_Test_if_Nil_17.Is_not_nil", "box_Compare_Boolean_v2_16.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionZone_8
  l0.MissionArea = self.MissionZoneSupplied
  l0.MissionLayer = self.MissionLayer
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  l0 = self.box_MissionCheckpointReach_4
  l1 = self.box_MissionZone_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|354103761", "354103761", "S15M030_CheckpointManager", "box_MissionCheckpointReach_4.Out", "box_MissionZone_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Boolean_v2_9_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|725383778", "725383778", "S15M030_CheckpointManager", "box_Compare_Boolean_v2_9.A_is_False", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_9_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_11
  l0.LayerName = self.AfterEMP_Layer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1106873462", "1106873462", "S15M030_CheckpointManager", "box_Compare_Boolean_v2_9.A_is_True", "box_MissionLayer_v2_11.Load", clone, l0)
  l0:Load()
end
function export:f_box_CinematicPrep_6_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_CinematicPrep_6
  l1 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1484280138", "1484280138", "S15M030_CheckpointManager", "box_CinematicPrep_6.PostOut", "box_MultipleOR_19.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_4
  l0.Checkpoint = self.SetCheckpoint
  l0 = self.box_MultipleOR_19
  l1 = self.box_MissionCheckpointReach_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1919581022", "1919581022", "S15M030_CheckpointManager", "box_MultipleOR_19.Out", "box_MissionCheckpointReach_4.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_10_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1041698816", "1041698816", "S15M030_CheckpointManager", "box_Compare_Boolean_v2_10.A_is_False", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_10_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|60255494"
  l0.Out = self.f_box_SetTimeOfDay_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1338970977", "1338970977", "S15M030_CheckpointManager", "box_Compare_Boolean_v2_10.A_is_True", "box_SetTimeOfDay_2.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_MissionLayer_v2_11_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionLayer_v2_11
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1982863567", "1982863567", "S15M030_CheckpointManager", "box_MissionLayer_v2_11.Loaded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_16_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1890045299", "1890045299", "S15M030_CheckpointManager", "box_Compare_Boolean_v2_16.A_is_False", "box_MultipleOR_18.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_16_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1165186310", "1165186310", "S15M030_CheckpointManager", "box_Compare_Boolean_v2_16.A_is_True", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionLayer_v2_5_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Post_EMP
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|653588276"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_9_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_9_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MissionLayer_v2_5
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1771950897", "1771950897", "S15M030_CheckpointManager", "box_MissionLayer_v2_5.Loaded", "box_Compare_Boolean_v2_9.In", l0, l1)
  l1:In()
end
function export:f_box_TimeScale_Controller_14_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1858040682", "1858040682", "S15M030_CheckpointManager", "box_TimeScale_Controller_14.Locked", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_6
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MultipleOR_18
  l1 = self.box_CinematicPrep_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1341495685", "1341495685", "S15M030_CheckpointManager", "box_MultipleOR_18.Out", "box_CinematicPrep_6.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Compare_Boolean_v2_15_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_13
  l0.LayerName = self.AfterEMP_Layer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|813521040", "813521040", "S15M030_CheckpointManager", "box_Compare_Boolean_v2_15.A_is_True", "box_MissionLayer_v2_13.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|223954106"
  l0.Is_nil = self.f_box_Test_if_Nil_17_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_17_Is_not_nil
  l0 = self.box_MultipleOR_7
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|437473086", "437473086", "S15M030_CheckpointManager", "box_MultipleOR_7.Out", "box_Test_if_Nil_17.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ForceTimeOfDay
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|865257642"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_10_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_10_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_12
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1055333657", "1055333657", "S15M030_CheckpointManager", "box_MultipleOR_12.Out", "box_Compare_Boolean_v2_10.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_1_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.FromCheckpoint = l0.Target
end
function export:f_box_SetBoolean_v2_1_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.FromCheckpoint = l0.Target
end
function export:f_box_SetBoolean_v2_1_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.FromCheckpoint = l0.Target
end
function export:f_box_SetBoolean_v2_1_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.FromCheckpoint = l0.Target
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|209861991", "209861991", "S15M030_CheckpointManager", "box_SetBoolean_v2_1.SetTrue", "CheckPointLoaded", l0, self)
  self:CheckPointLoaded()
end
function export:f_box_SetBoolean_v2_1_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.FromCheckpoint = l0.Target
end
function export:f_box_MissionZone_8_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionZone_8
  l1 = self.box_SetBoolean_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1340877404", "1340877404", "S15M030_CheckpointManager", "box_MissionZone_8.Enabled", "box_SetBoolean_v2_1.True", l0, l1)
  l1:True()
end
function export:f_box_MissionZone_8_SoftQuitCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Post_EMP
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|1460912449"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_15_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MissionZone_8
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_CheckpointManager|687209762", "687209762", "S15M030_CheckpointManager", "box_MissionZone_8.SoftQuitCompleted", "box_Compare_Boolean_v2_15.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_19()
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_MultipleOR_12()
end
function export:Activated()
end
function export:CheckPointLoaded()
end
_compilerVersion = 4
