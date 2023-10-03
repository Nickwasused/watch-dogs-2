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
  self[3] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Loaded = self.f_3_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_4_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[2] = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self[2]
  l0._graph = self
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = self.f_2_PerkListReplaced
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
  l0 = self[3]
  l0.LayerName = "Sony_Demo_Mission"
  l0:Load()
end
function export:f_3_Loaded()
  local l0
  self = self._graph
  l0 = self[2]
  l0.PerkListDB = "PerksList.9223372050796948308"
  l0:ReplacePerkList()
end
function export:f_4_Enabled()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_4_InteractionFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicEventController.lua")]
  l0.DynamicEvent = "DynamicEvent.9223372046494180150"
  l0._graph = self
  l0.Forced = DummyFunction
  l0:Force()
end
function export:f_2_PerkListReplaced()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.InteractionScriptEntity = "9223372050796948318"
end
_compilerVersion = 4
