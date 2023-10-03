export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/InteractGameplayController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Interact Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay"
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.Interacted = DummyFunction
  self.box_TutorialController_4 = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_4
  l0._graph = self
  l0._name = "box_TutorialController_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|583191174"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Player_Proximity_Monitor_3 = cbox:CreateBox("Domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_3
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|1430701873"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = self.f_box_Player_Proximity_Monitor_3_RCEnterRadius
  l0.RCExitRadius = self.f_box_Player_Proximity_Monitor_3_RCExitRadius
  self.box_InteractGameplayController_1 = cbox:CreateBox("Domino/System/InteractGameplayController.lua")
  l0 = self.box_InteractGameplayController_1
  l0._graph = self
  l0._name = "box_InteractGameplayController_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|1824472380"
  l0.Started = self.f_box_InteractGameplayController_1_Started
  l0.Stopped = self.f_box_InteractGameplayController_1_Stopped
  l0.Completed = self.f_box_InteractGameplayController_1_Completed
  self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|2118119575"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|1746551004"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|130802119", "130802119", "Interact Gameplay", "Start", "box_Ordered_Output_5.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  self:OnEnter_box_InteractGameplayController_1()
  l0 = self.box_InteractGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|129679019", "129679019", "Interact Gameplay", "Stop", "box_InteractGameplayController_1.Stop", self, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|1269025490", "1269025490", "Interact Gameplay", "box_Ordered_Output_2.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|110612412", "110612412", "Interact Gameplay", "box_Ordered_Output_2.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_8_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PlayerOnly
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|2021433439"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_9_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|523931859", "523931859", "Interact Gameplay", "box_Test_if_Nil_8.Is_not_nil", "box_Compare_Boolean_v2_9.In", clone, l0)
  l0:In()
end
function export:f_box_Player_Proximity_Monitor_3_RCEnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_4()
  l0 = self.box_Player_Proximity_Monitor_3
  l1 = self.box_TutorialController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|1117964192", "1117964192", "Interact Gameplay", "box_Player_Proximity_Monitor_3.RCEnterRadius", "box_TutorialController_4.Display", l0, l1)
  l1:Display()
end
function export:f_box_Player_Proximity_Monitor_3_RCExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_4()
  l0 = self.box_Player_Proximity_Monitor_3
  l1 = self.box_TutorialController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|649171624", "649171624", "Interact Gameplay", "box_Player_Proximity_Monitor_3.RCExitRadius", "box_TutorialController_4.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|1970437177", "1970437177", "Interact Gameplay", "box_Ordered_Output_6.Out", "Interacted", clone, self)
  self:Interacted()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|217677871", "217677871", "Interact Gameplay", "box_Ordered_Output_6.Out", "box_MultipleOR_7.Input", clone, l0)
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
  self:OnEnter_box_Player_Proximity_Monitor_3()
  l0 = self.box_Player_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|970308942", "970308942", "Interact Gameplay", "box_Compare_Boolean_v2_10.A_is_True", "box_Player_Proximity_Monitor_3.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_5_Out_0()
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
  l0.Boolean = self.PlayerOnly
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|1241965335"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_8_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|1023204665", "1023204665", "Interact Gameplay", "box_Ordered_Output_5.Out", "box_Test_if_Nil_8.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractGameplayController_1()
  l0 = self.box_InteractGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|372502781", "372502781", "Interact Gameplay", "box_Ordered_Output_5.Out", "box_InteractGameplayController_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_InteractGameplayController_1_Completed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|1487568131"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0 = self.box_InteractGameplayController_1
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|1615161946", "1615161946", "Interact Gameplay", "box_InteractGameplayController_1.Completed", "box_Ordered_Output_6.In", l0, l1)
  l1:In()
end
function export:f_box_InteractGameplayController_1_Started()
  local l0
  self = self._graph
  l0 = self.box_InteractGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|2133628266", "2133628266", "Interact Gameplay", "box_InteractGameplayController_1.Started", "Started", l0, self)
  self:Started()
end
function export:f_box_InteractGameplayController_1_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|214909476"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_InteractGameplayController_1
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|412896763", "412896763", "Interact Gameplay", "box_InteractGameplayController_1.Stopped", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_9_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_3()
  l0 = self.box_Player_Proximity_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|26775559", "26775559", "Interact Gameplay", "box_Compare_Boolean_v2_9.A_is_True", "box_Player_Proximity_Monitor_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Test_if_Nil_11_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PlayerOnly
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|1540282460"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_10_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|1131945402", "1131945402", "Interact Gameplay", "box_Test_if_Nil_11.Is_not_nil", "box_Compare_Boolean_v2_10.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.PlayerOnly
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|2109128353"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_11_Is_not_nil
  l0 = self.box_MultipleOR_7
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Interact Gameplay|90509523", "90509523", "Interact Gameplay", "box_MultipleOR_7.Out", "box_Test_if_Nil_11.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_TutorialController_4()
  local l0
  l0 = self.box_TutorialController_4
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_MarcusOnlyInteraction",
    item = "Description",
    id = "698586"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Player_Proximity_Monitor_3()
  local l0
  l0 = self.box_Player_Proximity_Monitor_3
  l0.TargetEntity = self.Entity
  l0.Radius = 3
  l0.CheckDistance3D = 1
  l0.CheckNow = 1
end
function export:OnEnter_box_InteractGameplayController_1()
  local l0
  l0 = self.box_InteractGameplayController_1
  l0.MarkerLocId = self.MarkerLocId
  l0.MarkerEntity = self.MarkerEntity
  l0.Entity = self.Entity
  l0.CLO = self.CLO
  l0.IsManagingInteraction = self.IsManagingInteraction
end
function export:OnEnter_box_MultipleOR_7()
end
function export:Stopped()
end
function export:Started()
end
function export:Interacted()
end
_compilerVersion = 4
