export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.Entity_Wrench = nil
  self.Entity_Horatio = "9223372067694577644"
  self[7] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_7_GotUser
  l0.NotGotUser = self.f_7_NotGotUser
  l0.OnUserInPlace = self.f_7_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_5_Out
  self[6] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_6_OnUserInPlace
  self[1] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_1_GotUser
  l0.NotGotUser = self.f_1_NotGotUser
  l0.OnUserInPlace = self.f_1_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
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
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345166"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_4_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Entity_Horatio
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:FromEntity()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345164"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_8_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_7_GotUser()
  local l0
  self = self._graph
  l0 = self[7]
  self.Entity_Wrench = l0.UserID
  l0 = self[5]
  l0:Input(0)
end
function export:f_7_NotGotUser()
  local l0
  self = self._graph
  l0 = self[7]
  self.Entity_Wrench = l0.UserID
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_7_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[7]
  self.Entity_Wrench = l0.UserID
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047375551844"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_11_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_6_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[6]
  self.Entity_Horatio = l0.UserID
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = self.Entity_Horatio
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_11_Disabled()
  local l0
  self = self._graph
  l0 = self[6]
  l0.CLO = self.CLO_Horatio
  l0:Activate()
end
function export:f_8_Disabled()
  local l0
  self = self._graph
  l0 = self[7]
  l0.CLO = self.CLO_Wrench
  l0:GetUser()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(1)
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Wrench = l0.Target
  self:Out()
end
function export:f_1_GotUser()
  local l0
  self = self._graph
  l0 = self[1]
  self.Entity_Wrench = l0.UserID
end
function export:f_1_NotGotUser()
  local l0
  self = self._graph
  l0 = self[1]
  self.Entity_Wrench = l0.UserID
end
function export:f_1_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[1]
  self.Entity_Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Horatio = l0.Target
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Entity_Wrench
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:FromEntity()
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.CLO = self.CLO_Wrench
end
function export:Out()
end
_compilerVersion = 4
