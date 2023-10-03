export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
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
  self.HQ_Talker = {}
  self[6] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_6_Out
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
  self[4] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[4]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_4_PostOut
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
  self[9] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[9]
  l0._graph = self
  l0.GotNPCList = self.f_9_GotNPCList
  self[7] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[7]
  l0._graph = self
  l0.GotNPCList = self.f_7_GotNPCList
  self[3] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_3_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[2] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[2]
  l0._graph = self
  l0.PreOut = self.f_2_PreOut
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
  l0 = self[2]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_13_Hidden()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372047779474426"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_LimpNudleIntro_CIN/s08_limpnudleintro_cin.seq"
  l0:Start()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372056579853585"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_14_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_11_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372072386919498"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_12_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In(1)
end
function export:f_1_Skipped()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In(0)
end
function export:f_10_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372072386919498"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_11_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_4_PostOut()
  self = self._graph
  self:Out()
end
function export:f_8_Shown()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Start()
end
function export:f_5_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_9_GotNPCList()
  local l0
  self = self._graph
  l0 = self[9]
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
  l0.Hidden = self.f_10_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_7_GotNPCList()
  local l0
  self = self._graph
  l0 = self[7]
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_8_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_3_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_12_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372056579853585"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_13_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_14_Shown()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_2_PreOut()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Start()
end
function export:Out()
end
_compilerVersion = 4
