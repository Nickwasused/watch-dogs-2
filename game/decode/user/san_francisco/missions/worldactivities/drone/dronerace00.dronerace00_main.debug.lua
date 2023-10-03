export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/ConversationMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
end
function export:Init(cbox)
  local l0
  self._name = "DroneRace00_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace00.domino|@DroneRace00_Main"
  self.PlayerEntity = nil
  self.box_ConversationMonitor_2 = cbox:CreateBox("domino/System/ConversationMonitor.lua")
  l0 = self.box_ConversationMonitor_2
  l0._graph = self
  l0._name = "box_ConversationMonitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace00.domino|@DroneRace00_Main|71135393"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnFinished = self.f_box_ConversationMonitor_2_OnFinished
  l0.WasPlayed = self.f_box_ConversationMonitor_2_WasPlayed
  l0.WasNotPlayed = self.f_box_ConversationMonitor_2_WasNotPlayed
  self.box_MultipleOR_3 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_3
  l0._graph = self
  l0._name = "box_MultipleOR_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace00.domino|@DroneRace00_Main|132848052"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_3_Out
  self.box_MissionController_v4_1 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_1
  l0._graph = self
  l0._name = "box_MissionController_v4_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace00.domino|@DroneRace00_Main|999558949"
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
  self:OnEnter_box_ConversationMonitor_2()
  l0 = self.box_ConversationMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace00.domino|@DroneRace00_Main|1955474297", "1955474297", "DroneRace00_Main", "In", "box_ConversationMonitor_2.GetPlayState", self, l0)
  l0:GetPlayState()
end
function export:f_box_ConversationMonitor_2_OnFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_ConversationMonitor_2
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace00.domino|@DroneRace00_Main|949043029", "949043029", "DroneRace00_Main", "box_ConversationMonitor_2.OnFinished", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ConversationMonitor_2_WasNotPlayed()
  local l0
  self = self._graph
  self:OnEnter_box_ConversationMonitor_2()
  l0 = self.box_ConversationMonitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace00.domino|@DroneRace00_Main|933856218", "933856218", "DroneRace00_Main", "box_ConversationMonitor_2.WasNotPlayed", "box_ConversationMonitor_2.Enable", l0, l0)
  l0:Enable()
end
function export:f_box_ConversationMonitor_2_WasPlayed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_3()
  l0 = self.box_ConversationMonitor_2
  l1 = self.box_MultipleOR_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace00.domino|@DroneRace00_Main|594301030", "594301030", "DroneRace00_Main", "box_ConversationMonitor_2.WasPlayed", "box_MultipleOR_3.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_3
  l1 = self.box_MissionController_v4_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\drone\\DroneRace00.domino|@DroneRace00_Main|981062193", "981062193", "DroneRace00_Main", "box_MultipleOR_3.Out", "box_MissionController_v4_1.Succeed", l0, l1)
  l1:Succeed()
end
function export:OnEnter_box_ConversationMonitor_2()
  local l0
  l0 = self.box_ConversationMonitor_2
  l0.Conversation = "ConversationSetting.9223372055039781627"
end
function export:OnEnter_box_MultipleOR_3()
end
_compilerVersion = 4
