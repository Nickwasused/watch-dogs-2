export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.HQ_talkers_to_hide = {}
  self[9] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[9]
  l0._graph = self
  l0.GotNPCList = self.f_9_GotNPCList
  self[5] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[5]
  l0._graph = self
  l0.GotNPCList = self.f_5_GotNPCList
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
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_1_Skipped
  l0.Finished = self.f_1_Finished
  self[4] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_4_Out
  l0.ResetOut = DummyFunction
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
  l0 = self[11]
  l0:Start()
end
function export:f_9_GotNPCList()
  local l0
  self = self._graph
  l0 = self[9]
  self.HQ_talkers_to_hide = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_talkers_to_hide
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_8_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_5_GotNPCList()
  local l0
  self = self._graph
  l0 = self[5]
  self.HQ_talkers_to_hide = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_talkers_to_hide
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_10_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_10_Shown()
  self = self._graph
  self:EndCine()
end
function export:f_11_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(1)
end
function export:f_1_Skipped()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(0)
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_8_Hidden()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372047779474453"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_Farewell_CIN/s17_farewell_cin.seq"
  l0:Start()
end
function export:EndCine()
end
_compilerVersion = 4
