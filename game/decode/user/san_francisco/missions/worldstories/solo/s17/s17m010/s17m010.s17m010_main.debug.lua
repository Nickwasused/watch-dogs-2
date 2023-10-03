export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/FreeFormTextController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MenuPageController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_cin_motherloadintro.S17M010_CIN_MotherloadIntro_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_marcus.S17M010_Marcus_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/S17M010_PostCinCredits.S17M010_PostCinCredits_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_sitara.S17M010_Sitara_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_wrench.S17M010_Wrench_Main.debug.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S17M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main"
  self.PlayerEntity = nil
  self.Obj_01 = 0
  self.Obj_02 = 0
  self.Tbone = nil
  self.BuddyTBone = nil
  self.BuddyTBone2nd = nil
  self.BlockedTruck = nil
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_3 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_3
  l0._graph = self
  l0._name = "box_MissionLayer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|439202578"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_3_Unloaded
  l0.Reseted = DummyFunction
  self.box_S17M010_Marcus_Main_163 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_marcus.S17M010_Marcus_Main.debug.lua")
  l0 = self.box_S17M010_Marcus_Main_163
  l0._graph = self
  l0._name = "box_S17M010_Marcus_Main_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|475367626"
  l0.MarcusDone = self.f_box_S17M010_Marcus_Main_163_MarcusDone
  l0.Out = DummyFunction
  self.box_S17M010_Wrench_Main_162 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_wrench.S17M010_Wrench_Main.debug.lua")
  l0 = self.box_S17M010_Wrench_Main_162
  l0._graph = self
  l0._name = "box_S17M010_Wrench_Main_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|504789611"
  l0.WrenchDone = self.f_box_S17M010_Wrench_Main_162_WrenchDone
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_6 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_6
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|535154366"
  l0.Out = self.f_box_MissionCheckpointReach_6_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_15 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|962552104"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_FreeFormTextController_10 = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self.box_FreeFormTextController_10
  l0._graph = self
  l0._name = "box_FreeFormTextController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1342228979"
  l0.OnFreeFormTextRequested = self.f_box_FreeFormTextController_10_OnFreeFormTextRequested
  l0.OnFreeFormTextHidden = DummyFunction
  self.box_MultipleOR_17 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1359185180"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_MissionCheckpointReach_16 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_16
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1379249355"
  l0.Out = self.f_box_MissionCheckpointReach_16_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMonitor_4 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_4
  l0._graph = self
  l0._name = "box_MissionMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1444388382"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = self.f_box_MissionMonitor_4_Completed
  l0.NotCompleted = self.f_box_MissionMonitor_4_NotCompleted
  l0.OnMissionSucceeded = DummyFunction
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_S17M010_Sitara_Main_5 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_sitara.S17M010_Sitara_Main.debug.lua")
  l0 = self.box_S17M010_Sitara_Main_5
  l0._graph = self
  l0._name = "box_S17M010_Sitara_Main_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1551048877"
  l0.SitaraDone = self.f_box_S17M010_Sitara_Main_5_SitaraDone
  l0.Out = DummyFunction
  self.box_MenuPageController_9 = cbox:CreateBox("domino/System/MenuPageController.lua")
  l0 = self.box_MenuPageController_9
  l0._graph = self
  l0._name = "box_MenuPageController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1606738857"
  l0.MenuPageOpened = self.f_box_MenuPageController_9_MenuPageOpened
  l0.OnMenuClosed = self.f_box_MenuPageController_9_OnMenuClosed
  self.box_CinematicPrep_11 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_11
  l0._graph = self
  l0._name = "box_CinematicPrep_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1695995070"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_11_PostOut
  self.box_S17M010_CIN_MotherloadIntro_Main_156 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_cin_motherloadintro.S17M010_CIN_MotherloadIntro_Main.debug.lua")
  l0 = self.box_S17M010_CIN_MotherloadIntro_Main_156
  l0._graph = self
  l0._name = "box_S17M010_CIN_MotherloadIntro_Main_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1702069742"
  l0.EndCine = self.f_box_S17M010_CIN_MotherloadIntro_Main_156_EndCine
  self.box_S17M010_PostCinCredits_Main_13 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/S17M010_PostCinCredits.S17M010_PostCinCredits_Main.debug.lua")
  l0 = self.box_S17M010_PostCinCredits_Main_13
  l0._graph = self
  l0._name = "box_S17M010_PostCinCredits_Main_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1950249338"
  l0.Out = self.f_box_S17M010_PostCinCredits_Main_13_Out
  self.box_MissionController_v4_12 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_12
  l0._graph = self
  l0._name = "box_MissionController_v4_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|2052275592"
  self.box_MultipleOR_8 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|2125044964"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_8_Out
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
  self:OnEnter_box_S17M010_Sitara_Main_5()
  l0 = self.box_S17M010_Sitara_Main_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1518582683", "1518582683", "S17M010_Main", "CheckPoint_0", "box_S17M010_Sitara_Main_5.FromCheckPoint", self, l0)
  l0:FromCheckPoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|831296708", "831296708", "S17M010_Main", "CheckPoint_1", "box_MultipleOR_8.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_S17M010_Wrench_Main_162()
  l0 = self.box_S17M010_Wrench_Main_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|753512369", "753512369", "S17M010_Main", "CheckPoint_2", "box_S17M010_Wrench_Main_162.FromCheckPoint", self, l0)
  l0:FromCheckPoint()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_S17M010_Marcus_Main_163()
  l0 = self.box_S17M010_Marcus_Main_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|290271699", "290271699", "S17M010_Main", "CheckPoint_3", "box_S17M010_Marcus_Main_163.FromCheckPoint3", self, l0)
  l0:FromCheckPoint3()
