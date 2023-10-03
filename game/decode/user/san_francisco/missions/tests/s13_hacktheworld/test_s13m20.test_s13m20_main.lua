export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetPosition.lua")
  cbox:RegisterBox("domino/System/HackableController.lua")
  cbox:RegisterBox("domino/System/InputListenerMonitor.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetString.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.TagPoint_HackerSpace = "9223372046425876193"
  self.TagPoint_StanfordDish = "9223372046425876192"
  self.RatioA = 0
  self.PlayerVehicle = nil
  self.DistanceToTagB = 0
  self.DistanceToTagA = 0
  self.MaxDistance = 3500
  self.MinDistance = 2000
  self.RatioB = 0
  self.ZPos = 0
  self.RatioC = 0
  self.Total = 0
  self.InFOV = 0
  self.DishRotation = 0
  self[45] = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self[45]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_45_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[102] = cbox:CreateBox("domino/System/OnceOnly_v2.lua")
  l0 = self[102]
  l0._graph = self
  l0._DynamicAnchors = {In = 2, Out = 2}
  l0.Out[0] = self.f_102_Out_0
  l0.Out[1] = DummyFunction
  l0.ResetOut = DummyFunction
  self[55] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[55]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_55_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[62] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[62]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_62_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[57] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[57]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_57_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[53] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[53]
  l0._graph = self
  l0.Shown = self.f_53_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[29] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[29]
  l0._graph = self
  l0.Shown = self.f_29_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[87] = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self[87]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_87_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[52] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[52]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_52_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[46] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = self.f_46_Use
  self[88] = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self[88]
  l0._graph = self
  l0.Enabled = self.f_88_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[77] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[77]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[89] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[89]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_89_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[32] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_32_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[80] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[80]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_80_Out
  self[56] = cbox:CreateBox("domino/System/InputListenerMonitor.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InputReceived = self.f_56_InputReceived
  self[86] = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self[86]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[48] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_48_TimeElapsed
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
  l0 = self[2]
  l0.LayerName = "Test_S13M20_Main"
  l0:Load()
end
function export:f_83_Out_0()
  local l0
  self = self._graph
  l0 = self[57]
  l0.MissionName = "MissionList.9223372046425794693"
  l0.DebugObjective = "Find a way to reach the base of the Dish"
  l0:ShowNewObjective()
end
function export:f_83_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372046621209731"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_82_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_45_HackForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_54_Out_0
  l0.Out[1] = self.f_54_Out_1
  l0:In()
end
function export:f_102_Out_0()
  local l0
  self = self._graph
  l0 = self[48]
  l0.Loop = 1
  l0:Start()
end
function export:f_55_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372046621209731"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_84_Shown
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
function export:f_62_MessageRequested()
  local l0
  self = self._graph
  l0 = self[80]
  l0:Input(0)
end
function export:f_57_MessageRequested()
  local l0
  self = self._graph
  l0 = self[29]
  l0.MapPoint = "9223372046493796708"
  l0:Show()
end
function export:f_53_Shown()
  local l0
  self = self._graph
  l0 = self[55]
  l0.MapPoint = "9223372046493796708"
  l0:Hide()
end
function export:f_29_Shown()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Trigger = "9223372046621210107"
  l0:Enable()
end
function export:f_84_Shown()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Input = "rctc_disconnect"
  l0:Enable()
end
function export:f_87_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372046621255629"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = self.f_91_Usable
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0:SetAsUsable()
end
function export:f_52_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372046621255629"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_79_Unusable
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0:SetAsUnusable()
end
function export:f_46_Use()
  local l0
  self = self._graph
  l0 = self[88]
  l0.HackableEntity = "9223372046621209733"
  l0:EnableHack()
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self.DishRotation = l0.zRot
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.DishRotation
  l0.B = 280
  l0.Tolerance = 10
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_63_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = self.f_63_A_ne_B
  l0:In()
end
function export:f_88_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372046621255629"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_90_Unusable
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0:SetAsUnusable()
end
function export:f_91_Usable()
  local l0
  self = self._graph
  l0 = self[80]
  l0:Input(1)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_83_Out_0
  l0.Out[1] = self.f_83_Out_1
  l0:In()
end
function export:f_85_Hidden()
  local l0
  self = self._graph
  l0 = self[87]
  l0.HackableEntity = "9223372046621209733"
  l0:DisableHack()
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self.DishRotation = l0.zRot
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  l0.String = nil
  l0.Integer = nil
  l0.Float = self.DishRotation
  l0.Boolean = nil
  l0.Entity = nil
  l0.Player = nil
  l0._graph = self
  l0.Out = self.f_50_Out
  l0:FromFloat()
end
function export:f_63_A_eq_B()
  local l0
  self = self._graph
  l0 = self[52]
  l0.MapPoint = "9223372046493797477"
  l0:Hide()
end
function export:f_63_A_ne_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372046621209731"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_85_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_82_Hidden()
  local l0
  self = self._graph
  l0 = self[86]
  l0.HackableEntity = "9223372046621209733"
  l0:DisableHack()
end
function export:f_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetString.lua")]
  self._sld_Target_50 = l0.Target
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = self._sld_Target_50
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_89_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[45]
  l0.HackableEntity = "9223372046621209733"
  l0:ForceHack()
end
function export:f_54_Out_0()
  local l0
  self = self._graph
  l0 = self[102]
  l0:In(0)
end
function export:f_54_Out_1()
  local l0
  self = self._graph
  l0 = self[53]
  l0.MapPoint = "9223372046493797477"
  l0:Show()
end
function export:f_90_Unusable()
  local l0
  self = self._graph
  l0 = self[89]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_32_Enter()
  local l0
  self = self._graph
  l0 = self[62]
  l0.MissionName = "MissionList.9223372046425794693"
  l0.ShowPreviousObjectiveComplete = 0
  l0.DebugObjective = "Align the Dish"
  l0:ShowNewObjective()
end
function export:f_79_Unusable()
  local l0
  self = self._graph
  l0 = self[77]
  l0.MissionName = "MissionList.9223372046425794693"
  l0:ShowMissionComplete()
end
function export:f_80_Out()
  local l0
  self = self._graph
  l0 = self[46]
  l0.Trigger = "9223372046621255629"
  l0:Enable()
end
function export:f_56_InputReceived()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = "9223372046621209731"
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0.Out = self.f_61_Out
  l0:In()
end
function export:f_48_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = "9223372046621209731"
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0.Out = self.f_49_Out
  l0:In()
end
_compilerVersion = 4
