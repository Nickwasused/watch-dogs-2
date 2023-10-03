export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/BreakableEntityController.lua")
  cbox:RegisterBox("domino/System/CameraContextController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/CameraSetDominoReference.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S03M040_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main"
  self.Out = DummyFunction
  self.SCR_StuntMountain = DummyFunction
  self.HighWayStunt_out = DummyFunction
  self.Stunts_FlyBy_Out = DummyFunction
  self.Ocean_Stunt_Out = DummyFunction
  self.Final_Stunt_Out = DummyFunction
  self.Out_Spawned = DummyFunction
  self.PlayerEntity = nil
  self.Invisible_Guide_Walls = {}
  self.Chopper_Stunt02 = nil
  self.CHIP = nil
  self.Highway_Stunt_Vehicle = {}
  self.HighwayStunt_FireTruck_01 = nil
  self.HighwayStunt_FireTruck_02 = nil
  self.HighwayStunt_CimentTruck_01 = nil
  self.HighwayStunt_Ambulance_01 = nil
  self.SCR_CHIP = nil
  self.HighwayStunt_Bus_01 = nil
  self.HighwayStunt_BoxVan_01 = nil
  self.Stunts_ViewCourse = {}
  self.Stunts_Ready = {}
  self.Stunts_Barge = {}
  self.Stunts_Scream = {}
  self.Stunts_02 = {}
  self._9223372066266188214 = nil
  self.Fake_Target = nil
  self.PoliceCar_F = nil
  self.box_CinematicPrep_255 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_255
  l0._graph = self
  l0._name = "box_CinematicPrep_255"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|74184662"
  l0.PreOut = self.f_box_CinematicPrep_255_PreOut
  l0.PostOut = DummyFunction
  self.box_TriggerMonitor_v2_127 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_127
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|85791467"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_127_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_138 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_138
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|101879143"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_138_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_OnceOnly_v3_257 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_257
  l0._graph = self
  l0._name = "box_OnceOnly_v3_257"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|123145354"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_257_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_119 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_119
  l0._graph = self
  l0._name = "box_Timer_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|145412702"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_119_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TriggerMonitor_v2_126 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_126
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|153212209"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_126_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlaySequence_v5_252 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_252
  l0._graph = self
  l0._name = "box_PlaySequence_v5_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|213999801"
  l0.Started = self.f_box_PlaySequence_v5_252_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_252_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_252_Finished
  self.box_Timer_v2_262 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_262
  l0._graph = self
  l0._name = "box_Timer_v2_262"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|263303198"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_262_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_48 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_48
  l0._graph = self
  l0._name = "box_CLOController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|279652633"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_48_OnUserInPlace
  self.box_PlaySequence_v5_137 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_137
  l0._graph = self
  l0._name = "box_PlaySequence_v5_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|557468594"
  l0._DynamicAnchors = {
    EntityIn = {"CHIP"},
    SPOut = {
      "BillBoardXplosion1",
      "BillBoardXplosion2",
      "DriftSmokeFX"
    }
  }
  l0.Started = self.f_box_PlaySequence_v5_137_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_137_Finished
  l0.SPOut.BillBoardXplosion1 = self.f_box_PlaySequence_v5_137_SPOut__BillBoardXplosion1_
  l0.SPOut.BillBoardXplosion2 = DummyFunction
  l0.SPOut.DriftSmokeFX = DummyFunction
  self.box_Timer_v2_125 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_125
  l0._graph = self
  l0._name = "box_Timer_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|571228423"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_125_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TriggerMonitor_v2_77 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_77
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|632927401"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_77_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CinematicPrep_258 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_258
  l0._graph = self
  l0._name = "box_CinematicPrep_258"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|635348971"
  l0.PreOut = self.f_box_CinematicPrep_258_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_10 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_10
  l0._graph = self
  l0._name = "box_Timer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|702882789"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_24 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_24
  l0._graph = self
  l0._name = "box_Timer_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|798983730"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_24_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_11 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_11
  l0._graph = self
  l0._name = "box_Timer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|835509025"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_251 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_251
  l0._graph = self
  l0._name = "box_PlaySequence_v5_251"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|858720013"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_251_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_251_Finished
  self.box_ListWriter_27 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_27
  l0._graph = self
  l0._name = "box_ListWriter_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|909737960"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_27_Added
  l0.Removed = self.f_box_ListWriter_27_Removed
  l0.Out = self.f_box_ListWriter_27_Out
  self.box_Timer_v2_25 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_25
  l0._graph = self
  l0._name = "box_Timer_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|976085955"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_25_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_33 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_33
  l0._graph = self
  l0._name = "box_CLOController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|977528539"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_33_OnUserInPlace
  self.box_Timer_v2_117 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_117
  l0._graph = self
  l0._name = "box_Timer_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1005339971"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_117_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_29 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_29
  l0._graph = self
  l0._name = "box_CLOController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1092103368"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_29_OnUserInPlace
  self.box_Timer_v2_16 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_16
  l0._graph = self
  l0._name = "box_Timer_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1149267392"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_15 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_15
  l0._graph = self
  l0._name = "box_CLOController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1198854133"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_15_OnUserInPlace
  self.box_CameraContextController_113 = cbox:CreateBox("domino/System/CameraContextController.lua")
  l0 = self.box_CameraContextController_113
  l0._graph = self
  l0._name = "box_CameraContextController_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1231158085"
  l0.ContextStarted = DummyFunction
  l0.ContextStopped = self.f_box_CameraContextController_113_ContextStopped
  l0.Out = DummyFunction
  self.box_CinematicPrep_260 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_260
  l0._graph = self
  l0._name = "box_CinematicPrep_260"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1263264050"
  l0.PreOut = self.f_box_CinematicPrep_260_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_36 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_36
  l0._graph = self
  l0._name = "box_Timer_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1372696882"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_36_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_121 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_121
  l0._graph = self
  l0._name = "box_Timer_v2_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1378442026"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_121_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_253 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_253
  l0._graph = self
  l0._name = "box_PlaySequence_v5_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1395572967"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_253_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_253_Finished
  self.box_Set_Domino_Camera_Reference_234 = cbox:CreateBox("domino/System/CameraSetDominoReference.lua")
  l0 = self.box_Set_Domino_Camera_Reference_234
  l0._graph = self
  l0._name = "box_Set_Domino_Camera_Reference_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1407701981"
  l0.Out = self.f_box_Set_Domino_Camera_Reference_234_Out
  self.box_CLOController_56 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_56
  l0._graph = self
  l0._name = "box_CLOController_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1423499910"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_56_OnUserInPlace
  self.box_Timer_v2_118 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_118
  l0._graph = self
  l0._name = "box_Timer_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1437638131"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_118_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_30 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_30
  l0._graph = self
  l0._name = "box_Timer_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1561670589"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_30_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_254 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_254
  l0._graph = self
  l0._name = "box_OnceOnly_v3_254"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1701439542"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_254_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_256 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_256
  l0._graph = self
  l0._name = "box_CinematicPrep_256"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1726361252"
  l0.PreOut = self.f_box_CinematicPrep_256_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_21 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_21
  l0._graph = self
  l0._name = "box_Timer_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1734852026"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_116 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_116
  l0._graph = self
  l0._name = "box_Timer_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1826150595"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_116_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_34 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_34
  l0._graph = self
  l0._name = "box_Timer_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1834613835"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_34_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_44 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_44
  l0._graph = self
  l0._name = "box_CLOController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1889950010"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_44_OnUserInPlace
  self.box_OnceOnly_v3_259 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_259
  l0._graph = self
  l0._name = "box_OnceOnly_v3_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1904155133"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_259_Out
  l0.ResetOut = DummyFunction
  self.box_TriggerMonitor_v2_265 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_265
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_265"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1908066795"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_265_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Timer_v2_236 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_236
  l0._graph = self
  l0._name = "box_Timer_v2_236"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1921749796"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_236_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CameraContextController_235 = cbox:CreateBox("domino/System/CameraContextController.lua")
  l0 = self.box_CameraContextController_235
  l0._graph = self
  l0._name = "box_CameraContextController_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2051969761"
  l0.ContextStarted = self.f_box_CameraContextController_235_ContextStarted
  l0.ContextStopped = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_261 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_261
  l0._graph = self
  l0._name = "box_CinematicPrep_261"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2125296113"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_261_PostOut
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Highway_Stunt()
  local l0
  l0 = self.box_PlaySequence_v5_137
  l0.SceneEntity = "9223372047484219120"
  l0.SequenceFile = "sequences/Gyms/GYM_AG_SE_Test/highway_stunt_01.seq"
  l0.EntityIn.CHIP = self.Chip
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1350876880", "1350876880", "S03M040_SCR_Main", "Highway_Stunt", "box_PlaySequence_v5_137.Start", self, l0)
  l0:Start()
end
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2029460624"
  l0.Out = self.f_box_Simple_Node_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2042584237", "2042584237", "S03M040_SCR_Main", "In", "box_Simple_Node_3.In", self, l0)
  l0:In()
end
function export:Ocean_Jump_FX()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1822415893"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_131_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_131_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_131_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1869965865", "1869965865", "S03M040_SCR_Main", "Ocean_Jump_FX", "box_Ordered_Output_131.In", self, l0)
  l0:In()
