export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[62] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[62]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
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
  self[13] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_13_Out
  l0.ResetOut = DummyFunction
  self[12] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_12_TeleportDone
  self[9] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_9_Skipped
  l0.Finished = self.f_9_Finished
  self[17] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[17]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_17_PostOut
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
  l0 = self[9]
  l0.SceneEntity = "9223372049468819246"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_M010_SCR_SitaraIntro/s17_m010_scr_sitaraintro.seq"
  l0:Start()
end
function export:Play_Overheard_Convo()
  local l0
  l0 = self[62]
  l0.CLO = "9223372059638308304"
  l0.User = self.Catskills
  l0.RestrictedToUser = self.Catskills
  l0:TriggerBhv()
end
function export:f_16_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[12]
  l0.SpawnPoint = "9223372046882196939"
  l0:In()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Start()
end
function export:f_12_TeleportDone()
  local l0
  self = self._graph
  l0 = self[17]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_9_Finished()
  local l0
  self = self._graph
  l0 = self[13]
  l0:In(1)
end
function export:f_9_Skipped()
  local l0
  self = self._graph
  l0 = self[13]
  l0:In(0)
end
function export:f_17_PostOut()
  self = self._graph
  self:Out()
end
function export:Out()
end
_compilerVersion = 4
