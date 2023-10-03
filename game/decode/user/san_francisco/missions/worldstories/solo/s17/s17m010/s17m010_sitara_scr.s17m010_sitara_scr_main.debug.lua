export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S17M010_Sitara_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_CLOController_62 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_62
  l0._graph = self
  l0._name = "box_CLOController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|43939777"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_16 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_16
  l0._graph = self
  l0._name = "box_Timer_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|973716580"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_13 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_13
  l0._graph = self
  l0._name = "box_OnceOnly_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|983126945"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_13_Out
  l0.ResetOut = DummyFunction
  self.box_Teleport_To_SpawnPoint_12 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_12
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|1166372370"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_12_TeleportDone
  self.box_PlaySequence_v5_9 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_9
  l0._graph = self
  l0._name = "box_PlaySequence_v5_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|1374130376"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_9_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_9_Finished
  self.box_CinematicPrep_17 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_17
  l0._graph = self
  l0._name = "box_CinematicPrep_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|1394045228"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_17_PostOut
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
  l0 = self.box_PlaySequence_v5_9
  l0.SceneEntity = "9223372049468819246"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_M010_SCR_SitaraIntro/s17_m010_scr_sitaraintro.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|2048585300", "2048585300", "S17M010_Sitara_SCR_Main", "In", "box_PlaySequence_v5_9.Start", self, l0)
  l0:Start()
end
function export:Play_Overheard_Convo()
  local l0
  l0 = self.box_CLOController_62
  l0.CLO = "9223372059638308304"
  l0.User = self.Catskills
  l0.RestrictedToUser = self.Catskills
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|1824811414", "1824811414", "S17M010_Sitara_SCR_Main", "Play_Overheard_Convo", "box_CLOController_62.TriggerBhv", self, l0)
  l0:TriggerBhv()
end
function export:f_box_Timer_v2_16_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_12
  l0.SpawnPoint = "9223372046882196939"
  l0 = self.box_Timer_v2_16
  l1 = self.box_Teleport_To_SpawnPoint_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|270923223", "270923223", "S17M010_Sitara_SCR_Main", "box_Timer_v2_16.TimeElapsed", "box_Teleport_To_SpawnPoint_12.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_13
  l1 = self.box_Timer_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|1496061853", "1496061853", "S17M010_Sitara_SCR_Main", "box_OnceOnly_v3_13.Out", "box_Timer_v2_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_Teleport_To_SpawnPoint_12_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_17
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Teleport_To_SpawnPoint_12
  l1 = self.box_CinematicPrep_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|3459358", "3459358", "S17M010_Sitara_SCR_Main", "box_Teleport_To_SpawnPoint_12.TeleportDone", "box_CinematicPrep_17.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySequence_v5_9_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_13()
  l0 = self.box_PlaySequence_v5_9
  l1 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|1401224729", "1401224729", "S17M010_Sitara_SCR_Main", "box_PlaySequence_v5_9.Finished", "box_OnceOnly_v3_13.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_9_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_13()
  l0 = self.box_PlaySequence_v5_9
  l1 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|18111207", "18111207", "S17M010_Sitara_SCR_Main", "box_PlaySequence_v5_9.Skipped", "box_OnceOnly_v3_13.In", l0, l1)
  l1:In(0)
end
function export:f_box_CinematicPrep_17_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_sitara_scr.domino|@S17M010_Sitara_SCR_Main|830126480", "830126480", "S17M010_Sitara_SCR_Main", "box_CinematicPrep_17.PostOut", "Out", l0, self)
  self:Out()
end
function export:OnEnter_box_OnceOnly_v3_13()
end
function export:Out()
end
_compilerVersion = 4
