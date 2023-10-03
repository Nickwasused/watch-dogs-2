export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerInsideHma.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.out = DummyFunction
  self.PlayerEntity = nil
  self.HQ_Talkers = {}
  self[6] = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Done = self.f_6_Done
  self[4] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_4_Skipped
  l0.Finished = self.f_4_Finished
  self[2] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_2_Out
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_1_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[9] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[9]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_9_PostOut
  self[5] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[5]
  l0._graph = self
  l0.GotNPCList = self.f_5_GotNPCList
  self[10] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[10]
  l0._graph = self
  l0.GotNPCList = self.f_10_GotNPCList
  self[8] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_8_TimeElapsed
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
  l0 = self[6]
  l0.SpawnPoint = "9223372048320953452"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_6_Done()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Start()
end
function export:f_4_Finished()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In(1)
end
function export:f_4_Skipped()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In(0)
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_1_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_11_Hidden()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SceneEntity = "9223372048027847975"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_DedsecMomentum_CIN/s16_dedsecmomentum_cin.seq"
  l0:Start()
end
function export:f_12_Shown()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_9_PostOut()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Start()
end
function export:f_5_GotNPCList()
  local l0
  self = self._graph
  l0 = self[5]
  self.HQ_Talkers = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talkers
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_12_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_10_GotNPCList()
  local l0
  self = self._graph
  l0 = self[10]
  self.HQ_Talkers = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talkers
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_11_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_8_TimeElapsed()
  self = self._graph
  self:out()
end
function export:out()
end
_compilerVersion = 4