end
function export:SCR_StuntMountain_()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2035253172"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_110_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_110_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_110_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|498113490", "498113490", "S03M040_SCR_Main", "SCR_StuntMountain ", "box_Ordered_Output_110.In", self, l0)
  l0:In()
end
function export:Stunts_FlyBy()
  local l0
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1639841675"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_237_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1276727438", "1276727438", "S03M040_SCR_Main", "Stunts_FlyBy", "box_Show_Or_Hide_All_UI_237.Hide", self, l0)
  l0:Hide()
end
function export:f_box_ParticleFXController_v2_60_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198159"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|820661775"
  l0.Started = self.f_box_ParticleFXController_v2_59_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|889180093", "889180093", "S03M040_SCR_Main", "box_ParticleFXController_v2_60.Started", "box_ParticleFXController_v2_59.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_255_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_251
  l0.SceneEntity = "9223372049779569871"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_SmallRooftopStunt/s03_smallrooftop_beautyshot.seq"
  l0 = self.box_CinematicPrep_255
  l1 = self.box_PlaySequence_v5_251
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1160412128", "1160412128", "S03M040_SCR_Main", "box_CinematicPrep_255.PreOut", "box_PlaySequence_v5_251.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_127_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198127"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1673916407"
  l0.Started = self.f_box_ParticleFXController_v2_20_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_TriggerMonitor_v2_127
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1073020923", "1073020923", "S03M040_SCR_Main", "box_TriggerMonitor_v2_127.Enter", "box_ParticleFXController_v2_20.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_138_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372061394928423"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1877778443"
  l0.Started = self.f_box_ParticleFXController_v2_134_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_TriggerMonitor_v2_138
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|237397860", "237397860", "S03M040_SCR_Main", "box_TriggerMonitor_v2_138.Enter", "box_ParticleFXController_v2_134.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_52_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198151"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1549778347"
  l0.Started = self.f_box_ParticleFXController_v2_55_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1560822970", "1560822970", "S03M040_SCR_Main", "box_ParticleFXController_v2_52.Started", "box_ParticleFXController_v2_55.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_257_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_253
  l0.SceneEntity = "9223372047484219120"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_HighwayStunt/s03_highwaystunt_beautyshot.seq"
  l0 = self.box_OnceOnly_v3_257
  l1 = self.box_PlaySequence_v5_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|894730502", "894730502", "S03M040_SCR_Main", "box_OnceOnly_v3_257.Out", "box_PlaySequence_v5_253.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_119_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198188"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1222130497"
  l0.Started = self.f_box_ParticleFXController_v2_89_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_119
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1390622184", "1390622184", "S03M040_SCR_Main", "box_Timer_v2_119.TimeElapsed", "box_ParticleFXController_v2_89.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_126_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372063530846409"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1100618297"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_TriggerMonitor_v2_126
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|567158049", "567158049", "S03M040_SCR_Main", "box_TriggerMonitor_v2_126.Enter", "box_ParticleFXController_v2_122.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_252_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_257()
  l0 = self.box_PlaySequence_v5_252
  l1 = self.box_OnceOnly_v3_257
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|541509368", "541509368", "S03M040_SCR_Main", "box_PlaySequence_v5_252.Finished", "box_OnceOnly_v3_257.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_252_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_258
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_252
  l1 = self.box_CinematicPrep_258
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1617738405", "1617738405", "S03M040_SCR_Main", "box_PlaySequence_v5_252.Skipped", "box_CinematicPrep_258.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_PlaySequence_v5_252_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_48
  l0.CLO = "9223372047484264827"
  l0 = self.box_PlaySequence_v5_252
  l1 = self.box_CLOController_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1087219794", "1087219794", "S03M040_SCR_Main", "box_PlaySequence_v5_252.Started", "box_CLOController_48.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ParticleFXController_v2_83_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198182"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1276118306"
  l0.Started = self.f_box_ParticleFXController_v2_75_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|814940398", "814940398", "S03M040_SCR_Main", "box_ParticleFXController_v2_83.Started", "box_ParticleFXController_v2_75.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_26_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_30
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1481201246", "1481201246", "S03M040_SCR_Main", "box_ParticleFXController_v2_26.Started", "box_Timer_v2_30.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_262_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_261
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_262
  l1 = self.box_CinematicPrep_261
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|182520356", "182520356", "S03M040_SCR_Main", "box_Timer_v2_262.TimeElapsed", "box_CinematicPrep_261.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_ParticleFXController_v2_139_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372063530845960"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1536830535"
  l0.Started = self.f_box_ParticleFXController_v2_135_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|316057479", "316057479", "S03M040_SCR_Main", "box_ParticleFXController_v2_139.Started", "box_ParticleFXController_v2_135.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_48_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_48
  self.HighwayStunt_FireTruck_01 = l0.UserID
  l0 = self.box_CLOController_15
  l0.CLO = "9223372047484264854"
  l0 = self.box_CLOController_48
  l1 = self.box_CLOController_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|453651208", "453651208", "S03M040_SCR_Main", "box_CLOController_48.OnUserInPlace", "box_CLOController_15.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ParticleFXController_v2_6_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372068050635216"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|564915429"
  l0.Started = self.f_box_ParticleFXController_v2_1_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|247939950", "247939950", "S03M040_SCR_Main", "box_ParticleFXController_v2_6.Started", "box_ParticleFXController_v2_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_CollisionController_47_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HighwayStunt_Bus_01
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|504530811"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_13_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1476893653", "1476893653", "S03M040_SCR_Main", "box_CollisionController_47.CollisionsDisabled", "box_CollisionController_13.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_ParticleFXController_v2_71_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_116
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|53621405", "53621405", "S03M040_SCR_Main", "box_ParticleFXController_v2_71.Started", "box_Timer_v2_116.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_41_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266189605"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1107078195"
  l0.Started = self.f_box_ParticleFXController_v2_95_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1458707921", "1458707921", "S03M040_SCR_Main", "box_ParticleFXController_v2_41.Started", "box_ParticleFXController_v2_95.Start", clone, l0)
  l0:Start()
