export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[2] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_2_Disabled
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_2_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[1]
  l0._graph = self
  self[3] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_3_Out
  self[4] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = self.f_4_Completed
  l0.NotCompleted = self.f_4_NotCompleted
  l0.OnMissionSucceeded = DummyFunction
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
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
  l0 = self[4]
  l0.Mission = "MissionList.9223372049674795932"
  l0:CheckCompletion()
end
function export:f_2_Disabled()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(1)
end
function export:f_2_OnMissionSucceeded()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Succeed()
end
function export:f_4_Completed()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(0)
end
function export:f_4_NotCompleted()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.Mission = "MissionList.9223372049674795932"
end
_compilerVersion = 4
