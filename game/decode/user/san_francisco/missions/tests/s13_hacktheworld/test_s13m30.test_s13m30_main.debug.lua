export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Test_S13M30_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main"
  self.PlayerEntity = nil
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|282740450"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_MapPointController_v3_10 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_10
  l0._graph = self
  l0._name = "box_MapPointController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|365185632"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_10_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_9 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_9
  l0._graph = self
  l0._name = "box_MissionMessageController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|559762085"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_9_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_Security_Camera_Monitor_7 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_7
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|892353799"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_7_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_MapPointController_v3_8 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_8
  l0._graph = self
  l0._name = "box_MapPointController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|1590974518"
  l0.Shown = self.f_box_MapPointController_v3_8_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|1731405948"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_Hackable_Monitor_5 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_5
  l0._graph = self
  l0._name = "box_Hackable_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|2132663475"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_5_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
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
  l0.LayerName = "Test_S13M30_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|1104553538", "1104553538", "Test_S13M30_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_SecurityCamController_6_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_7
  l0.CameraEntity = "9223372046621344054"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|2025310300", "2025310300", "Test_S13M30_Main", "box_SecurityCamController_6.EnterForced", "box_Security_Camera_Monitor_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Test_S13M30_Main Starting", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Get Player ID')-- Comment: Test_S13M30_Main Starting")
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|2112983455", "2112983455", "Test_S13M30_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_8
  l0.MapPoint = "9223372046696953303"
  l0 = self.box_MultipleOR_4
  l1 = self.box_MapPointController_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|1558306601", "1558306601", "Test_S13M30_Main", "box_MultipleOR_4.Out", "box_MapPointController_v3_8.Show", l0, l1)
  l1:Show()
end
function export:f_box_MapPointController_v3_10_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372046621344054"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|132425469"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_6_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_MapPointController_v3_10
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|1247958702", "1247958702", "Test_S13M30_Main", "box_MapPointController_v3_10.Hidden", "box_SecurityCamController_6.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:f_box_MissionMessageController_9_MessageRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MissionMessageController_9
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|769363795", "769363795", "Test_S13M30_Main", "box_MissionMessageController_9.MessageRequested", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(0)
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|1637037480"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|1292610120", "1292610120", "Test_S13M30_Main", "box_Get_Player_ID_1.Out", "box_Ordered_Output_11.In", clone, l0)
  l0:In()
end
function export:f_box_Security_Camera_Monitor_7_OnStartExitCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_Security_Camera_Monitor_7
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|1675052114", "1675052114", "Test_S13M30_Main", "box_Security_Camera_Monitor_7.OnStartExitCamera", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MapPointController_v3_8_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_5
  l0.HackableEntity = "9223372046621344047"
  l0.AutoDisable = 1
  l0 = self.box_MapPointController_v3_8
  l1 = self.box_Hackable_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|1020721209", "1020721209", "Test_S13M30_Main", "box_MapPointController_v3_8.Shown", "box_Hackable_Monitor_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|1659404222", "1659404222", "Test_S13M30_Main", "box_Ordered_Output_11.Out", "box_CinematicPrep_3.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_9
  l0.MissionName = "MissionList.9223372046566117088"
  l0.DebugObjective = "Hack Teh World"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|579856513", "579856513", "Test_S13M30_Main", "box_Ordered_Output_11.Out", "box_MissionMessageController_9.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Hackable_Monitor_5_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_10
  l0.MapPoint = "9223372046696953303"
  l0 = self.box_Hackable_Monitor_5
  l1 = self.box_MapPointController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M30.domino|@Test_S13M30_Main|1948635553", "1948635553", "Test_S13M30_Main", "box_Hackable_Monitor_5.HackSuccess", "box_MapPointController_v3_10.Hide", l0, l1)
  l1:Hide()
end
function export:OnEnter_box_MultipleOR_4()
end
_compilerVersion = 4
