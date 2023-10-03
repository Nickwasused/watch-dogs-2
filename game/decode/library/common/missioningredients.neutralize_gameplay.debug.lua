export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/NeutralizeGameplayController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Neutralize Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Neutralize Gameplay"
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.Neutralized = DummyFunction
  self.box_NeutralizeGameplayController_1 = cbox:CreateBox("Domino/System/NeutralizeGameplayController.lua")
  l0 = self.box_NeutralizeGameplayController_1
  l0._graph = self
  l0._name = "box_NeutralizeGameplayController_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Neutralize Gameplay|493119435"
  l0.Started = self.f_box_NeutralizeGameplayController_1_Started
  l0.Stopped = self.f_box_NeutralizeGameplayController_1_Stopped
  l0.Completed = self.f_box_NeutralizeGameplayController_1_Completed
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
  self:OnEnter_box_NeutralizeGameplayController_1()
  l0 = self.box_NeutralizeGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Neutralize Gameplay|1298823966", "1298823966", "Neutralize Gameplay", "Start", "box_NeutralizeGameplayController_1.Start", self, l0)
  l0:Start()
end
function export:Stop()
  local l0
  self:OnEnter_box_NeutralizeGameplayController_1()
  l0 = self.box_NeutralizeGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Neutralize Gameplay|1680141569", "1680141569", "Neutralize Gameplay", "Stop", "box_NeutralizeGameplayController_1.Stop", self, l0)
  l0:Stop()
end
function export:f_box_NeutralizeGameplayController_1_Completed()
  local l0
  self = self._graph
  l0 = self.box_NeutralizeGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Neutralize Gameplay|605635649", "605635649", "Neutralize Gameplay", "box_NeutralizeGameplayController_1.Completed", "Neutralized", l0, self)
  self:Neutralized()
end
function export:f_box_NeutralizeGameplayController_1_Started()
  local l0
  self = self._graph
  l0 = self.box_NeutralizeGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Neutralize Gameplay|123719468", "123719468", "Neutralize Gameplay", "box_NeutralizeGameplayController_1.Started", "Started", l0, self)
  self:Started()
end
function export:f_box_NeutralizeGameplayController_1_Stopped()
  local l0
  self = self._graph
  l0 = self.box_NeutralizeGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Neutralize Gameplay|985371272", "985371272", "Neutralize Gameplay", "box_NeutralizeGameplayController_1.Stopped", "Stopped", l0, self)
  self:Stopped()
end
function export:OnEnter_box_NeutralizeGameplayController_1()
  local l0
  l0 = self.box_NeutralizeGameplayController_1
  l0.MarkerLocId = self.MarkerLocId
  l0.MarkerEntity = self.MarkerEntity
  l0.Entity = self.Entity
  l0.CLO = self.CLO
  l0.BreakableSpawnedEffectsCount = self.BreakableSpawnedEffectsCount
end
function export:Stopped()
end
function export:Started()
end
function export:Neutralized()
end
_compilerVersion = 4