end
function export:f_box_CollisionController_49_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HighwayStunt_CimentTruck_01
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1118546487"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_14_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|108605874", "108605874", "S03M040_SCR_Main", "box_CollisionController_49.CollisionsDisabled", "box_CollisionController_14.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_ParticleFXController_v2_86_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198186"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2050611983"
  l0.Started = self.f_box_ParticleFXController_v2_85_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1413219003", "1413219003", "S03M040_SCR_Main", "box_ParticleFXController_v2_86.Started", "box_ParticleFXController_v2_85.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_37_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372065884669206"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1873749675"
  l0.Started = self.f_box_ParticleFXController_v2_32_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1319311495", "1319311495", "S03M040_SCR_Main", "box_ParticleFXController_v2_37.Started", "box_ParticleFXController_v2_32.Start", clone, l0)
  l0:Start()
end
function export:f_box_CollisionController_13_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HighwayStunt_BoxVan_01
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1390517728"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_43_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1093488668", "1093488668", "S03M040_SCR_Main", "box_CollisionController_13.CollisionsDisabled", "box_CollisionController_43.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_PlaySequence_v5_137_Finished()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_137
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|729237951", "729237951", "S03M040_SCR_Main", "box_PlaySequence_v5_137.Finished", "HighWayStunt_out", l0, self)
  self:HighWayStunt_out()
