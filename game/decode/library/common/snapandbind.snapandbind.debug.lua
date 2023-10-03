export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/Bind_v2.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/GetPosition.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("Domino/System/SetPosition.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "SnapAndBind"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind"
  self.Attached = DummyFunction
  self.xPos = 0
  self.yPos = 0
  self.zPos = 0
  self.xRot = 0
  self.yRot = 0
  self.zRot = 0
  self.xPosOff = 0
  self.yPosOff = 0
  self.zPosOff = 0
  self.xRotOff = 0
  self.yRotOff = 0
  self.zRotOff = 0
  self.ParentIsAnNPC = 0
  self.ParentIsACar = 0
  self.bRemoveTextOnParent = 1
  self.box_SetBoolean_v2_33 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_33
  l0._graph = self
  l0._name = "box_SetBoolean_v2_33"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|574839503"
  l0.Out = self.f_box_SetBoolean_v2_33_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_33_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_33_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_33_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_33_SetFromBool
  self.box_SetBoolean_v2_31 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_31
  l0._graph = self
  l0._name = "box_SetBoolean_v2_31"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|2090320803"
  l0.Out = self.f_box_SetBoolean_v2_31_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_31_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_31_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_31_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_31_SetFromBool
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Attach()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Parent
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1985915801"
  l0.Is_nil = self.f_box_Test_if_Nil_5_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_5_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1428055489", "1428055489", "SnapAndBind", "Attach", "box_Test_if_Nil_5.In", self, l0)
  l0:In()
end
function export:f_box_GetPosition_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPosition.lua")]
  self.xPos = l0.xPos
  self.yPos = l0.yPos
  self.zPos = l0.zPos
  self.xRot = l0.xRot
  self.yRot = l0.yRot
  self.zRot = l0.zRot
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = nil
  l0.Child = self.Child
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|265585086"
  l0.Bound = DummyFunction
  l0.UnBound = self.f_box_Bind_v2_35_UnBound
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|2090198347", "2090198347", "SnapAndBind", "box_GetPosition_2.Out", "box_Bind_v2_35.UnBind", clone, l0)
  l0:UnBind()
end
function export:f_box_SetFloat_v2_24_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.zRotOff = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_30()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1580104124", "1580104124", "SnapAndBind", "box_SetFloat_v2_24.Out", "box_Test_if_Nil_30.In", clone, l0)
  l0:In()
end
function export:f_box_SetFloat_v2_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.zRotOff = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_30()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|140388261", "140388261", "SnapAndBind", "box_SetFloat_v2_23.Out", "box_Test_if_Nil_30.In", clone, l0)
  l0:In()
end
function export:f_box_SetFloat_v2_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.zPosOff = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_10()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|513988744", "513988744", "SnapAndBind", "box_SetFloat_v2_18.Out", "box_Test_if_Nil_10.In", clone, l0)
  l0:In()
end
function export:f_box_SetFloat_v2_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.xPosOff = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_9()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1073174572", "1073174572", "SnapAndBind", "box_SetFloat_v2_14.Out", "box_Test_if_Nil_9.In", clone, l0)
  l0:In()
end
function export:f_box_Bind_v2_35_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  l0.Entity = self.Child
  l0.xPos = self.xPos
  l0.yPos = self.yPos
  l0.zPos = self.zPos
  l0.xRot = self.xRot
  l0.yRot = self.yRot
  l0.zRot = self.zRot
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0._name = "box_SetPosition_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|2133969861"
  l0.Out = self.f_box_SetPosition_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1719620588", "1719620588", "SnapAndBind", "box_Bind_v2_35.UnBound", "box_SetPosition_3.In", clone, l0)
  l0:In()
end
function export:f_box_SetPosition_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = self.Parent
  l0.Child = self.Child
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1561317081"
  l0.Bound = self.f_box_Bind_v2_40_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1888155880", "1888155880", "SnapAndBind", "box_SetPosition_26.Out", "box_Bind_v2_40.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_Bind_v2_29_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|730964209", "730964209", "SnapAndBind", "box_Bind_v2_29.Bound", "Attached", clone, self)
  self:Attached()
end
function export:f_box_SetFloat_v2_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.yRotOff = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_11()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|2107577828", "2107577828", "SnapAndBind", "box_SetFloat_v2_22.Out", "box_Test_if_Nil_11.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_11_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|161127523"
  l0.Out = self.f_box_SetFloat_v2_23_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1074368541", "1074368541", "SnapAndBind", "box_Test_if_Nil_11.Is_nil", "box_SetFloat_v2_23.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Test_if_Nil_11_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.zRotOffset
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|128828890"
  l0.Out = self.f_box_SetFloat_v2_24_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1982531692", "1982531692", "SnapAndBind", "box_Test_if_Nil_11.Is_not_nil", "box_SetFloat_v2_24.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_SetPosition_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = self.Parent
  l0.Child = self.Child
  l0.BoneName = "Head"
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|386849394"
  l0.Bound = self.f_box_Bind_v2_29_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|751660241", "751660241", "SnapAndBind", "box_SetPosition_38.Out", "box_Bind_v2_29.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_Compare_Boolean_v2_25_A_is_False()
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
  l0.Boolean = self.CarIcon
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|2063681185"
  l0.Is_nil = self.f_box_Test_if_Nil_28_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_28_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1011285128", "1011285128", "SnapAndBind", "box_Compare_Boolean_v2_25.A_is_False", "box_Test_if_Nil_28.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_25_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/GetPosition.lua")]
  l0.Entity = self.Parent
  l0.BoneName = "Head"
  l0.LocalBonePostion = nil
  l0._graph = self
  l0._name = "box_GetPosition_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|2063998714"
  l0.Out = self.f_box_GetPosition_34_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|669423065", "669423065", "SnapAndBind", "box_Compare_Boolean_v2_25.A_is_True", "box_GetPosition_34.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_33_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.ParentIsACar = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ParentIsACar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_32"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1682801760"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_32_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_32_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_33
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1523089758", "1523089758", "SnapAndBind", "box_SetBoolean_v2_33.Out", "box_Compare_Boolean_v2_32.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_33_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.ParentIsACar = l0.Target
end
function export:f_box_SetBoolean_v2_33_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.ParentIsACar = l0.Target
end
function export:f_box_SetBoolean_v2_33_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.ParentIsACar = l0.Target
end
function export:f_box_SetBoolean_v2_33_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.ParentIsACar = l0.Target
end
function export:f_box_SetFloat_v2_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.xPosOff = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_9()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|499076262", "499076262", "SnapAndBind", "box_SetFloat_v2_13.Out", "box_Test_if_Nil_9.In", clone, l0)
  l0:In()
end
function export:f_box_SetFloat_v2_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.xRotOff = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_12()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|33387280", "33387280", "SnapAndBind", "box_SetFloat_v2_19.Out", "box_Test_if_Nil_12.In", clone, l0)
  l0:In()
end
function export:f_box_SetPosition_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  l0.Entity = self.Child
  l0.xPos = nil
  l0.yPos = nil
  l0.zPos = 0
  l0.xRot = nil
  l0.yRot = nil
  l0.zRot = nil
  l0.Additive = nil
  l0.Local = nil
  l0._graph = self
  l0._name = "box_SetPosition_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|265684992"
  l0.Out = self.f_box_SetPosition_26_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1330754899", "1330754899", "SnapAndBind", "box_SetPosition_41.Out", "box_SetPosition_26.In", clone, l0)
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
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1945548845"
  l0.Out = self.f_box_SetFloat_v2_21_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1227778409", "1227778409", "SnapAndBind", "box_Test_if_Nil_12.Is_nil", "box_SetFloat_v2_21.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Test_if_Nil_12_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.yRotOffset
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|387979339"
  l0.Out = self.f_box_SetFloat_v2_22_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1611479781", "1611479781", "SnapAndBind", "box_Test_if_Nil_12.Is_not_nil", "box_SetFloat_v2_22.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_SetPosition_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = self.Parent
  l0.Child = self.Child
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1927345724"
  l0.Bound = self.f_box_Bind_v2_1_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|277625983", "277625983", "SnapAndBind", "box_SetPosition_4.Out", "box_Bind_v2_1.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_Test_if_Nil_30_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_31()
  l0 = self.box_SetBoolean_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|254570945", "254570945", "SnapAndBind", "box_Test_if_Nil_30.Is_nil", "box_SetBoolean_v2_31.False", clone, l0)
  l0:False()
end
function export:f_box_Test_if_Nil_30_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_31()
  l0 = self.box_SetBoolean_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1366254647", "1366254647", "SnapAndBind", "box_Test_if_Nil_30.Is_not_nil", "box_SetBoolean_v2_31.FromBool", clone, l0)
  l0:FromBool()
end
function export:f_box_SetPosition_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  l0.Entity = self.Child
  l0.xPos = nil
  l0.yPos = nil
  l0.zPos = 0.19
  l0.xRot = nil
  l0.yRot = nil
  l0.zRot = nil
  l0.Additive = nil
  l0.Local = nil
  l0._graph = self
  l0._name = "box_SetPosition_38"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|405213524"
  l0.Out = self.f_box_SetPosition_38_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1899061970", "1899061970", "SnapAndBind", "box_SetPosition_27.Out", "box_SetPosition_38.In", clone, l0)
  l0:In()
end
function export:f_box_SetFloat_v2_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.xRotOff = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_12()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|532610511", "532610511", "SnapAndBind", "box_SetFloat_v2_20.Out", "box_Test_if_Nil_12.In", clone, l0)
  l0:In()
end
function export:f_box_Bind_v2_36_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  l0.Entity = self.Child
  l0.xPos = self.xPos
  l0.yPos = self.yPos
  l0.zPos = self.zPos
  l0.xRot = self.xRot
  l0.yRot = self.yRot
  l0.zRot = self.zRot
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0._name = "box_SetPosition_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1149662904"
  l0.Out = self.f_box_SetPosition_27_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1349361643", "1349361643", "SnapAndBind", "box_Bind_v2_36.UnBound", "box_SetPosition_27.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_10_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|740338928"
  l0.Out = self.f_box_SetFloat_v2_19_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|2099963168", "2099963168", "SnapAndBind", "box_Test_if_Nil_10.Is_nil", "box_SetFloat_v2_19.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Test_if_Nil_10_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.xRotOffset
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1198323447"
  l0.Out = self.f_box_SetFloat_v2_20_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|987221213", "987221213", "SnapAndBind", "box_Test_if_Nil_10.Is_not_nil", "box_SetFloat_v2_20.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_SetFloat_v2_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.yPosOff = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_7()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|553419957", "553419957", "SnapAndBind", "box_SetFloat_v2_16.Out", "box_Test_if_Nil_7.In", clone, l0)
  l0:In()
end
function export:f_box_SetFloat_v2_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.yPosOff = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_7()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1782524336", "1782524336", "SnapAndBind", "box_SetFloat_v2_15.Out", "box_Test_if_Nil_7.In", clone, l0)
  l0:In()
end
function export:f_box_Bind_v2_40_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|2083890434", "2083890434", "SnapAndBind", "box_Bind_v2_40.Bound", "Attached", clone, self)
  self:Attached()
end
function export:f_box_GetPosition_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPosition.lua")]
  self.xPos = l0.xPos
  self.yPos = l0.yPos
  self.zPos = l0.zPos
  self.xRot = l0.xRot
  self.yRot = l0.yRot
  self.zRot = l0.zRot
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = nil
  l0.Child = self.Child
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_42"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|2073149198"
  l0.Bound = DummyFunction
  l0.UnBound = self.f_box_Bind_v2_42_UnBound
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|920065719", "920065719", "SnapAndBind", "box_GetPosition_39.Out", "box_Bind_v2_42.UnBind", clone, l0)
  l0:UnBind()
end
function export:f_box_Test_if_Nil_9_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1539450097"
  l0.Out = self.f_box_SetFloat_v2_16_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|839964773", "839964773", "SnapAndBind", "box_Test_if_Nil_9.Is_nil", "box_SetFloat_v2_16.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Test_if_Nil_9_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.yPosOffset
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1556939996"
  l0.Out = self.f_box_SetFloat_v2_15_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|610147421", "610147421", "SnapAndBind", "box_Test_if_Nil_9.Is_not_nil", "box_SetFloat_v2_15.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Compare_Boolean_v2_32_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/GetPosition.lua")]
  l0.Entity = self.Parent
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0._name = "box_GetPosition_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|37180998"
  l0.Out = self.f_box_GetPosition_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1717727396", "1717727396", "SnapAndBind", "box_Compare_Boolean_v2_32.A_is_False", "box_GetPosition_2.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_32_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/GetPosition.lua")]
  l0.Entity = self.Parent
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0._name = "box_GetPosition_39"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1645855313"
  l0.Out = self.f_box_GetPosition_39_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|202601928", "202601928", "SnapAndBind", "box_Compare_Boolean_v2_32.A_is_True", "box_GetPosition_39.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_7_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1809231210"
  l0.Out = self.f_box_SetFloat_v2_17_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|522137930", "522137930", "SnapAndBind", "box_Test_if_Nil_7.Is_nil", "box_SetFloat_v2_17.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Test_if_Nil_7_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.zPosOffset
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|202516911"
  l0.Out = self.f_box_SetFloat_v2_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|599079940", "599079940", "SnapAndBind", "box_Test_if_Nil_7.Is_not_nil", "box_SetFloat_v2_18.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_SetFloat_v2_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.zPosOff = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_10()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|317559126", "317559126", "SnapAndBind", "box_SetFloat_v2_17.Out", "box_Test_if_Nil_10.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_6_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|756036384", "756036384", "SnapAndBind", "box_Test_if_Nil_6.Is_nil", "Attached", clone, self)
  self:Attached()
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
  l0.Float = self.xPosOffset
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|2001648647"
  l0.Is_nil = self.f_box_Test_if_Nil_8_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_8_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1147369060", "1147369060", "SnapAndBind", "box_Test_if_Nil_6.Is_not_nil", "box_Test_if_Nil_8.In", clone, l0)
  l0:In()
end
function export:f_box_Bind_v2_1_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1163025542", "1163025542", "SnapAndBind", "box_Bind_v2_1.Bound", "Attached", clone, self)
  self:Attached()
end
function export:f_box_SetFloat_v2_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.yRotOff = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_11()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1001926806", "1001926806", "SnapAndBind", "box_SetFloat_v2_21.Out", "box_Test_if_Nil_11.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_5_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1000035602", "1000035602", "SnapAndBind", "box_Test_if_Nil_5.Is_nil", "Attached", clone, self)
  self:Attached()
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
  l0.Entity = self.Child
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1874282726"
  l0.Is_nil = self.f_box_Test_if_Nil_6_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_6_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|968213896", "968213896", "SnapAndBind", "box_Test_if_Nil_5.Is_not_nil", "box_Test_if_Nil_6.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_8_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|729962666"
  l0.Out = self.f_box_SetFloat_v2_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|76805840", "76805840", "SnapAndBind", "box_Test_if_Nil_8.Is_nil", "box_SetFloat_v2_13.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Test_if_Nil_8_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.xPosOffset
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|208228165"
  l0.Out = self.f_box_SetFloat_v2_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1024072567", "1024072567", "SnapAndBind", "box_Test_if_Nil_8.Is_not_nil", "box_SetFloat_v2_14.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Test_if_Nil_28_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_33()
  l0 = self.box_SetBoolean_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|118548920", "118548920", "SnapAndBind", "box_Test_if_Nil_28.Is_nil", "box_SetBoolean_v2_33.False", clone, l0)
  l0:False()
end
function export:f_box_Test_if_Nil_28_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_33()
  l0 = self.box_SetBoolean_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|745870848", "745870848", "SnapAndBind", "box_Test_if_Nil_28.Is_not_nil", "box_SetBoolean_v2_33.FromBool", clone, l0)
  l0:FromBool()
end
function export:f_box_GetPosition_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPosition.lua")]
  self.xPos = l0.xPos
  self.yPos = l0.yPos
  self.zPos = l0.zPos
  self.xRot = l0.xRot
  self.yRot = l0.yRot
  self.zRot = l0.zRot
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = nil
  l0.Child = self.Child
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_36"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1249097038"
  l0.Bound = DummyFunction
  l0.UnBound = self.f_box_Bind_v2_36_UnBound
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|569679752", "569679752", "SnapAndBind", "box_GetPosition_34.Out", "box_Bind_v2_36.UnBind", clone, l0)
  l0:UnBind()
end
function export:f_box_Bind_v2_42_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  l0.Entity = self.Child
  l0.xPos = self.xPos
  l0.yPos = self.yPos
  l0.zPos = self.zPos
  l0.xRot = self.xRot
  l0.yRot = self.yRot
  l0.zRot = self.zRot
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0._name = "box_SetPosition_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|828011430"
  l0.Out = self.f_box_SetPosition_41_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|275891062", "275891062", "SnapAndBind", "box_Bind_v2_42.UnBound", "box_SetPosition_41.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_31_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.ParentIsAnNPC = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ParentIsAnNPC
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_25"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|479460662"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_25_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_25_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_31
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|2040417009", "2040417009", "SnapAndBind", "box_SetBoolean_v2_31.Out", "box_Compare_Boolean_v2_25.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_31_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.ParentIsAnNPC = l0.Target
end
function export:f_box_SetBoolean_v2_31_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.ParentIsAnNPC = l0.Target
end
function export:f_box_SetBoolean_v2_31_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.ParentIsAnNPC = l0.Target
end
function export:f_box_SetBoolean_v2_31_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.ParentIsAnNPC = l0.Target
end
function export:f_box_SetPosition_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetPosition.lua")]
  l0.Entity = self.Child
  l0.xPos = self.xPosOff
  l0.yPos = self.yPosOff
  l0.zPos = self.zPosOff
  l0.xRot = self.xRotOff
  l0.yRot = self.yRotOff
  l0.zRot = self.zRotOff
  l0.Additive = nil
  l0.Local = nil
  l0._graph = self
  l0._name = "box_SetPosition_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|965087914"
  l0.Out = self.f_box_SetPosition_4_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|395427842", "395427842", "SnapAndBind", "box_SetPosition_3.Out", "box_SetPosition_4.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_Test_if_Nil_11()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.zRotOffset
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|389828722"
  l0.Is_nil = self.f_box_Test_if_Nil_11_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_11_Is_not_nil
end
function export:OnEnter_box_SetBoolean_v2_33()
  local l0
  l0 = self.box_SetBoolean_v2_33
  l0.Bool = self.CarIcon
end
function export:OnEnter_box_Test_if_Nil_12()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.yRotOffset
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|873064360"
  l0.Is_nil = self.f_box_Test_if_Nil_12_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_12_Is_not_nil
end
function export:OnEnter_box_Test_if_Nil_30()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.NpcIcon
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1096055123"
  l0.Is_nil = self.f_box_Test_if_Nil_30_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_30_Is_not_nil
end
function export:OnEnter_box_Test_if_Nil_10()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.xRotOffset
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1521806192"
  l0.Is_nil = self.f_box_Test_if_Nil_10_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_10_Is_not_nil
end
function export:OnEnter_box_Test_if_Nil_9()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.yPosOffset
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1676542056"
  l0.Is_nil = self.f_box_Test_if_Nil_9_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_9_Is_not_nil
end
function export:OnEnter_box_Test_if_Nil_7()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.zPosOffset
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\SnapAndBind.domino|@SnapAndBind|1715658701"
  l0.Is_nil = self.f_box_Test_if_Nil_7_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_7_Is_not_nil
end
function export:OnEnter_box_SetBoolean_v2_31()
  local l0
  l0 = self.box_SetBoolean_v2_31
  l0.Bool = self.NpcIcon
end
function export:Attached()
end
_compilerVersion = 4
