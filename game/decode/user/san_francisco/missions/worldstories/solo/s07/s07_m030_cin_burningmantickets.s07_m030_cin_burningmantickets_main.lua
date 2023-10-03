export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/LoadingScreenMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerOutsideHma.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Sitara = {}
  self.Wrench = {}
  self.Horatio = {}
  self.HQ_Talker = {}
  self[6] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_6_Out
  l0.ResetOut = DummyFunction
  self[5] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[5]
  l0._graph = self
  l0.GotNPCList = self.f_5_GotNPCList
  self[8] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[8]
  l0._graph = self
  l0.PreOut = self.f_8_PreOut
  l0.PostOut = DummyFunction
  self[4] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[4]
  l0._graph = self
  l0.GotNPCList = self.f_4_GotNPCList
  self[7] = cbox:CreateBox("domino/System/LoadingScreenMonitor_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_7_Disabled
  l0.LoadingScreenEnded = self.f_7_LoadingScreenEnded
  l0.LoadingScreenStarted = DummyFunction
  self[9] = cbox:CreateBox("domino/System/TeleportPlayerOutsideHma.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.Done = DummyFunction
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
  l0 = self[8]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_10_Hidden()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372047837000443"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_BurningManTickets_CIN/s07_burningmantickets_cin.seq"
  l0:Start()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_5_GotNPCList()
  local l0
  self = self._graph
  l0 = self[5]
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
function export:f_8_PreOut()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_3_Shown()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SpawnPoint = "9223372046684705912"
  l0.StandaloneLoader = "9223372047131482396"
  l0:In()
end
function export:f_4_GotNPCList()
  local l0
  self = self._graph
  l0 = self[4]
  self.HQ_Talker = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.HQ_Talker
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_3_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_7_Disabled()
  self = self._graph
  self:Out()
end
function export:f_7_LoadingScreenEnded()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Disable()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Enable()
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
function export:Out()
end
_compilerVersion = 4
