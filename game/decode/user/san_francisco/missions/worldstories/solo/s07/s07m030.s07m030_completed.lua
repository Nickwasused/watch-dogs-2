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
  self.Out = DummyFunction
  self.MissionDeactivationCompleted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_3_Out
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_5_Out
  self[4] = cbox:CreateBox("domino/System/InventoryMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = DummyFunction
  l0.HasItemTrue = self.f_4_HasItemTrue
  l0.HasItemFalse = self.f_4_HasItemFalse
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
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_3_Out()
  self = self._graph
  self:MissionDeactivationCompleted()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(1)
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0:In(0)
end
function export:f_4_Enabled()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:HasItem()
end
function export:f_4_HasItemFalse()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_DronePurchase",
    item = "Description",
    id = "698106"
  }
  l0.Duration = 7
  l0:Display()
end
function export:f_4_HasItemTrue()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(0)
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.ItemDB = "Items.9223372046063616398"
end
function export:Out()
end
function export:MissionDeactivationCompleted()
end
_compilerVersion = 4
