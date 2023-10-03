export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DynamicEventController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/PerkController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Sony_Demo_Freeroam"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Freeroam"
  self.box_MissionLayer_v2_3 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_3
  l0._graph = self
  l0._name = "box_MissionLayer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Freeroam|132083295"
  l0.Loaded = self.f_box_MissionLayer_v2_3_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_InteractionScriptMonitor_v2_4 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_4
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Freeroam|1812955423"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InteractionScriptMonitor_v2_4_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_4_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_Perk_Controller_2 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_2
  l0._graph = self
  l0._name = "box_Perk_Controller_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Freeroam|2072794044"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = self.f_box_Perk_Controller_2_PerkListReplaced
  l0.PerkReseted = DummyFunction
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
  l0 = self.box_MissionLayer_v2_3
  l0.LayerName = "Sony_Demo_Mission"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Freeroam|1705468632", "1705468632", "Sony_Demo_Freeroam", "In", "box_MissionLayer_v2_3.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionLayer_v2_3_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Perk_Controller_2
  l0.PerkListDB = "PerksList.9223372050796948308"
  l0 = self.box_MissionLayer_v2_3
  l1 = self.box_Perk_Controller_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Freeroam|1356163672", "1356163672", "Sony_Demo_Freeroam", "box_MissionLayer_v2_3.Loaded", "box_Perk_Controller_2.ReplacePerkList", l0, l1)
  l1:ReplacePerkList()
end
function export:f_box_InteractionScriptMonitor_v2_4_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_4()
  l0 = self.box_InteractionScriptMonitor_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Freeroam|1183983061", "1183983061", "Sony_Demo_Freeroam", "box_InteractionScriptMonitor_v2_4.Enabled", "box_InteractionScriptMonitor_v2_4.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptMonitor_v2_4_InteractionFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicEventController.lua")]
  l0.DynamicEvent = "DynamicEvent.9223372046494180150"
  l0._graph = self
  l0._name = "box_Dynamic_Event_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Freeroam|1228303860"
  l0.Forced = DummyFunction
  l0 = self.box_InteractionScriptMonitor_v2_4
  l1 = Boxes[PathID("domino/System/DynamicEventController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Freeroam|1789352599", "1789352599", "Sony_Demo_Freeroam", "box_InteractionScriptMonitor_v2_4.InteractionFinished", "box_Dynamic_Event_1.Force", l0, l1)
  l1:Force()
end
function export:f_box_Perk_Controller_2_PerkListReplaced()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_4()
  l0 = self.box_Perk_Controller_2
  l1 = self.box_InteractionScriptMonitor_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\Sony\\Sony_Demo.domino|@Sony_Demo_Freeroam|903734019", "903734019", "Sony_Demo_Freeroam", "box_Perk_Controller_2.PerkListReplaced", "box_InteractionScriptMonitor_v2_4.Enable", l0, l1)
  l1:Enable()
end
function export:OnEnter_box_InteractionScriptMonitor_v2_4()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_4
  l0.InteractionScriptEntity = "9223372050796948318"
end
_compilerVersion = 4
