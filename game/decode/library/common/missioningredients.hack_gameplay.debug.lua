export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/HackGameplayController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Hack Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Hack Gameplay"
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.Hacked = DummyFunction
  self.box_HackGameplayController_1 = cbox:CreateBox("Domino/System/HackGameplayController.lua")
  l0 = self.box_HackGameplayController_1
  l0._graph = self
  l0._name = "box_HackGameplayController_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Hack Gameplay|11243034"
  l0.Started = self.f_box_HackGameplayController_1_Started
  l0.Stopped = self.f_box_HackGameplayController_1_Stopped
  l0.Completed = self.f_box_HackGameplayController_1_Completed
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
  self:OnEnter_box_HackGameplayController_1()
  l0 = self.box_HackGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Hack Gameplay|1478264376", "1478264376", "Hack Gameplay", "Start", "box_HackGameplayController_1.Start", self, l0)
  l0:Start()
end
function export:Stop()
  local l0
  self:OnEnter_box_HackGameplayController_1()
  l0 = self.box_HackGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Hack Gameplay|769438339", "769438339", "Hack Gameplay", "Stop", "box_HackGameplayController_1.Stop", self, l0)
  l0:Stop()
end
function export:f_box_HackGameplayController_1_Completed()
  local l0
  self = self._graph
  l0 = self.box_HackGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Hack Gameplay|1339443770", "1339443770", "Hack Gameplay", "box_HackGameplayController_1.Completed", "Hacked", l0, self)
  self:Hacked()
end
function export:f_box_HackGameplayController_1_Started()
  local l0
  self = self._graph
  l0 = self.box_HackGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Hack Gameplay|1515658842", "1515658842", "Hack Gameplay", "box_HackGameplayController_1.Started", "Started", l0, self)
  self:Started()
end
function export:f_box_HackGameplayController_1_Stopped()
  local l0
  self = self._graph
  l0 = self.box_HackGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Hack Gameplay|1838667001", "1838667001", "Hack Gameplay", "box_HackGameplayController_1.Stopped", "Stopped", l0, self)
  self:Stopped()
end
function export:OnEnter_box_HackGameplayController_1()
  local l0
  l0 = self.box_HackGameplayController_1
  l0.MarkerLocId = self.MarkerLocId
  l0.HackCategoryType = self.HackCategory
  l0.Entity = self.Entity
  l0.CLO = self.CLO
  l0.IsManagingInteraction = self.IsManagingInteraction
  l0.DisplayObjectiveDistance = self.DisplayObjectiveDistance
end
function export:Stopped()
end
function export:Started()
end
function export:Hacked()
end
_compilerVersion = 4
