export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/HackableController.lua")
  cbox:RegisterBox("Domino/System/HackableMonitor.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController.lua")
  cbox:RegisterBox("Domino/System/ProjectileMonitor.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "LD_SkillCheck_Cali_Main_Main"
  self._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main"
  self.PlayerEntity = nil
  self.Robot_01 = nil
  self.AI_01 = nil
  self.AI_02 = nil
  self.Car_01 = nil
  self.AI_03 = nil
  self.throw_IED = nil
  self.box_MissionMessageController_12 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_12
  l0._graph = self
  l0._name = "box_MissionMessageController_12"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|101582051"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = self.f_box_MissionMessageController_12_Out
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_3 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|104577133"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_3_OnUserInPlace
  self.box_Hackable_Monitor_14 = cbox:CreateBox("Domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_14
  l0._graph = self
  l0._name = "box_Hackable_Monitor_14"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|186203264"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_14_HackSuccess
  l0.HackFailed = DummyFunction
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MapPointController_v3_15 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_15
  l0._graph = self
  l0._name = "box_MapPointController_v3_15"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|247370629"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CLOController_8 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_8
  l0._graph = self
  l0._name = "box_CLOController_8"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|271712456"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_8_OnUserInPlace
  self.box_Hackable_Controller_6 = cbox:CreateBox("Domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_6
  l0._graph = self
  l0._name = "box_Hackable_Controller_6"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|791691781"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Controller_6_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MapPointController_v3_13 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_13
  l0._graph = self
  l0._name = "box_MapPointController_v3_13"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|1290589144"
  l0.Shown = self.f_box_MapPointController_v3_13_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CLOController_4 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|1342102130"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_4_OnUserInPlace
  self.box_ProjectileThrowingMonitor_16 = cbox:CreateBox("Domino/System/ProjectileMonitor.lua")
  l0 = self.box_ProjectileThrowingMonitor_16
  l0._graph = self
  l0._name = "box_ProjectileThrowingMonitor_16"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|1579461524"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnProjectileLanded = self.f_box_ProjectileThrowingMonitor_16_OnProjectileLanded
  l0.OnMonitoredItemThrown = self.f_box_ProjectileThrowingMonitor_16_OnMonitoredItemThrown
  self.box_CLOController_11 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_11
  l0._graph = self
  l0._name = "box_CLOController_11"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|1747680115"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_11_OnUserInPlace
  self.box_CLOController_5 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_5
  l0._graph = self
  l0._name = "box_CLOController_5"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|1748148864"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_5_OnUserInPlace
  self.box_SnapAndBind_9 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_9
  l0._graph = self
  l0._name = "box_SnapAndBind_9"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|2027786235"
  l0.Attached = self.f_box_SnapAndBind_9_Attached
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
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "LD_SkillCheck_Cali"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|1104553538", "1104553538", "LD_SkillCheck_Cali_Main_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionMessageController_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_13
  l0.MapPoint = "9223372044276237815"
  l0.Text = "Sabotage"
  l0 = self.box_MissionMessageController_12
  l1 = self.box_MapPointController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|2086306045", "2086306045", "LD_SkillCheck_Cali_Main_Main", "box_MissionMessageController_12.Out", "box_MapPointController_v3_13.Show", l0, l1)
  l1:Show()
end
function export:f_box_CLOController_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  self.Robot_01 = l0.UserID
  l0 = self.box_CLOController_8
  l0.CLO = "792910862684103948"
  l0 = self.box_CLOController_3
  l1 = self.box_CLOController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|1176700848", "1176700848", "LD_SkillCheck_Cali_Main_Main", "box_CLOController_3.OnUserInPlace", "box_CLOController_8.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Hackable_Monitor_14_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_15
  l0.MapPoint = "9223372044276237815"
  l0 = self.box_Hackable_Monitor_14
  l1 = self.box_MapPointController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|33584386", "33584386", "LD_SkillCheck_Cali_Main_Main", "box_Hackable_Monitor_14.HackSuccess", "box_MapPointController_v3_15.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|794668992", "794668992", "LD_SkillCheck_Cali_Main_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_8_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_8
  self.Car_01 = l0.UserID
  l0 = self.box_CLOController_4
  l0.CLO = "1724720563032129729"
  l0 = self.box_CLOController_8
  l1 = self.box_CLOController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|1398369014", "1398369014", "LD_SkillCheck_Cali_Main_Main", "box_CLOController_8.OnUserInPlace", "box_CLOController_4.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Hackable_Controller_6_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  l0.CLO = "3137785734627662345"
  l0 = self.box_Hackable_Controller_6
  l1 = self.box_CLOController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|361991990", "361991990", "LD_SkillCheck_Cali_Main_Main", "box_Hackable_Controller_6.Disabled", "box_CLOController_3.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_12
  l0.MissionName = "MissionList.9223372044276145284"
  l0.DebugObjective = "Sabotage Viceroys Shipment"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|61809393", "61809393", "LD_SkillCheck_Cali_Main_Main", "box_Get_Player_ID_1.Out", "box_MissionMessageController_12.ShowNewObjectiveMessage", clone, l0)
  l0:ShowNewObjectiveMessage()
end
function export:f_box_MapPointController_v3_13_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Controller_6
  l0.HackableEntity = "9223372044276185510"
  l0 = self.box_MapPointController_v3_13
  l1 = self.box_Hackable_Controller_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|1535062514", "1535062514", "LD_SkillCheck_Cali_Main_Main", "box_MapPointController_v3_13.Shown", "box_Hackable_Controller_6.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_CLOController_4_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  self.AI_01 = l0.UserID
  l0 = self.box_CLOController_5
  l0.CLO = "7348515100561242631"
  l0 = self.box_CLOController_4
  l1 = self.box_CLOController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|1988374912", "1988374912", "LD_SkillCheck_Cali_Main_Main", "box_CLOController_4.OnUserInPlace", "box_CLOController_5.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ProjectileThrowingMonitor_16_OnMonitoredItemThrown()
  local l0, l1
  self = self._graph
  l0 = self.box_ProjectileThrowingMonitor_16
  self.throw_IED = l0.ThrownEntity
  l0 = self.box_SnapAndBind_9
  l0.Parent = self.Robot_01
  l0.Child = self.throw_IED
  l0.yPosOffset = -0.4
  l0.zPosOffset = 0.6
  l0.xRotOffset = 90
  l0 = self.box_ProjectileThrowingMonitor_16
  l1 = self.box_SnapAndBind_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|393426470", "393426470", "LD_SkillCheck_Cali_Main_Main", "box_ProjectileThrowingMonitor_16.OnMonitoredItemThrown", "box_SnapAndBind_9.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_ProjectileThrowingMonitor_16_OnProjectileLanded()
  local l0
  self = self._graph
  l0 = self.box_ProjectileThrowingMonitor_16
  self.throw_IED = l0.ThrownEntity
end
function export:f_box_CLOController_11_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_11
  self.AI_03 = l0.UserID
  l0 = self.box_ProjectileThrowingMonitor_16
  l0.ItemDB = "Items.3391476946"
  l0 = self.box_CLOController_11
  l1 = self.box_ProjectileThrowingMonitor_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|1733078281", "1733078281", "LD_SkillCheck_Cali_Main_Main", "box_CLOController_11.OnUserInPlace", "box_ProjectileThrowingMonitor_16.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_5_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_5
  self.AI_02 = l0.UserID
  l0 = self.box_CLOController_11
  l0.CLO = "5947206039874513711"
  l0 = self.box_CLOController_5
  l1 = self.box_CLOController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|914662207", "914662207", "LD_SkillCheck_Cali_Main_Main", "box_CLOController_5.OnUserInPlace", "box_CLOController_11.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SnapAndBind_9_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_14
  l0.HackableEntity = self.throw_IED
  l0.AutoDisable = 1
  l0.CheckHackableNow = 1
  l0 = self.box_SnapAndBind_9
  l1 = self.box_Hackable_Monitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|gyms\\skillcheck\\ld_skillcheck_cali_main.domino|@LD_SkillCheck_Cali_Main_Main|1268119915", "1268119915", "LD_SkillCheck_Cali_Main_Main", "box_SnapAndBind_9.Attached", "box_Hackable_Monitor_14.Enable", l0, l1)
  l1:Enable()
end
_compilerVersion = 4
