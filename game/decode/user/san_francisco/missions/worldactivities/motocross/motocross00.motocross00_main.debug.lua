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
  self._name = "Motocross00_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross00.domino|@Motocross00_Main"
  self.PlayerEntity = nil
  self.box_MissionMonitor_2 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_2
  l0._graph = self
  l0._name = "box_MissionMonitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross00.domino|@Motocross00_Main|6837529"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionMonitor_2_Disabled
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_2_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_MissionController_v4_1 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_1
  l0._graph = self
  l0._name = "box_MissionController_v4_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross00.domino|@Motocross00_Main|820014163"
  self.box_MultipleOR_3 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross00.domino|@Motocross00_Main|1155557876"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
  self.box_MissionMonitor_4 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_4
  l0._graph = self
  l0._name = "box_MissionMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross00.domino|@Motocross00_Main|1352388174"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = self.f_box_MissionMonitor_4_Completed
  l0.NotCompleted = self.f_box_MissionMonitor_4_NotCompleted
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
  l0 = self.box_MissionMonitor_4
  l0.Mission = "MissionList.9223372049674795932"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross00.domino|@Motocross00_Main|1794532836", "1794532836", "Motocross00_Main", "In", "box_MissionMonitor_4.CheckCompletion", self, l0)
  l0:CheckCompletion()
end
function export:f_box_MissionMonitor_2_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MissionMonitor_2
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross00.domino|@Motocross00_Main|1393731303", "1393731303", "Motocross00_Main", "box_MissionMonitor_2.Disabled", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionMonitor_2_OnMissionSucceeded()
  local l0
  self = self._graph
  self:OnEnter_box_MissionMonitor_2()
  l0 = self.box_MissionMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross00.domino|@Motocross00_Main|389480648", "389480648", "Motocross00_Main", "box_MissionMonitor_2.OnMissionSucceeded", "box_MissionMonitor_2.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_3
  l1 = self.box_MissionController_v4_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross00.domino|@Motocross00_Main|4520087", "4520087", "Motocross00_Main", "box_MultipleOR_3.Out", "box_MissionController_v4_1.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionMonitor_4_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_MissionMonitor_4
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross00.domino|@Motocross00_Main|826723926", "826723926", "Motocross00_Main", "box_MissionMonitor_4.Completed", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMonitor_4_NotCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionMonitor_2()
  l0 = self.box_MissionMonitor_4
  l1 = self.box_MissionMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\Motocross\\Motocross00.domino|@Motocross00_Main|1421838571", "1421838571", "Motocross00_Main", "box_MissionMonitor_4.NotCompleted", "box_MissionMonitor_2.Enable", l0, l1)
  l1:Enable()
end
function export:OnEnter_box_MissionMonitor_2()
  local l0
  l0 = self.box_MissionMonitor_2
  l0.Mission = "MissionList.9223372049674795932"
end
function export:OnEnter_box_MultipleOR_3()
end
_compilerVersion = 4
