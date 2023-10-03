export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PlayerPhoneMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S10M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main"
  self.PlayerEntity = nil
  self.vehiclePlayer = nil
  self.Miranda = nil
  self.PlayerVehicle = nil
  self._9223372046876295800 = nil
  self.TalkStarted = 0
  self.MirandaEntity = nil
  self.box_MissionController_v4_4 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_4
  l0._graph = self
  l0._name = "box_MissionController_v4_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|13354156"
  self.box_MissionMessageController_v3_8 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_8
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|245821836"
  l0.Out = self.f_box_MissionMessageController_v3_8_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlayerPhoneMonitor_9 = cbox:CreateBox("domino/System/PlayerPhoneMonitor.lua")
  l0 = self.box_PlayerPhoneMonitor_9
  l0._graph = self
  l0._name = "box_PlayerPhoneMonitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|896933329"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PlayerPhoneMonitor_9_Disabled
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  l0.OnPhoneOpened = DummyFunction
  l0.OnPhoneClosed = DummyFunction
  l0.OnAppOpened = DummyFunction
  l0.OnAppClosed = DummyFunction
  l0.OnAppInstalled = self.f_box_PlayerPhoneMonitor_9_OnAppInstalled
  self.box_PlayerPhoneMonitor_7 = cbox:CreateBox("domino/System/PlayerPhoneMonitor.lua")
  l0 = self.box_PlayerPhoneMonitor_7
  l0._graph = self
  l0._name = "box_PlayerPhoneMonitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|978674625"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Has = self.f_box_PlayerPhoneMonitor_7_Has
  l0.HasNOT = self.f_box_PlayerPhoneMonitor_7_HasNOT
  l0.OnPhoneOpened = DummyFunction
  l0.OnPhoneClosed = DummyFunction
  l0.OnAppOpened = DummyFunction
  l0.OnAppClosed = DummyFunction
  l0.OnAppInstalled = DummyFunction
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|1207003166"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_FreeRoam_Beat_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_1
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|1499992901"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_1_NewBeatStarted
  self.box_MissionMonitor_6 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_6
  l0._graph = self
  l0._name = "box_MissionMonitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|1555528639"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionMonitor_6_Disabled
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_6_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_FreeRoam_Beat_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_3
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|1593159033"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_3_NewBeatStarted
  self.box_MissionMessageController_v3_11 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_11
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|2015842090"
  l0.Out = self.f_box_MissionMessageController_v3_11_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Beat_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_2
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|2039577724"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_2_NewBeatStarted
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|68682688", "68682688", "S10M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Beat_2()
  l0 = self.box_FreeRoam_Beat_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|1224968120", "1224968120", "S10M020_Main", "CheckPoint_1", "box_FreeRoam_Beat_2.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_FreeRoam_Beat_3()
  l0 = self.box_FreeRoam_Beat_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|64111240", "64111240", "S10M020_Main", "CheckPoint_2", "box_FreeRoam_Beat_3.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|1891576196", "1891576196", "S10M020_Main", "In", "box_FreeRoam_Beat_1.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MissionMessageController_v3_8_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlayerPhoneMonitor_9()
  l0 = self.box_MissionMessageController_v3_8
  l1 = self.box_PlayerPhoneMonitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|2001978652", "2001978652", "S10M020_Main", "box_MissionMessageController_v3_8.Out", "box_PlayerPhoneMonitor_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlayerPhoneMonitor_9_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_PlayerPhoneMonitor_9
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|1927359688", "1927359688", "S10M020_Main", "box_PlayerPhoneMonitor_9.Disabled", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlayerPhoneMonitor_9_OnAppInstalled()
  local l0
  self = self._graph
  self:OnEnter_box_PlayerPhoneMonitor_9()
  l0 = self.box_PlayerPhoneMonitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|853525568", "853525568", "S10M020_Main", "box_PlayerPhoneMonitor_9.OnAppInstalled", "box_PlayerPhoneMonitor_9.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PlayerPhoneMonitor_7_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_PlayerPhoneMonitor_7
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|529002647", "529002647", "S10M020_Main", "box_PlayerPhoneMonitor_7.Has", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayerPhoneMonitor_7_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_8
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective010A",
    item = "Notification",
    id = "355778"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_PlayerPhoneMonitor_7
  l1 = self.box_MissionMessageController_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|2092578801", "2092578801", "S10M020_Main", "box_PlayerPhoneMonitor_7.HasNOT", "box_MissionMessageController_v3_8.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_2()
  l0 = self.box_MultipleOR_10
  l1 = self.box_FreeRoam_Beat_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|1945996", "1945996", "S10M020_Main", "box_MultipleOR_10.Out", "box_FreeRoam_Beat_2.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:f_box_FreeRoam_Beat_1_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Beat_1
  self.PlayerEntity = l0.PlayerEntity
  l0 = self.box_PlayerPhoneMonitor_7
  l0.App = "UIAppCatalogDB.9223372046454257059"
  l0 = self.box_FreeRoam_Beat_1
  l1 = self.box_PlayerPhoneMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|1096600710", "1096600710", "S10M020_Main", "box_FreeRoam_Beat_1.NewBeatStarted", "box_PlayerPhoneMonitor_7.HasApp", l0, l1)
  l1:HasApp()
