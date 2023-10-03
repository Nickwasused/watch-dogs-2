export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("Domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v3.lua")
  cbox:RegisterBox("Domino/System/MissionZoneController.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/Lists/SetList.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Started = DummyFunction
  self.Stopped = DummyFunction
  self.NPCListUpdated = DummyFunction
  self.NPCs_All_Dead = DummyFunction
  self.ResetWarningTimer = 5
  self.WasStopped = 0
  self.NPC_List = {}
  self.Victim = nil
  self.AddedNPC = nil
  self.IsUpdate = 0
  self.HideZoneAfterClearing = 0
  self[3] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = self.f_3_Enabled
  l0.Disabled = self.f_3_Disabled
  l0.Enter = self.f_3_Enter
  l0.Leave = self.f_3_Leave
  l0.Use = DummyFunction
  self[13] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_13_Added
  l0.Removed = self.f_13_Removed
  l0.Out = self.f_13_Out
  self[8] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.SetTrue = self.f_8_SetTrue
  l0.SetFalse = self.f_8_SetFalse
  l0.Toggled = self.f_8_Toggled
  l0.SetFromBool = self.f_8_SetFromBool
  self[2] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0.DisplayRequested = DummyFunction
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_2_HideRequested
  l0.DisplayFinished = self.f_2_DisplayFinished
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_10_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_10_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = self.f_6_Enabled
  l0.Disabled = self.f_6_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_6_Killed
  l0.DBNO = self.f_6_DBNO
  l0.AllDead = self.f_6_AllDead
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[21] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_21_Out_0
  l0.ResetOut = DummyFunction
  self[14] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0.SetTrue = self.f_14_SetTrue
  l0.SetFalse = self.f_14_SetFalse
  l0.Toggled = self.f_14_Toggled
  l0.SetFromBool = self.f_14_SetFromBool
  self[12] = cbox:CreateBox("Domino/System/Lists/ListForEach.lua")
  l0 = self[12]
  l0._graph = self
  l0.Started = self.f_12_Started
  l0.Stopped = self.f_12_Stopped
  l0.ForEach = self.f_12_ForEach
  l0.GotNext = self.f_12_GotNext
  l0.EndOfList = self.f_12_EndOfList
  self[4] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_4_Out_0
  l0.ResetOut = DummyFunction
  self[11] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_11_Added
  l0.Removed = self.f_11_Removed
  l0.Out = self.f_11_Out
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
  l0 = self[8]
  l0:False()
end
function export:Stop()
  local l0
  l0 = self[8]
  l0:True()
end
function export:UpdateNPCList()
  local l0
  l0 = Boxes[PathID("Domino/System/Lists/ListLength.lua")]
  l0.Input = self.NPCList
  l0._graph = self
  l0.Out = DummyFunction
  l0.Empty = self.f_16_Empty
  l0.NotEmpty = self.f_16_NotEmpty
  l0:GetLength()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Hide()
end
function export:f_3_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsUpdate
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_15_A_is_True
  l0.A_is_False = self.f_15_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_3_Enter()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(0)
end
function export:f_3_Leave()
  local l0
  self = self._graph
  l0 = self[21]
  l0:In(0)
end
function export:f_13_Added()
  local l0
  self = self._graph
  l0 = self[13]
  self.NPC_List = l0.Target
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[13]
  self.NPC_List = l0.Target
end
function export:f_13_Removed()
  local l0
  self = self._graph
  l0 = self[13]
  self.NPC_List = l0.Target
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[8]
  self.WasStopped = l0.Target
end
function export:f_8_SetFalse()
  local l0
  self = self._graph
  l0 = self[8]
  self.WasStopped = l0.Target
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  l0.List = self.NPCList
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:FromList()
end
function export:f_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self[8]
  self.WasStopped = l0.Target
end
function export:f_8_SetTrue()
  local l0
  self = self._graph
  l0 = self[8]
  self.WasStopped = l0.Target
  self:en_6()
  l0 = self[6]
  l0:Disable()
end
function export:f_8_Toggled()
  local l0
  self = self._graph
  l0 = self[8]
  self.WasStopped = l0.Target
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/Lists/SetList.lua")]
  self.NPC_List = l0.Target
  l0 = self[14]
  l0:False()
end
function export:f_2_DisplayFinished()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Start()
end
function export:f_2_HideRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.WasStopped
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_7_A_is_True
  l0.A_is_False = self.f_7_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_10_Stopped()
  self = self._graph
  self:Stopped()
end
function export:f_10_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Reset()
end
function export:f_7_A_is_False()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Start()
end
function export:f_7_A_is_True()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Stop()
end
function export:f_16_Empty()
  local l0
  self = self._graph
  l0 = self[8]
  l0:True()
end
function export:f_16_NotEmpty()
  local l0
  self = self._graph
  l0 = self[12]
  l0.List = self.NPCList
  l0:Start()
end
function export:f_6_AllDead()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HideZoneWhenCleared
  l0.B = nil
  l0._graph = self
  l0.Out = self.f_18_Out
  l0.A_is_True = self.f_18_A_is_True
  l0.A_is_False = self.f_18_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_6_DBNO()
  local l0
  self = self._graph
  l0 = self[6]
  self.Victim = l0.Victim
end
function export:f_6_Disabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Disable()
end
function export:f_6_Enabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Enable()
end
function export:f_6_Killed()
  local l0
  self = self._graph
  l0 = self[6]
  self.Victim = l0.Victim
  l0 = self[11]
  l0.Input = self.NPC_List
  l0.Data[0] = self.Victim
  l0:Remove()
end
function export:f_1_Disabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_1_Enabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_15_A_is_False()
  self = self._graph
  self:Started()
end
function export:f_15_A_is_True()
  self = self._graph
  self:NPCListUpdated()
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Hide()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[14]
  self.IsUpdate = l0.Target
  self:en_6()
  l0 = self[6]
  l0:Enable()
end
function export:f_14_SetFalse()
  local l0
  self = self._graph
  l0 = self[14]
  self.IsUpdate = l0.Target
end
function export:f_14_SetFromBool()
  local l0
  self = self._graph
  l0 = self[14]
  self.IsUpdate = l0.Target
end
function export:f_14_SetTrue()
  local l0
  self = self._graph
  l0 = self[14]
  self.IsUpdate = l0.Target
end
function export:f_14_Toggled()
  local l0
  self = self._graph
  l0 = self[14]
  self.IsUpdate = l0.Target
end
function export:f_12_EndOfList()
  local l0
  self = self._graph
  l0 = self[12]
  self.AddedNPC = l0.Data
  l0 = self[14]
  l0:True()
end
function export:f_12_ForEach()
  local l0
  self = self._graph
  l0 = self[12]
  self.AddedNPC = l0.Data
  l0 = self[13]
  l0.Input = self.NPC_List
  l0.Data[0] = self.AddedNPC
  l0:Add()
end
function export:f_12_GotNext()
  local l0
  self = self._graph
  l0 = self[12]
  self.AddedNPC = l0.Data
end
function export:f_12_Started()
  local l0
  self = self._graph
  l0 = self[12]
  self.AddedNPC = l0.Data
end
function export:f_12_Stopped()
  local l0
  self = self._graph
  l0 = self[12]
  self.AddedNPC = l0.Data
end
function export:f_4_Out_0()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Reset()
  self:en_2()
  l0 = self[2]
  l0:Display()
end
function export:f_18_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.MissionZone
  l0.Red = 0.82
  l0.Green = 0.2
  l0.Blue = 0.2
  l0.Alpha = 1
  l0.Radius = nil
  l0.DrawType = "Outside"
  l0.ShapeType = "CMissionRegionDescriptor"
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_18_A_is_True()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Disable()
end
function export:f_18_Out()
  self = self._graph
  self:NPCs_All_Dead()
end
function export:f_11_Added()
  local l0
  self = self._graph
  l0 = self[11]
  self.NPC_List = l0.Target
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[11]
  self.NPC_List = l0.Target
end
function export:f_11_Removed()
  local l0
  self = self._graph
  l0 = self[11]
  self.NPC_List = l0.Target
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Trigger = self.MissionZone
  l0.TriggerList = self.ForbiddenZoneTriggerList
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.MessageType = "MissionWarning"
  l0.MessageIcon = "iconWarning"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "EnteringRestrictedArea",
    id = "165604"
  }
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.Seconds = self.ResetWarningTimer
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.PawnList = self.NPC_List
end
function export:en_1()
  local l0
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.MissionZone
  l0.Red = 0.82
  l0.Green = 0.2
  l0.Blue = 0.2
  l0.Alpha = 1
  l0.Radius = nil
  l0.DrawType = "Inside"
  l0.ShapeType = "CMissionRegionDescriptor"
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = self.f_1_Disabled
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
end
function export:Started()
end
function export:Stopped()
end
function export:NPCListUpdated()
end
function export:NPCs_All_Dead()
end
_compilerVersion = 4
