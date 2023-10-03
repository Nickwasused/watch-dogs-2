export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/System/CameraShakeController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/3953468137.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.out = DummyFunction
  self.DroneUnspawned = DummyFunction
  self.PlayerEntity = nil
  self[12] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_12_Enter
  l0.Leave = self.f_12_Leave
  l0.Use = DummyFunction
  self[5] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = self.f_5_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[8] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[8]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[3] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = self.f_3_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_3_Finished
  self[13] = cbox:CreateBox("domino/System/CameraShakeController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  l0.Out = DummyFunction
  self[2] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[4] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[15] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:DroneTimerStarted()
  local l0
  l0 = self[4]
  l0.Seconds = 6
  l0:Start()
end
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:StartLights()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_14_Out_0
  l0.Out[1] = self.f_14_Out_1
  l0:In()
end
function export:UnspawnDrone()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372065263966442"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_6_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_7_Shown()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SceneEntity = "9223372060813328849"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_SCR_BigFootArrival/s16_scr_bigfootarrival.seq"
  l0:Start()
end
function export:f_6_Hidden()
  self = self._graph
  self:DroneUnspawned()
end
function export:f_12_Enter()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Start()
end
function export:f_12_Leave()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Stop()
end
function export:f_5_Started()
  self = self._graph
  self:out()
end
function export:f_11_Bound()
  local l0
  self = self._graph
  l0 = self[8]
  l0.SceneEntity = "9223372067983615241"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_SCR_Lights/s16_scr_lights.seq"
  l0:Start()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[2]
  l0.SceneEntity = "9223372056622257601"
  l0.SequenceFile = "sequences/ScriptedEvents/s16_m060_sailandtalk_recording.seq"
  l0:Start()
end
function export:f_3_Finished()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SceneEntity = "9223372060813328853"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_SCR_BigFootStationary/s16_scr_bigfootstationary.seq"
  l0:Start()
end
function export:f_3_Started()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Entity = "9223372065263966442"
  l0.SoundId = "soundbinary/3953468137.bnk"
  l0:Play()
end
function export:f_9_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = "9223372067203213880"
  l0.Child = "9223372067203213882"
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_10_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = "9223372067203213872"
  l0.Child = "9223372067203213874"
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_9_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_14_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Trigger = "9223372046830378951"
  l0:Enable()
end
function export:f_4_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372065263966442"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_7_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_10_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = "9223372067295040518"
  l0.Child = "9223372067295040520"
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_11_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.CameraAnim = "CameraAnimatedListDB.9223372053054036653"
  l0.Strength = 0
  l0.Attenuation = 0
  l0.Frequency = 0
  l0.XRange = 0
  l0.YRange = 0
  l0.ZRange = 0
  l0.Pitch = 0
  l0.Roll = 0
  l0.Yaw = 0
  l0.FadeOutTime = 0
  l0.Duration = 0
end
function export:out()
end
function export:DroneUnspawned()
end
_compilerVersion = 4