end
function export:f_box_MissionMonitor_6_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_3()
  l0 = self.box_MissionMonitor_6
  l1 = self.box_FreeRoam_Beat_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|1229664485", "1229664485", "S10M020_Main", "box_MissionMonitor_6.Disabled", "box_FreeRoam_Beat_3.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:f_box_MissionMonitor_6_OnMissionSucceeded()
  local l0
  self = self._graph
  self:OnEnter_box_MissionMonitor_6()
  l0 = self.box_MissionMonitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|739456205", "739456205", "S10M020_Main", "box_MissionMonitor_6.OnMissionSucceeded", "box_MissionMonitor_6.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_FreeRoam_Beat_3_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Beat_3
  self.PlayerEntity = l0.PlayerEntity
  l1 = self.box_MissionController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|587782029", "587782029", "S10M020_Main", "box_FreeRoam_Beat_3.NewBeatStarted", "box_MissionController_v4_4.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionMessageController_v3_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionMonitor_6()
  l0 = self.box_MissionMessageController_v3_11
  l1 = self.box_MissionMonitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|1994018577", "1994018577", "S10M020_Main", "box_MissionMessageController_v3_11.Out", "box_MissionMonitor_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_FreeRoam_Beat_2_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Beat_2
  self.PlayerEntity = l0.PlayerEntity
  l0 = self.box_MissionMessageController_v3_11
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective010B",
    item = "Notification",
    id = "359058"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_FreeRoam_Beat_2
  l1 = self.box_MissionMessageController_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M020\\S10M020.domino|@S10M020_Main|296590423", "296590423", "S10M020_Main", "box_FreeRoam_Beat_2.NewBeatStarted", "box_MissionMessageController_v3_11.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:OnEnter_box_PlayerPhoneMonitor_9()
  local l0
  l0 = self.box_PlayerPhoneMonitor_9
  l0.App = "UIAppCatalogDB.9223372046454257059"
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_FreeRoam_Beat_1()
  local l0
  l0 = self.box_FreeRoam_Beat_1
  l0.ProgressionLayer = "ProgressionLayers.9223372073068887396"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_MissionMonitor_6()
  local l0
  l0 = self.box_MissionMonitor_6
  l0.Mission = "MissionList.9223372048769206856"
end
function export:OnEnter_box_FreeRoam_Beat_3()
  local l0
  l0 = self.box_FreeRoam_Beat_3
  l0.ProgressionLayer = "ProgressionLayers.9223372073068887396"
  l0.Checkpoint = "CheckPoint_2"
end
function export:OnEnter_box_FreeRoam_Beat_2()
  local l0
  l0 = self.box_FreeRoam_Beat_2
  l0.ProgressionLayer = "ProgressionLayers.9223372073068887396"
  l0.Checkpoint = "CheckPoint_1"
end
_compilerVersion = 4
