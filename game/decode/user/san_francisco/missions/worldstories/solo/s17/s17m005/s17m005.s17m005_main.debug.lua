export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S17M005_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\s17m005\\S17M005.domino|@S17M005_Main"
  self.PlayerEntity = nil
  self.Followers = 0
  self.box_MissionMessageController_v3_14 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_14
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\s17m005\\S17M005.domino|@S17M005_Main|576803037"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_14_MessageCompleted
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\s17m005\\S17M005.domino|@S17M005_Main|1007313291"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = DummyFunction
  self.box_Progression_Tag_Monitor_2 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_2
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\s17m005\\S17M005.domino|@S17M005_Main|1460363672"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_2_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_MissionController_v4_15 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_15
  l0._graph = self
  l0._name = "box_MissionController_v4_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\s17m005\\S17M005.domino|@S17M005_Main|1849013643"
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
  l0 = self.box_MissionMessageController_v3_1
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17A.S17M005.Objectives",
    item = "Objective",
    id = "698200"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\s17m005\\S17M005.domino|@S17M005_Main|1316631226", "1316631226", "S17M005_Main", "In", "box_MissionMessageController_v3_1.ShowNewObjective", self, l0)
  l0:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_14_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_14
  l1 = self.box_MissionController_v4_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\s17m005\\S17M005.domino|@S17M005_Main|1479494137", "1479494137", "S17M005_Main", "box_MissionMessageController_v3_14.MessageCompleted", "box_MissionController_v4_15.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_2
  l0.ProgressionTag = "ProgressionTag.9223372070888017001"
  l0 = self.box_MissionMessageController_v3_1
  l1 = self.box_Progression_Tag_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\s17m005\\S17M005.domino|@S17M005_Main|1202182588", "1202182588", "S17M005_Main", "box_MissionMessageController_v3_1.Out", "box_Progression_Tag_Monitor_2.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Progression_Tag_Monitor_2_TagIsOwned()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_2
  l1 = self.box_MissionMessageController_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\s17m005\\S17M005.domino|@S17M005_Main|927752707", "927752707", "S17M005_Main", "box_Progression_Tag_Monitor_2.TagIsOwned", "box_MissionMessageController_v3_14.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
_compilerVersion = 4
