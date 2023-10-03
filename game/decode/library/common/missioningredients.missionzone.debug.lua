export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("Domino/System/LMALayerController.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionSoftQuitController.lua")
  cbox:RegisterBox("Domino/System/MissionZoneController.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/ToyCarController.lua")
  cbox:LoadResource("soundbinary/2033933519.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "MissionZone"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone"
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.SoftQuitCompleted = DummyFunction
  self.box_MissionLayer_v2_5 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|165307024"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_5_Unloaded
  l0.Reseted = DummyFunction
  self.box_PlaySound_v2_12 = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_12
  l0._graph = self
  l0._name = "box_PlaySound_v2_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|385844555"
  l0.Out = self.f_box_PlaySound_v2_12_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|726576260"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_MissionSoftQuitMonitor_1 = cbox:CreateBox("Domino/System/MissionSoftQuitController.lua")
  l0 = self.box_MissionSoftQuitMonitor_1
  l0._graph = self
  l0._name = "box_MissionSoftQuitMonitor_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|919266526"
  l0.Enabled = self.f_box_MissionSoftQuitMonitor_1_Enabled
  l0.Disabled = self.f_box_MissionSoftQuitMonitor_1_Disabled
  l0.SoftQuitStarted = self.f_box_MissionSoftQuitMonitor_1_SoftQuitStarted
  l0.SoftQuitAborted = self.f_box_MissionSoftQuitMonitor_1_SoftQuitAborted
  l0.SoftQuitCompleted = self.f_box_MissionSoftQuitMonitor_1_SoftQuitCompleted
  self.box_LMA_Layer_Controller_8 = cbox:CreateBox("Domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_8
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1019166079"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_8_Unloaded
  self.box_Multiple_AND_15 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_15
  l0._graph = self
  l0._name = "box_Multiple_AND_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1104092609"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_15_Out
  self.box_MissionController_v4_2 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1118322082"
  self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1138286451"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_24
  l0._graph = self
  l0._name = "box_MultipleOR_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1141029819"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_24_Out
  self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1452174295"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_14_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  self:OnEnter_box_MissionZoneController_v2_3()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|2030065687", "2030065687", "MissionZone", "Disable", "box_MissionZoneController_v2_3.Disable", self, l0)
  l0:Disable()
end
function export:Enable()
  local l0
  self:OnEnter_box_MissionZoneController_v2_3()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1138290713", "1138290713", "MissionZone", "Enable", "box_MissionZoneController_v2_3.UpdateProperties", self, l0)
  l0:UpdateProperties()
end
function export:f_box_MissionLayer_v2_5_Unloaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MissionLayer_v2_5
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|44754567", "44754567", "MissionZone", "box_MissionLayer_v2_5.Unloaded", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Toy_Car_Controller_21_ConnectAvailable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Flying_Drone_Controller_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|353489968"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|2037685395", "2037685395", "MissionZone", "box_Toy_Car_Controller_21.ConnectAvailable", "box_Flying_Drone_Controller_22.MakeConnectAvailable", clone, l0)
  l0:MakeConnectAvailable()
end
function export:f_box_PlaySound_v2_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HardFail
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1771152934"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_7_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_7_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_12
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1092911789", "1092911789", "MissionZone", "box_PlaySound_v2_12.Out", "box_Compare_Boolean_v2_7.In", l0, l1)
  l1:In()
end
function export:f_box_Toy_Car_Controller_19_ConnectUnavailable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Flying_Drone_Controller_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|2088174952"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = self.f_box_Flying_Drone_Controller_20_ConnectUnavailable
  l0.Destroyed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|84831698", "84831698", "MissionZone", "box_Toy_Car_Controller_19.ConnectUnavailable", "box_Flying_Drone_Controller_20.MakeConnectUnavailable", clone, l0)
  l0:MakeConnectUnavailable()
end
function export:f_box_Test_if_Nil_9_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|2131753162", "2131753162", "MissionZone", "box_Test_if_Nil_9.Is_nil", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_9_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_8
  l0.LMALayerName = self.LmaLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|229432283", "229432283", "MissionZone", "box_Test_if_Nil_9.Is_not_nil", "box_LMA_Layer_Controller_8.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_15()
  l0 = self.box_MultipleOR_10
  l1 = self.box_Multiple_AND_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1925048058", "1925048058", "MissionZone", "box_MultipleOR_10.Out", "box_Multiple_AND_15.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MissionZoneController_v2_3_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionSoftQuitMonitor_1()
  l0 = self.box_MissionSoftQuitMonitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1548623658", "1548623658", "MissionZone", "box_MissionZoneController_v2_3.Disabled", "box_MissionSoftQuitMonitor_1.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionZoneController_v2_3_PropertiesUpdated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionSoftQuitMonitor_1()
  l0 = self.box_MissionSoftQuitMonitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|443646542", "443646542", "MissionZone", "box_MissionZoneController_v2_3.PropertiesUpdated", "box_MissionSoftQuitMonitor_1.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionSoftQuitMonitor_1_Disabled()
  local l0
  self = self._graph
  l0 = self.box_MissionSoftQuitMonitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|280523082", "280523082", "MissionZone", "box_MissionSoftQuitMonitor_1.Disabled", "Disabled", l0, self)
  self:Disabled()
end
function export:f_box_MissionSoftQuitMonitor_1_Enabled()
  local l0
  self = self._graph
  l0 = self.box_MissionSoftQuitMonitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|2003676349", "2003676349", "MissionZone", "box_MissionSoftQuitMonitor_1.Enabled", "Enabled", l0, self)
  self:Enabled()
end
function export:f_box_MissionSoftQuitMonitor_1_SoftQuitAborted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionSoftQuitMonitor_1
  l1 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1514667419", "1514667419", "MissionZone", "box_MissionSoftQuitMonitor_1.SoftQuitAborted", "box_MultipleOR_24.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionSoftQuitMonitor_1_SoftQuitCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1866039310"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  l0 = self.box_MissionSoftQuitMonitor_1
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1358720593", "1358720593", "MissionZone", "box_MissionSoftQuitMonitor_1.SoftQuitCompleted", "box_Ordered_Output_23.In", l0, l1)
  l1:In()
end
function export:f_box_MissionSoftQuitMonitor_1_SoftQuitStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|2146700422"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = self.f_box_Toy_Car_Controller_17_Disconnected
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  l0 = self.box_MissionSoftQuitMonitor_1
  l1 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|338256043", "338256043", "MissionZone", "box_MissionSoftQuitMonitor_1.SoftQuitStarted", "box_Toy_Car_Controller_17.Disconnect", l0, l1)
  l1:Disconnect()
end
function export:f_box_LMA_Layer_Controller_8_Unloaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_LMA_Layer_Controller_8
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1296503456", "1296503456", "MissionZone", "box_LMA_Layer_Controller_8.Unloaded", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Multiple_AND_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_12
  l0.SoundId = "soundbinary/2033933519.bnk"
  l0 = self.box_Multiple_AND_15
  l1 = self.box_PlaySound_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1292105778", "1292105778", "MissionZone", "box_Multiple_AND_15.Out", "box_PlaySound_v2_12.Play", l0, l1)
  l1:Play()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_15()
  l0 = self.box_MultipleOR_6
  l1 = self.box_Multiple_AND_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1777196718", "1777196718", "MissionZone", "box_MultipleOR_6.Out", "box_Multiple_AND_15.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MultipleOR_24_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|273512775"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = self.f_box_Toy_Car_Controller_21_ConnectAvailable
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  l0 = self.box_MultipleOR_24
  l1 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|2071261619", "2071261619", "MissionZone", "box_MultipleOR_24.Out", "box_Toy_Car_Controller_21.MakeConnectAvailable", l0, l1)
  l1:MakeConnectAvailable()
end
function export:f_box_Flying_Drone_Controller_18_Disconnected()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|595160601"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = self.f_box_Toy_Car_Controller_19_ConnectUnavailable
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|191195693", "191195693", "MissionZone", "box_Flying_Drone_Controller_18.Disconnected", "box_Toy_Car_Controller_19.MakeConnectUnavailable", clone, l0)
  l0:MakeConnectUnavailable()
end
function export:f_box_Ordered_Output_16_Out_0()
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
  l0.String = self.MissionLayer
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1728743507"
  l0.Is_nil = self.f_box_Test_if_Nil_4_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_4_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|2078932078", "2078932078", "MissionZone", "box_Ordered_Output_16.Out", "box_Test_if_Nil_4.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_16_Out_1()
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
  l0.String = self.LmaLayer
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|679096442"
  l0.Is_nil = self.f_box_Test_if_Nil_9_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_9_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|659630146", "659630146", "MissionZone", "box_Ordered_Output_16.Out", "box_Test_if_Nil_9.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_14_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1308404150"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_MultipleOR_14
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|457518751", "457518751", "MissionZone", "box_MultipleOR_14.Out", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_13_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1113658754", "1113658754", "MissionZone", "box_Compare_Boolean_v2_13.A_is_True", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(0)
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
  l0.A = self.InstantFailOnExit
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1578011421"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_13_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|2081200401", "2081200401", "MissionZone", "box_Test_if_Nil_11.Is_not_nil", "box_Compare_Boolean_v2_13.In", clone, l0)
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
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|363959323", "363959323", "MissionZone", "box_Test_if_Nil_4.Is_nil", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|178430637", "178430637", "MissionZone", "box_Test_if_Nil_4.Is_not_nil", "box_MissionLayer_v2_5.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_Compare_Boolean_v2_7_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionController_v4_2()
  l0 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1709183780", "1709183780", "MissionZone", "box_Compare_Boolean_v2_7.A_is_False", "box_MissionController_v4_2.Abort", clone, l0)
  l0:Abort()
