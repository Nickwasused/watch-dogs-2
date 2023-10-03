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
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Josh = {}
  self.Sitara = {}
  self.Wrench = nil
  self.Horatio = nil
  self.HQ_Talker = {}
  self[3] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_3_Out
  l0.ResetOut = DummyFunction
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
  self[9] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[5] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[6] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[6]
  l0._graph = self
  l0.GotNPCList = self.f_6_GotNPCList
  self[8] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[8]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_8_Skipped
  l0.Finished = self.f_8_Finished
  self[1] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[1]
  l0._graph = self
  l0.GotNPCList = self.f_1_GotNPCList
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
  l0.Seconds = 2
  l0:Start()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_4_TimeElapsed()
  self = self._graph
  self:Out()
end
function export:f_9_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_5_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[8]
  l0.SceneEntity = "9223372047779474445"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S13/S13_DataDump_CIN/s13_datadump_cin.seq"
  l0:Start()
end
function export:f_6_GotNPCList()
  local l0
  self = self._graph
  l0 = self[6]
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
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
function export:f_8_Finished()
  local l0
  self = self._graph
  l0 = self[3]
  l0:In(1)
end
function export:f_8_Skipped()
  local l0
  self = self._graph
  l0 = self[3]
  l0:In(0)
end
function export:f_1_GotNPCList()
  local l0
  self = self._graph
  l0 = self[1]
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_2_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_7_Shown()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Seconds = 2
  l0:Start()
end
function export:f_2_Hidden()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Start()
end
function export:Out()
end
_compilerVersion = 4