end
function export:f_box_PlaySequence_v5_137_SPOut__BillBoardXplosion1_()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/BreakableEntityController.lua")]
  l0.BreakableEntity = "15936529965070028150"
  l0._graph = self
  l0._name = "box_BreakableEntityController_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1820332462"
  l0.Broken = DummyFunction
  l0 = self.box_PlaySequence_v5_137
  l1 = Boxes[PathID("domino/System/BreakableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|223222001", "223222001", "S03M040_SCR_Main", "box_PlaySequence_v5_137.SPOut", "box_BreakableEntityController_114.Break", l0, l1)
  l1:Break()
end
function export:f_box_PlaySequence_v5_137_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Player
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1226118695"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PlaySequence_v5_137
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|527043228", "527043228", "S03M040_SCR_Main", "box_PlaySequence_v5_137.Started", "box_VisibilityController_v2_17.Show", l0, l1)
  l1:Show()
end
function export:f_box_ParticleFXController_v2_1_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372068251786248"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1425127374"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|541144518", "541144518", "S03M040_SCR_Main", "box_ParticleFXController_v2_1.Started", "box_ParticleFXController_v2_7.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_125_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198192"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1567413145"
  l0.Started = self.f_box_ParticleFXController_v2_91_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_125
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|381069465", "381069465", "S03M040_SCR_Main", "box_Timer_v2_125.TimeElapsed", "box_ParticleFXController_v2_91.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_77_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066752044291"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|919999733"
  l0.Started = self.f_box_ParticleFXController_v2_42_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_TriggerMonitor_v2_77
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1562213995", "1562213995", "S03M040_SCR_Main", "box_TriggerMonitor_v2_77.Enter", "box_ParticleFXController_v2_42.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_258_PreOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_257()
  l0 = self.box_CinematicPrep_258
  l1 = self.box_OnceOnly_v3_257
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|45943755", "45943755", "S03M040_SCR_Main", "box_CinematicPrep_258.PreOut", "box_OnceOnly_v3_257.In", l0, l1)
  l1:In(0)
end
function export:f_box_ParticleFXController_v2_97_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266190073"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|873077406"
  l0.Started = self.f_box_ParticleFXController_v2_98_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1600186774", "1600186774", "S03M040_SCR_Main", "box_ParticleFXController_v2_97.Started", "box_ParticleFXController_v2_98.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_10_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198165"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|969293920"
  l0.Started = self.f_box_ParticleFXController_v2_68_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_10
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1002470623", "1002470623", "S03M040_SCR_Main", "box_Timer_v2_10.TimeElapsed", "box_ParticleFXController_v2_68.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_12_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372047484219117"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1639039631"
  l0.Started = self.f_box_ParticleFXController_v2_8_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1246647686", "1246647686", "S03M040_SCR_Main", "box_ParticleFXController_v2_12.Started", "box_ParticleFXController_v2_8.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_74_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198178"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2136761432"
  l0.Started = self.f_box_ParticleFXController_v2_73_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|544693954", "544693954", "S03M040_SCR_Main", "box_ParticleFXController_v2_74.Started", "box_ParticleFXController_v2_73.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_23_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198135"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|234974105"
  l0.Started = self.f_box_ParticleFXController_v2_26_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1627120368", "1627120368", "S03M040_SCR_Main", "box_ParticleFXController_v2_23.Started", "box_ParticleFXController_v2_26.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_24_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198141"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1004339268"
  l0.Started = self.f_box_ParticleFXController_v2_35_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_24
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|919435559", "919435559", "S03M040_SCR_Main", "box_Timer_v2_24.TimeElapsed", "box_ParticleFXController_v2_35.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_133_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372063530845514"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|276247893"
  l0.Started = self.f_box_ParticleFXController_v2_139_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|159408309", "159408309", "S03M040_SCR_Main", "box_ParticleFXController_v2_133.Started", "box_ParticleFXController_v2_139.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_59_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_16
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|511347003", "511347003", "S03M040_SCR_Main", "box_ParticleFXController_v2_59.Started", "box_Timer_v2_16.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_11_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198157"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|31326917"
  l0.Started = self.f_box_ParticleFXController_v2_60_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_11
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|589080003", "589080003", "S03M040_SCR_Main", "box_Timer_v2_11.TimeElapsed", "box_ParticleFXController_v2_60.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_251_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_254()
  l0 = self.box_PlaySequence_v5_251
  l1 = self.box_OnceOnly_v3_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|261930568", "261930568", "S03M040_SCR_Main", "box_PlaySequence_v5_251.Finished", "box_OnceOnly_v3_254.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_251_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_256
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_251
  l1 = self.box_CinematicPrep_256
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|208377863", "208377863", "S03M040_SCR_Main", "box_PlaySequence_v5_251.Skipped", "box_CinematicPrep_256.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_ParticleFXController_v2_98_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266190077"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1767058691"
  l0.Started = self.f_box_ParticleFXController_v2_100_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1746979861", "1746979861", "S03M040_SCR_Main", "box_ParticleFXController_v2_98.Started", "box_ParticleFXController_v2_100.Start", clone, l0)
  l0:Start()
end
function export:f_box_ListWriter_27_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_27
  self.Highway_Stunt_Vehicle = l0.Target
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372047484219109"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1704555401"
  l0.Out = self.f_box_AI_Agent_Zone_50_Out
  l0 = self.box_ListWriter_27
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|628162561", "628162561", "S03M040_SCR_Main", "box_ListWriter_27.Added", "box_AI_Agent_Zone_50.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_ListWriter_27_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_27
  self.Highway_Stunt_Vehicle = l0.Target
end
function export:f_box_ListWriter_27_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_27
  self.Highway_Stunt_Vehicle = l0.Target
end
function export:f_box_ParticleFXController_v2_42_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066752044289"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|401570634"
  l0.Started = self.f_box_ParticleFXController_v2_41_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1123634402", "1123634402", "S03M040_SCR_Main", "box_ParticleFXController_v2_42.Started", "box_ParticleFXController_v2_41.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_68_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198167"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1011447974"
  l0.Started = self.f_box_ParticleFXController_v2_67_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|303807095", "303807095", "S03M040_SCR_Main", "box_ParticleFXController_v2_68.Started", "box_ParticleFXController_v2_67.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_38_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_25
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|652363874", "652363874", "S03M040_SCR_Main", "box_ParticleFXController_v2_38.Started", "box_Timer_v2_25.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_25_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1860893325"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_76_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_76_Out_1
  l0 = self.box_Timer_v2_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1680014633", "1680014633", "S03M040_SCR_Main", "box_Timer_v2_25.TimeElapsed", "box_Ordered_Output_76.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_33_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_33
  self.HighwayStunt_CimentTruck_01 = l0.UserID
  l0 = self.box_CLOController_44
  l0.CLO = "9223372047484264976"
  l0 = self.box_CLOController_33
  l1 = self.box_CLOController_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2106449759", "2106449759", "S03M040_SCR_Main", "box_CLOController_33.OnUserInPlace", "box_CLOController_44.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ParticleFXController_v2_35_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198143"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|971175641"
  l0.Started = self.f_box_ParticleFXController_v2_38_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|852068106", "852068106", "S03M040_SCR_Main", "box_ParticleFXController_v2_35.Started", "box_ParticleFXController_v2_38.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_117_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198184"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|464629149"
  l0.Started = self.f_box_ParticleFXController_v2_86_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_117
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1016128251", "1016128251", "S03M040_SCR_Main", "box_Timer_v2_117.TimeElapsed", "box_ParticleFXController_v2_86.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_67_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|730469569", "730469569", "S03M040_SCR_Main", "box_ParticleFXController_v2_67.Started", "Out", clone, self)
  self:Out()
end
function export:f_box_ParticleFXController_v2_58_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198155"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1650971415"
  l0.Started = self.f_box_ParticleFXController_v2_57_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|542052013", "542052013", "S03M040_SCR_Main", "box_ParticleFXController_v2_58.Started", "box_ParticleFXController_v2_57.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_29_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_29
  self.HighwayStunt_BoxVan_01 = l0.UserID
  l0 = self.box_ListWriter_27
  l0.Input = self.Highway_Stunt_Vehicle
  l0.Data[0] = self.HighwayStunt_FireTruck_01
  l0.Data[1] = self.HighwayStunt_FireTruck_02
  l0.Data[2] = self.HighwayStunt_CimentTruck_01
  l0.Data[3] = self.HighwayStunt_Ambulance_01
  l0.Data[4] = self.HighwayStunt_Bus_01
  l0.Data[5] = self.HighwayStunt_BoxVan_01
  l0 = self.box_CLOController_29
  l1 = self.box_ListWriter_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|616678799", "616678799", "S03M040_SCR_Main", "box_CLOController_29.OnUserInPlace", "box_ListWriter_27.Add", l0, l1)
  l1:Add()
end
function export:f_box_ParticleFXController_v2_28_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_24
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2039268447", "2039268447", "S03M040_SCR_Main", "box_ParticleFXController_v2_28.Started", "box_Timer_v2_24.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_95_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266190069"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1127292741"
  l0.Started = self.f_box_ParticleFXController_v2_96_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1572881295", "1572881295", "S03M040_SCR_Main", "box_ParticleFXController_v2_95.Started", "box_ParticleFXController_v2_96.Start", clone, l0)
  l0:Start()
end
function export:f_box_CollisionController_14_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HighwayStunt_Ambulance_01
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|331779411"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_47_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1643183310", "1643183310", "S03M040_SCR_Main", "box_CollisionController_14.CollisionsDisabled", "box_CollisionController_47.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_ParticleFXController_v2_96_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266190071"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|697920587"
  l0.Started = self.f_box_ParticleFXController_v2_97_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|385264261", "385264261", "S03M040_SCR_Main", "box_ParticleFXController_v2_96.Started", "box_ParticleFXController_v2_97.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_16_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198161"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1257479298"
  l0.Started = self.f_box_ParticleFXController_v2_62_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_16
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|468801405", "468801405", "S03M040_SCR_Main", "box_Timer_v2_16.TimeElapsed", "box_ParticleFXController_v2_62.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_15_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_15
  self.HighwayStunt_FireTruck_02 = l0.UserID
  l0 = self.box_CLOController_33
  l0.CLO = "9223372047484264975"
  l0 = self.box_CLOController_15
  l1 = self.box_CLOController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2069425611", "2069425611", "S03M040_SCR_Main", "box_CLOController_15.OnUserInPlace", "box_CLOController_33.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ParticleFXController_v2_89_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198190"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1441059008"
  l0.Started = self.f_box_ParticleFXController_v2_87_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|985913780", "985913780", "S03M040_SCR_Main", "box_ParticleFXController_v2_89.Started", "box_ParticleFXController_v2_87.Start", clone, l0)
  l0:Start()
end
function export:f_box_CameraContextController_113_ContextStopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1445314981"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_238_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CameraContextController_113
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1146352718", "1146352718", "S03M040_SCR_Main", "box_CameraContextController_113.ContextStopped", "box_Show_Or_Hide_All_UI_238.Show", l0, l1)
  l1:Show()
end
function export:f_box_ParticleFXController_v2_31_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198139"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1102052890"
  l0.Started = self.f_box_ParticleFXController_v2_28_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|666331218", "666331218", "S03M040_SCR_Main", "box_ParticleFXController_v2_31.Started", "box_ParticleFXController_v2_28.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_62_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198163"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1698507596"
  l0.Started = self.f_box_ParticleFXController_v2_61_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|915619716", "915619716", "S03M040_SCR_Main", "box_ParticleFXController_v2_62.Started", "box_ParticleFXController_v2_61.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_260_PreOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_259()
  l0 = self.box_CinematicPrep_260
  l1 = self.box_OnceOnly_v3_259
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|838618557", "838618557", "S03M040_SCR_Main", "box_CinematicPrep_260.PreOut", "box_OnceOnly_v3_259.In", l0, l1)
  l1:In(0)
end
function export:f_box_ParticleFXController_v2_75_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_117
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|122146966", "122146966", "S03M040_SCR_Main", "box_ParticleFXController_v2_75.Started", "box_Timer_v2_117.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_36_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198149"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|115236782"
  l0.Started = self.f_box_ParticleFXController_v2_52_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_36
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1838131665", "1838131665", "S03M040_SCR_Main", "box_Timer_v2_36.TimeElapsed", "box_ParticleFXController_v2_52.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_121_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198180"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|225329713"
  l0.Started = self.f_box_ParticleFXController_v2_83_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_121
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1730195978", "1730195978", "S03M040_SCR_Main", "box_Timer_v2_121.TimeElapsed", "box_ParticleFXController_v2_83.Start", l0, l1)
  l1:Start()
end
function export:f_box_CollisionController_43_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372047484219112"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2064975567"
  l0.Started = self.f_box_ParticleFXController_v2_46_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|841093271", "841093271", "S03M040_SCR_Main", "box_CollisionController_43.CollisionsDisabled", "box_ParticleFXController_v2_46.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySequence_v5_253_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_259()
  l0 = self.box_PlaySequence_v5_253
  l1 = self.box_OnceOnly_v3_259
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1192282425", "1192282425", "S03M040_SCR_Main", "box_PlaySequence_v5_253.Finished", "box_OnceOnly_v3_259.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_253_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_260
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_253
  l1 = self.box_CinematicPrep_260
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|537276356", "537276356", "S03M040_SCR_Main", "box_PlaySequence_v5_253.Skipped", "box_CinematicPrep_260.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_Set_Domino_Camera_Reference_234_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CameraContextController_235
  l0.Config = "CameraContext.9223372048779319945"
  l0.BlendIn = "CameraBlendListDB.9223372048779319832"
  l0 = self.box_Set_Domino_Camera_Reference_234
  l1 = self.box_CameraContextController_235
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|112842064", "112842064", "S03M040_SCR_Main", "box_Set_Domino_Camera_Reference_234.Out", "box_CameraContextController_235.StartContext", l0, l1)
  l1:StartContext()
end
function export:f_box_CLOController_56_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_56
  self.HighwayStunt_Bus_01 = l0.UserID
  l0 = self.box_CLOController_29
  l0.CLO = "9223372047484264978"
  l0 = self.box_CLOController_56
  l1 = self.box_CLOController_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2094310363", "2094310363", "S03M040_SCR_Main", "box_CLOController_56.OnUserInPlace", "box_CLOController_29.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ParticleFXController_v2_39_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198147"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1672115189"
  l0.Started = self.f_box_ParticleFXController_v2_51_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|713467065", "713467065", "S03M040_SCR_Main", "box_ParticleFXController_v2_39.Started", "box_ParticleFXController_v2_51.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_70_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_118
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1393273216", "1393273216", "S03M040_SCR_Main", "box_ParticleFXController_v2_70.Started", "box_Timer_v2_118.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_118_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198172"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2061276678"
  l0.Started = self.f_box_ParticleFXController_v2_72_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_118
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|86168574", "86168574", "S03M040_SCR_Main", "box_Timer_v2_118.TimeElapsed", "box_ParticleFXController_v2_72.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_87_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_125
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1927149323", "1927149323", "S03M040_SCR_Main", "box_ParticleFXController_v2_87.Started", "box_Timer_v2_125.Start", clone, l0)
  l0:Start()
end
function export:f_box_Show_Or_Hide_All_UI_238_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1238098014", "1238098014", "S03M040_SCR_Main", "box_Show_Or_Hide_All_UI_238.Shown", "Stunts_FlyBy_Out", clone, self)
  self:Stunts_FlyBy_Out()
end
function export:f_box_ParticleFXController_v2_135_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266191013"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1249346948"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1590502722", "1590502722", "S03M040_SCR_Main", "box_ParticleFXController_v2_135.Started", "box_ParticleFXController_v2_112.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_55_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_21
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|477474318", "477474318", "S03M040_SCR_Main", "box_ParticleFXController_v2_55.Started", "box_Timer_v2_21.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_30_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198137"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1248578714"
  l0.Started = self.f_box_ParticleFXController_v2_31_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_30
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|248971683", "248971683", "S03M040_SCR_Main", "box_Timer_v2_30.TimeElapsed", "box_ParticleFXController_v2_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_91_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198194"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2140677606"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|200145733", "200145733", "S03M040_SCR_Main", "box_ParticleFXController_v2_91.Started", "box_ParticleFXController_v2_90.Start", clone, l0)
  l0:Start()
end
function export:f_box_CollisionController_54_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HighwayStunt_FireTruck_02
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|408107833"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_49_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|426873636", "426873636", "S03M040_SCR_Main", "box_CollisionController_54.CollisionsDisabled", "box_CollisionController_49.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_ParticleFXController_v2_8_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372047484219115"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|536812396"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1161746520", "1161746520", "S03M040_SCR_Main", "box_ParticleFXController_v2_8.Started", "box_ParticleFXController_v2_53.Start", clone, l0)
  l0:Start()
