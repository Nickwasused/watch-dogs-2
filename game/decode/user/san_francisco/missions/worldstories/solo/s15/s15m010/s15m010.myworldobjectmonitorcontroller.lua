export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/HackableDoorController.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  local l0
  self.Aquarium_Doors_Open_Wrench = {}
  self.EMP_Parts = {}
  self.WrenchJr_Garage_Door = {}
  self[6] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_6_AllLoaded
  self[2] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_2_AllLoaded
  self[12] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[1] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {Data = 18}
  l0.Added = self.f_1_Added
  l0.Removed = self.f_1_Removed
  l0.Out = self.f_1_Out
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[8] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[8]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = DummyFunction
  self[7] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[11] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[11]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = DummyFunction
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:EnableHack()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0.Out[2] = self.f_3_Out_2
  l0:In()
end
function export:f_6_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0.Out[2] = self.f_10_Out_2
  l0:In()
end
function export:f_2_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0.Out[2] = self.f_9_Out_2
  l0:In()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(0)
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_3_Out_2()
  local l0
  self = self._graph
  l0 = self[6]
  l0.AutoDisable = 1
  l0.EntityList = self.Aquarium_Doors_Open_Wrench
  l0:Enable()
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(1)
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_1_Added()
  local l0
  self = self._graph
  l0 = self[1]
  self.Aquarium_Doors_Open_Wrench = l0.Target
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[1]
  self.Aquarium_Doors_Open_Wrench = l0.Target
end
function export:f_1_Removed()
  local l0
  self = self._graph
  l0 = self[1]
  self.Aquarium_Doors_Open_Wrench = l0.Target
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Input = self.Aquarium_Doors_Open_Wrench
  l0.Data[0] = "9223372059789924319"
  l0.Data[1] = "9223372059789924321"
  l0.Data[2] = "9223372059789924313"
  l0.Data[3] = "9223372056229363297"
  l0.Data[4] = "9223372056229363299"
  l0.Data[5] = "9223372056229363287"
  l0.Data[6] = "9223372056229363311"
  l0.Data[7] = "9223372056229363313"
  l0.Data[8] = "9223372056229363301"
  l0.Data[9] = "9223372056229363325"
  l0.Data[10] = "9223372056229363327"
  l0.Data[11] = "9223372056229363315"
  l0.Data[12] = "9223372059446228060"
  l0.Data[13] = "9223372059446228062"
  l0.Data[14] = "9223372059446228054"
  l0.Data[15] = "9223372056229363494"
  l0.Data[16] = "9223372056229363496"
  l0.Data[17] = "9223372056229363484"
  l0:Add()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0.EntityList = self.Aquarium_Doors_Open_Wrench
  l0:EnableAiAccess()
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:EnableProfiling()
end
function export:f_10_Out_2()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:EnableHack()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = self[8]
  l0.EntityList = self.Aquarium_Doors_Open_Wrench
  l0:DisableAiAccess()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:DisableProfiling()
end
function export:f_9_Out_2()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:DisableHack()
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.EntityList = self.Aquarium_Doors_Open_Wrench
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.HackableEntityList = self.Aquarium_Doors_Open_Wrench
  l0.ProfileLinkedToHack = 1
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.HackableEntityList = self.Aquarium_Doors_Open_Wrench
  l0.ProfileLinkedToHack = 1
end
_compilerVersion = 4
