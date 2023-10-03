export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugExecuteConsole_v2.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/WitnessSytemController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "GamesCom_Player01_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\GamesCom\\GamesCom.domino|@GamesCom_Player01_Main"
  self.PlayerEntity = nil
  self.box_MissionCheckpointReach_2 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_2
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\GamesCom\\GamesCom.domino|@GamesCom_Player01_Main|300430987"
  l0.Out = self.f_box_MissionCheckpointReach_2_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionController_v4_3 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_3
  l0._graph = self
  l0._name = "box_MissionController_v4_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\GamesCom\\GamesCom.domino|@GamesCom_Player01_Main|1246906724"
  self.box_MultipleOR_1 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\GamesCom\\GamesCom.domino|@GamesCom_Player01_Main|1794757808"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_1_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\GamesCom\\GamesCom.domino|@GamesCom_Player01_Main|1554177567", "1554177567", "GamesCom_Player01_Main", "CheckPoint_0", "box_MultipleOR_1.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\GamesCom\\GamesCom.domino|@GamesCom_Player01_Main|66430198", "66430198", "GamesCom_Player01_Main", "In", "box_MultipleOR_1.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionCheckpointReach_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gkmodel_swap_on_player 9223372062360197395"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\GamesCom\\GamesCom.domino|@GamesCom_Player01_Main|437690761"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_5_Executed
  l0 = self.box_MissionCheckpointReach_2
  l1 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\GamesCom\\GamesCom.domino|@GamesCom_Player01_Main|1331672046", "1331672046", "GamesCom_Player01_Main", "box_MissionCheckpointReach_2.Out", "box_DebugExecuteConsole_v2_5.Execute", l0, l1)
  l1:Execute()
end
function export:f_box_WitnessSystemController_v2_4_DenunciatorDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/WitnessSytemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\GamesCom\\GamesCom.domino|@GamesCom_Player01_Main|1945368279", "1945368279", "GamesCom_Player01_Main", "box_WitnessSystemController_v2_4.DenunciatorDisabled", "box_MissionController_v4_3.Succeed", clone, l0)
  l0:Succeed()
end
function export:f_box_DebugExecuteConsole_v2_5_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/WitnessSytemController_v2.lua")]
  l0._graph = self
  l0._name = "box_WitnessSystemController_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\GamesCom\\GamesCom.domino|@GamesCom_Player01_Main|367898295"
  l0.DenunciatorEnabled = DummyFunction
  l0.DenunciatorDisabled = self.f_box_WitnessSystemController_v2_4_DenunciatorDisabled
  l0.DetectorEnabled = DummyFunction
  l0.DetectorDisabled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\GamesCom\\GamesCom.domino|@GamesCom_Player01_Main|338417699", "338417699", "GamesCom_Player01_Main", "box_DebugExecuteConsole_v2_5.Executed", "box_WitnessSystemController_v2_4.DisableDenunciator", clone, l0)
  l0:DisableDenunciator()
end
function export:f_box_MultipleOR_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_2
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_1
  l1 = self.box_MissionCheckpointReach_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\GamesCom\\GamesCom.domino|@GamesCom_Player01_Main|95374435", "95374435", "GamesCom_Player01_Main", "box_MultipleOR_1.Out", "box_MissionCheckpointReach_2.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_1()
end
_compilerVersion = 4
