export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/LoadingScreenMonitor_v2.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerInsideHma.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Sitara = {}
  self.Wrench = {}
  self.Wrench_HackerSpace = nil
  self.Sitara_HackerSpace = nil
  self[24] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_24_GotUser
  l0.NotGotUser = self.f_24_NotGotUser
  l0.OnUserInPlace = self.f_24_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[11] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[11]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_11_PostOut
  self[19] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_19_Out
  self[8] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_8_Out
  l0.ResetOut = DummyFunction
  self[21] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_21_Out
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
  self[3] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_3_Skipped
  l0.Finished = self.f_3_Finished
  self[17] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_17_Out
  self[7] = cbox:CreateBox("domino/System/LoadingScreenMonitor_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_7_Disabled
  l0.LoadingScreenEnded = self.f_7_LoadingScreenEnded
  l0.LoadingScreenStarted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_15_GotUser
  l0.NotGotUser = self.f_15_NotGotUser
  l0.OnUserInPlace = self.f_15_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
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
  self[1] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_1_GotUser
  l0.NotGotUser = self.f_1_NotGotUser
  l0.OnUserInPlace = self.f_1_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[20] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_20_GotUser
  l0.NotGotUser = self.f_20_NotGotUser
  l0.OnUserInPlace = self.f_20_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[13] = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Done = self.f_13_Done
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_14_Out_0
  l0.Out[1] = self.f_14_Out_1
  l0:In()
end
function export:f_24_GotUser()
  local l0
  self = self._graph
  l0 = self[24]
  self.Sitara_HackerSpace = l0.UserID
end
function export:f_24_NotGotUser()
  local l0
  self = self._graph
  l0 = self[24]
  self.Sitara_HackerSpace = l0.UserID
end
function export:f_24_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[24]
  self.Sitara_HackerSpace = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = nil
  l0.OnGenericChannel = 1
  l0.OnShopChannel = 1
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_14_Out_1()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Start()
end
function export:f_5_Hidden()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Condition(0)
end
function export:f_6_Hidden()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Condition(1)
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Disable()
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(1)
end
function export:f_11_PostOut()
  self = self._graph
  self:Out()
end
function export:f_23_Out_0()
  local l0
  self = self._graph
  l0 = self[1]
  l0.CLO = "9223372047464636836"
  l0:GetUser()
end
function export:f_23_Out_1()
  local l0
  self = self._graph
  l0 = self[20]
  l0.CLO = "9223372047464636840"
  l0:GetUser()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SceneEntity = "9223372047779474419"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_YouAreNotAlone_CIN/s07_youarenotalone_cin.seq"
  l0:Start()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0.Out[2] = self.f_16_Out_2
  l0:In()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Sitara_HackerSpace
  l0.EntityList = nil
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
function export:f_4_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[13]
  l0.SpawnPoint = "9223372046684741814"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Start()
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Sitara_HackerSpace
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_16_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Wrench_HackerSpace
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_3_Finished()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(1)
end
function export:f_3_Skipped()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(0)
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Wrench_HackerSpace
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
function export:f_7_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_23_Out_0
  l0.Out[1] = self.f_23_Out_1
  l0:In()
end
function export:f_7_LoadingScreenEnded()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Disable()
end
function export:f_15_GotUser()
  local l0
  self = self._graph
  l0 = self[15]
  self.Wrench_HackerSpace = l0.UserID
end
function export:f_15_NotGotUser()
  local l0
  self = self._graph
  l0 = self[15]
  self.Wrench_HackerSpace = l0.UserID
end
function export:f_15_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[15]
  self.Wrench_HackerSpace = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0:In()
end
function export:f_9_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[11]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Disable()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Input(1)
end
function export:f_1_GotUser()
  local l0
  self = self._graph
  l0 = self[1]
  self.Sitara_HackerSpace = l0.UserID
  l0 = self[21]
  l0:Input(0)
end
function export:f_1_NotGotUser()
  local l0
  self = self._graph
  l0 = self[1]
  self.Sitara_HackerSpace = l0.UserID
  self:en_24()
  l0 = self[24]
  l0:Enable()
end
function export:f_1_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[1]
  self.Sitara_HackerSpace = l0.UserID
end
function export:f_20_GotUser()
  local l0
  self = self._graph
  l0 = self[20]
  self.Wrench_HackerSpace = l0.UserID
  l0 = self[17]
  l0:Input(0)
end
function export:f_20_NotGotUser()
  local l0
  self = self._graph
  l0 = self[20]
  self.Wrench_HackerSpace = l0.UserID
  self:en_15()
  l0 = self[15]
  l0:Enable()
end
function export:f_20_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[20]
  self.Wrench_HackerSpace = l0.UserID
end
function export:f_13_Done()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Enable()
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.CLO = "9223372047464636836"
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.CLO = "9223372047464636840"
end
function export:Out()
end
_compilerVersion = 4
