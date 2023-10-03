export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/HackableMonitor.lua")
  cbox:RegisterBox("Domino/System/HackableController_v2.lua")
  cbox:RegisterBox("Domino/System/InputListenerMonitor.lua")
  cbox:RegisterBox("Domino/System/LookAtTriggerMonitor.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/TextToScreen_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.EnterFOV_Output = DummyFunction
  self.LeaveFOV_Output = DummyFunction
  self.RCExit = DummyFunction
  self.RcHacked = DummyFunction
  self.PlayerEntity = nil
  self.IsInFOV = 0
  self[40] = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self[40]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_40_EnterFOV
  l0.LeaveFOV = self.f_40_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self[39] = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self[39]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_39_EnterFOV
  l0.LeaveFOV = self.f_39_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self[34] = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self[34]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_34_EnterFOV
  l0.LeaveFOV = self.f_34_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self[37] = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self[37]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_37_EnterFOV
  l0.LeaveFOV = self.f_37_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self[55] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[55]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = self.f_55_Damaged
  l0.Killed = self.f_55_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[59] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[59]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_59_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[48] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[48]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_48_Out
  self[22] = cbox:CreateBox("Domino/System/HackableMonitor.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_22_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_22_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[38] = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self[38]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_38_EnterFOV
  l0.LeaveFOV = self.f_38_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self[45] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[45]
  l0._graph = self
  l0._DynamicAnchors = {Input = 9}
  l0.Out = self.f_45_Out
  self[56] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[56]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_56_Out
  self[26] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[26]
  l0._graph = self
  l0._DynamicAnchors = {Input = 14}
  l0.Out = self.f_26_Out
  self[50] = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self[50]
  l0._graph = self
  l0.Shown = self.f_50_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[64] = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self[64]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_64_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[41] = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self[41]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_41_EnterFOV
  l0.LeaveFOV = self.f_41_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self[44] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[44]
  l0._graph = self
  l0._DynamicAnchors = {Input = 9}
  l0.Out = self.f_44_Out
  self[63] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[63]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_63_Out
  self[36] = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self[36]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_36_EnterFOV
  l0.LeaveFOV = self.f_36_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self[32] = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_32_EnterFOV
  l0.LeaveFOV = self.f_32_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self[72] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[72]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_72_Out
  self[42] = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self[42]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_42_EnterFOV
  l0.LeaveFOV = self.f_42_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self[33] = cbox:CreateBox("Domino/System/InputListenerMonitor.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_33_Enabled
  l0.Disabled = self.f_33_Disabled
  l0.InputReceived = self.f_33_InputReceived
  self[53] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[53]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_53_Out
  self[61] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = self.f_61_Out
  l0.SetTrue = self.f_61_SetTrue
  l0.SetFalse = self.f_61_SetFalse
  l0.Toggled = self.f_61_Toggled
  l0.SetFromBool = self.f_61_SetFromBool
  self[58] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[58]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_58_Out
  self[71] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[71]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_71_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_25_Stopped()
  local l0
  self = self._graph
  l0 = self[61]
  l0:True()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(5)
end
function export:f_40_EnterFOV()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Input(6)
end
function export:f_40_LeaveFOV()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(6)
end
function export:f_27_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"Camera_Context_BlendIn\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_30_Out
  l0:In()
end
function export:f_27_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.Camera_Context_BlendOut
  l0._graph = self
  l0.Is_nil = self.f_28_Is_nil
  l0.Is_not_nil = self.f_28_Is_not_nil
  l0:In()
end
function export:f_4_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_00\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:In()
end
function export:f_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.LookAt_Trigger_01
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_5_Is_nil
  l0.Is_not_nil = self.f_5_Is_not_nil
  l0:In()
end
function export:f_69_A_is_False()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Disable()
end
function export:f_69_A_is_True()
  local l0
  self = self._graph
  l0 = self[71]
  l0:Input(1)
end
function export:f_49_Is_nil()
  local l0
  self = self._graph
  l0 = self[50]
  l0.MapPoint = self.MapPoint
  l0.LocText = self.MapPointLocText
  l0.LocMapMarkerTitle = self.MapPointLocText
  l0.LocMapMarkerDescription = self.MapPointLocText
  l0:Show()
end
function export:f_49_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.Particle
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_24_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_70_Out
  l0:In()
end
function export:f_47_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"Particle\" or \"MapPoint\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_52_Out
  l0:In()
end
function export:f_47_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Input(0)
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(2)
end
function export:f_57_Out_0()
  local l0
  self = self._graph
  l0 = self[56]
  l0:Input(1)
end
function export:f_57_Out_1()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:Disable()
end
function export:f_6_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_02\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:In()
end
function export:f_6_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.LookAt_Trigger_03
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_7_Is_nil
  l0.Is_not_nil = self.f_7_Is_not_nil
  l0:In()
end
function export:f_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Particle
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_49_Is_nil
  l0.Is_not_nil = self.f_49_Is_not_nil
  l0:In()
end
function export:f_46_Out_1()
  self = self._graph
  self:RcHacked()
end
function export:f_66_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 10}
  l0.Out[0] = self.f_43_Out_0
  l0.Out[1] = self.f_43_Out_1
  l0.Out[2] = self.f_43_Out_2
  l0.Out[3] = self.f_43_Out_3
  l0.Out[4] = self.f_43_Out_4
  l0.Out[5] = self.f_43_Out_5
  l0.Out[6] = self.f_43_Out_6
  l0.Out[7] = self.f_43_Out_7
  l0.Out[8] = self.f_43_Out_8
  l0.Out[9] = self.f_43_Out_9
  l0:In()
end
function export:f_12_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_08\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_21_Out
  l0:In()
end
function export:f_12_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.Camera_Context_Config
  l0._graph = self
  l0.Is_nil = self.f_23_Is_nil
  l0.Is_not_nil = self.f_23_Is_not_nil
  l0:In()
end
function export:f_39_EnterFOV()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Input(5)
end
function export:f_39_LeaveFOV()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(5)
end
function export:f_28_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"Camera_Context_BlendOut\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_31_Out
  l0:In()
end
function export:f_28_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Particle
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_51_Is_nil
  l0.Is_not_nil = self.f_51_Is_not_nil
  l0:In()
end
function export:f_34_EnterFOV()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Input(0)
end
function export:f_34_LeaveFOV()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(0)
end
function export:f_37_EnterFOV()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Input(3)
end
function export:f_37_LeaveFOV()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(3)
end
function export:f_55_Damaged()
  local l0
  self = self._graph
  l0 = self[58]
  l0:Input(0)
end
function export:f_55_Killed()
  local l0
  self = self._graph
  l0 = self[58]
  l0:Input(1)
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(7)
end
function export:f_59_Hidden()
  local l0
  self = self._graph
  l0 = self[63]
  l0:Input(0)
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsS04M070
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_68_A_is_True
  l0.A_is_False = self.f_68_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_35_Out_0()
  local l0
  self = self._graph
  self:en_34()
  l0 = self[34]
  l0:Enable()
end
function export:f_35_Out_1()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Enable()
end
function export:f_35_Out_2()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Enable()
end
function export:f_35_Out_3()
  local l0
  self = self._graph
  self:en_37()
  l0 = self[37]
  l0:Enable()
end
function export:f_35_Out_4()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:Enable()
end
function export:f_35_Out_5()
  local l0
  self = self._graph
  self:en_39()
  l0 = self[39]
  l0:Enable()
end
function export:f_35_Out_6()
  local l0
  self = self._graph
  self:en_40()
  l0 = self[40]
  l0:Enable()
end
function export:f_35_Out_7()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Enable()
end
function export:f_35_Out_8()
  local l0
  self = self._graph
  self:en_42()
  l0 = self[42]
  l0:Enable()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(1)
end
function export:f_22_Disabled()
  local l0
  self = self._graph
  l0 = self[64]
  l0.HackableEntity = self.Reference_Object_Logic
  l0:DisableHack()
end
function export:f_22_HackSuccess()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(1)
end
function export:f_38_EnterFOV()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Input(4)
end
function export:f_38_LeaveFOV()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(4)
end
function export:f_54_Is_nil()
  local l0
  self = self._graph
  l0 = self[59]
  l0.MapPoint = self.MapPoint
  l0:Hide()
end
function export:f_54_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.Particle
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = self.f_60_Stopped
  l0.Cleaned = DummyFunction
  l0:Stop()
end
function export:f_45_Out()
  self = self._graph
  self:LeaveFOV_Output()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(10)
end
function export:f_56_Out()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Disable()
end
function export:f_26_Out()
  self = self._graph
  self:Out()
end
function export:f_50_Shown()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(0)
end
function export:f_68_A_is_False()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Enable()
end
function export:f_68_A_is_True()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(0)
end
function export:f_64_Disabled()
  local l0
  self = self._graph
  l0 = self[71]
  l0:Input(0)
end
function export:f_43_Out_0()
  local l0
  self = self._graph
  self:en_34()
  l0 = self[34]
  l0:Disable()
end
function export:f_43_Out_1()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Disable()
end
function export:f_43_Out_2()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Disable()
end
function export:f_43_Out_3()
  local l0
  self = self._graph
  self:en_37()
  l0 = self[37]
  l0:Disable()
end
function export:f_43_Out_4()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:Disable()
end
function export:f_43_Out_5()
  local l0
  self = self._graph
  self:en_39()
  l0 = self[39]
  l0:Disable()
end
function export:f_43_Out_6()
  local l0
  self = self._graph
  self:en_40()
  l0 = self[40]
  l0:Disable()
end
function export:f_43_Out_7()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Disable()
end
function export:f_43_Out_8()
  local l0
  self = self._graph
  self:en_42()
  l0 = self[42]
  l0:Disable()
end
function export:f_43_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsInFOV
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_62_A_is_True
  l0.A_is_False = self.f_62_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_41_EnterFOV()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Input(7)
end
function export:f_41_LeaveFOV()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(7)
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.Particle
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = self.f_25_Stopped
  l0.Cleaned = DummyFunction
  l0:Stop()
end
function export:f_11_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_07\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_20_Out
  l0:In()
end
function export:f_11_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.LookAt_Trigger_08
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_12_Is_nil
  l0.Is_not_nil = self.f_12_Is_not_nil
  l0:In()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(11)
end
function export:f_9_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_05\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:In()
end
function export:f_9_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.LookAt_Trigger_06
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_10_Is_nil
  l0.Is_not_nil = self.f_10_Is_not_nil
  l0:In()
end
function export:f_23_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"Camera_Context_Config\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_29_Out
  l0:In()
end
function export:f_23_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.Camera_Context_BlendIn
  l0._graph = self
  l0.Is_nil = self.f_27_Is_nil
  l0.Is_not_nil = self.f_27_Is_not_nil
  l0:In()
end
function export:f_63_Out()
  self = self._graph
  self:RCExit()
end
function export:f_36_EnterFOV()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Input(2)
end
function export:f_36_LeaveFOV()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(2)
end
function export:f_1_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"Reference_Object_Logic\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:In()
end
function export:f_1_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.LookAt_Trigger_00
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_4_Is_nil
  l0.Is_not_nil = self.f_4_Is_not_nil
  l0:In()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(9)
end
function export:f_7_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_03\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_16_Out
  l0:In()
end
function export:f_7_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.LookAt_Trigger_04
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_8_Is_nil
  l0.Is_not_nil = self.f_8_Is_not_nil
  l0:In()
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(13)
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(12)
end
function export:f_10_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_06\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:In()
end
function export:f_10_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.LookAt_Trigger_07
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_11_Is_nil
  l0.Is_not_nil = self.f_11_Is_not_nil
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Reference_Object_Logic
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_1_Is_nil
  l0.Is_not_nil = self.f_1_Is_not_nil
  l0:In()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(3)
end
function export:f_32_EnterFOV()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Input(1)
end
function export:f_32_LeaveFOV()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(1)
end
function export:f_72_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_65_Out_0
  l0.Out[1] = self.f_65_Out_1
  l0:In()
end
function export:f_42_EnterFOV()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Input(8)
end
function export:f_42_LeaveFOV()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(8)
end
function export:f_33_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsS04M070
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_66_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_33_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_46_Out_0
  l0.Out[1] = self.f_46_Out_1
  l0:In()
end
function export:f_33_InputReceived()
  local l0
  self = self._graph
  l0 = self[56]
  l0:Input(0)
end
function export:f_62_A_is_False()
  local l0
  self = self._graph
  l0 = self[63]
  l0:Input(2)
end
function export:f_62_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Particle
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_54_Is_nil
  l0.Is_not_nil = self.f_54_Is_not_nil
  l0:In()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 9}
  l0.Out[0] = self.f_35_Out_0
  l0.Out[1] = self.f_35_Out_1
  l0.Out[2] = self.f_35_Out_2
  l0.Out[3] = self.f_35_Out_3
  l0.Out[4] = self.f_35_Out_4
  l0.Out[5] = self.f_35_Out_5
  l0.Out[6] = self.f_35_Out_6
  l0.Out[7] = self.f_35_Out_7
  l0.Out[8] = self.f_35_Out_8
  l0:In()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(6)
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = self[61]
  self.IsInFOV = l0.Target
end
function export:f_61_SetFalse()
  local l0
  self = self._graph
  l0 = self[61]
  self.IsInFOV = l0.Target
end
function export:f_61_SetFromBool()
  local l0
  self = self._graph
  l0 = self[61]
  self.IsInFOV = l0.Target
end
function export:f_61_SetTrue()
  local l0
  self = self._graph
  l0 = self[61]
  self.IsInFOV = l0.Target
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_67_Out
  l0:In()
end
function export:f_61_Toggled()
  local l0
  self = self._graph
  l0 = self[61]
  self.IsInFOV = l0.Target
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(4)
end
function export:f_24_Started()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(1)
end
function export:f_65_Out_0()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Enable()
end
function export:f_65_Out_1()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:Enable()
end
function export:f_70_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsS04M070
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_69_A_is_True
  l0.A_is_False = self.f_69_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_60_Stopped()
  local l0
  self = self._graph
  l0 = self[63]
  l0:Input(1)
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_57_Out_0
  l0.Out[1] = self.f_57_Out_1
  l0:In()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(0)
end
function export:f_8_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_04\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:In()
end
function export:f_8_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.LookAt_Trigger_05
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_9_Is_nil
  l0.Is_not_nil = self.f_9_Is_not_nil
  l0:In()
end
function export:f_51_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.MapPoint
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_47_Is_nil
  l0.Is_not_nil = self.f_47_Is_not_nil
  l0:In()
end
function export:f_51_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Input(1)
end
function export:f_5_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_01\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:In()
end
function export:f_5_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.LookAt_Trigger_02
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_6_Is_nil
  l0.Is_not_nil = self.f_6_Is_not_nil
  l0:In()
end
function export:f_71_Out()
  self = self._graph
  self:EnterFOV_Output()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(8)
end
function export:en_40()
  local l0
  l0 = self[40]
  l0.Trigger = self.LookAt_Trigger_06
end
function export:en_39()
  local l0
  l0 = self[39]
  l0.Trigger = self.LookAt_Trigger_05
end
function export:en_34()
  local l0
  l0 = self[34]
  l0.Trigger = self.LookAt_Trigger_00
end
function export:en_37()
  local l0
  l0 = self[37]
  l0.Trigger = self.LookAt_Trigger_03
end
function export:en_55()
  local l0
  l0 = self[55]
  l0.Pawn = self.PlayerEntity
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.HackableEntity = self.Reference_Object_Logic
end
function export:en_38()
  local l0
  l0 = self[38]
  l0.Trigger = self.LookAt_Trigger_04
end
function export:en_41()
  local l0
  l0 = self[41]
  l0.Trigger = self.LookAt_Trigger_07
end
function export:en_36()
  local l0
  l0 = self[36]
  l0.Trigger = self.LookAt_Trigger_02
end
function export:en_32()
  local l0
  l0 = self[32]
  l0.Trigger = self.LookAt_Trigger_01
end
function export:en_42()
  local l0
  l0 = self[42]
  l0.Trigger = self.LookAt_Trigger_08
end
function export:en_33()
  local l0
  l0 = self[33]
  l0.Input = "rctc_disconnect"
end
function export:Out()
end
function export:EnterFOV_Output()
end
function export:LeaveFOV_Output()
end
function export:RCExit()
end
function export:RcHacked()
end
_compilerVersion = 4
