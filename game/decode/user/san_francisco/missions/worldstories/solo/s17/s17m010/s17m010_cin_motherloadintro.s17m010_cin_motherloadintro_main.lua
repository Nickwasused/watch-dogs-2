export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/FreeFormTextController.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.HQ_talkers_to_hide = {}
  self[5] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[5]
  l0._graph = self
  l0.GotNPCList = self.f_5_GotNPCList
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_1_Skipped
  l0.Finished = self.f_1_Finished
  self[2] = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self[2]
  l0._graph = self
  l0.OnFreeFormTextRequested = DummyFunction
  l0.OnFreeFormTextHidden = DummyFunction
  self[14] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"Text_01"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_14_Skipped
  l0.Finished = self.f_14_Finished
  l0.SPOut.Text_01 = self.f_14_SPOut__Text_01_
  self[8] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_8_Out
  self[4] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_4_Out
  l0.ResetOut = DummyFunction
  self[3] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[3]
  l0._graph = self
  l0.GotNPCList = self.f_3_GotNPCList
  self[10] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[10]
  l0._graph = self
  l0.PreOut = self.f_10_PreOut
  l0.PostOut = DummyFunction
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
  l0 = self[10]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_12_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_talkers_to_hide
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
  l0.Shown = self.f_7_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_13_Shown()
  self = self._graph
  self:EndCine()
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
function export:f_6_Hidden()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372047779474451"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_MotherloadIntro_CIN/s17_motherloadintro_cin.seq"
  l0:Start()
end
function export:f_14_Finished()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(1)
end
function export:f_14_Skipped()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(0)
end
function export:f_14_SPOut__Text_01_()
  local l0
  self = self._graph
  l0 = self[2]
  l0.FreeFormText = "FreeFormTextDB.9223372069363743741"
  l0:Open()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_7_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372057842297284"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_13_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_3_GotNPCList()
  local l0
  self = self._graph
  l0 = self[3]
  self.HQ_talkers_to_hide = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372057842297284"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_12_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_10_PreOut()
  local l0
  self = self._graph
  l0 = self[14]
  l0.SceneEntity = "9223372050219024361"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_DusanActs-FS_VID/s16_dusanacts-fs_vid.seq"
  l0:Start()
end
function export:EndCine()
end
_compilerVersion = 4