end
function export:f_box_Compare_Boolean_v2_7_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionController_v4_2()
  l0 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1864126053", "1864126053", "MissionZone", "box_Compare_Boolean_v2_7.A_is_True", "box_MissionController_v4_2.Fail", clone, l0)
  l0:Fail()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|30202682", "30202682", "MissionZone", "box_Ordered_Output_23.Out", "SoftQuitCompleted", clone, self)
  self:SoftQuitCompleted()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|2039920188", "2039920188", "MissionZone", "box_Ordered_Output_23.Out", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Flying_Drone_Controller_20_ConnectUnavailable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.InstantFailOnExit
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1596882462"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_11_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|344021460", "344021460", "MissionZone", "box_Flying_Drone_Controller_20.ConnectUnavailable", "box_Test_if_Nil_11.In", clone, l0)
  l0:In()
end
function export:f_box_Toy_Car_Controller_17_Disconnected()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ToyCarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Flying_Drone_Controller_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|1205990102"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = self.f_box_Flying_Drone_Controller_18_Disconnected
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|291527008", "291527008", "MissionZone", "box_Toy_Car_Controller_17.Disconnected", "box_Flying_Drone_Controller_18.Disconnect", clone, l0)
  l0:Disconnect()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_MissionZoneController_v2_3()
  local l0
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.MissionArea
  l0.Red = 0.784
  l0.Green = 0.824
  l0.Blue = 0.235
  l0.Alpha = 1
  l0.Radius = nil
  l0.DrawType = "Outside"
  l0.ShapeType = nil
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0._name = "box_MissionZoneController_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@MissionZone|749128343"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZoneController_v2_3_Disabled
  l0.PropertiesUpdated = self.f_box_MissionZoneController_v2_3_PropertiesUpdated
  l0.Out = DummyFunction
end
function export:OnEnter_box_MissionSoftQuitMonitor_1()
  local l0
  l0 = self.box_MissionSoftQuitMonitor_1
  l0.MissionArea = self.MissionArea
end
function export:OnEnter_box_Multiple_AND_15()
end
function export:OnEnter_box_MissionController_v4_2()
  local l0
  l0 = self.box_MissionController_v4_2
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "ExitedMissionArea",
    id = "165442"
  }
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_MultipleOR_14()
end
function export:Enabled()
end
function export:Disabled()
end
function export:SoftQuitCompleted()
end
_compilerVersion = 4
