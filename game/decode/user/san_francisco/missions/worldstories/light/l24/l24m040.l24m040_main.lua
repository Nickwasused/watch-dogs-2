export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:LoadResource("soundbinary/4161231520.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[9] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[9]
  l0._graph = self
  l0.NewBeatStarted = self.f_9_NewBeatStarted
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_1_Interacted
  self[4] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[3] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.EnterRadius = self.f_3_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[10] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[10]
  l0._graph = self
  self[2] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.MessageCompleted = DummyFunction
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
  self:en_9()
  l0 = self[9]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_10()
  l0 = self[10]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_9()
  l0 = self[9]
  l0:StartNewBeat()
end
function export:f_9_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M040.Objectives.Objective010",
    item = "Objective",
    id = "637328"
  }
  l0:ShowNewObjective()
end
function export:f_1_Interacted()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:End()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SoundId = "soundbinary/4161231520.bnk"
  l0:Start()
end
function export:f_3_EnterRadius()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  l0 = self[1]
  l0.CLO = "9223372055178020979"
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.ProgressionLayer = "ProgressionLayers.9223372052771457741"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.TargetEntity = "9223372055539552967"
  l0.Radius = 50
  l0.CheckDistance3D = 1
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
