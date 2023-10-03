export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/3040051707.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.HUB = nil
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[1]
  l0._graph = self
  self[4] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Interact_Gameplay.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_4_Interacted
  self[3] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.OnPhoneCallEnded = self.f_3_OnPhoneCallEnded
  self[14] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[11] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.MessageCompleted = DummyFunction
  self[2] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[2]
  l0._graph = self
  l0.NewBeatStarted = self.f_2_NewBeatStarted
  self[12] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_12_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[10] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = self.f_10_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_10_GotUser
  l0.NotGotUser = self.f_10_NotGotUser
  l0.OnUserInPlace = self.f_10_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
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
  self:en_2()
  l0 = self[2]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_1()
  l0 = self[1]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_2()
  l0 = self[2]
  l0:StartNewBeat()
end
function export:f_4_Interacted()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:End()
end
function export:f_3_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_14_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[11]
  l0.SoundId = "soundbinary/3040051707.bnk"
  l0:Start()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.CLO = "9223372048076545179"
  l0:Enable()
end
function export:f_2_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[2]
  self.PlayerEntity = l0.PlayerEntity
  l0 = self[6]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L02.L02M030.Objectives.Objective010",
    item = "Objective",
    id = "552241"
  }
  l0:ShowNewObjective()
end
function export:f_12_InteractionStarted()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Seconds = 2
  l0:Start()
end
function export:f_10_Enabled()
  local l0
  self = self._graph
  l0 = self[4]
  l0.CLO = "9223372048076545179"
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_10_GotUser()
  local l0
  self = self._graph
  l0 = self[10]
  self.HUB = l0.UserID
end
function export:f_10_NotGotUser()
  local l0
  self = self._graph
  l0 = self[10]
  self.HUB = l0.UserID
end
function export:f_10_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[10]
  self.HUB = l0.UserID
  l0 = self[12]
  l0.InteractionScriptEntity = self.HUB
  l0:Enable()
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372049814637223"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.ItemDb = "Items.9223372049814637213"
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.ProgressionLayer = "ProgressionLayers.9223372049416583327"
  l0.Checkpoint = "CheckPoint_0"
end
_compilerVersion = 4
