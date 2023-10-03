export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  self._name = "MissionCleanup"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionCleanup.domino|@MissionCleanup"
  self.Out = DummyFunction
  self.Finished = DummyFunction
  self.EntityToDelete = nil
  self.LocalPawn = nil
  self.PlayerVehicle = nil
  self.DistanceToEntity = 0
  self.ListIndex = 0
  self.EntitiesToDelete = {}
  self.bForced = 0
  self.ListLength = 0
  self.EntityToCopy = nil
  self.DeletedEntities = {}
  self.bPlayerDead = 0
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
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionCleanup.domino|@MissionCleanup|1869578844"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionCleanup.domino|@MissionCleanup|1653689006", "1653689006", "MissionCleanup", "In", "box_Ordered_Output_23.In", self, l0)
  l0:In()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionCleanup.domino|@MissionCleanup|2015059326", "2015059326", "MissionCleanup", "box_Ordered_Output_23.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionCleanup.domino|@MissionCleanup|1506883008", "1506883008", "MissionCleanup", "box_Ordered_Output_23.Out", "Finished", clone, self)
  self:Finished()
end
function export:Out()
end
function export:Finished()
end
_compilerVersion = 4
