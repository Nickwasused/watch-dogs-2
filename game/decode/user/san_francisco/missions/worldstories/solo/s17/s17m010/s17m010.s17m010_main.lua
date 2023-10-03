export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/FreeFormTextController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MenuPageController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_cin_motherloadintro.S17M010_CIN_MotherloadIntro_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_marcus.S17M010_Marcus_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/S17M010_PostCinCredits.S17M010_PostCinCredits_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_sitara.S17M010_Sitara_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_wrench.S17M010_Wrench_Main.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Obj_01 = 0
  self.Obj_02 = 0
  self.Tbone = nil
  self.BuddyTBone = nil
  self.BuddyTBone2nd = nil
  self.BlockedTruck = nil
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_3_Unloaded
  l0.Reseted = DummyFunction
  self[163] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_marcus.S17M010_Marcus_Main.lua")
  l0 = self[163]
  l0._graph = self
  l0.MarcusDone = self.f_163_MarcusDone
  l0.Out = DummyFunction
  self[162] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_wrench.S17M010_Wrench_Main.lua")
  l0 = self[162]
  l0._graph = self
  l0.WrenchDone = self.f_162_WrenchDone
  l0.Out = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
  self[10] = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self[10]
  l0._graph = self
  l0.OnFreeFormTextRequested = self.f_10_OnFreeFormTextRequested
  l0.OnFreeFormTextHidden = DummyFunction
  self[17] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_17_Out
  self[16] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = self.f_4_Completed
  l0.NotCompleted = self.f_4_NotCompleted
  l0.OnMissionSucceeded = DummyFunction
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[5] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_sitara.S17M010_Sitara_Main.lua")
  l0 = self[5]
  l0._graph = self
  l0.SitaraDone = self.f_5_SitaraDone
  l0.Out = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MenuPageController.lua")
  l0 = self[9]
  l0._graph = self
  l0.MenuPageOpened = self.f_9_MenuPageOpened
  l0.OnMenuClosed = self.f_9_OnMenuClosed
  self[11] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[11]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_11_PostOut
  self[156] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_cin_motherloadintro.S17M010_CIN_MotherloadIntro_Main.lua")
  l0 = self[156]
  l0._graph = self
  l0.EndCine = self.f_156_EndCine
  self[13] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/S17M010_PostCinCredits.S17M010_PostCinCredits_Main.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = self.f_13_Out
  self[12] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[12]
  l0._graph = self
  self[8] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_8_Out
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
  l0 = self[5]
  l0:FromCheckPoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self[8]
  l0:Input(1)
end
function export:CheckPoint_2()
  local l0
  l0 = self[162]
  l0:FromCheckPoint()
end
function export:CheckPoint_3()
  local l0
  l0 = self[163]
  l0:FromCheckPoint3()
end
function export:CheckPoint_4()
  local l0
  l0 = self[163]
  l0:FromCheckPoint4()
end
function export:CheckPoint_5()
  local l0
  l0 = self[163]
  l0:FromCheckPoint5()
end
function export:CheckPoint_6()
  local l0
  l0 = self[163]
  l0:FromCheckPoint6()
end
function export:CheckPoint_7()
  local l0
  l0 = self[163]
  l0:FromCheckPoint7()
end
function export:CheckPoint_Replay()
  local l0
  l0 = self[15]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[15]
  l0:Input(0)
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_3_Unloaded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Succeed()
end
function export:f_163_MarcusDone()
  local l0
  self = self._graph
  l0 = self[6]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_162_WrenchDone()
  local l0
  self = self._graph
  l0 = self[163]
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(0)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[16]
  l0.Checkpoint = "CheckPoint_Replay"
  l0:In()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S17M010_Main"
  l0:Load()
end
function export:f_10_OnFreeFormTextRequested()
  local l0
  self = self._graph
  l0 = self[3]
  l0.LayerName = "S17M010_Main"
  l0:Unload()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[156]
  l0:In()
end
function export:f_4_Completed()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(0)
end
function export:f_4_NotCompleted()
  local l0
  self = self._graph
  l0 = self[9]
  l0.MenuPage = "UIMenuPageDB.9223372060311066343"
  l0:Open()
end
function export:f_5_SitaraDone()
  local l0
  self = self._graph
  l0 = self[162]
  l0:In()
end
function export:f_9_MenuPageOpened()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_9_OnMenuClosed()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(1)
end
function export:f_11_PostOut()
  local l0
  self = self._graph
  l0 = self[10]
  l0.FreeFormText = "FreeFormTextDB.9223372071749180887"
  l0:Open()
end
function export:f_156_EndCine()
  local l0
  self = self._graph
  l0 = self[5]
  l0:In()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Mission = "MissionList.9223372045954192530"
  l0:CheckCompletion()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.SkipCameraAlign = 0
  l0.SkipPostFX = 1
  l0:In()
end
_compilerVersion = 4
