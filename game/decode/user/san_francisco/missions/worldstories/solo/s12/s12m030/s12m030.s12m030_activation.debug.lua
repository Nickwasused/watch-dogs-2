export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S12M030_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Activation"
  self.box_Progression_Tag_Monitor_3 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_3
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Activation|151463506"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_3_Has
  l0.HasNOT = DummyFunction
  self.box_RewardController_v3_1 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_1
  l0._graph = self
  l0._name = "box_RewardController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Activation|1671658627"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Progression_Tag_Monitor_4 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_4
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Activation|2117335724"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_4_HasNOT
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
  l0 = self.box_Progression_Tag_Monitor_3
  l0.ProgressionTag = "ProgressionTag.9223372055970893578"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Activation|656163904", "656163904", "S12M030_Activation", "In", "box_Progression_Tag_Monitor_3.HasProgressionTag", self, l0)
  l0:HasProgressionTag()
end
function export:f_box_Progression_Tag_Monitor_3_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_4
  l0.ProgressionTag = "ProgressionTag.9223372055970893581"
  l0 = self.box_Progression_Tag_Monitor_3
  l1 = self.box_Progression_Tag_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Activation|1425704141", "1425704141", "S12M030_Activation", "box_Progression_Tag_Monitor_3.Has", "box_Progression_Tag_Monitor_4.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Progression_Tag_Monitor_4_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_1
  l0.ItemDB = "Items.9223372055970893582"
  l0 = self.box_Progression_Tag_Monitor_4
  l1 = self.box_RewardController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M030\\S12M030.domino|@S12M030_Activation|1543075243", "1543075243", "S12M030_Activation", "box_Progression_Tag_Monitor_4.HasNOT", "box_RewardController_v3_1.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
_compilerVersion = 4
