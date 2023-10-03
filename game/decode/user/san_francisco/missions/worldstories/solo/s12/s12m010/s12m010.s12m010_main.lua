export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.CLO_HQ = {}
  self[17] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_17_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_16_Out
  self[10] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[10]
  l0._graph = self
  l0.GotNPCList = self.f_10_GotNPCList
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[19] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_19_HasNOT
  self[13] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[13]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_13_Skipped
  l0.Finished = self.f_13_Finished
  self[20] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[8] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_8_Out
  l0.ResetOut = DummyFunction
  self[11] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[11]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_11_PostOut
  self[5] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_5_Unloaded
  l0.Reseted = DummyFunction
  self[12] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[12]
  l0._graph = self
  l0.PreOut = self.f_12_PreOut
  l0.PostOut = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[4]
  l0._graph = self
  self[3] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[3]
  l0._graph = self
  l0.GotNPCList = self.f_3_GotNPCList
  self[9] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_9_Has
  l0.HasNOT = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  l0 = self[16]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[16]
  l0:Input(0)
end
function export:f_17_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[11]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S12M010_Main"
  l0:Load()
end
function export:f_10_GotNPCList()
  local l0
  self = self._graph
  l0 = self[10]
  self.CLO_HQ = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.CLO_HQ
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
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_6_Hidden()
  local l0
  self = self._graph
  l0 = self[13]
  l0.SceneEntity = "9223372047779436066"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S12/S12_AttackHackSpace_CIN/s12_attackhackspace_cin.seq"
  l0:Start()
end
function export:f_19_HasNOT()
  local l0
  self = self._graph
  l0 = self[20]
  l0.ItemDB = "Items.9223372055970893582"
  l0:ExecuteRewards()
end
function export:f_13_Finished()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(1)
end
function export:f_13_Skipped()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(0)
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_11_PostOut()
  local l0
  self = self._graph
  l0 = self[5]
  l0.LayerName = "S12M010_Main"
  l0:Unload()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[12]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_5_Unloaded()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Succeed()
end
function export:f_12_PreOut()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Group = "HQ_Talker"
  l0:GetAll()
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Start()
end
function export:f_18_Out_1()
  local l0
  self = self._graph
  l0 = self[9]
  l0.ProgressionTag = "ProgressionTag.9223372055970893578"
  l0:HasProgressionTag()
end
function export:f_3_GotNPCList()
  local l0
  self = self._graph
  l0 = self[3]
  self.CLO_HQ = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.CLO_HQ
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
function export:f_9_Has()
  local l0
  self = self._graph
  l0 = self[19]
  l0.ProgressionTag = "ProgressionTag.9223372055970893581"
  l0:HasProgressionTag()
end
function export:f_7_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0:In()
end
_compilerVersion = 4
