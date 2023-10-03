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
  self._name = "IOP08_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation"
  self.box_RewardController_v3_5 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_5
  l0._graph = self
  l0._name = "box_RewardController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation|591542527"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Reward_Phone_Call_Monitor_3 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation|736033574"
  l0.Enabled = self.f_box_Reward_Phone_Call_Monitor_3_Enabled
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_3_OnPhoneCallEnded
  self.box_Progression_Tag_Monitor_4 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_4
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation|757301559"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_4_HasNOT
  self.box_PhoneCommunicationController_6 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_6
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation|1158753189"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_6_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_RewardController_v3_1 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_1
  l0._graph = self
  l0._name = "box_RewardController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation|1779454436"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_PhoneCommunicationController_2 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_2
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation|1966801498"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_2_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_2_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
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
  l0 = self.box_Progression_Tag_Monitor_4
  l0.ProgressionTag = "ProgressionTag.9223372066541981999"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation|619624790", "619624790", "IOP08_Activation", "In", "box_Progression_Tag_Monitor_4.HasProgressionTag", self, l0)
  l0:HasProgressionTag()
end
function export:f_box_Reward_Phone_Call_Monitor_3_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_1
  l0.ItemDB = "Items.9223372059111819664"
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l1 = self.box_RewardController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation|1869200070", "1869200070", "IOP08_Activation", "box_Reward_Phone_Call_Monitor_3.Enabled", "box_RewardController_v3_1.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Reward_Phone_Call_Monitor_3_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_2
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495847719"
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l1 = self.box_PhoneCommunicationController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation|705374195", "705374195", "IOP08_Activation", "box_Reward_Phone_Call_Monitor_3.OnPhoneCallEnded", "box_PhoneCommunicationController_2.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Progression_Tag_Monitor_4_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_6
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357371051"
  l0 = self.box_Progression_Tag_Monitor_4
  l1 = self.box_PhoneCommunicationController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation|885103696", "885103696", "IOP08_Activation", "box_Progression_Tag_Monitor_4.HasNOT", "box_PhoneCommunicationController_6.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PhoneCommunicationController_6_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_3()
  l0 = self.box_PhoneCommunicationController_6
  l1 = self.box_Reward_Phone_Call_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation|311247373", "311247373", "IOP08_Activation", "box_PhoneCommunicationController_6.OnCommunicationFinished", "box_Reward_Phone_Call_Monitor_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PhoneCommunicationController_2_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_5
  l0.ItemDB = "Items.9223372066541982002"
  l0 = self.box_PhoneCommunicationController_2
  l1 = self.box_RewardController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation|1877834316", "1877834316", "IOP08_Activation", "box_PhoneCommunicationController_2.OnCommunicationStarted", "box_RewardController_v3_5.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_PhoneCommunicationController_2_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_3()
  l0 = self.box_PhoneCommunicationController_2
  l1 = self.box_Reward_Phone_Call_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Activation|344406696", "344406696", "IOP08_Activation", "box_PhoneCommunicationController_2.StartCommunicationOut", "box_Reward_Phone_Call_Monitor_3.Disable", l0, l1)
  l1:Disable()
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_3()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l0.ItemDb = "Items.9223372059111819664"
end
_compilerVersion = 4
