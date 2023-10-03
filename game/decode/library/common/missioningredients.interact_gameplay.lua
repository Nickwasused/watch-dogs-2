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
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.Interacted = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[3] = cbox:CreateBox("Domino/System/PlayerProximityMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = self.f_3_RCEnterRadius
  l0.RCExitRadius = self.f_3_RCExitRadius
  self[1] = cbox:CreateBox("Domino/System/InteractGameplayController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = self.f_1_Started
  l0.Stopped = self.f_1_Stopped
  l0.Completed = self.f_1_Completed
  self[7] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
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
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:Stop()
  local l0
  self:en_1()
  l0 = self[1]
  l0:Stop()
end
function export:f_2_Out_0()
  self = self._graph
  self:Stopped()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_8_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PlayerOnly
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_9_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_3_RCEnterRadius()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Display()
end
function export:f_3_RCExitRadius()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:HideNotification()
end
function export:f_6_Out_0()
  self = self._graph
  self:Interacted()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_10_A_is_True()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_5_Out_0()
  local l0
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
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_8_Is_not_nil
  l0:In()
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Start()
end
function export:f_1_Completed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0:In()
end
function export:f_1_Started()
  self = self._graph
  self:Started()
end
function export:f_1_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_9_A_is_True()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_11_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PlayerOnly
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_10_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_7_Out()
  local l0
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
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_11_Is_not_nil
  l0:In()
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_MarcusOnlyInteraction",
    item = "Description",
    id = "698586"
  }
  l0.Duration = -1
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.TargetEntity = self.Entity
  l0.Radius = 3
  l0.CheckDistance3D = 1
  l0.CheckNow = 1
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.MarkerLocId = self.MarkerLocId
  l0.MarkerEntity = self.MarkerEntity
  l0.Entity = self.Entity
  l0.CLO = self.CLO
  l0.IsManagingInteraction = self.IsManagingInteraction
end
function export:Stopped()
end
function export:Started()
end
function export:Interacted()
end
_compilerVersion = 4
