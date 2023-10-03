export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/Bind_v2.lua")
  cbox:RegisterBox("Domino/System/HackableController_v2.lua")
  cbox:RegisterBox("Domino/System/KeyIntelController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("Domino/System/SecurityCamController.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = self.f_4_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_4_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[5] = cbox:CreateBox("Domino/System/SecurityCameraMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = self.f_5_Enabled
  l0.Disabled = self.f_5_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_5_OnEndAccessCamera
  l0.OnStartExitCamera = self.f_5_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[11] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
  self[8] = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Set = DummyFunction
  l0.Reset = self.f_8_Reset
  self[2] = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = self.f_2_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[12] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
  self[3] = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_3_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
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
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:Stop()
  local l0
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_1_Bound()
  self = self._graph
  self:Out()
end
function export:f_7_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(1)
end
function export:f_10_Out()
  local l0
  self = self._graph
  self:en_6()
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:f_4_Enabled()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_4_Killed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.HiddenCamera
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_7_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0:ForceUserOutOfCamera()
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0:In()
end
function export:f_5_Enabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:DisableHack()
end
function export:f_5_OnEndAccessCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_5_OnStartExitCamera()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:EnableProfiling()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(0)
end
function export:f_11_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_8_Reset()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:DisableHack()
end
function export:f_2_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = self.NPC
  l0.Child = self.HiddenCamera
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = 1
  l0._graph = self
  l0.Bound = self.f_1_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_12_Out()
  local l0
  self = self._graph
  self:en_6()
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:EnableHack()
end
function export:f_3_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Entity = self.NPC
  l0:ResetKeyIntel()
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Pawn = self.NPC
  l0.CheckNow = 1
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.CameraEntity = self.HiddenCamera
end
function export:en_6()
  local l0
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.NPC
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.HackableEntity = self.HiddenCamera
  l0.OasisProfilerInfo = self.Profile
  l0.ProfileLinkedToHack = 1
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.HackableEntity = self.NPC
  l0.OasisProfilerInfo = self.Profile
  l0.ProfileLinkedToHack = 1
end
function export:Out()
end
_compilerVersion = 4
