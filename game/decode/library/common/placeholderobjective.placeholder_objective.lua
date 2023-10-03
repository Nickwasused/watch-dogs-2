export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ComposeString.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v2.lua")
  cbox:RegisterBox("Domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TriggerController.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Succeeded = DummyFunction
  self.Started = DummyFunction
  self.tempString = ""
  self.DetectInteract = 0
  self.DetectLeave = 0
  self[17] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0.SetTrue = self.f_17_SetTrue
  l0.SetFalse = self.f_17_SetFalse
  l0.Toggled = self.f_17_Toggled
  l0.SetFromBool = self.f_17_SetFromBool
  self[7] = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.DisplayRequested = DummyFunction
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = self.f_7_Out
  self[9] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = self.f_9_Use
  self[4] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_4_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[18] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0.SetTrue = self.f_18_SetTrue
  l0.SetFalse = self.f_18_SetFalse
  l0.Toggled = self.f_18_Toggled
  l0.SetFromBool = self.f_18_SetFromBool
  self[3] = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.DisplayRequested = DummyFunction
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = self.f_3_Out
  self[5] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_5_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[14] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = self.f_14_Leave
  l0.Use = DummyFunction
  self[1] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Shown = self.f_1_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:ForceSuccess()
  local l0
  self:en_5()
  l0 = self[5]
  l0:Disable()
  self:en_8()
  l0 = Boxes[PathID("Domino/System/TriggerController.lua")]
  l0:SetAsUnusable()
  self:en_14()
  l0 = self[14]
  l0:Disable()
  self:en_20()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
  self:en_9()
  l0 = self[9]
  l0:Disable()
end
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.Interact
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_15_Is_nil
  l0.Is_not_nil = self.f_15_Is_not_nil
  l0:In()
  self:Started()
end
function export:f_2_Stopped()
  local l0
  self = self._graph
  self:en_24()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_25_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DetectInteract
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_10_A_is_True
  l0.A_is_False = self.f_10_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[17]
  self.DetectInteract = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.LeaveArea
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_13_Is_nil
  l0.Is_not_nil = self.f_13_Is_not_nil
  l0:In()
end
function export:f_17_SetFalse()
  local l0
  self = self._graph
  l0 = self[17]
  self.DetectInteract = l0.Target
end
function export:f_17_SetFromBool()
  local l0
  self = self._graph
  l0 = self[17]
  self.DetectInteract = l0.Target
end
function export:f_17_SetTrue()
  local l0
  self = self._graph
  l0 = self[17]
  self.DetectInteract = l0.Target
end
function export:f_17_Toggled()
  local l0
  self = self._graph
  l0 = self[17]
  self.DetectInteract = l0.Target
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Trigger
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_25_Is_not_nil
  l0:In()
end
function export:f_9_Use()
  local l0
  self = self._graph
  self:en_20()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
  self:en_8()
  l0 = Boxes[PathID("Domino/System/TriggerController.lua")]
  l0:SetAsUnusable()
end
function export:f_4_Hidden()
  local l0
  self = self._graph
  self:en_23()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_23_Is_nil()
  local l0
  self = self._graph
  self:en_24()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_23_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.FX
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = self.f_2_Stopped
  l0.Cleaned = DummyFunction
  l0:Stop()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[18]
  self.DetectLeave = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.FX
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_21_Is_nil
  l0.Is_not_nil = self.f_21_Is_not_nil
  l0:In()
end
function export:f_18_SetFalse()
  local l0
  self = self._graph
  l0 = self[18]
  self.DetectLeave = l0.Target
end
function export:f_18_SetFromBool()
  local l0
  self = self._graph
  l0 = self[18]
  self.DetectLeave = l0.Target
end
function export:f_18_SetTrue()
  local l0
  self = self._graph
  l0 = self[18]
  self.DetectLeave = l0.Target
end
function export:f_18_Toggled()
  local l0
  self = self._graph
  l0 = self[18]
  self.DetectLeave = l0.Target
end
function export:f_15_Is_nil()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:False()
end
function export:f_15_Is_not_nil()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:FromBool()
end
function export:f_21_Is_nil()
  local l0
  self = self._graph
  self:en_19()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_21_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.FX
  l0._graph = self
  l0.Started = self.f_22_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_24_Is_nil()
  self = self._graph
  self:Succeeded()
end
function export:f_24_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ComposeString.lua")]
  l0.String[0] = "Objective Complete: "
  l0.String[1] = self.Success_Text
  l0.Separator = nil
  l0._graph = self
  l0._DynamicAnchors = {String = 2}
  l0.Out = self.f_12_Out
  l0:Compose()
end
function export:f_16_A_is_False()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_16_A_is_True()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Enable()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Seconds = 5
  l0:Start()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ComposeString.lua")]
  self.tempString = l0.Target
  l0 = self[3]
  l0.Duration = 5
  l0.DebugText = self.tempString
  l0:Display()
end
function export:f_10_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DetectLeave
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_16_A_is_True
  l0.A_is_False = self.f_16_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_10_A_is_True()
  local l0
  self = self._graph
  self:en_8()
  l0 = Boxes[PathID("Domino/System/TriggerController.lua")]
  l0:SetAsUsable()
end
function export:f_5_Enter()
  local l0
  self = self._graph
  self:en_20()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_6_TimeElapsed()
  self = self._graph
  self:Succeeded()
end
function export:f_22_Started()
  local l0
  self = self._graph
  self:en_19()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_20_Is_nil()
  local l0
  self = self._graph
  self:en_23()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
end
function export:f_20_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[4]
  l0.MapPoint = self.Map_Point
  l0:Hide()
end
function export:f_14_Leave()
  local l0
  self = self._graph
  self:en_20()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0:In()
  self:en_14()
  l0 = self[14]
  l0:Disable()
end
function export:f_13_Is_nil()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:False()
end
function export:f_13_Is_not_nil()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:FromBool()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ComposeString.lua")]
  self.tempString = l0.Target
  l0 = self[7]
  l0.MessageType = "MissionDebug"
  l0.Duration = 5
  l0.DebugText = self.tempString
  l0:Display()
end
function export:f_8_Unusable()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Disable()
end
function export:f_8_Usable()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Enable()
end
function export:f_19_Is_nil()
  local l0
  self = self._graph
  self:en_11()
  l0 = Boxes[PathID("Domino/System/ComposeString.lua")]
  l0:Compose()
end
function export:f_19_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[1]
  l0.MapPoint = self.Map_Point
  l0:Show()
end
function export:f_1_Shown()
  local l0
  self = self._graph
  self:en_11()
  l0 = Boxes[PathID("Domino/System/ComposeString.lua")]
  l0:Compose()
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.Bool = self.Interact
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.Trigger = self.Trigger
end
function export:en_23()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.FX
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_23_Is_nil
  l0.Is_not_nil = self.f_23_Is_not_nil
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.Bool = self.LeaveArea
end
function export:en_24()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = self.Success_Text
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_24_Is_nil
  l0.Is_not_nil = self.f_24_Is_not_nil
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.Trigger = self.Trigger
  l0.CheckNow = 1
end
function export:en_20()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Map_Point
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_20_Is_nil
  l0.Is_not_nil = self.f_20_Is_not_nil
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.Trigger = self.Trigger
  l0.CheckNow = 1
end
function export:en_11()
  local l0
  l0 = Boxes[PathID("Domino/System/ComposeString.lua")]
  l0.String[0] = "Objective Started: "
  l0.String[1] = self.Start_Text
  l0.Separator = nil
  l0._graph = self
  l0._DynamicAnchors = {String = 2}
  l0.Out = self.f_11_Out
end
function export:en_8()
  local l0
  l0 = Boxes[PathID("Domino/System/TriggerController.lua")]
  l0.Trigger = self.Trigger
  l0.CheckLookAt = 0
  l0.CheckAngle = 0
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = self.f_8_Usable
  l0.Unusable = self.f_8_Unusable
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
end
function export:en_19()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.Map_Point
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_19_Is_nil
  l0.Is_not_nil = self.f_19_Is_not_nil
end
function export:Succeeded()
end
function export:Started()
end
_compilerVersion = 4
