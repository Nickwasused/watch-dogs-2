export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.out = DummyFunction
  self.CaptainStressing_out = DummyFunction
  self.SpawnCaptain_out = DummyFunction
  self.PlayerEntity = nil
  self.captain = nil
  self[5] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_5_Out
  self[8] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[8]
  l0._graph = self
  l0.PreOut = self.f_8_PreOut
  l0.PostOut = DummyFunction
  self[7] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[7]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[4] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = self.f_4_BhvTriggered
  l0.OnUserInPlace = self.f_4_OnUserInPlace
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = self.f_1_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_1_Skipped
  l0.Finished = self.f_1_Finished
  self[9] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_9_TeleportDone
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
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:In()
end
function export:In_CaptainReact()
  local l0
  self:en_4()
  l0 = self[4]
  l0:TriggerBhv()
end
function export:SpawnCaptain()
  local l0
  self:en_4()
  l0 = self[4]
  l0:Activate()
end
function export:f_5_Out()
  self = self._graph
  self:out()
end
function export:f_8_PreOut()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SpawnPoint = "9223372050031117779"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_4_BhvTriggered()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Seconds = 10
  l0:Start()
end
function export:f_4_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[4]
  self.Captain_Out = l0.UserID
  self:SpawnCaptain_out()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(1)
end
function export:f_1_Skipped()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(0)
end
function export:f_1_Started()
  local l0
  self = self._graph
  l0 = self[7]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825625"
  l0:StartCommunication()
end
function export:f_9_TeleportDone()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372057386122773"
  l0.SequenceFile = "sequences/ScriptedEvents/s16_m050_beautyshot_recording.seq"
  l0:Start()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[8]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_10_TimeElapsed()
  self = self._graph
  self:CaptainStressing_out()
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.CLO = "9223372047604766072"
end
function export:out()
end
function export:CaptainStressing_out()
end
function export:SpawnCaptain_out()
end
_compilerVersion = 4