end
function export:f_box_Show_Or_Hide_All_UI_237_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_255
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1882361778", "1882361778", "S03M040_SCR_Main", "box_Show_Or_Hide_All_UI_237.Hidden", "box_CinematicPrep_255.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_ParticleFXController_v2_57_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_11
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|758204142", "758204142", "S03M040_SCR_Main", "box_ParticleFXController_v2_57.Started", "box_Timer_v2_11.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_51_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_36
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|929968514", "929968514", "S03M040_SCR_Main", "box_ParticleFXController_v2_51.Started", "box_Timer_v2_36.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_20_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198131"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1715009515"
  l0.Started = self.f_box_ParticleFXController_v2_22_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1717912438", "1717912438", "S03M040_SCR_Main", "box_ParticleFXController_v2_20.Started", "box_ParticleFXController_v2_22.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_61_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_10
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|513463509", "513463509", "S03M040_SCR_Main", "box_ParticleFXController_v2_61.Started", "box_Timer_v2_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_254_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_252
  l0.SceneEntity = "9223372050142311640"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_OceanStunt/s03_m040_oceanstunt_beautyshot.seq"
  l0 = self.box_OnceOnly_v3_254
  l1 = self.box_PlaySequence_v5_252
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1788586870", "1788586870", "S03M040_SCR_Main", "box_OnceOnly_v3_254.Out", "box_PlaySequence_v5_252.Start", l0, l1)
  l1:Start()
