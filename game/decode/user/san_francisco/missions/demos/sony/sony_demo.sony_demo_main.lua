export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BinkVideoPlayer_v3.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RemoveLoadingScreen.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:LoadResource("soundbinary/3423363972.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1175536646.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3314628716.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[14] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[12] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[3] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[3]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_3_PostOut
  self[4] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_4_TeleportDone
  self[6] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[8] = cbox:CreateBox("domino/System/RemoveLoadingScreen.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.LoadingScreenAlreadyRemoved = DummyFunction
  l0.LoadingScreenRemoved = DummyFunction
  self[5] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[5]
  l0._graph = self
  l0.PreOut = self.f_5_PreOut
  l0.PostOut = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[11]
  l0._graph = self
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
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_9_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0.BinkFileName = "/fullscreen/Logo_Ubi_Dedsec.bik"
  l0.VideoDbObject = nil
  l0.ExternalSoundId = nil
  l0.OnSkipSoundId = nil
  l0.Seconds = nil
  l0.CanBeSkip = nil
  l0.NoActionMap = nil
  l0.EnableAlpha = nil
  l0.UseSubtitle = nil
  l0.PlayEmbeddedAudio = nil
  l0.PauseGame = nil
  l0.OverrideSubtitle = nil
  l0._graph = self
  l0.Started = self.f_7_Started
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = self.f_7_Finished
  l0:Start()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0.SoundId = "soundbinary/3423363972.bnk"
  l0:Play()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 18
  l0.Minute = 45
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:SetTimeOfDay()
end
function export:f_3_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_10_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0.SoundId = "soundbinary/1175536646.bnk"
  l0:Play()
end
function export:f_4_TeleportDone()
  local l0
  self = self._graph
  l0 = self[8]
  l0.SkipPostFx = 1
  l0:In()
end
function export:f_10_Shown()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Succeed()
end
function export:f_7_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0:In()
end
function export:f_7_Started()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SoundId = "soundbinary/3314628716.bnk"
  l0:Play()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.Shown = DummyFunction
  l0.Hidden = self.f_9_Hidden
  l0:Hide()
end
function export:f_5_PreOut()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SpawnPoint = "9223372050796888034"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
_compilerVersion = 4