end
function export:CheckPoint_4()
  local l0
  self:OnEnter_box_S17M010_Marcus_Main_163()
  l0 = self.box_S17M010_Marcus_Main_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1870747969", "1870747969", "S17M010_Main", "CheckPoint_4", "box_S17M010_Marcus_Main_163.FromCheckPoint4", self, l0)
  l0:FromCheckPoint4()
end
function export:CheckPoint_5()
  local l0
  self:OnEnter_box_S17M010_Marcus_Main_163()
  l0 = self.box_S17M010_Marcus_Main_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|957552061", "957552061", "S17M010_Main", "CheckPoint_5", "box_S17M010_Marcus_Main_163.FromCheckPoint5", self, l0)
  l0:FromCheckPoint5()
end
function export:CheckPoint_6()
  local l0
  self:OnEnter_box_S17M010_Marcus_Main_163()
  l0 = self.box_S17M010_Marcus_Main_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1475981160", "1475981160", "S17M010_Main", "CheckPoint_6", "box_S17M010_Marcus_Main_163.FromCheckPoint6", self, l0)
  l0:FromCheckPoint6()
end
function export:CheckPoint_7()
  local l0
  self:OnEnter_box_S17M010_Marcus_Main_163()
  l0 = self.box_S17M010_Marcus_Main_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1848416917", "1848416917", "S17M010_Main", "CheckPoint_7", "box_S17M010_Marcus_Main_163.FromCheckPoint7", self, l0)
  l0:FromCheckPoint7()
end
function export:CheckPoint_Replay()
  local l0
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|21761889", "21761889", "S17M010_Main", "CheckPoint_Replay", "box_MultipleOR_15.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|79070262", "79070262", "S17M010_Main", "In", "box_MultipleOR_15.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|852521377", "852521377", "S17M010_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_3_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_3
  l1 = self.box_MissionController_v4_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|371200744", "371200744", "S17M010_Main", "box_MissionLayer_v2_3.Unloaded", "box_MissionController_v4_12.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_S17M010_Marcus_Main_163_MarcusDone()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_6
  l0.CheckpointList = "CheckPoint_1"
  l0 = self.box_S17M010_Marcus_Main_163
  l1 = self.box_MissionCheckpointReach_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1577461143", "1577461143", "S17M010_Main", "box_S17M010_Marcus_Main_163.MarcusDone", "box_MissionCheckpointReach_6.In", l0, l1)
  l1:In()
