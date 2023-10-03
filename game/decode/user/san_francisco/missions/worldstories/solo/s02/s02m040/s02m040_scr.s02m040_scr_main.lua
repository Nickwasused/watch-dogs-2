export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerRcID.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.JimmyFree = DummyFunction
  self.PlayerEntity = nil
  self.NPC_Miranda = nil
  self.Escape_Car = nil
  self.RC_ID = nil
  self.JimmySiska = nil
  self[31] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[31]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_31_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[21] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_21_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[19] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_19_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[28] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[28]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_28_Out
  self[30] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[30]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_30_Deactivated
  self[16] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[16]
  l0._graph = self
  l0.PreOut = self.f_16_PreOut
  l0.PostOut = DummyFunction
  self[7] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_7_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[36] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {
    EntityIn = {"Jimmy"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_36_Skipped
  l0.Finished = self.f_36_Finished
  self[29] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[29]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_29_PostOut
  self[15] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_15_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[26] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[41] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[41]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_41_Out
  l0.ResetOut = DummyFunction
  self[12] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {
    EntityIn = {"Jimmy"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_12_Skipped
  l0.Finished = self.f_12_Finished
  self[13] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_13_Out
  self[39] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[39]
  l0._graph = self
  l0.PreOut = self.f_39_PreOut
  l0.PostOut = DummyFunction
  self[10] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_10_Out
  l0.ResetOut = DummyFunction
  self[4] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_4_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
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
  self[14] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_14_Out
  self[2] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_2_Out
  l0.ResetOut = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:SetJimmyFree()
  local l0
  l0 = self[16]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:SetJimmyFree_RC()
  local l0
  l0 = self[30]
  l0:Deactivate()
end
function export:f_24_Shown()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(0)
end
function export:f_31_VanishSet()
  local l0
  self = self._graph
  l0 = self[12]
  l0.SceneEntity = "9223372055397594704"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_SCR_FreeJimmySiska/s02_scr_freejimmysiska.seq"
  l0.EntityIn.Jimmy = self.Jimmy
  l0:Start()
end
function export:f_20_Hidden()
  local l0
  self = self._graph
  l0 = self[28]
  l0:Input(0)
end
function export:f_21_HackForced()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Seconds = 2
  l0:Start()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372073325332833"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_33_Out
  l0:Enable()
end
function export:f_19_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[31]
  l0.Affiliation = "UZulu"
  l0:ForceVanish()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Door1Open
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_8_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Door2Open
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_9_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Start()
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(0)
end
function export:f_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerRcID.lua")]
  l0._graph = self
  l0.Success = self.f_22_Success
  l0.NoControlledRc = self.f_22_NoControlledRc
  l0:In()
end
function export:f_30_Deactivated()
  local l0
  self = self._graph
  l0 = self[39]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 1
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_23_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Player
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_20_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Start()
end
function export:f_16_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0:In()
end
function export:f_7_HackForced()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In(0)
end
function export:f_9_A_is_True()
  local l0
  self = self._graph
  l0 = self[4]
  l0.HackableEntity = "9223372069342022692"
  l0:ForceHack()
end
function export:f_36_Finished()
  local l0
  self = self._graph
  l0 = self[41]
  l0:In(1)
end
function export:f_36_Skipped()
  local l0
  self = self._graph
  l0 = self[41]
  l0:In(0)
end
function export:f_25_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Player
  l0.EntityList = nil
  l0.Visible = 0
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_24_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_29_PostOut()
  self = self._graph
  self:JimmyFree()
end
function export:f_15_HackForced()
  local l0
  self = self._graph
  l0 = self[21]
  l0.HackableEntity = "9223372069342022692"
  l0:ForceHack()
end
function export:f_26_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[29]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.RC_ID
  l0.EntityList = nil
  l0.Visible = 0
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_25_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_12_Finished()
  local l0
  self = self._graph
  l0 = self[10]
  l0:In(1)
end
function export:f_12_Skipped()
  local l0
  self = self._graph
  l0 = self[10]
  l0:In(0)
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.HackableEntity = "9223372069342022706"
  l0:ForceHack()
end
function export:f_8_A_is_True()
  local l0
  self = self._graph
  l0 = self[7]
  l0.HackableEntity = "9223372069342022706"
  l0:ForceHack()
end
function export:f_39_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(1)
end
function export:f_4_HackForced()
  local l0
  self = self._graph
  l0 = self[2]
  l0:In(1)
end
function export:f_5_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[36]
  l0.SceneEntity = "9223372062309358451"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_SCR_FreeJimmySiska/s02_scr_freejimmysiska_rc.seq"
  l0.EntityIn.Jimmy = self.Jimmy
  l0:Start()
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(1)
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372073325332833"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_32_Out
  l0:Enable()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0:In()
end
function export:f_22_NoControlledRc()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerRcID.lua")]
  self.RC_ID = l0.RcID
  l0 = self[28]
  l0:Input(1)
end
function export:f_22_Success()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerRcID.lua")]
  self.RC_ID = l0.RcID
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372068252315840"
  l0.SceneEntity = "9223372062309358451"
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = 0
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = self.JimmySiska
  l0.NotRemovableEntity[1] = self.RC_ID
  l0._graph = self
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_27_Out
  l0:CleanZone()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372068252315840"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = 1
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = self.PlayerEntity
  l0.NotRemovableEntity[1] = self.Jimmy
  l0._graph = self
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = DummyFunction
  l0:CleanZone()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:In()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.RC_ID
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_23_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:Out()
end
function export:JimmyFree()
end
_compilerVersion = 4
