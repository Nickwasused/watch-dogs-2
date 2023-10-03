export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CollectibleMonitor.lua")
  cbox:RegisterBox("Domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/PhoneCallController.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Collectable_PhoneCall_Controller"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller"
  self.PhoneCall_Finished = DummyFunction
  self.CurrentAmount = 0
  self.TotalAmount = 0
  self.box_Collectible_Monitor_9 = cbox:CreateBox("Domino/System/CollectibleMonitor.lua")
  l0 = self.box_Collectible_Monitor_9
  l0._graph = self
  l0._name = "box_Collectible_Monitor_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|43671454"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Has = self.f_box_Collectible_Monitor_9_Has
  l0.HasNot = DummyFunction
  l0.CollectibleGot = DummyFunction
  l0.GotCurrentAmount = self.f_box_Collectible_Monitor_9_GotCurrentAmount
  l0.GotTotalAmount = self.f_box_Collectible_Monitor_9_GotTotalAmount
  l0.GotRemainingAmount = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCallController_1 = cbox:CreateBox("Domino/System/PhoneCallController.lua")
  l0 = self.box_PhoneCallController_1
  l0._graph = self
  l0._name = "box_PhoneCallController_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|360906837"
  l0._DynamicAnchors = {SoundID = 2}
  l0.OnShown = DummyFunction
  l0.CallStarted = DummyFunction
  l0.CallStopped = DummyFunction
  l0.CallFinished = self.f_box_PhoneCallController_1_CallFinished
  l0.OnClosed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCallController_4 = cbox:CreateBox("Domino/System/PhoneCallController.lua")
  l0 = self.box_PhoneCallController_4
  l0._graph = self
  l0._name = "box_PhoneCallController_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|484224584"
  l0._DynamicAnchors = {SoundID = 2}
  l0.OnShown = DummyFunction
  l0.CallStarted = DummyFunction
  l0.CallStopped = DummyFunction
  l0.CallFinished = self.f_box_PhoneCallController_4_CallFinished
  l0.OnClosed = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v2_12 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_12
  l0._graph = self
  l0._name = "box_OnceOnly_v2_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|843685910"
  l0._DynamicAnchors = {In = 2, Out = 2}
  l0.Out[0] = self.f_box_OnceOnly_v2_12_Out_0
  l0.Out[1] = DummyFunction
  l0.ResetOut = DummyFunction
  self.box_PhoneCallController_10 = cbox:CreateBox("Domino/System/PhoneCallController.lua")
  l0 = self.box_PhoneCallController_10
  l0._graph = self
  l0._name = "box_PhoneCallController_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|1153238653"
  l0._DynamicAnchors = {SoundID = 2}
  l0.OnShown = DummyFunction
  l0.CallStarted = DummyFunction
  l0.CallStopped = DummyFunction
  l0.CallFinished = self.f_box_PhoneCallController_10_CallFinished
  l0.OnClosed = DummyFunction
  l0.Out = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:PhoneCall_Start()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.CollectableList
  l0._graph = self
  l0._name = "box_Test_if_Nil_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|1830657743"
  l0.Is_nil = self.f_box_Test_if_Nil_2_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_2_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|788988058", "788988058", "Collectable_PhoneCall_Controller", "PhoneCall_Start", "box_Test_if_Nil_2.In", self, l0)
  l0:In()
end
function export:f_box_Collectible_Monitor_9_GotCurrentAmount()
  local l0
  self = self._graph
  l0 = self.box_Collectible_Monitor_9
  self.CurrentAmount = l0.currentAmount
  self:OnEnter_box_Collectible_Monitor_9()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|1798246290", "1798246290", "Collectable_PhoneCall_Controller", "box_Collectible_Monitor_9.GotCurrentAmount", "box_Collectible_Monitor_9.GetTotalAmount", l0, l0)
  l0:GetTotalAmount()
end
function export:f_box_Collectible_Monitor_9_GotTotalAmount()
  local l0, l1
  self = self._graph
  l0 = self.box_Collectible_Monitor_9
  self.TotalAmount = l0.totalAmount
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CurrentAmount
  l0.B = self.TotalAmount
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|1526004088"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_3_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_3_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0 = self.box_Collectible_Monitor_9
  l1 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|159973504", "159973504", "Collectable_PhoneCall_Controller", "box_Collectible_Monitor_9.GotTotalAmount", "box_Compare_Integers_v2_3.In", l0, l1)
  l1:In()
end
function export:f_box_Collectible_Monitor_9_Has()
  local l0
  self = self._graph
  l0 = self.box_Collectible_Monitor_9
  self.CurrentAmount = l0.currentAmount
end
function export:f_box_PhoneCallController_1_CallFinished()
  local l0
  self = self._graph
  l0 = self.box_PhoneCallController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|153948788", "153948788", "Collectable_PhoneCall_Controller", "box_PhoneCallController_1.CallFinished", "PhoneCall_Finished", l0, self)
  self:PhoneCall_Finished()
end
function export:f_box_PhoneCallController_4_CallFinished()
  local l0
  self = self._graph
  l0 = self.box_PhoneCallController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|1933900723", "1933900723", "Collectable_PhoneCall_Controller", "box_PhoneCallController_4.CallFinished", "PhoneCall_Finished", l0, self)
  self:PhoneCall_Finished()
end
function export:f_box_OnceOnly_v2_12_Out_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCallController_1
  l0.Caller = self.Caller
  l0.HeaderText = self.HeaderText
  l0.LineText = self.LineText
  l0.SoundIDList = self.SoundList_PhoneCallIntro
  l0 = self.box_OnceOnly_v2_12
  l1 = self.box_PhoneCallController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|1213205416", "1213205416", "Collectable_PhoneCall_Controller", "box_OnceOnly_v2_12.Out", "box_PhoneCallController_1.StartCall", l0, l1)
  l1:StartCall()
end
function export:f_box_Test_if_Nil_6_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_12()
  l0 = self.box_OnceOnly_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|1465135379", "1465135379", "Collectable_PhoneCall_Controller", "box_Test_if_Nil_6.Is_nil", "box_OnceOnly_v2_12.In", clone, l0)
  l0:In(0)
end
function export:f_box_Test_if_Nil_6_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Collectible_Monitor_9()
  l0 = self.box_Collectible_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|1669981446", "1669981446", "Collectable_PhoneCall_Controller", "box_Test_if_Nil_6.Is_not_nil", "box_Collectible_Monitor_9.GetCurrentAmount", clone, l0)
  l0:GetCurrentAmount()
end
function export:f_box_PhoneCallController_10_CallFinished()
  local l0
  self = self._graph
  l0 = self.box_PhoneCallController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|10201748", "10201748", "Collectable_PhoneCall_Controller", "box_PhoneCallController_10.CallFinished", "PhoneCall_Finished", l0, self)
  self:PhoneCall_Finished()
end
function export:f_box_Compare_Integers_v2_3_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCallController_4
  l0.Caller = self.Caller
  l0.HeaderText = self.HeaderText
  l0.LineText = self.LineText
  l0.SoundIDList = self.SoundList_PhoneCallTotal
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|1741806683", "1741806683", "Collectable_PhoneCall_Controller", "box_Compare_Integers_v2_3.A_eq_B", "box_PhoneCallController_4.StartCall", clone, l0)
  l0:StartCall()
end
function export:f_box_Compare_Integers_v2_3_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCallController_10
  l0.Caller = self.Caller
  l0.HeaderText = self.HeaderText
  l0.LineText = self.LineText
  l0.SoundIDList = self.SoundList_PhoneCallIntro
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|568536212", "568536212", "Collectable_PhoneCall_Controller", "box_Compare_Integers_v2_3.A_lt_B", "box_PhoneCallController_10.StartCall", clone, l0)
  l0:StartCall()
end
function export:f_box_Test_if_Nil_2_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_12()
  l0 = self.box_OnceOnly_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|2130756375", "2130756375", "Collectable_PhoneCall_Controller", "box_Test_if_Nil_2.Is_nil", "box_OnceOnly_v2_12.In", clone, l0)
  l0:In(0)
end
function export:f_box_Test_if_Nil_2_Is_not_nil()
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
  l0.Player = nil
  l0.Oasis = nil
  l0.List = self.SoundList_PhoneCallTotal
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|941076356"
  l0.Is_nil = self.f_box_Test_if_Nil_6_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_6_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\CollectablePhoneCalls.domino|@Collectable_PhoneCall_Controller|149140136", "149140136", "Collectable_PhoneCall_Controller", "box_Test_if_Nil_2.Is_not_nil", "box_Test_if_Nil_6.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_Collectible_Monitor_9()
  local l0
  l0 = self.box_Collectible_Monitor_9
  l0.CollectibleList = self.CollectableList
end
function export:OnEnter_box_OnceOnly_v2_12()
end
function export:PhoneCall_Finished()
end
_compilerVersion = 4
