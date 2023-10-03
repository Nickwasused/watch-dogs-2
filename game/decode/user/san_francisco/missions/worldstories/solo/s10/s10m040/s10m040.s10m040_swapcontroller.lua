export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Hidden = DummyFunction
  self.Showed = DummyFunction
  self.Started = DummyFunction
  self.WorldObjects = {}
  self.ObjectToHide = nil
  self[2] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_2_Disabled
  l0.AllLoaded = self.f_2_AllLoaded
  self[3] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {Data = 11}
  l0.Added = self.f_3_Added
  l0.Removed = self.f_3_Removed
  l0.Out = self.f_3_Out
  self[6] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_6_Out
  self[12] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
  self[8] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_8_Disabled
  l0.AllLoaded = self.f_8_AllLoaded
  self[7] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_7_Out
  self[10] = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self[10]
  l0._graph = self
  l0.Started = self.f_10_Started
  l0.Stopped = self.f_10_Stopped
  l0.ForEach = self.f_10_ForEach
  l0.GotNext = self.f_10_GotNext
  l0.EndOfList = self.f_10_EndOfList
  l0.GotFirst = DummyFunction
  self[4] = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = self.f_4_Started
  l0.Stopped = self.f_4_Stopped
  l0.ForEach = self.f_4_ForEach
  l0.GotNext = self.f_4_GotNext
  l0.EndOfList = self.f_4_EndOfList
  l0.GotFirst = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_1_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Hide()
  local l0
  l0 = self[6]
  l0:Condition(0)
end
function export:Show()
  local l0
  l0 = self[7]
  l0:Condition(0)
end
function export:Start()
  local l0
  l0 = self[3]
  l0.Input = self.WorldObjects
  l0.Data[0] = "9223372058348118201"
  l0.Data[1] = "9223372058348119251"
  l0.Data[2] = "9223372064387582166"
  l0.Data[3] = "9223372059127590554"
  l0.Data[4] = "9223372059127590555"
  l0.Data[5] = "9223372058348118200"
  l0.Data[6] = "9223372058348118199"
  l0.Data[7] = "9223372058348118728"
  l0.Data[8] = "9223372059127593099"
  l0.Data[9] = "9223372059127593101"
  l0.Data[10] = "9223372064387582164"
  l0:Add()
end
function export:f_2_AllLoaded()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_2_Disabled()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(0)
end
function export:f_5_Hidden()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(1)
end
function export:f_3_Added()
  local l0
  self = self._graph
  l0 = self[3]
  self.WorldObjects = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0.Out[2] = self.f_9_Out_2
  l0:In()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[3]
  self.WorldObjects = l0.Target
end
function export:f_3_Removed()
  local l0
  self = self._graph
  l0 = self[3]
  self.WorldObjects = l0.Target
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_11_Shown()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.List = self.WorldObjects
  l0:GetNext()
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
  l0 = self[12]
  l0:Input(0)
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Condition(1)
end
function export:f_9_Out_1()
  self = self._graph
  self:Started()
end
function export:f_9_Out_2()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Condition(1)
end
function export:f_7_Out()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:f_10_EndOfList()
  local l0
  self = self._graph
  l0 = self[10]
  self.ObjectToHide = l0.Data
  self:Showed()
end
function export:f_10_ForEach()
  local l0
  self = self._graph
  l0 = self[10]
  self.ObjectToHide = l0.Data
end
function export:f_10_GotNext()
  local l0
  self = self._graph
  l0 = self[10]
  self.ObjectToHide = l0.Data
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.ObjectToHide
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_11_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_10_Started()
  local l0
  self = self._graph
  l0 = self[10]
  self.ObjectToHide = l0.Data
end
function export:f_10_Stopped()
  local l0
  self = self._graph
  l0 = self[10]
  self.ObjectToHide = l0.Data
end
function export:f_4_EndOfList()
  local l0
  self = self._graph
  l0 = self[4]
  self.ObjectToHide = l0.Data
  self:Hidden()
end
function export:f_4_ForEach()
  local l0
  self = self._graph
  l0 = self[4]
  self.ObjectToHide = l0.Data
end
function export:f_4_GotNext()
  local l0
  self = self._graph
  l0 = self[4]
  self.ObjectToHide = l0.Data
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.ObjectToHide
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_5_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_4_Started()
  local l0
  self = self._graph
  l0 = self[4]
  self.ObjectToHide = l0.Data
end
function export:f_4_Stopped()
  local l0
  self = self._graph
  l0 = self[4]
  self.ObjectToHide = l0.Data
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.List = self.WorldObjects
  l0:GetNext()
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.EntityList = self.WorldObjects
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.EntityList = self.WorldObjects
end
function export:Hidden()
end
function export:Showed()
end
function export:Started()
end
_compilerVersion = 4
