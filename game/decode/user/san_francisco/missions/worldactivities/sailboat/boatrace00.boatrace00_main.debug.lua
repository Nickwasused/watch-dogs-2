export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/ConversationMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
end
function export:Init(cbox)
  local l0
  self._name = "BoatRace00_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace00.domino|@BoatRace00_Main"
  self.PlayerEntity = nil
  self.box_ConversationMonitor_1 = cbox:CreateBox("domino/System/ConversationMonitor.lua")
  l0 = self.box_ConversationMonitor_1
  l0._graph = self
  l0._name = "box_ConversationMonitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace00.domino|@BoatRace00_Main|74579766"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnFinished = self.f_box_ConversationMonitor_1_OnFinished
  l0.WasPlayed = DummyFunction
  l0.WasNotPlayed = DummyFunction
  self.box_MissionController_v4_2 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace00.domino|@BoatRace00_Main|721744165"
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
  l0 = self.box_ConversationMonitor_1
  l0.Conversation = "ConversationSetting.9223372055039781623"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace00.domino|@BoatRace00_Main|62228188", "62228188", "BoatRace00_Main", "In", "box_ConversationMonitor_1.Enable", self, l0)
  l0:Enable()
end
function export:f_box_ConversationMonitor_1_OnFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_ConversationMonitor_1
  l1 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\sailboat\\BoatRace00.domino|@BoatRace00_Main|735783373", "735783373", "BoatRace00_Main", "box_ConversationMonitor_1.OnFinished", "box_MissionController_v4_2.Succeed", l0, l1)
  l1:Succeed()
end
_compilerVersion = 4
