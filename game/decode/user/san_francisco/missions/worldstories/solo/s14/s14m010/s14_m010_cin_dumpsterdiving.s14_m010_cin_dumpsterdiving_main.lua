export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.TalkersHQ = {}
  self.Wrench_HQ = {}
  self.Sitara_HQ = {}
  self.Josh_HQ = {}
  self[16] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[16]
  l0._graph = self
  l0.GotNPCList = self.f_16_GotNPCList
  self[5] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[5]
  l0._graph = self
  l0.GotNPCList = self.f_5_GotNPCList
  self[3] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[3]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_3_PostOut
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_1_Skipped
  l0.Finished = self.f_1_Finished
  self[13] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[13]
  l0._graph = self
  l0.GotNPCList = self.f_13_GotNPCList
  self[4] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[4]
  l0._graph = self
  l0.PreOut = self.f_4_PreOut
  l0.PostOut = DummyFunction
  self[9] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_9_Skipped
  l0.Finished = self.f_9_Finished
  self[7] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_7_Out
  l0.ResetOut = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[6] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_6_TimeElapsed
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
  l0 = self[4]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_16_GotNPCList()
  local l0
  self = self._graph
  l0 = self[16]
  self.Josh_HQ = l0.NPCList
  l0 = self[5]
  l0.Group = "Talker_Wrench"
  l0:GetAll()
end
function export:f_5_GotNPCList()
  local l0
  self = self._graph
  l0 = self[5]
  self.Wrench_HQ = l0.NPCList
  l0 = self[13]
  l0.Group = "Talker_Sitara"
  l0:GetAll()
end
function export:f_18_Shown()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_3_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_8_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[7]
  l0:In(1)
end
function export:f_1_Skipped()
  local l0
  self = self._graph
  l0 = self[7]
  l0:In(0)
end
function export:f_13_GotNPCList()
  local l0
  self = self._graph
  l0 = self[13]
  self.Sitara_HQ = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Wrench_HQ
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
function export:f_15_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Josh_HQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_18_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_11_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Sitara_HQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_14_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_17_Hidden()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Start()
end
function export:f_4_PreOut()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Group = "Talker_Josh"
  l0:GetAll()
end
function export:f_9_Finished()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_9_Skipped()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(0)
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SceneEntity = "9223372058337352801"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S14/s14_soi-fs_vid.seq"
  l0:Start()
end
function export:f_8_Shown()
  self = self._graph
  self:Out()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Wrench_HQ
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
function export:f_6_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372047779474439"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S14/S14_DumpsterDiving_CIN/s14_dumpsterdiving_cin.seq"
  l0:Start()
end
function export:f_14_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Josh_HQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_17_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_12_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Sitara_HQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_15_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:Out()
end
_compilerVersion = 4
