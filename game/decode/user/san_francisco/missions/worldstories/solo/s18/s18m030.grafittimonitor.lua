export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.Completed = DummyFunction
  self.Disabled = DummyFunction
  self.Enabled = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.MessageCompleted = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_1_Out
  self[7] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = self.f_7_Enabled
  l0.Disabled = self.f_7_Disabled
  l0.TagIsOwned = self.f_7_TagIsOwned
  l0.Has = self.f_7_Has
  l0.HasNOT = self.f_7_HasNOT
  self[6] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[6]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_6_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_3_Out
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(0)
end
function export:f_1_Out()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(1)
end
function export:f_2_Out_1()
  self = self._graph
  self:Disabled()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Objective = self.Objective
  l0:IncrementObjective()
end
function export:f_7_Enabled()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Show()
end
function export:f_7_Has()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(1)
end
function export:f_7_HasNOT()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_7_TagIsOwned()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(0)
end
function export:f_6_Hidden()
  self = self._graph
  self:Completed()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:HasProgressionTag()
end
function export:f_8_Out_1()
  self = self._graph
  self:Enabled()
end
function export:f_3_Out()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Hide()
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.ProgressionTag = self.ProgressionTag
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.MapPoint = self.Icon
end
function export:Completed()
end
function export:Disabled()
end
function export:Enabled()
end
_compilerVersion = 4
