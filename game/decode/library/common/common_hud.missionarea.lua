export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v3.lua")
  cbox:RegisterBox("Domino/System/MissionZoneController.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/TimerToScreen.lua")
  cbox:RegisterBox("Domino/System/TriggerGameOver.lua")
end
function export:Init(cbox)
  local l0
  self.Started = DummyFunction
  self.Stopped = DummyFunction
  self.Failed = DummyFunction
  self.Exited = DummyFunction
  self.Reentered = DummyFunction
  self.WarningTime = 15
  self.PlayerID = nil
  self.WasStopped = 0
  self.TimerElapsed = 0
  self[7] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = self.f_7_Enabled
  l0.Disabled = self.f_7_Disabled
  l0.EnterRadius = self.f_7_EnterRadius
  l0.ExitRadius = self.f_7_ExitRadius
  self[2] = cbox:CreateBox("Domino/System/TimerToScreen.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = self.f_2_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = self.f_2_Stopped
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_2_TimeElapsed
  self[9] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.SetTrue = self.f_9_SetTrue
  l0.SetFalse = self.f_9_SetFalse
  l0.Toggled = self.f_9_Toggled
  l0.SetFromBool = self.f_9_SetFromBool
  self[10] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.SetTrue = self.f_10_SetTrue
  l0.SetFalse = self.f_10_SetFalse
  l0.Toggled = self.f_10_Toggled
  l0.SetFromBool = self.f_10_SetFromBool
  self[4] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.DisplayRequested = self.f_4_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[13] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_13_AllCheckpointsDisabled
  self[5] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.SetTrue = self.f_5_SetTrue
  l0.SetFalse = self.f_5_SetFalse
  l0.Toggled = self.f_5_Toggled
  l0.SetFromBool = self.f_5_SetFromBool
  self[1] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.DisplayRequested = self.f_1_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_1_HideRequested
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:Stop()
  local l0
  l0 = self[10]
  l0:True()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Stop()
end
function export:f_7_Enabled()
  self = self._graph
  self:Started()
end
function export:f_7_EnterRadius()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Stop()
end
function export:f_7_ExitRadius()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Start()
end
function export:f_2_Started()
  local l0
  self = self._graph
  self:en_8()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Enable()
end
function export:f_2_Stopped()
  local l0
  self = self._graph
  self:en_8()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Disable()
end
function export:f_2_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[9]
  l0:True()
end
function export:f_3_Out()
  self = self._graph
  self:Failed()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerID = l0.PlayerID
  l0 = self[5]
  l0:False()
end
function export:f_11_A_is_False()
  self = self._graph
  self:Reentered()
end
function export:f_11_A_is_True()
  local l0
  self = self._graph
  l0 = self[4]
  l0.MessageType = "MissionFailed"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "ExitedMissionArea",
    id = "165442"
  }
  l0:Display()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[9]
  self.TimerElapsed = l0.Target
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_9_SetFalse()
  local l0
  self = self._graph
  l0 = self[9]
  self.TimerElapsed = l0.Target
end
function export:f_9_SetFromBool()
  local l0
  self = self._graph
  l0 = self[9]
  self.TimerElapsed = l0.Target
end
function export:f_9_SetTrue()
  local l0
  self = self._graph
  l0 = self[9]
  self.TimerElapsed = l0.Target
end
function export:f_9_Toggled()
  local l0
  self = self._graph
  l0 = self[9]
  self.TimerElapsed = l0.Target
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[10]
  self.WasStopped = l0.Target
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_10_SetFalse()
  local l0
  self = self._graph
  l0 = self[10]
  self.WasStopped = l0.Target
end
function export:f_10_SetFromBool()
  local l0
  self = self._graph
  l0 = self[10]
  self.WasStopped = l0.Target
end
function export:f_10_SetTrue()
  local l0
  self = self._graph
  l0 = self[10]
  self.WasStopped = l0.Target
end
function export:f_10_Toggled()
  local l0
  self = self._graph
  l0 = self[10]
  self.WasStopped = l0.Target
end
function export:f_4_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[13]
  l0:DisableAllCheckpoints()
end
function export:f_8_Disabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Hide()
end
function export:f_8_Enabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Display()
end
function export:f_13_AllCheckpointsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:GameOver()
end
function export:f_12_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TimerElapsed
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_11_A_is_True
  l0.A_is_False = self.f_11_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_12_A_is_True()
  self = self._graph
  self:Stopped()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[5]
  self.WasStopped = l0.Target
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_5_SetFalse()
  local l0
  self = self._graph
  l0 = self[5]
  self.WasStopped = l0.Target
end
function export:f_5_SetFromBool()
  local l0
  self = self._graph
  l0 = self[5]
  self.WasStopped = l0.Target
end
function export:f_5_SetTrue()
  local l0
  self = self._graph
  l0 = self[5]
  self.WasStopped = l0.Target
end
function export:f_5_Toggled()
  local l0
  self = self._graph
  l0 = self[5]
  self.WasStopped = l0.Target
end
function export:f_1_DisplayRequested()
  self = self._graph
  self:Exited()
end
function export:f_1_HideRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.WasStopped
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_12_A_is_True
  l0.A_is_False = self.f_12_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Entity1 = self.MissionArea
  l0.Entity2 = self.PlayerID
  l0.Radius = self.Radius
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.Seconds = self.WarningTime
end
function export:en_8()
  local l0
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.MissionArea
  l0.Red = 0.78
  l0.Green = 0.82
  l0.Blue = 0.24
  l0.Alpha = 1
  l0.Radius = self.Radius
  l0.DrawType = "Outside"
  l0.ShapeType = "CMissionCircleDescriptor"
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0.Enabled = self.f_8_Enabled
  l0.Disabled = self.f_8_Disabled
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.MessageType = "MissionWarning"
  l0.MessageIcon = "iconWarning"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "ExitingMissionArea",
    id = "165444"
  }
  l0.Duration = self.WarningTime
end
function export:Started()
end
function export:Stopped()
end
function export:Failed()
end
function export:Exited()
end
function export:Reentered()
end
_compilerVersion = 4
