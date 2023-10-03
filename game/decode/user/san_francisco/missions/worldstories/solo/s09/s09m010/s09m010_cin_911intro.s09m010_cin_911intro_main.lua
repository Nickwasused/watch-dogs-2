export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.Josh = {}
  self.TBone = {}
  self.HQ_Talker = {}
  self[7] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[7]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_7_PostOut
  self[20] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[20]
  l0._graph = self
  l0.GotNPCList = self.f_20_GotNPCList
  self[22] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[22]
  l0._graph = self
  l0.GotNPCList = self.f_22_GotNPCList
  self[3] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[3]
  l0._graph = self
  l0.PreOut = self.f_3_PreOut
  l0.PostOut = DummyFunction
  self[4] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_4_Out
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_1_Skipped
  l0.Finished = self.f_1_Finished
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
  l0 = self[3]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_21_Shown()
  local l0
  self = self._graph
  l0 = self[7]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_5_Hidden()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372047779474441"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_911Intro_CIN/s09_911intro_cin.seq"
  l0:Start()
end
function export:f_7_PostOut()
  self = self._graph
  self:EndCine()
end
function export:f_20_GotNPCList()
  local l0
  self = self._graph
  l0 = self[20]
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
  l0.Hidden = self.f_5_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_22_GotNPCList()
  local l0
  self = self._graph
  l0 = self[22]
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_21_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_3_PreOut()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[22]
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
function export:EndCine()
end
_compilerVersion = 4