end
function export:f_box_AI_Agent_Zone_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HighwayStunt_FireTruck_01
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1588283269"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_54_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1628278559", "1628278559", "S03M040_SCR_Main", "box_AI_Agent_Zone_50.Out", "box_CollisionController_54.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_ParticleFXController_v2_22_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_34
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1911168300", "1911168300", "S03M040_SCR_Main", "box_ParticleFXController_v2_22.Started", "box_Timer_v2_34.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_256_PreOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_254()
  l0 = self.box_CinematicPrep_256
  l1 = self.box_OnceOnly_v3_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1548820664", "1548820664", "S03M040_SCR_Main", "box_CinematicPrep_256.PreOut", "box_OnceOnly_v3_254.In", l0, l1)
  l1:In(0)
end
function export:f_box_Timer_v2_21_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198153"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1083686712"
  l0.Started = self.f_box_ParticleFXController_v2_58_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_21
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|420746854", "420746854", "S03M040_SCR_Main", "box_Timer_v2_21.TimeElapsed", "box_ParticleFXController_v2_58.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_100_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266190075"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|870960900"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2052680970", "2052680970", "S03M040_SCR_Main", "box_ParticleFXController_v2_100.Started", "box_ParticleFXController_v2_103.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_131_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_265
  l0.Trigger = "9223372050142374295"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|569559714", "569559714", "S03M040_SCR_Main", "box_Ordered_Output_131.Out", "box_TriggerMonitor_v2_265.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_131_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_126
  l0.Trigger = "9223372057183390330"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1990511464", "1990511464", "S03M040_SCR_Main", "box_Ordered_Output_131.Out", "box_TriggerMonitor_v2_126.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_131_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_127
  l0.Trigger = "9223372062580815350"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1508338819", "1508338819", "S03M040_SCR_Main", "box_Ordered_Output_131.Out", "box_TriggerMonitor_v2_127.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_116_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198176"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|745900893"
  l0.Started = self.f_box_ParticleFXController_v2_74_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_116
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1844709159", "1844709159", "S03M040_SCR_Main", "box_Timer_v2_116.TimeElapsed", "box_ParticleFXController_v2_74.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_34_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198133"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|780113046"
  l0.Started = self.f_box_ParticleFXController_v2_23_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_34
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1510159878", "1510159878", "S03M040_SCR_Main", "box_Timer_v2_34.TimeElapsed", "box_ParticleFXController_v2_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_76_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198145"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1423515384"
  l0.Started = self.f_box_ParticleFXController_v2_39_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|551721752", "551721752", "S03M040_SCR_Main", "box_Ordered_Output_76.Out", "box_ParticleFXController_v2_39.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_76_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372065884669204"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|472930499"
  l0.Started = self.f_box_ParticleFXController_v2_37_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2031019845", "2031019845", "S03M040_SCR_Main", "box_Ordered_Output_76.Out", "box_ParticleFXController_v2_37.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_32_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372065884669208"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|306397018"
  l0.Started = self.f_box_ParticleFXController_v2_6_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1303465677", "1303465677", "S03M040_SCR_Main", "box_ParticleFXController_v2_32.Started", "box_ParticleFXController_v2_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_134_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372061394930591"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2094331585"
  l0.Started = self.f_box_ParticleFXController_v2_132_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1614888018", "1614888018", "S03M040_SCR_Main", "box_ParticleFXController_v2_134.Started", "box_ParticleFXController_v2_132.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_44_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_44
  self.HighwayStunt_Ambulance_01 = l0.UserID
  l0 = self.box_CLOController_56
  l0.CLO = "9223372047484264977"
  l0 = self.box_CLOController_44
  l1 = self.box_CLOController_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1187749309", "1187749309", "S03M040_SCR_Main", "box_CLOController_44.OnUserInPlace", "box_CLOController_56.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_OnceOnly_v3_259_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Set_Domino_Camera_Reference_234
  l0.Slot = 1
  l0.ReferenceEntity = "9223372049212238762"
  l0 = self.box_OnceOnly_v3_259
  l1 = self.box_Set_Domino_Camera_Reference_234
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1409775492", "1409775492", "S03M040_SCR_Main", "box_OnceOnly_v3_259.Out", "box_Set_Domino_Camera_Reference_234.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_265_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198168"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|2058109185"
  l0.Started = self.f_box_ParticleFXController_v2_69_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_TriggerMonitor_v2_265
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1019233457", "1019233457", "S03M040_SCR_Main", "box_TriggerMonitor_v2_265.Enter", "box_ParticleFXController_v2_69.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_236_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CameraContextController_113
  l0.BlendOut = "CameraBlendListDB.9223372048779319827"
  l0 = self.box_Timer_v2_236
  l1 = self.box_CameraContextController_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1146111975", "1146111975", "S03M040_SCR_Main", "box_Timer_v2_236.TimeElapsed", "box_CameraContextController_113.StopContext", l0, l1)
  l1:StopContext()
