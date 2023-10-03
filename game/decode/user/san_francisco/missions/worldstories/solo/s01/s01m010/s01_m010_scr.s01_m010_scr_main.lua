export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.Started = DummyFunction
  self.PlayerEntity = nil
  self[21] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = self.f_21_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_21_Skipped
  l0.Finished = self.f_21_Finished
  self[17] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_17_OnUserInPlace
  self[20] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_20_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[27] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[27]
  l0._graph = self
  l0._DynamicAnchors = {
    EntityIn = {"Guard1", "Guard2"}
  }
  l0.Started = self.f_27_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[14] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_14_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[18] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[18]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_18_OnUserInPlace
  self[15] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
  self[19] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_19_Out
  l0.ResetOut = DummyFunction
  self[24] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[24]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_24_PostOut
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
  l0 = self[14]
  l0.Trigger = "9223372056214731106"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:MainAdmiration()
  local l0
  l0 = self[21]
  l0.SceneEntity = "9223372048794053450"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_SCR_MainAdmiration/s01_m010_scr_mainadmiration.seq"
  l0:Start()
end
function export:f_21_Finished()
  local l0
  self = self._graph
  l0 = self[19]
  l0:In(1)
end
function export:f_21_Skipped()
  local l0
  self = self._graph
  l0 = self[19]
  l0:In(0)
end
function export:f_21_Started()
  self = self._graph
  self:Started()
end
function export:f_17_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self[17]
  l1 = self[27]
  l1.EntityIn.Guard1 = l0.UserID
  l0 = self[18]
  l0.CLO = "9223372063918069240"
  l0:Activate()
end
function export:f_20_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[24]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_27_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_16_Popped
  l0:Pop()
end
function export:f_14_Enter()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:f_18_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self[18]
  l1 = self[27]
  l1.EntityIn.Guard2 = l0.UserID
  l1.SceneEntity = "9223372063954153094"
  l1.SequenceFile = "sequences/san_francisco/WorldStories/S01/s01_m010_scr_deadguards.seq"
  l1:Start()
end
function export:f_15_Out()
  self = self._graph
  self:Out()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0.CLO = "9223372063918069229"
  l0:Activate()
end
function export:f_24_PostOut()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(1)
end
function export:f_16_Popped()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Start()
end
function export:Out()
end
function export:Started()
end
_compilerVersion = 4
