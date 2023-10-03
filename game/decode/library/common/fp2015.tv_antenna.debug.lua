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
  self._name = "TV_Antenna"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna"
  self.Out = DummyFunction
  self.EnterFOV_Output = DummyFunction
  self.LeaveFOV_Output = DummyFunction
  self.RCExit = DummyFunction
  self.RcHacked = DummyFunction
  self.PlayerEntity = nil
  self.IsInFOV = 0
  self.box_LookAtTriggerMonitor_Monitor_40 = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self.box_LookAtTriggerMonitor_Monitor_40
  l0._graph = self
  l0._name = "box_LookAtTriggerMonitor_Monitor_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|61389116"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_box_LookAtTriggerMonitor_Monitor_40_EnterFOV
  l0.LeaveFOV = self.f_box_LookAtTriggerMonitor_Monitor_40_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self.box_LookAtTriggerMonitor_Monitor_39 = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self.box_LookAtTriggerMonitor_Monitor_39
  l0._graph = self
  l0._name = "box_LookAtTriggerMonitor_Monitor_39"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|390479530"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_box_LookAtTriggerMonitor_Monitor_39_EnterFOV
  l0.LeaveFOV = self.f_box_LookAtTriggerMonitor_Monitor_39_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self.box_LookAtTriggerMonitor_Monitor_34 = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self.box_LookAtTriggerMonitor_Monitor_34
  l0._graph = self
  l0._name = "box_LookAtTriggerMonitor_Monitor_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|445908254"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_box_LookAtTriggerMonitor_Monitor_34_EnterFOV
  l0.LeaveFOV = self.f_box_LookAtTriggerMonitor_Monitor_34_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self.box_LookAtTriggerMonitor_Monitor_37 = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self.box_LookAtTriggerMonitor_Monitor_37
  l0._graph = self
  l0._name = "box_LookAtTriggerMonitor_Monitor_37"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|458481364"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_box_LookAtTriggerMonitor_Monitor_37_EnterFOV
  l0.LeaveFOV = self.f_box_LookAtTriggerMonitor_Monitor_37_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self.box_PawnHealthMonitor_v3_55 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_55
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_55"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|468523449"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = self.f_box_PawnHealthMonitor_v3_55_Damaged
  l0.Killed = self.f_box_PawnHealthMonitor_v3_55_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_MapPointController_v4_59 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_59
  l0._graph = self
  l0._name = "box_MapPointController_v4_59"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|490979162"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_59_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_48
  l0._graph = self
  l0._name = "box_MultipleOR_48"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|517136871"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_48_Out
  self.box_Hackable_Monitor_22 = cbox:CreateBox("Domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_22
  l0._graph = self
  l0._name = "box_Hackable_Monitor_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|644044856"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_22_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_22_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_LookAtTriggerMonitor_Monitor_38 = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self.box_LookAtTriggerMonitor_Monitor_38
  l0._graph = self
  l0._name = "box_LookAtTriggerMonitor_Monitor_38"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|651785798"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_box_LookAtTriggerMonitor_Monitor_38_EnterFOV
  l0.LeaveFOV = self.f_box_LookAtTriggerMonitor_Monitor_38_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_45
  l0._graph = self
  l0._name = "box_MultipleOR_45"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|666032207"
  l0._DynamicAnchors = {Input = 9}
  l0.Out = self.f_box_MultipleOR_45_Out
  self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_56
  l0._graph = self
  l0._name = "box_MultipleOR_56"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|738235367"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_56_Out
  self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_26
  l0._graph = self
  l0._name = "box_MultipleOR_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|754788378"
  l0._DynamicAnchors = {Input = 14}
  l0.Out = self.f_box_MultipleOR_26_Out
  self.box_MapPointController_v4_50 = cbox:CreateBox("Domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_50
  l0._graph = self
  l0._name = "box_MapPointController_v4_50"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|898187211"
  l0.Shown = self.f_box_MapPointController_v4_50_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_HackableController_v2_64 = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_64
  l0._graph = self
  l0._name = "box_HackableController_v2_64"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|929278806"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_64_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_LookAtTriggerMonitor_Monitor_41 = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self.box_LookAtTriggerMonitor_Monitor_41
  l0._graph = self
  l0._name = "box_LookAtTriggerMonitor_Monitor_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1011039612"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_box_LookAtTriggerMonitor_Monitor_41_EnterFOV
  l0.LeaveFOV = self.f_box_LookAtTriggerMonitor_Monitor_41_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_44
  l0._graph = self
  l0._name = "box_MultipleOR_44"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1014873814"
  l0._DynamicAnchors = {Input = 9}
  l0.Out = self.f_box_MultipleOR_44_Out
  self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_63
  l0._graph = self
  l0._name = "box_MultipleOR_63"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1276776091"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_63_Out
  self.box_LookAtTriggerMonitor_Monitor_36 = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self.box_LookAtTriggerMonitor_Monitor_36
  l0._graph = self
  l0._name = "box_LookAtTriggerMonitor_Monitor_36"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1304942624"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_box_LookAtTriggerMonitor_Monitor_36_EnterFOV
  l0.LeaveFOV = self.f_box_LookAtTriggerMonitor_Monitor_36_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self.box_LookAtTriggerMonitor_Monitor_32 = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self.box_LookAtTriggerMonitor_Monitor_32
  l0._graph = self
  l0._name = "box_LookAtTriggerMonitor_Monitor_32"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1541725121"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_box_LookAtTriggerMonitor_Monitor_32_EnterFOV
  l0.LeaveFOV = self.f_box_LookAtTriggerMonitor_Monitor_32_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self.box_MultipleOR_72 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_72
  l0._graph = self
  l0._name = "box_MultipleOR_72"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1555025313"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_72_Out
  self.box_LookAtTriggerMonitor_Monitor_42 = cbox:CreateBox("Domino/System/LookAtTriggerMonitor.lua")
  l0 = self.box_LookAtTriggerMonitor_Monitor_42
  l0._graph = self
  l0._name = "box_LookAtTriggerMonitor_Monitor_42"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1602227284"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_box_LookAtTriggerMonitor_Monitor_42_EnterFOV
  l0.LeaveFOV = self.f_box_LookAtTriggerMonitor_Monitor_42_LeaveFOV
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self.box_InputListener_Monitor_33 = cbox:CreateBox("Domino/System/InputListenerMonitor.lua")
  l0 = self.box_InputListener_Monitor_33
  l0._graph = self
  l0._name = "box_InputListener_Monitor_33"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1643581183"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InputListener_Monitor_33_Enabled
  l0.Disabled = self.f_box_InputListener_Monitor_33_Disabled
  l0.InputReceived = self.f_box_InputListener_Monitor_33_InputReceived
  self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_53
  l0._graph = self
  l0._name = "box_MultipleOR_53"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1670564382"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_53_Out
  self.box_SetBoolean_v2_61 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_61
  l0._graph = self
  l0._name = "box_SetBoolean_v2_61"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1696210190"
  l0.Out = self.f_box_SetBoolean_v2_61_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_61_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_61_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_61_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_61_SetFromBool
  self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_58
  l0._graph = self
  l0._name = "box_MultipleOR_58"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1987761181"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_58_Out
  self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_71
  l0._graph = self
  l0._name = "box_MultipleOR_71"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2128599896"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_71_Out
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
  l0._name = "box_Get_Player_ID_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1437177059"
  l0.Out = self.f_box_Get_Player_ID_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1240819284", "1240819284", "TV_Antenna", "In", "box_Get_Player_ID_2.In", self, l0)
  l0:In()
end
function export:f_box_ParticleFXController_v2_25_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|56528951", "56528951", "TV_Antenna", "box_ParticleFXController_v2_25.Stopped", "box_SetBoolean_v2_61.True", clone, l0)
  l0:True()
end
function export:f_box_TextToScreen_v2_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|766051949", "766051949", "TV_Antenna", "box_TextToScreen_v2_17.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(5)
end
function export:f_box_LookAtTriggerMonitor_Monitor_40_EnterFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_LookAtTriggerMonitor_Monitor_40
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|580150021", "580150021", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_40.EnterFOV", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_LookAtTriggerMonitor_Monitor_40_LeaveFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_LookAtTriggerMonitor_Monitor_40
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1927149229", "1927149229", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_40.LeaveFOV", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_Test_if_Nil_27_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"Camera_Context_BlendIn\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1159076586"
  l0.Out = self.f_box_TextToScreen_v2_30_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|430036003", "430036003", "TV_Antenna", "box_Test_if_Nil_27.Is_nil", "box_TextToScreen_v2_30.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_27_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|391310363"
  l0.Is_nil = self.f_box_Test_if_Nil_28_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_28_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1872670161", "1872670161", "TV_Antenna", "box_Test_if_Nil_27.Is_not_nil", "box_Test_if_Nil_28.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_4_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_00\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|637961366"
  l0.Out = self.f_box_TextToScreen_v2_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2021541731", "2021541731", "TV_Antenna", "box_Test_if_Nil_4.Is_nil", "box_TextToScreen_v2_13.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2118764257"
  l0.Is_nil = self.f_box_Test_if_Nil_5_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_5_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1745398323", "1745398323", "TV_Antenna", "box_Test_if_Nil_4.Is_not_nil", "box_Test_if_Nil_5.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_69_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_22()
  l0 = self.box_Hackable_Monitor_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1904864799", "1904864799", "TV_Antenna", "box_Compare_Boolean_v2_69.A_is_False", "box_Hackable_Monitor_22.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Boolean_v2_69_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_71()
  l0 = self.box_MultipleOR_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1514284523", "1514284523", "TV_Antenna", "box_Compare_Boolean_v2_69.A_is_True", "box_MultipleOR_71.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_49_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_50
  l0.MapPoint = self.MapPoint
  l0.LocText = self.MapPointLocText
  l0.LocMapMarkerTitle = self.MapPointLocText
  l0.LocMapMarkerDescription = self.MapPointLocText
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1559524909", "1559524909", "TV_Antenna", "box_Test_if_Nil_49.Is_nil", "box_MapPointController_v4_50.Show", clone, l0)
  l0:Show()
end
function export:f_box_Test_if_Nil_49_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.Particle
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1788337400"
  l0.Started = self.f_box_ParticleFXController_v2_24_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|522635025", "522635025", "TV_Antenna", "box_Test_if_Nil_49.Is_not_nil", "box_ParticleFXController_v2_24.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_70"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1836826947"
  l0.Out = self.f_box_Simple_Node_70_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|89864013", "89864013", "TV_Antenna", "box_Simple_Node_67.Out", "box_Simple_Node_70.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_47_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"Particle\" or \"MapPoint\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_52"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1417821753"
  l0.Out = self.f_box_TextToScreen_v2_52_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|735897541", "735897541", "TV_Antenna", "box_Test_if_Nil_47.Is_nil", "box_TextToScreen_v2_52.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_47_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|544442350", "544442350", "TV_Antenna", "box_Test_if_Nil_47.Is_not_nil", "box_MultipleOR_48.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_TextToScreen_v2_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2116503978", "2116503978", "TV_Antenna", "box_TextToScreen_v2_14.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_57_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_56()
  l0 = self.box_MultipleOR_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1087747216", "1087747216", "TV_Antenna", "box_Ordered_Output_57.Out", "box_MultipleOR_56.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_57_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_55()
  l0 = self.box_PawnHealthMonitor_v3_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1858275144", "1858275144", "TV_Antenna", "box_Ordered_Output_57.Out", "box_PawnHealthMonitor_v3_55.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Test_if_Nil_6_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_02\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1452480751"
  l0.Out = self.f_box_TextToScreen_v2_15_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1125640030", "1125640030", "TV_Antenna", "box_Test_if_Nil_6.Is_nil", "box_TextToScreen_v2_15.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_6_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1415789963"
  l0.Is_nil = self.f_box_Test_if_Nil_7_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_7_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2126715926", "2126715926", "TV_Antenna", "box_Test_if_Nil_6.Is_not_nil", "box_Test_if_Nil_7.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_49"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|189253674"
  l0.Is_nil = self.f_box_Test_if_Nil_49_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_49_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1617229365", "1617229365", "TV_Antenna", "box_Ordered_Output_46.Out", "box_Test_if_Nil_49.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1156367105", "1156367105", "TV_Antenna", "box_Ordered_Output_46.Out", "RcHacked", clone, self)
  self:RcHacked()
end
function export:f_box_Compare_Boolean_v2_66_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_43"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|948431963"
  l0._DynamicAnchors = {Out = 10}
  l0.Out[0] = self.f_box_Ordered_Output_43_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_43_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_43_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_43_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_43_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_43_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_43_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_43_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_43_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_43_Out_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1653540535", "1653540535", "TV_Antenna", "box_Compare_Boolean_v2_66.A_is_False", "box_Ordered_Output_43.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_12_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_08\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1392579949"
  l0.Out = self.f_box_TextToScreen_v2_21_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1606230695", "1606230695", "TV_Antenna", "box_Test_if_Nil_12.Is_nil", "box_TextToScreen_v2_21.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_12_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1259488165"
  l0.Is_nil = self.f_box_Test_if_Nil_23_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_23_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2085685304", "2085685304", "TV_Antenna", "box_Test_if_Nil_12.Is_not_nil", "box_Test_if_Nil_23.In", clone, l0)
  l0:In()
end
function export:f_box_LookAtTriggerMonitor_Monitor_39_EnterFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_LookAtTriggerMonitor_Monitor_39
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|957818713", "957818713", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_39.EnterFOV", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_LookAtTriggerMonitor_Monitor_39_LeaveFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_LookAtTriggerMonitor_Monitor_39
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1829992673", "1829992673", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_39.LeaveFOV", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_Test_if_Nil_28_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"Camera_Context_BlendOut\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_31"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1424081340"
  l0.Out = self.f_box_TextToScreen_v2_31_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|507769003", "507769003", "TV_Antenna", "box_Test_if_Nil_28.Is_nil", "box_TextToScreen_v2_31.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_28_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_51"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2049381670"
  l0.Is_nil = self.f_box_Test_if_Nil_51_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_51_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|643447912", "643447912", "TV_Antenna", "box_Test_if_Nil_28.Is_not_nil", "box_Test_if_Nil_51.In", clone, l0)
  l0:In()
end
function export:f_box_LookAtTriggerMonitor_Monitor_34_EnterFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_LookAtTriggerMonitor_Monitor_34
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1811648968", "1811648968", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_34.EnterFOV", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_LookAtTriggerMonitor_Monitor_34_LeaveFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_LookAtTriggerMonitor_Monitor_34
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|717517981", "717517981", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_34.LeaveFOV", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_LookAtTriggerMonitor_Monitor_37_EnterFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_LookAtTriggerMonitor_Monitor_37
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1926953139", "1926953139", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_37.EnterFOV", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_LookAtTriggerMonitor_Monitor_37_LeaveFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_LookAtTriggerMonitor_Monitor_37
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|246608907", "246608907", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_37.LeaveFOV", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_PawnHealthMonitor_v3_55_Damaged()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_58()
  l0 = self.box_PawnHealthMonitor_v3_55
  l1 = self.box_MultipleOR_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|259433571", "259433571", "TV_Antenna", "box_PawnHealthMonitor_v3_55.Damaged", "box_MultipleOR_58.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PawnHealthMonitor_v3_55_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_58()
  l0 = self.box_PawnHealthMonitor_v3_55
  l1 = self.box_MultipleOR_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1458188740", "1458188740", "TV_Antenna", "box_PawnHealthMonitor_v3_55.Killed", "box_MultipleOR_58.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TextToScreen_v2_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1739882740", "1739882740", "TV_Antenna", "box_TextToScreen_v2_19.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(7)
end
function export:f_box_MapPointController_v4_59_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_MapPointController_v4_59
  l1 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2020633475", "2020633475", "TV_Antenna", "box_MapPointController_v4_59.Hidden", "box_MultipleOR_63.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_48_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsS04M070
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_68"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|921619680"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_68_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_68_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_48
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1942910122", "1942910122", "TV_Antenna", "box_MultipleOR_48.Out", "box_Compare_Boolean_v2_68.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_34()
  l0 = self.box_LookAtTriggerMonitor_Monitor_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1869042505", "1869042505", "TV_Antenna", "box_Ordered_Output_35.Out", "box_LookAtTriggerMonitor_Monitor_34.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_32()
  l0 = self.box_LookAtTriggerMonitor_Monitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1523703294", "1523703294", "TV_Antenna", "box_Ordered_Output_35.Out", "box_LookAtTriggerMonitor_Monitor_32.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_35_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_36()
  l0 = self.box_LookAtTriggerMonitor_Monitor_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|786513525", "786513525", "TV_Antenna", "box_Ordered_Output_35.Out", "box_LookAtTriggerMonitor_Monitor_36.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_35_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_37()
  l0 = self.box_LookAtTriggerMonitor_Monitor_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1869833495", "1869833495", "TV_Antenna", "box_Ordered_Output_35.Out", "box_LookAtTriggerMonitor_Monitor_37.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_35_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_38()
  l0 = self.box_LookAtTriggerMonitor_Monitor_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1608527227", "1608527227", "TV_Antenna", "box_Ordered_Output_35.Out", "box_LookAtTriggerMonitor_Monitor_38.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_35_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_39()
  l0 = self.box_LookAtTriggerMonitor_Monitor_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|277024602", "277024602", "TV_Antenna", "box_Ordered_Output_35.Out", "box_LookAtTriggerMonitor_Monitor_39.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_35_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_40()
  l0 = self.box_LookAtTriggerMonitor_Monitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1151800019", "1151800019", "TV_Antenna", "box_Ordered_Output_35.Out", "box_LookAtTriggerMonitor_Monitor_40.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_35_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_41()
  l0 = self.box_LookAtTriggerMonitor_Monitor_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1862475299", "1862475299", "TV_Antenna", "box_Ordered_Output_35.Out", "box_LookAtTriggerMonitor_Monitor_41.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_35_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_42()
  l0 = self.box_LookAtTriggerMonitor_Monitor_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|984525123", "984525123", "TV_Antenna", "box_Ordered_Output_35.Out", "box_LookAtTriggerMonitor_Monitor_42.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TextToScreen_v2_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1297323153", "1297323153", "TV_Antenna", "box_TextToScreen_v2_13.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Hackable_Monitor_22_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_64
  l0.HackableEntity = self.Reference_Object_Logic
  l0 = self.box_Hackable_Monitor_22
  l1 = self.box_HackableController_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|9714879", "9714879", "TV_Antenna", "box_Hackable_Monitor_22.Disabled", "box_HackableController_v2_64.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Hackable_Monitor_22_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_Hackable_Monitor_22
  l1 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|500275964", "500275964", "TV_Antenna", "box_Hackable_Monitor_22.HackSuccess", "box_MultipleOR_72.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_LookAtTriggerMonitor_Monitor_38_EnterFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_LookAtTriggerMonitor_Monitor_38
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1799255971", "1799255971", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_38.EnterFOV", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_LookAtTriggerMonitor_Monitor_38_LeaveFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_LookAtTriggerMonitor_Monitor_38
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1301565145", "1301565145", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_38.LeaveFOV", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_Test_if_Nil_54_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_59
  l0.MapPoint = self.MapPoint
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|645583081", "645583081", "TV_Antenna", "box_Test_if_Nil_54.Is_nil", "box_MapPointController_v4_59.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Test_if_Nil_54_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.Particle
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_60"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1842469948"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_60_Stopped
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2024259668", "2024259668", "TV_Antenna", "box_Test_if_Nil_54.Is_not_nil", "box_ParticleFXController_v2_60.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_MultipleOR_45_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|559985194", "559985194", "TV_Antenna", "box_MultipleOR_45.Out", "LeaveFOV_Output", l0, self)
  self:LeaveFOV_Output()
end
function export:f_box_TextToScreen_v2_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1213153018", "1213153018", "TV_Antenna", "box_TextToScreen_v2_29.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(10)
end
function export:f_box_MultipleOR_56_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InputListener_Monitor_33()
  l0 = self.box_MultipleOR_56
  l1 = self.box_InputListener_Monitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|610475233", "610475233", "TV_Antenna", "box_MultipleOR_56.Out", "box_InputListener_Monitor_33.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_26_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|438265616", "438265616", "TV_Antenna", "box_MultipleOR_26.Out", "Out", l0, self)
  self:Out()
end
function export:f_box_MapPointController_v4_50_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_MapPointController_v4_50
  l1 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|99924703", "99924703", "TV_Antenna", "box_MapPointController_v4_50.Shown", "box_MultipleOR_53.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_68_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_22()
  l0 = self.box_Hackable_Monitor_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2912775", "2912775", "TV_Antenna", "box_Compare_Boolean_v2_68.A_is_False", "box_Hackable_Monitor_22.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_68_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1303133373", "1303133373", "TV_Antenna", "box_Compare_Boolean_v2_68.A_is_True", "box_MultipleOR_72.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_HackableController_v2_64_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_71()
  l0 = self.box_HackableController_v2_64
  l1 = self.box_MultipleOR_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|400272286", "400272286", "TV_Antenna", "box_HackableController_v2_64.Disabled", "box_MultipleOR_71.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_43_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_34()
  l0 = self.box_LookAtTriggerMonitor_Monitor_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|494923109", "494923109", "TV_Antenna", "box_Ordered_Output_43.Out", "box_LookAtTriggerMonitor_Monitor_34.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_43_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_32()
  l0 = self.box_LookAtTriggerMonitor_Monitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|386966335", "386966335", "TV_Antenna", "box_Ordered_Output_43.Out", "box_LookAtTriggerMonitor_Monitor_32.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_43_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_36()
  l0 = self.box_LookAtTriggerMonitor_Monitor_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|670336392", "670336392", "TV_Antenna", "box_Ordered_Output_43.Out", "box_LookAtTriggerMonitor_Monitor_36.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_43_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_37()
  l0 = self.box_LookAtTriggerMonitor_Monitor_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1425624201", "1425624201", "TV_Antenna", "box_Ordered_Output_43.Out", "box_LookAtTriggerMonitor_Monitor_37.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_43_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_38()
  l0 = self.box_LookAtTriggerMonitor_Monitor_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1017524846", "1017524846", "TV_Antenna", "box_Ordered_Output_43.Out", "box_LookAtTriggerMonitor_Monitor_38.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_43_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_39()
  l0 = self.box_LookAtTriggerMonitor_Monitor_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2023902806", "2023902806", "TV_Antenna", "box_Ordered_Output_43.Out", "box_LookAtTriggerMonitor_Monitor_39.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_43_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_40()
  l0 = self.box_LookAtTriggerMonitor_Monitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1120714082", "1120714082", "TV_Antenna", "box_Ordered_Output_43.Out", "box_LookAtTriggerMonitor_Monitor_40.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_43_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_41()
  l0 = self.box_LookAtTriggerMonitor_Monitor_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1574266531", "1574266531", "TV_Antenna", "box_Ordered_Output_43.Out", "box_LookAtTriggerMonitor_Monitor_41.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_43_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_42()
  l0 = self.box_LookAtTriggerMonitor_Monitor_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1706877752", "1706877752", "TV_Antenna", "box_Ordered_Output_43.Out", "box_LookAtTriggerMonitor_Monitor_42.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_43_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsInFOV
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_62"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1659162746"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_62_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_62_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1879505396", "1879505396", "TV_Antenna", "box_Ordered_Output_43.Out", "box_Compare_Boolean_v2_62.In", clone, l0)
  l0:In()
end
function export:f_box_LookAtTriggerMonitor_Monitor_41_EnterFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_LookAtTriggerMonitor_Monitor_41
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1558164249", "1558164249", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_41.EnterFOV", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_LookAtTriggerMonitor_Monitor_41_LeaveFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_LookAtTriggerMonitor_Monitor_41
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|472193247", "472193247", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_41.LeaveFOV", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_MultipleOR_44_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.Particle
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_25"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|22950975"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_25_Stopped
  l0.Cleaned = DummyFunction
  l0 = self.box_MultipleOR_44
  l1 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|967817286", "967817286", "TV_Antenna", "box_MultipleOR_44.Out", "box_ParticleFXController_v2_25.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Test_if_Nil_11_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_07\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2145875540"
  l0.Out = self.f_box_TextToScreen_v2_20_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|780033556", "780033556", "TV_Antenna", "box_Test_if_Nil_11.Is_nil", "box_TextToScreen_v2_20.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_11_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|378830259"
  l0.Is_nil = self.f_box_Test_if_Nil_12_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_12_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1056776033", "1056776033", "TV_Antenna", "box_Test_if_Nil_11.Is_not_nil", "box_Test_if_Nil_12.In", clone, l0)
  l0:In()
end
function export:f_box_TextToScreen_v2_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2050406839", "2050406839", "TV_Antenna", "box_TextToScreen_v2_30.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(11)
end
function export:f_box_Test_if_Nil_9_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_05\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1675736275"
  l0.Out = self.f_box_TextToScreen_v2_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1659041985", "1659041985", "TV_Antenna", "box_Test_if_Nil_9.Is_nil", "box_TextToScreen_v2_18.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_9_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1437126931"
  l0.Is_nil = self.f_box_Test_if_Nil_10_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_10_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|223705649", "223705649", "TV_Antenna", "box_Test_if_Nil_9.Is_not_nil", "box_Test_if_Nil_10.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_23_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"Camera_Context_Config\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|673778757"
  l0.Out = self.f_box_TextToScreen_v2_29_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1239727881", "1239727881", "TV_Antenna", "box_Test_if_Nil_23.Is_nil", "box_TextToScreen_v2_29.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_23_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|101110649"
  l0.Is_nil = self.f_box_Test_if_Nil_27_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_27_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1137596898", "1137596898", "TV_Antenna", "box_Test_if_Nil_23.Is_not_nil", "box_Test_if_Nil_27.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_63_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|480750241", "480750241", "TV_Antenna", "box_MultipleOR_63.Out", "RCExit", l0, self)
  self:RCExit()
end
function export:f_box_LookAtTriggerMonitor_Monitor_36_EnterFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_LookAtTriggerMonitor_Monitor_36
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1437946025", "1437946025", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_36.EnterFOV", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_LookAtTriggerMonitor_Monitor_36_LeaveFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_LookAtTriggerMonitor_Monitor_36
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|317518237", "317518237", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_36.LeaveFOV", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Test_if_Nil_1_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"Reference_Object_Logic\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1995839830"
  l0.Out = self.f_box_TextToScreen_v2_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1521538309", "1521538309", "TV_Antenna", "box_Test_if_Nil_1.Is_nil", "box_TextToScreen_v2_3.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_1_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|106896617"
  l0.Is_nil = self.f_box_Test_if_Nil_4_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_4_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|285467914", "285467914", "TV_Antenna", "box_Test_if_Nil_1.Is_not_nil", "box_Test_if_Nil_4.In", clone, l0)
  l0:In()
end
function export:f_box_TextToScreen_v2_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|396265180", "396265180", "TV_Antenna", "box_TextToScreen_v2_21.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(9)
end
function export:f_box_Test_if_Nil_7_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_03\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1771033988"
  l0.Out = self.f_box_TextToScreen_v2_16_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|89840085", "89840085", "TV_Antenna", "box_Test_if_Nil_7.Is_nil", "box_TextToScreen_v2_16.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_7_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2022264895"
  l0.Is_nil = self.f_box_Test_if_Nil_8_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_8_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|49874346", "49874346", "TV_Antenna", "box_Test_if_Nil_7.Is_not_nil", "box_Test_if_Nil_8.In", clone, l0)
  l0:In()
end
function export:f_box_TextToScreen_v2_52_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1386403098", "1386403098", "TV_Antenna", "box_TextToScreen_v2_52.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(13)
end
function export:f_box_TextToScreen_v2_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1148276368", "1148276368", "TV_Antenna", "box_TextToScreen_v2_31.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(12)
end
function export:f_box_Test_if_Nil_10_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_06\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|468968995"
  l0.Out = self.f_box_TextToScreen_v2_19_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2033535918", "2033535918", "TV_Antenna", "box_Test_if_Nil_10.Is_nil", "box_TextToScreen_v2_19.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_10_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1038574737"
  l0.Is_nil = self.f_box_Test_if_Nil_11_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_11_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1089323202", "1089323202", "TV_Antenna", "box_Test_if_Nil_10.Is_not_nil", "box_Test_if_Nil_11.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1376872527"
  l0.Is_nil = self.f_box_Test_if_Nil_1_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_1_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1866403368", "1866403368", "TV_Antenna", "box_Get_Player_ID_2.Out", "box_Test_if_Nil_1.In", clone, l0)
  l0:In()
end
function export:f_box_TextToScreen_v2_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1512983683", "1512983683", "TV_Antenna", "box_TextToScreen_v2_15.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_LookAtTriggerMonitor_Monitor_32_EnterFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_LookAtTriggerMonitor_Monitor_32
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|138990569", "138990569", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_32.EnterFOV", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_LookAtTriggerMonitor_Monitor_32_LeaveFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_LookAtTriggerMonitor_Monitor_32
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2025631301", "2025631301", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_32.LeaveFOV", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_72_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_65"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1799068997"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_65_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_65_Out_1
  l0 = self.box_MultipleOR_72
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|54900713", "54900713", "TV_Antenna", "box_MultipleOR_72.Out", "box_Ordered_Output_65.In", l0, l1)
  l1:In()
end
function export:f_box_LookAtTriggerMonitor_Monitor_42_EnterFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_LookAtTriggerMonitor_Monitor_42
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|617453929", "617453929", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_42.EnterFOV", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(8)
end
function export:f_box_LookAtTriggerMonitor_Monitor_42_LeaveFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_LookAtTriggerMonitor_Monitor_42
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1562604150", "1562604150", "TV_Antenna", "box_LookAtTriggerMonitor_Monitor_42.LeaveFOV", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(8)
end
function export:f_box_InputListener_Monitor_33_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsS04M070
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_66"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|357759838"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_66_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_InputListener_Monitor_33
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|634038962", "634038962", "TV_Antenna", "box_InputListener_Monitor_33.Disabled", "box_Compare_Boolean_v2_66.In", l0, l1)
  l1:In()
end
function export:f_box_InputListener_Monitor_33_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|345226994"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0 = self.box_InputListener_Monitor_33
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|160381954", "160381954", "TV_Antenna", "box_InputListener_Monitor_33.Enabled", "box_Ordered_Output_46.In", l0, l1)
  l1:In()
end
function export:f_box_InputListener_Monitor_33_InputReceived()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_56()
  l0 = self.box_InputListener_Monitor_33
  l1 = self.box_MultipleOR_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1508763295", "1508763295", "TV_Antenna", "box_InputListener_Monitor_33.InputReceived", "box_MultipleOR_56.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_62_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1346437596", "1346437596", "TV_Antenna", "box_Compare_Boolean_v2_62.A_is_False", "box_MultipleOR_63.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Compare_Boolean_v2_62_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_54"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|655986697"
  l0.Is_nil = self.f_box_Test_if_Nil_54_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_54_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|373932321", "373932321", "TV_Antenna", "box_Compare_Boolean_v2_62.A_is_True", "box_Test_if_Nil_54.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_53_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|625805835"
  l0._DynamicAnchors = {Out = 9}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_35_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_35_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_35_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_35_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_35_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_35_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_35_Out_8
  l0 = self.box_MultipleOR_53
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1803636197", "1803636197", "TV_Antenna", "box_MultipleOR_53.Out", "box_Ordered_Output_35.In", l0, l1)
  l1:In()
end
function export:f_box_TextToScreen_v2_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1282364542", "1282364542", "TV_Antenna", "box_TextToScreen_v2_18.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(6)
end
function export:f_box_SetBoolean_v2_61_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_61
  self.IsInFOV = l0.Target
end
function export:f_box_SetBoolean_v2_61_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_61
  self.IsInFOV = l0.Target
end
function export:f_box_SetBoolean_v2_61_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_61
  self.IsInFOV = l0.Target
end
function export:f_box_SetBoolean_v2_61_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_61
  self.IsInFOV = l0.Target
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_67"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|232740926"
  l0.Out = self.f_box_Simple_Node_67_Out
  l0 = self.box_SetBoolean_v2_61
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|601202179", "601202179", "TV_Antenna", "box_SetBoolean_v2_61.SetTrue", "box_Simple_Node_67.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_61_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_61
  self.IsInFOV = l0.Target
end
function export:f_box_TextToScreen_v2_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1703904348", "1703904348", "TV_Antenna", "box_TextToScreen_v2_16.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_ParticleFXController_v2_24_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1781216154", "1781216154", "TV_Antenna", "box_ParticleFXController_v2_24.Started", "box_MultipleOR_53.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_65_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InputListener_Monitor_33()
  l0 = self.box_InputListener_Monitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|2072522148", "2072522148", "TV_Antenna", "box_Ordered_Output_65.Out", "box_InputListener_Monitor_33.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_65_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_55()
  l0 = self.box_PawnHealthMonitor_v3_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1735011159", "1735011159", "TV_Antenna", "box_Ordered_Output_65.Out", "box_PawnHealthMonitor_v3_55.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_70_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsS04M070
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_69"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|127702447"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_69_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_69_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1173974973", "1173974973", "TV_Antenna", "box_Simple_Node_70.Out", "box_Compare_Boolean_v2_69.In", clone, l0)
  l0:In()
end
function export:f_box_ParticleFXController_v2_60_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|19118408", "19118408", "TV_Antenna", "box_ParticleFXController_v2_60.Stopped", "box_MultipleOR_63.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_58_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_57"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|317219288"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_57_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_57_Out_1
  l0 = self.box_MultipleOR_58
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1780588164", "1780588164", "TV_Antenna", "box_MultipleOR_58.Out", "box_Ordered_Output_57.In", l0, l1)
  l1:In()
end
function export:f_box_TextToScreen_v2_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|403416487", "403416487", "TV_Antenna", "box_TextToScreen_v2_3.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_8_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_04\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|56705370"
  l0.Out = self.f_box_TextToScreen_v2_17_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|522119735", "522119735", "TV_Antenna", "box_Test_if_Nil_8.Is_nil", "box_TextToScreen_v2_17.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_8_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1242870699"
  l0.Is_nil = self.f_box_Test_if_Nil_9_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_9_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1012648455", "1012648455", "TV_Antenna", "box_Test_if_Nil_8.Is_not_nil", "box_Test_if_Nil_9.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_51_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_47"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|243668133"
  l0.Is_nil = self.f_box_Test_if_Nil_47_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_47_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|298643464", "298643464", "TV_Antenna", "box_Test_if_Nil_51.Is_nil", "box_Test_if_Nil_47.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_51_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1955794481", "1955794481", "TV_Antenna", "box_Test_if_Nil_51.Is_not_nil", "box_MultipleOR_48.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Test_if_Nil_5_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "Your \"LookAt_Trigger_01\" variable is not set!"
  l0.Duration = 3
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|282560800"
  l0.Out = self.f_box_TextToScreen_v2_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|943392278", "943392278", "TV_Antenna", "box_Test_if_Nil_5.Is_nil", "box_TextToScreen_v2_14.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_5_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|322489817"
  l0.Is_nil = self.f_box_Test_if_Nil_6_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_6_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|8654264", "8654264", "TV_Antenna", "box_Test_if_Nil_5.Is_not_nil", "box_Test_if_Nil_6.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_71_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|1852259150", "1852259150", "TV_Antenna", "box_MultipleOR_71.Out", "EnterFOV_Output", l0, self)
  self:EnterFOV_Output()
end
function export:f_box_TextToScreen_v2_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FP2015.domino|@TV_Antenna|523901974", "523901974", "TV_Antenna", "box_TextToScreen_v2_20.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(8)
end
function export:OnEnter_box_LookAtTriggerMonitor_Monitor_40()
  local l0
  l0 = self.box_LookAtTriggerMonitor_Monitor_40
  l0.Trigger = self.LookAt_Trigger_06
end
function export:OnEnter_box_LookAtTriggerMonitor_Monitor_39()
  local l0
  l0 = self.box_LookAtTriggerMonitor_Monitor_39
  l0.Trigger = self.LookAt_Trigger_05
end
function export:OnEnter_box_LookAtTriggerMonitor_Monitor_34()
  local l0
  l0 = self.box_LookAtTriggerMonitor_Monitor_34
  l0.Trigger = self.LookAt_Trigger_00
end
function export:OnEnter_box_LookAtTriggerMonitor_Monitor_37()
  local l0
  l0 = self.box_LookAtTriggerMonitor_Monitor_37
  l0.Trigger = self.LookAt_Trigger_03
end
function export:OnEnter_box_PawnHealthMonitor_v3_55()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_55
  l0.Pawn = self.PlayerEntity
end
function export:OnEnter_box_MultipleOR_48()
end
function export:OnEnter_box_Hackable_Monitor_22()
  local l0
  l0 = self.box_Hackable_Monitor_22
  l0.HackableEntity = self.Reference_Object_Logic
end
function export:OnEnter_box_LookAtTriggerMonitor_Monitor_38()
  local l0
  l0 = self.box_LookAtTriggerMonitor_Monitor_38
  l0.Trigger = self.LookAt_Trigger_04
end
function export:OnEnter_box_MultipleOR_45()
end
function export:OnEnter_box_MultipleOR_56()
end
function export:OnEnter_box_MultipleOR_26()
end
function export:OnEnter_box_LookAtTriggerMonitor_Monitor_41()
  local l0
  l0 = self.box_LookAtTriggerMonitor_Monitor_41
  l0.Trigger = self.LookAt_Trigger_07
end
function export:OnEnter_box_MultipleOR_44()
end
function export:OnEnter_box_MultipleOR_63()
end
function export:OnEnter_box_LookAtTriggerMonitor_Monitor_36()
  local l0
  l0 = self.box_LookAtTriggerMonitor_Monitor_36
  l0.Trigger = self.LookAt_Trigger_02
end
function export:OnEnter_box_LookAtTriggerMonitor_Monitor_32()
  local l0
  l0 = self.box_LookAtTriggerMonitor_Monitor_32
  l0.Trigger = self.LookAt_Trigger_01
end
function export:OnEnter_box_MultipleOR_72()
end
function export:OnEnter_box_LookAtTriggerMonitor_Monitor_42()
  local l0
  l0 = self.box_LookAtTriggerMonitor_Monitor_42
  l0.Trigger = self.LookAt_Trigger_08
end
function export:OnEnter_box_InputListener_Monitor_33()
  local l0
  l0 = self.box_InputListener_Monitor_33
  l0.Input = "rctc_disconnect"
end
function export:OnEnter_box_MultipleOR_53()
end
function export:OnEnter_box_MultipleOR_58()
end
function export:OnEnter_box_MultipleOR_71()
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
