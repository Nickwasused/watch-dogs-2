export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/InventoryMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S07M030_Completed"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Completed"
  self.Out = DummyFunction
  self.MissionDeactivationCompleted = DummyFunction
  self.box_OnceOnly_v3_3 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_3
  l0._graph = self
  l0._name = "box_OnceOnly_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Completed|585887578"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_3_Out
  l0.ResetOut = DummyFunction
  self.box_TutorialController_1 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_1
  l0._graph = self
  l0._name = "box_TutorialController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Completed|1091687106"
  l0.Out = self.f_box_TutorialController_1_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Completed|2029786878"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_InventoryMonitor_4 = cbox:CreateBox("domino/System/InventoryMonitor.lua")
  l0 = self.box_InventoryMonitor_4
  l0._graph = self
  l0._name = "box_InventoryMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Completed|2080940846"
  l0.Enabled = self.f_box_InventoryMonitor_4_Enabled
  l0.Disabled = DummyFunction
  l0.HasItemTrue = self.f_box_InventoryMonitor_4_HasItemTrue
  l0.HasItemFalse = self.f_box_InventoryMonitor_4_HasItemFalse
  l0.InWheelTrue = DummyFunction
  l0.InWheelFalse = DummyFunction
  l0.OnAnyItemAdded = DummyFunction
  l0.OnWeaponAdded = DummyFunction
  l0.OnItemAdded = DummyFunction
  l0.OnItemNotAdded = DummyFunction
  l0.OnItemRemoved = DummyFunction
  l0.OnItemEquipped = DummyFunction
  l0.False = DummyFunction
  l0.True = DummyFunction
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
  self:OnEnter_box_InventoryMonitor_4()
  l0 = self.box_InventoryMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Completed|1026850940", "1026850940", "S07M030_Completed", "In", "box_InventoryMonitor_4.Enable", self, l0)
  l0:Enable()
end
function export:f_box_OnceOnly_v3_3_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Completed|1553625315", "1553625315", "S07M030_Completed", "box_OnceOnly_v3_3.Out", "MissionDeactivationCompleted", l0, self)
  self:MissionDeactivationCompleted()
end
function export:f_box_TutorialController_1_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_TutorialController_1
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Completed|448377272", "448377272", "S07M030_Completed", "box_TutorialController_1.Out", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_5
  l1 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Completed|550432913", "550432913", "S07M030_Completed", "box_MultipleOR_5.Out", "box_OnceOnly_v3_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_InventoryMonitor_4_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_InventoryMonitor_4()
  l0 = self.box_InventoryMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Completed|318815893", "318815893", "S07M030_Completed", "box_InventoryMonitor_4.Enabled", "box_InventoryMonitor_4.HasItem", l0, l0)
  l0:HasItem()
end
function export:f_box_InventoryMonitor_4_HasItemFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_1
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_DronePurchase",
    item = "Description",
    id = "698106"
  }
  l0.Duration = 7
  l0 = self.box_InventoryMonitor_4
  l1 = self.box_TutorialController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Completed|1924213873", "1924213873", "S07M030_Completed", "box_InventoryMonitor_4.HasItemFalse", "box_TutorialController_1.Display", l0, l1)
  l1:Display()
end
function export:f_box_InventoryMonitor_4_HasItemTrue()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_InventoryMonitor_4
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Completed|2001679610", "2001679610", "S07M030_Completed", "box_InventoryMonitor_4.HasItemTrue", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(0)
end
function export:OnEnter_box_MultipleOR_5()
end
function export:OnEnter_box_InventoryMonitor_4()
  local l0
  l0 = self.box_InventoryMonitor_4
  l0.ItemDB = "Items.9223372046063616398"
end
function export:Out()
end
function export:MissionDeactivationCompleted()
end
_compilerVersion = 4
