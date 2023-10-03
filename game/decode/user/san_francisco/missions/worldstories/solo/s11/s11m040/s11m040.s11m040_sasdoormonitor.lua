export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  local l0
  self.HackEnabled = DummyFunction
  self.HackDisabled = DummyFunction
  self.Started = DummyFunction
  self.MovedBackward = DummyFunction
  self.MovedForward = DummyFunction
  self.EntitiesList = {}
  self[1] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_1_Added
  l0.Removed = self.f_1_Removed
  l0.Out = self.f_1_Out
  self[8] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_8_Disabled
  l0.AllLoaded = self.f_8_AllLoaded
  self[3] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = self.f_3_Enabled
  l0.Disabled = self.f_3_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_6_Out
  self[4] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_4_Out
  self[5] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_5_Disabled
  l0.AllLoaded = self.f_5_AllLoaded
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:DisableHack()
  local l0
  l0 = self[6]
  l0:Condition(1)
end
function export:EnableHack()
  local l0
  l0 = self[4]
  l0:Condition(1)
end
function export:MoveBackward()
  local l0
  self:en_2()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:MoveForward()
  local l0
  self:en_2()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:Start()
  local l0
  l0 = self[1]
  l0.Input = self.EntitiesList
  l0.Data[0] = "9223372055178799835"
  l0.Data[1] = "9223372055178799847"
  l0.Data[2] = "9223372055178799849"
  l0:Add()
end
function export:f_1_Added()
  local l0
  self = self._graph
  l0 = self[1]
  self.EntitiesList = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0.Out[2] = self.f_7_Out_2
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[1]
  self.EntitiesList = l0.Target
end
function export:f_1_Removed()
  local l0
  self = self._graph
  l0 = self[1]
  self.EntitiesList = l0.Target
end
function export:f_8_AllLoaded()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Disable()
end
function export:f_8_Disabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:DisableHack()
end
function export:f_2_MovedBackward()
  self = self._graph
  self:MovedBackward()
end
function export:f_2_MovedForward()
  self = self._graph
  self:MovedForward()
end
function export:f_3_Disabled()
  self = self._graph
  self:HackDisabled()
end
function export:f_3_Enabled()
  self = self._graph
  self:HackEnabled()
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Condition(0)
end
function export:f_7_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Condition(0)
end
function export:f_7_Out_2()
  self = self._graph
  self:Started()
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:f_4_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_5_AllLoaded()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:EnableHack()
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.EntityList = self.EntitiesList
end
function export:en_2()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372055178799835"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_2_MovedForward
  l0.MovedBackward = self.f_2_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.HackableEntityList = self.EntitiesList
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.EntityList = self.EntitiesList
end
function export:HackEnabled()
end
function export:HackDisabled()
end
function export:Started()
end
function export:MovedBackward()
end
function export:MovedForward()
end
_compilerVersion = 4
