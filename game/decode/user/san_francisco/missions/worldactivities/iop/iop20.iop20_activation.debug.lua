export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
end
function export:Init(cbox)
  local l0
  self._name = "IOP20_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Activation"
  self.box_RewardController_v3_2 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_2
  l0._graph = self
  l0._name = "box_RewardController_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Activation|447311722"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_PhoneCommunicationController_1 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_1
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Activation|510339129"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_1_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_RewardController_v3_6 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_6
  l0._graph = self
  l0._name = "box_RewardController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Activation|1283920270"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Progression_Tag_Monitor_5 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_5
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Activation|1376102399"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_5_HasNOT
  self.box_PhoneCommunicationController_4 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_4
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Activation|1947076323"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_4_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Reward_Phone_Call_Monitor_3 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Activation|2024500535"
  l0.Enabled = self.f_box_Reward_Phone_Call_Monitor_3_Enabled
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_3_OnPhoneCallEnded
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
  l0 = self.box_Progression_Tag_Monitor_5
  l0.ProgressionTag = "ProgressionTag.9223372066541981998"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Activation|1408115042", "1408115042", "IOP20_Activation", "In", "box_Progression_Tag_Monitor_5.HasProgressionTag", self, l0)
  l0:HasProgressionTag()
end
function export:f_box_PhoneCommunicationController_1_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l0.ItemDb = "Items.9223372050495846413"
  l0 = self.box_PhoneCommunicationController_1
  l1 = self.box_Reward_Phone_Call_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Activation|493867685", "493867685", "IOP20_Activation", "box_PhoneCommunicationController_1.OnCommunicationFinished", "box_Reward_Phone_Call_Monitor_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Progression_Tag_Monitor_5_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_1
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357371047"
  l0 = self.box_Progression_Tag_Monitor_5
  l1 = self.box_PhoneCommunicationController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Activation|601733639", "601733639", "IOP20_Activation", "box_Progression_Tag_Monitor_5.HasNOT", "box_PhoneCommunicationController_1.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PhoneCommunicationController_4_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_6
  l0.ItemDB = "Items.9223372066541981997"
  l0 = self.box_PhoneCommunicationController_4
  l1 = self.box_RewardController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Activation|2109582883", "2109582883", "IOP20_Activation", "box_PhoneCommunicationController_4.OnCommunicationStarted", "box_RewardController_v3_6.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Reward_Phone_Call_Monitor_3_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_2
  l0.ItemDB = "Items.9223372050495846413"
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l1 = self.box_RewardController_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Activation|699237479", "699237479", "IOP20_Activation", "box_Reward_Phone_Call_Monitor_3.Enabled", "box_RewardController_v3_2.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Reward_Phone_Call_Monitor_3_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_4
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495847717"
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l1 = self.box_PhoneCommunicationController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP20.domino|@IOP20_Activation|489684248", "489684248", "IOP20_Activation", "box_Reward_Phone_Call_Monitor_3.OnPhoneCallEnded", "box_PhoneCommunicationController_4.StartCommunication", l0, l1)
  l1:StartCommunication()
end
_compilerVersion = 4