end
function export:f_box_S17M010_Wrench_Main_162_WrenchDone()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S17M010_Marcus_Main_163()
  l0 = self.box_S17M010_Wrench_Main_162
  l1 = self.box_S17M010_Marcus_Main_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1752407216", "1752407216", "S17M010_Main", "box_S17M010_Wrench_Main_162.WrenchDone", "box_S17M010_Marcus_Main_163.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MissionCheckpointReach_6
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1677777569", "1677777569", "S17M010_Main", "box_MissionCheckpointReach_6.Out", "box_MultipleOR_8.Input", l0, l1)
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
  l0 = self.box_MissionCheckpointReach_16
  l0.Checkpoint = "CheckPoint_Replay"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|497070011", "497070011", "S17M010_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_16.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S17M010_Main"
  l0 = self.box_MultipleOR_15
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|737003102", "737003102", "S17M010_Main", "box_MultipleOR_15.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_FreeFormTextController_10_OnFreeFormTextRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_3
  l0.LayerName = "S17M010_Main"
  l0 = self.box_FreeFormTextController_10
  l1 = self.box_MissionLayer_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|912749044", "912749044", "S17M010_Main", "box_FreeFormTextController_10.OnFreeFormTextRequested", "box_MissionLayer_v2_3.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_11
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MultipleOR_17
  l1 = self.box_CinematicPrep_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1911613924", "1911613924", "S17M010_Main", "box_MultipleOR_17.Out", "box_CinematicPrep_11.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionCheckpointReach_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_16
  l1 = self.box_S17M010_CIN_MotherloadIntro_Main_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|641796167", "641796167", "S17M010_Main", "box_MissionCheckpointReach_16.Out", "box_S17M010_CIN_MotherloadIntro_Main_156.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMonitor_4_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MissionMonitor_4
  l1 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|202839374", "202839374", "S17M010_Main", "box_MissionMonitor_4.Completed", "box_MultipleOR_17.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMonitor_4_NotCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MenuPageController_9
  l0.MenuPage = "UIMenuPageDB.9223372060311066343"
  l0 = self.box_MissionMonitor_4
  l1 = self.box_MenuPageController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1356913417", "1356913417", "S17M010_Main", "box_MissionMonitor_4.NotCompleted", "box_MenuPageController_9.Open", l0, l1)
  l1:Open()
end
function export:f_box_S17M010_Sitara_Main_5_SitaraDone()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S17M010_Wrench_Main_162()
  l0 = self.box_S17M010_Sitara_Main_5
  l1 = self.box_S17M010_Wrench_Main_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|827202957", "827202957", "S17M010_Main", "box_S17M010_Sitara_Main_5.SitaraDone", "box_S17M010_Wrench_Main_162.In", l0, l1)
  l1:In()
end
function export:f_box_MenuPageController_9_MenuPageOpened()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|417144821"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0 = self.box_MenuPageController_9
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1543010389", "1543010389", "S17M010_Main", "box_MenuPageController_9.MenuPageOpened", "box_Show_Or_Hide_All_UI_14.Show", l0, l1)
  l1:Show()
end
function export:f_box_MenuPageController_9_OnMenuClosed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MenuPageController_9
  l1 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|664541009", "664541009", "S17M010_Main", "box_MenuPageController_9.OnMenuClosed", "box_MultipleOR_17.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CinematicPrep_11_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeFormTextController_10
  l0.FreeFormText = "FreeFormTextDB.9223372071749180887"
  l0 = self.box_CinematicPrep_11
  l1 = self.box_FreeFormTextController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|855858023", "855858023", "S17M010_Main", "box_CinematicPrep_11.PostOut", "box_FreeFormTextController_10.Open", l0, l1)
  l1:Open()
end
function export:f_box_S17M010_CIN_MotherloadIntro_Main_156_EndCine()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S17M010_Sitara_Main_5()
  l0 = self.box_S17M010_CIN_MotherloadIntro_Main_156
  l1 = self.box_S17M010_Sitara_Main_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|530398275", "530398275", "S17M010_Main", "box_S17M010_CIN_MotherloadIntro_Main_156.EndCine", "box_S17M010_Sitara_Main_5.In", l0, l1)
  l1:In()
end
function export:f_box_S17M010_PostCinCredits_Main_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMonitor_4
  l0.Mission = "MissionList.9223372045954192530"
  l0 = self.box_S17M010_PostCinCredits_Main_13
  l1 = self.box_MissionMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|1808583124", "1808583124", "S17M010_Main", "box_S17M010_PostCinCredits_Main_13.Out", "box_MissionMonitor_4.CheckCompletion", l0, l1)
  l1:CheckCompletion()
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S17M010_PostCinCredits_Main_13
  l0.SkipCameraAlign = 0
  l0.SkipPostFX = 1
  l0 = self.box_MultipleOR_8
  l1 = self.box_S17M010_PostCinCredits_Main_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\S17M010.domino|@S17M010_Main|390042062", "390042062", "S17M010_Main", "box_MultipleOR_8.Out", "box_S17M010_PostCinCredits_Main_13.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_S17M010_Marcus_Main_163()
end
function export:OnEnter_box_S17M010_Wrench_Main_162()
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_MultipleOR_17()
end
function export:OnEnter_box_S17M010_Sitara_Main_5()
end
function export:OnEnter_box_MultipleOR_8()
end
_compilerVersion = 4