end
function export:f_box_Simple_Node_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1229510711", "1229510711", "S03M040_SCR_Main", "box_Simple_Node_3.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_Ordered_Output_110_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1943327507", "1943327507", "S03M040_SCR_Main", "box_Ordered_Output_110.Out", "SCR_StuntMountain", clone, self)
  self:SCR_StuntMountain()
end
function export:f_box_Ordered_Output_110_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_77
  l0.Trigger = "9223372066266188220"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1842739728", "1842739728", "S03M040_SCR_Main", "box_Ordered_Output_110.Out", "box_TriggerMonitor_v2_77.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_110_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_138
  l0.Trigger = "9223372049779569870"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1209252123", "1209252123", "S03M040_SCR_Main", "box_Ordered_Output_110.Out", "box_TriggerMonitor_v2_138.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ParticleFXController_v2_85_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_119
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|196972470", "196972470", "S03M040_SCR_Main", "box_ParticleFXController_v2_85.Started", "box_Timer_v2_119.Start", clone, l0)
  l0:Start()
end
function export:f_box_CameraContextController_235_ContextStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_262
  l0.Seconds = 2
  l0 = self.box_CameraContextController_235
  l1 = self.box_Timer_v2_262
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|757676919", "757676919", "S03M040_SCR_Main", "box_CameraContextController_235.ContextStarted", "box_Timer_v2_262.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_69_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198170"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1436619107"
  l0.Started = self.f_box_ParticleFXController_v2_70_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1071272239", "1071272239", "S03M040_SCR_Main", "box_ParticleFXController_v2_69.Started", "box_ParticleFXController_v2_70.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_72_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198174"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|359855544"
  l0.Started = self.f_box_ParticleFXController_v2_71_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|306776991", "306776991", "S03M040_SCR_Main", "box_ParticleFXController_v2_72.Started", "box_ParticleFXController_v2_71.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_46_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372047484219114"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|733150723"
  l0.Started = self.f_box_ParticleFXController_v2_12_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1145349883", "1145349883", "S03M040_SCR_Main", "box_ParticleFXController_v2_46.Started", "box_ParticleFXController_v2_12.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_132_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372061394930593"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|802155941"
  l0.Started = self.f_box_ParticleFXController_v2_133_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1079369557", "1079369557", "S03M040_SCR_Main", "box_ParticleFXController_v2_132.Started", "box_ParticleFXController_v2_133.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_261_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_236
  l0.Seconds = 3
  l0 = self.box_CinematicPrep_261
  l1 = self.box_Timer_v2_236
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|1217262048", "1217262048", "S03M040_SCR_Main", "box_CinematicPrep_261.PostOut", "box_Timer_v2_236.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_73_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_121
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03m040_scr.domino|@S03M040_SCR_Main|477751869", "477751869", "S03M040_SCR_Main", "box_ParticleFXController_v2_73.Started", "box_Timer_v2_121.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_OnceOnly_v3_257()
end
function export:OnEnter_box_OnceOnly_v3_254()
end
function export:OnEnter_box_OnceOnly_v3_259()
end
function export:Out()
end
function export:SCR_StuntMountain()
end
function export:HighWayStunt_out()
end
function export:Stunts_FlyBy_Out()
end
function export:Ocean_Stunt_Out()
end
function export:Final_Stunt_Out()
end
function export:Out_Spawned()
end
_compilerVersion = 4
