export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L25M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L25\\L25M020\\L25M020.domino|@L25M020_Main"
  self.PlayerEntity = nil
  self.Laptop_L25M020 = "9223372050409555935"
  self.NotActivatedByDefault_1 = "9223372050409555943"
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L25\\L25M020\\L25M020.domino|@L25M020_Main|40526169"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_3_MessageCompleted
  self.box_Hackable_Monitor_4 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_4
  l0._graph = self
  l0._name = "box_Hackable_Monitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L25\\L25M020\\L25M020.domino|@L25M020_Main|1037696690"
  l0.Enabled = self.f_box_Hackable_Monitor_4_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_4_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_4_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionController_v4_2 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L25\\L25M020\\L25M020.domino|@L25M020_Main|1096705357"
  self.box_MapPointController_v3_5 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_5
  l0._graph = self
  l0._name = "box_MapPointController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L25\\L25M020\\L25M020.domino|@L25M020_Main|2005494801"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_5_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
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
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L25\\L25M020\\L25M020.domino|@L25M020_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L25\\L25M020\\L25M020.domino|@L25M020_Main|1012672414", "1012672414", "L25M020_Main", "In", "box_Get_Player_ID_1.In", self, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_3_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_4()
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_Hackable_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L25\\L25M020\\L25M020.domino|@L25M020_Main|829141338", "829141338", "L25M020_Main", "box_MissionMessageController_v3_3.MessageCompleted", "box_Hackable_Monitor_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "",
    item = "",
    id = "550064"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L25\\L25M020\\L25M020.domino|@L25M020_Main|959161901", "959161901", "L25M020_Main", "box_Get_Player_ID_1.Out", "box_MissionMessageController_v3_3.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Hackable_Monitor_4_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_5()
  l0 = self.box_Hackable_Monitor_4
  l1 = self.box_MapPointController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L25\\L25M020\\L25M020.domino|@L25M020_Main|1327088628", "1327088628", "L25M020_Main", "box_Hackable_Monitor_4.Disabled", "box_MapPointController_v3_5.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Hackable_Monitor_4_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_5()
  l0 = self.box_Hackable_Monitor_4
  l1 = self.box_MapPointController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L25\\L25M020\\L25M020.domino|@L25M020_Main|296530373", "296530373", "L25M020_Main", "box_Hackable_Monitor_4.Enabled", "box_MapPointController_v3_5.Show", l0, l1)
  l1:Show()
end
function export:f_box_Hackable_Monitor_4_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_4()
  l0 = self.box_Hackable_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L25\\L25M020\\L25M020.domino|@L25M020_Main|1788790263", "1788790263", "L25M020_Main", "box_Hackable_Monitor_4.HackSuccess", "box_Hackable_Monitor_4.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MapPointController_v3_5_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_5
  l1 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L25\\L25M020\\L25M020.domino|@L25M020_Main|626411777", "626411777", "L25M020_Main", "box_MapPointController_v3_5.Hidden", "box_MissionController_v4_2.Succeed", l0, l1)
  l1:Succeed()
end
function export:OnEnter_box_Hackable_Monitor_4()
  local l0
  l0 = self.box_Hackable_Monitor_4
  l0.HackableEntity = self.Laptop_L25M020
end
function export:OnEnter_box_MapPointController_v3_5()
  local l0
  l0 = self.box_MapPointController_v3_5
  l0.MapPoint = self.NotActivatedByDefault_1
end
_compilerVersion = 4
