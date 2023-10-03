export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.Sitara = {}
  self.HQ_Talker = {}
  self.HQ_Sitara = nil
  self.HQ_Wrench = "9223372047464636840"
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_1_Skipped
  l0.Finished = self.f_1_Finished
  self[12] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
  self[10] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_10_GotUser
  l0.NotGotUser = self.f_10_NotGotUser
  l0.OnUserInPlace = self.f_10_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[2] = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self[2]
  l0._graph = self
  l0.EntityUnspawned = DummyFunction
  l0.AutomaticCLOUnspawned = self.f_2_AutomaticCLOUnspawned
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self[5] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_5_Out
  l0.ResetOut = DummyFunction
  self[9] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = self.f_9_Enabled
  l0.Disabled = self.f_9_Disabled
  l0.GotUser = self.f_9_GotUser
  l0.NotGotUser = self.f_9_NotGotUser
  l0.OnUserInPlace = self.f_9_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[3] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[3]
  l0._graph = self
  l0.PreOut = self.f_3_PreOut
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
  l0 = self[3]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[5]
  l0:In(1)
end
function export:f_1_Skipped()
  local l0
  self = self._graph
  l0 = self[5]
  l0:In(0)
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.HQ_Wrench
  l0.EntityList = nil
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
function export:f_11_Hidden()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372047779436040"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_FalseProfitsIntro_CIN/s02_falseprofitsintro_cin.seq"
  l0:Start()
end
function export:f_10_GotUser()
  local l0
  self = self._graph
  l0 = self[10]
  self.HQ_Wrench = l0.UserID
  l0 = self[12]
  l0:Input(0)
end
function export:f_10_NotGotUser()
  local l0
  self = self._graph
  l0 = self[10]
  self.HQ_Wrench = l0.UserID
  self:en_9()
  l0 = self[9]
  l0:Enable()
end
function export:f_10_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[10]
  self.HQ_Wrench = l0.UserID
end
function export:f_8_Shown()
  self = self._graph
  self:EndCine()
end
function export:f_2_AutomaticCLOUnspawned()
  local l0
  self = self._graph
  l0 = self[10]
  l0.CLO = "9223372047464636840"
  l0:GetUser()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.HQ_Wrench
  l0.EntityList = nil
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
function export:f_9_Disabled()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_9_Enabled()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Disable()
end
function export:f_9_GotUser()
  local l0
  self = self._graph
  l0 = self[9]
  self.HQ_Wrench = l0.UserID
end
function export:f_9_NotGotUser()
  local l0
  self = self._graph
  l0 = self[9]
  self.HQ_Wrench = l0.UserID
end
function export:f_9_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[9]
  self.HQ_Wrench = l0.UserID
end
function export:f_3_PreOut()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Entity = self.HQ_Sitara
  l0.CLO = "9223372047464636836"
  l0:UnspawnAutomaticCLO()
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.CLO = "9223372047464636840"
end
function export:EndCine()
end
_compilerVersion = 4
