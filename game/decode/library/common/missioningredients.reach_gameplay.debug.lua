export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ReachGameplayController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Reach Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay"
  self.Stopped = DummyFunction
  self.Reached = DummyFunction
  self.Started = DummyFunction
  self.Destination = nil
  self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay|785130424"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = DummyFunction
  self.box_ReachGameplayController_4 = cbox:CreateBox("Domino/System/ReachGameplayController.lua")
  l0 = self.box_ReachGameplayController_4
  l0._graph = self
  l0._name = "box_ReachGameplayController_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay|998395786"
  l0.Started = self.f_box_ReachGameplayController_4_Started
  l0.Stopped = self.f_box_ReachGameplayController_4_Stopped
  l0.Completed = self.f_box_ReachGameplayController_4_Completed
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  self:OnEnter_box_ReachGameplayController_4()
  l0 = self.box_ReachGameplayController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay|1590432515", "1590432515", "Reach Gameplay", "Start", "box_ReachGameplayController_4.Start", self, l0)
  l0:Start()
end
function export:Stop()
  local l0
  self:OnEnter_box_ReachGameplayController_4()
  l0 = self.box_ReachGameplayController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay|1634036366", "1634036366", "Reach Gameplay", "Stop", "box_ReachGameplayController_4.Stop", self, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay|1279318127", "1279318127", "Reach Gameplay", "box_Ordered_Output_9.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay|571550343", "571550343", "Reach Gameplay", "box_Ordered_Output_9.Out", "Reached", clone, self)
  self:Reached()
end
function export:f_box_ReachGameplayController_4_Completed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay|541337368"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_ReachGameplayController_4
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay|1999609132", "1999609132", "Reach Gameplay", "box_ReachGameplayController_4.Completed", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_ReachGameplayController_4_Started()
  local l0
  self = self._graph
  l0 = self.box_ReachGameplayController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay|298628391", "298628391", "Reach Gameplay", "box_ReachGameplayController_4.Started", "Started", l0, self)
  self:Started()
end
function export:f_box_ReachGameplayController_4_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay|1331071164"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_ReachGameplayController_4
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay|218317640", "218317640", "Reach Gameplay", "box_ReachGameplayController_4.Stopped", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay|189965477", "189965477", "Reach Gameplay", "box_Ordered_Output_8.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Reach Gameplay|1987377292", "1987377292", "Reach Gameplay", "box_Ordered_Output_8.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_ReachGameplayController_4()
  local l0
  l0 = self.box_ReachGameplayController_4
  l0.MarkerLocId = self.MarkerLocId
  l0.MarkerEntity = self.MarkerEntity
  l0.Entity = self.Entity
  l0.MissionAreaEntity = self.MissionArea
  l0.AreaRadius = self.Entity_AreaRadius
  l0.AutoSetGPS = self.AutoGPS
end
function export:Stopped()
end
function export:Reached()
end
function export:Started()
end
_compilerVersion = 4
