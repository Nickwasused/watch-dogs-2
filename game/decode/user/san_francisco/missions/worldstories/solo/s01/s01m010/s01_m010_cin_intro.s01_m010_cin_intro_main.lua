export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/FreeFormTextController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2436309365.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.TS_Sitara = DummyFunction
  self.PlayerEntity = nil
  self[6] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_6_TeleportDone
  self[2] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[2]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_2_PostOut
  self[8] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[3] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_3_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[1]
  l0._graph = self
  l0.PreOut = self.f_1_PreOut
  l0.PostOut = DummyFunction
  self[7] = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self[7]
  l0._graph = self
  l0.OnFreeFormTextRequested = DummyFunction
  l0.OnFreeFormTextHidden = DummyFunction
  self[4] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"Text_01", "TS_Sitara"}
  }
  l0.Started = self.f_4_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_4_Finished
  l0.SPOut.Text_01 = self.f_4_SPOut__Text_01_
  l0.SPOut.TS_Sitara = self.f_4_SPOut__TS_Sitara_
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
  l0 = self[1]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_6_TeleportDone()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SceneEntity = "9223372059397415943"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_M010_Intro_JimmySiscaOprah/s01_m010_intro_jimmysiscaoprah.seq"
  l0:Start()
end
function export:f_2_PostOut()
  self = self._graph
  self:Out()
end
function export:f_3_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_1_PreOut()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SpawnPoint = "9223372056499384724"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_4_Finished()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Seconds = 2
  l0:Start()
end
function export:f_4_SPOut__Text_01_()
  local l0
  self = self._graph
  l0 = self[7]
  l0.FreeFormText = "FreeFormTextDB.9223372070165474114"
  l0:Open()
end
function export:f_4_SPOut__TS_Sitara_()
  self = self._graph
  self:TS_Sitara()
end
function export:f_4_Started()
  local l0
  self = self._graph
  l0 = self[8]
  l0.SoundId = "soundbinary/2436309365.bnk"
  l0:Play()
end
function export:Out()
end
function export:TS_Sitara()
end
_compilerVersion = 4
