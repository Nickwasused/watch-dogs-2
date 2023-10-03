export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/BreakableEntityController.lua")
  cbox:RegisterBox("domino/System/CameraContextController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
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
  self[255] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[255]
  l0._graph = self
  l0.PreOut = self.f_255_PreOut
  l0.PostOut = DummyFunction
  self[127] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[127]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_127_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[138] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[138]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_138_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[257] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[257]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_257_Out
  l0.ResetOut = DummyFunction
  self[119] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[119]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_119_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[126] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[126]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_126_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[252] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[252]
  l0._graph = self
  l0.Started = self.f_252_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_252_Skipped
  l0.Finished = self.f_252_Finished
  self[262] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[262]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_262_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[48] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[48]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_48_OnUserInPlace
  self[137] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[137]
  l0._graph = self
  l0._DynamicAnchors = {
    EntityIn = {"CHIP"},
    SPOut = {
      "BillBoardXplosion1",
      "BillBoardXplosion2",
      "DriftSmokeFX"
    }
  }
  l0.Started = self.f_137_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_137_Finished
  l0.SPOut.BillBoardXplosion1 = self.f_137_SPOut__BillBoardXplosion1_
  l0.SPOut.BillBoardXplosion2 = DummyFunction
  l0.SPOut.DriftSmokeFX = DummyFunction
  self[125] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[125]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_125_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[77] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[77]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_77_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[258] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[258]
  l0._graph = self
  l0.PreOut = self.f_258_PreOut
  l0.PostOut = DummyFunction
  self[10] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[24] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_24_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[11] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[251] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[251]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_251_Skipped
  l0.Finished = self.f_251_Finished
  self[27] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[27]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_27_Added
  l0.Removed = self.f_27_Removed
  l0.Out = self.f_27_Out
  self[25] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_25_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[33] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[33]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_33_OnUserInPlace
  self[117] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[117]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_117_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[29] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[29]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_29_OnUserInPlace
  self[16] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[15] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[15]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_15_OnUserInPlace
  self[113] = cbox:CreateBox("domino/System/CameraContextController.lua")
  l0 = self[113]
  l0._graph = self
  l0.ContextStarted = DummyFunction
  l0.ContextStopped = self.f_113_ContextStopped
  l0.Out = DummyFunction
  self[260] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[260]
  l0._graph = self
  l0.PreOut = self.f_260_PreOut
  l0.PostOut = DummyFunction
  self[36] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_36_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[121] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[121]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_121_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[253] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[253]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_253_Skipped
  l0.Finished = self.f_253_Finished
  self[234] = cbox:CreateBox("domino/System/CameraSetDominoReference.lua")
  l0 = self[234]
  l0._graph = self
  l0.Out = self.f_234_Out
  self[56] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[56]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_56_OnUserInPlace
  self[118] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[118]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_118_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[30] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_30_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[254] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[254]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_254_Out
  l0.ResetOut = DummyFunction
  self[256] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[256]
  l0._graph = self
  l0.PreOut = self.f_256_PreOut
  l0.PostOut = DummyFunction
  self[21] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[116] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[116]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_116_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[34] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_34_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[44] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[44]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_44_OnUserInPlace
  self[259] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[259]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_259_Out
  l0.ResetOut = DummyFunction
  self[265] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[265]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_265_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[236] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[236]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_236_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[235] = cbox:CreateBox("domino/System/CameraContextController.lua")
  l0 = self[235]
  l0._graph = self
  l0.ContextStarted = self.f_235_ContextStarted
  l0.ContextStopped = DummyFunction
  l0.Out = DummyFunction
  self[261] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[261]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_261_PostOut
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
  l0 = self[137]
  l0.SceneEntity = "9223372047484219120"
  l0.SequenceFile = "sequences/Gyms/GYM_AG_SE_Test/highway_stunt_01.seq"
  l0.EntityIn.CHIP = self.Chip
  l0:Start()
end
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:In()
end
function export:Ocean_Jump_FX()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_131_Out_0
  l0.Out[1] = self.f_131_Out_1
  l0.Out[2] = self.f_131_Out_2
  l0:In()
end
function export:SCR_StuntMountain_()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_110_Out_0
  l0.Out[1] = self.f_110_Out_1
  l0.Out[2] = self.f_110_Out_2
  l0:In()
end
function export:Stunts_FlyBy()
  local l0
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_237_Hidden
  l0:Hide()
end
function export:f_60_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198159"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_59_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_255_PreOut()
  local l0
  self = self._graph
  l0 = self[251]
  l0.SceneEntity = "9223372049779569871"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_SmallRooftopStunt/s03_smallrooftop_beautyshot.seq"
  l0:Start()
end
function export:f_127_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198127"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_20_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_138_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372061394928423"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_134_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_52_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198151"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_55_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_257_Out()
  local l0
  self = self._graph
  l0 = self[253]
  l0.SceneEntity = "9223372047484219120"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_HighwayStunt/s03_highwaystunt_beautyshot.seq"
  l0:Start()
end
function export:f_119_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198188"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_89_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_126_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372063530846409"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_252_Finished()
  local l0
  self = self._graph
  l0 = self[257]
  l0:In(1)
end
function export:f_252_Skipped()
  local l0
  self = self._graph
  l0 = self[258]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_252_Started()
  local l0
  self = self._graph
  l0 = self[48]
  l0.CLO = "9223372047484264827"
  l0:Activate()
end
function export:f_83_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198182"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_75_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_26_Started()
  local l0
  self = self._graph
  l0 = self[30]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_262_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[261]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_139_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372063530845960"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_135_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_48_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[48]
  self.HighwayStunt_FireTruck_01 = l0.UserID
  l0 = self[15]
  l0.CLO = "9223372047484264854"
  l0:Activate()
end
function export:f_6_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372068050635216"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_1_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_47_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HighwayStunt_Bus_01
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_13_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_71_Started()
  local l0
  self = self._graph
  l0 = self[116]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_41_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266189605"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_95_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_49_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HighwayStunt_CimentTruck_01
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_14_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_86_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198186"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_85_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_37_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372065884669206"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_32_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_13_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HighwayStunt_BoxVan_01
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_43_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_137_Finished()
  self = self._graph
  self:HighWayStunt_out()
end
function export:f_137_SPOut__BillBoardXplosion1_()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BreakableEntityController.lua")]
  l0.BreakableEntity = "15936529965070028150"
  l0._graph = self
  l0.Broken = DummyFunction
  l0:Break()
end
function export:f_137_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Player
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_1_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372068251786248"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_125_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198192"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_91_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_77_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066752044291"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_42_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_258_PreOut()
  local l0
  self = self._graph
  l0 = self[257]
  l0:In(0)
end
function export:f_97_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266190073"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_98_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_10_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198165"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_68_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_12_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372047484219117"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_8_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_74_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198178"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_73_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_23_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198135"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_26_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_24_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198141"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_35_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_133_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372063530845514"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_139_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_59_Started()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_11_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198157"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_60_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_251_Finished()
  local l0
  self = self._graph
  l0 = self[254]
  l0:In(1)
end
function export:f_251_Skipped()
  local l0
  self = self._graph
  l0 = self[256]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_98_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266190077"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_100_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_27_Added()
  local l0
  self = self._graph
  l0 = self[27]
  self.Highway_Stunt_Vehicle = l0.Target
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372047484219109"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_50_Out
  l0:Disable()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[27]
  self.Highway_Stunt_Vehicle = l0.Target
end
function export:f_27_Removed()
  local l0
  self = self._graph
  l0 = self[27]
  self.Highway_Stunt_Vehicle = l0.Target
end
function export:f_42_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066752044289"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_41_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_68_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198167"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_67_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_38_Started()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_25_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_76_Out_0
  l0.Out[1] = self.f_76_Out_1
  l0:In()
end
function export:f_33_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[33]
  self.HighwayStunt_CimentTruck_01 = l0.UserID
  l0 = self[44]
  l0.CLO = "9223372047484264976"
  l0:Activate()
end
function export:f_35_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198143"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_38_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_117_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198184"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_86_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_67_Started()
  self = self._graph
  self:Out()
end
function export:f_58_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198155"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_57_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_29_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[29]
  self.HighwayStunt_BoxVan_01 = l0.UserID
  l0 = self[27]
  l0.Input = self.Highway_Stunt_Vehicle
  l0.Data[0] = self.HighwayStunt_FireTruck_01
  l0.Data[1] = self.HighwayStunt_FireTruck_02
  l0.Data[2] = self.HighwayStunt_CimentTruck_01
  l0.Data[3] = self.HighwayStunt_Ambulance_01
  l0.Data[4] = self.HighwayStunt_Bus_01
  l0.Data[5] = self.HighwayStunt_BoxVan_01
  l0:Add()
end
function export:f_28_Started()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_95_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266190069"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_96_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_14_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HighwayStunt_Ambulance_01
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_47_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_96_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266190071"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_97_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_16_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198161"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_62_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_15_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[15]
  self.HighwayStunt_FireTruck_02 = l0.UserID
  l0 = self[33]
  l0.CLO = "9223372047484264975"
  l0:Activate()
end
function export:f_89_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198190"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_87_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_113_ContextStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_238_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_31_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198139"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_28_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_62_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198163"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_61_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_260_PreOut()
  local l0
  self = self._graph
  l0 = self[259]
  l0:In(0)
end
function export:f_75_Started()
  local l0
  self = self._graph
  l0 = self[117]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_36_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198149"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_52_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_121_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198180"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_83_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_43_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372047484219112"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_46_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_253_Finished()
  local l0
  self = self._graph
  l0 = self[259]
  l0:In(1)
end
function export:f_253_Skipped()
  local l0
  self = self._graph
  l0 = self[260]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_234_Out()
  local l0
  self = self._graph
  l0 = self[235]
  l0.Config = "CameraContext.9223372048779319945"
  l0.BlendIn = "CameraBlendListDB.9223372048779319832"
  l0:StartContext()
end
function export:f_56_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[56]
  self.HighwayStunt_Bus_01 = l0.UserID
  l0 = self[29]
  l0.CLO = "9223372047484264978"
  l0:Activate()
end
function export:f_39_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198147"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_51_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_70_Started()
  local l0
  self = self._graph
  l0 = self[118]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_118_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198172"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_72_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_87_Started()
  local l0
  self = self._graph
  l0 = self[125]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_238_Shown()
  self = self._graph
  self:Stunts_FlyBy_Out()
end
function export:f_135_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266191013"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_55_Started()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_30_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198137"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_31_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_91_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198194"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_54_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HighwayStunt_FireTruck_02
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_49_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_8_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372047484219115"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_237_Hidden()
  local l0
  self = self._graph
  l0 = self[255]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_57_Started()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_51_Started()
  local l0
  self = self._graph
  l0 = self[36]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_20_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198131"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_22_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_61_Started()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_254_Out()
  local l0
  self = self._graph
  l0 = self[252]
  l0.SceneEntity = "9223372050142311640"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_OceanStunt/s03_m040_oceanstunt_beautyshot.seq"
  l0:Start()
end
function export:f_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HighwayStunt_FireTruck_01
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_54_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_22_Started()
  local l0
  self = self._graph
  l0 = self[34]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_256_PreOut()
  local l0
  self = self._graph
  l0 = self[254]
  l0:In(0)
end
function export:f_21_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198153"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_58_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_100_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066266190075"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_131_Out_0()
  local l0
  self = self._graph
  l0 = self[265]
  l0.Trigger = "9223372050142374295"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_131_Out_1()
  local l0
  self = self._graph
  l0 = self[126]
  l0.Trigger = "9223372057183390330"
  l0:Enable()
end
function export:f_131_Out_2()
  local l0
  self = self._graph
  l0 = self[127]
  l0.Trigger = "9223372062580815350"
  l0:Enable()
end
function export:f_116_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198176"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_74_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_34_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198133"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_23_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_76_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198145"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_39_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_76_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372065884669204"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_37_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_32_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372065884669208"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_6_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_134_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372061394930591"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_132_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_44_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[44]
  self.HighwayStunt_Ambulance_01 = l0.UserID
  l0 = self[56]
  l0.CLO = "9223372047484264977"
  l0:Activate()
end
function export:f_259_Out()
  local l0
  self = self._graph
  l0 = self[234]
  l0.Slot = 1
  l0.ReferenceEntity = "9223372049212238762"
  l0:In()
end
function export:f_265_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198168"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_69_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_236_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[113]
  l0.BlendOut = "CameraBlendListDB.9223372048779319827"
  l0:StopContext()
end
function export:f_3_Out()
  self = self._graph
  self:Out()
end
function export:f_110_Out_0()
  self = self._graph
  self:SCR_StuntMountain()
end
function export:f_110_Out_1()
  local l0
  self = self._graph
  l0 = self[77]
  l0.Trigger = "9223372066266188220"
  l0:Enable()
end
function export:f_110_Out_2()
  local l0
  self = self._graph
  l0 = self[138]
  l0.Trigger = "9223372049779569870"
  l0:Enable()
end
function export:f_85_Started()
  local l0
  self = self._graph
  l0 = self[119]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_235_ContextStarted()
  local l0
  self = self._graph
  l0 = self[262]
  l0.Seconds = 2
  l0:Start()
end
function export:f_69_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198170"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_70_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_72_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899198174"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_71_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_46_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372047484219114"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_12_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_132_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372061394930593"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_133_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_261_PostOut()
  local l0
  self = self._graph
  l0 = self[236]
  l0.Seconds = 3
  l0:Start()
end
function export:f_73_Started()
  local l0
  self = self._graph
  l0 = self[121]
  l0.Seconds = 0.2
  l0:Start()
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
