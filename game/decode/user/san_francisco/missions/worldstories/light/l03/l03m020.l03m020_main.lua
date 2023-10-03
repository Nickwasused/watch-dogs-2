export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugAnnotationTextController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableController.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.DebugAnnotationTextEntity_90 = "9223372047161574284"
  self.L03_StoryIcon_1 = "9223372047161601783"
  self.Temp_HackableEntity_2 = "9223372047161601787"
  self.DebugAnnotationTextEntity_91 = "9223372047161601785"
  self.L03_StoryIcon_0 = "9223372047161574279"
  self.Hackable_Laptop_5 = "9223372048447557450"
  self[15] = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_15_MessageCompleted
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[14]
  l0._graph = self
  self[5] = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = self.f_3_Enabled
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_3_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[13] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_13_TimeElapsed
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
  l0.LayerName = "L03M020_Main"
  l0:Load()
end
function export:f_15_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Succeed()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_4_Enabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Objective = {
    section = "",
    item = "",
    id = "414637"
  }
  l0:ShowNewObjective()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[3]
  l0.HackableEntity = self.Hackable_Laptop_5
  l0:Enable()
end
function export:f_3_Enabled()
  local l0
  self = self._graph
  l0 = self[4]
  l0.HackableEntity = self.Hackable_Laptop_5
  l0:EnableHack()
end
function export:f_3_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = self.DebugAnnotationTextEntity_90
  l0.Text = nil
  l0._graph = self
  l0.Enabled = self.f_6_Enabled
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_6_Enabled()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Seconds = 8
  l0:Start()
end
function export:f_13_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[15]
  l0:ShowMissionComplete()
end
_compilerVersion = 4
