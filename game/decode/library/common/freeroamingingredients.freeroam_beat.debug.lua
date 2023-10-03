export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/LayerMonitor.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  local l0
  self._name = "FreeRoam Beat"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat"
  self.NewBeatStarted = DummyFunction
  self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat|297994658"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_MissionCheckpointReach_4 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_4
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat|1325919310"
  l0.Out = self.f_box_MissionCheckpointReach_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_LayerMonitor_5 = cbox:CreateBox("Domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_5
  l0._graph = self
  l0._name = "box_LayerMonitor_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat|1757871323"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_5_Loaded
  l0.Unloaded = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:FromCheckpoint()
  local l0
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat|1115000627", "1115000627", "FreeRoam Beat", "FromCheckpoint", "box_MultipleOR_2.Input", self, l0)
  l0:Input(1)
end
function export:StartNewBeat()
  local l0
  l0 = self.box_MissionCheckpointReach_4
  l0.CheckpointList = self.Checkpoint
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat|194586607", "194586607", "FreeRoam Beat", "StartNewBeat", "box_MissionCheckpointReach_4.In", self, l0)
  l0:In()
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat|478583356"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MultipleOR_2
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat|1814857637", "1814857637", "FreeRoam Beat", "box_MultipleOR_2.Out", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LayerMonitor_5()
  l0 = self.box_LayerMonitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat|1192118289", "1192118289", "FreeRoam Beat", "box_Ordered_Output_3.Out", "box_LayerMonitor_5.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat|890066091", "890066091", "FreeRoam Beat", "box_Ordered_Output_3.Out", "NewBeatStarted", clone, self)
  self:NewBeatStarted()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LayerMonitor_5()
  l0 = self.box_LayerMonitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat|627240603", "627240603", "FreeRoam Beat", "box_Get_Player_ID_1.Out", "box_LayerMonitor_5.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionCheckpointReach_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MissionCheckpointReach_4
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat|1767971944", "1767971944", "FreeRoam Beat", "box_MissionCheckpointReach_4.Out", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_LayerMonitor_5_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat|421590361"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0 = self.box_LayerMonitor_5
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\FreeRoamingIngredients.domino|@FreeRoam Beat|1951861346", "1951861346", "FreeRoam Beat", "box_LayerMonitor_5.Loaded", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_LayerMonitor_5()
  local l0
  l0 = self.box_LayerMonitor_5
  l0.ProgressionLayer = self.ProgressionLayer
end
function export:NewBeatStarted()
end
_compilerVersion = 4
