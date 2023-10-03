export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhotoDetectionMonitor.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerRandomizedTimeOfDayMonitor.lua")
  cbox:RegisterBox("domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/917752853.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[11] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
  self[17] = cbox:CreateBox("domino/System/PlayerRandomizedTimeOfDayMonitor.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotTimeOfDay = DummyFunction
  l0.OnTimeOfDayReached = self.f_17_OnTimeOfDayReached
  self[3] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_3_RewardsExecuted
  self[4] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[4]
  l0._graph = self
  self[10] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[7] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = self.f_7_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[19] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_19_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_19_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_8_Out
  self[13] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[12] = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Probability = 4, Output = 4}
  l0.Out = self.f_12_Out
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_12_Output_0
  l0.Output[1] = self.f_12_Output_1
  l0.Output[2] = self.f_12_Output_2
  l0.Output[3] = self.f_12_Output_3
  self[18] = cbox:CreateBox("domino/System/PhotoDetectionMonitor.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ValidPhotoTaken = self.f_18_ValidPhotoTaken
  l0.TargetInView = DummyFunction
  l0.TargetNotInView = DummyFunction
  self[16] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[14] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
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
  l0 = self[8]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self[11]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[12]
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_17_OnTimeOfDayReached()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Seconds = 5
  l0:Start()
end
function export:f_3_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Enable()
end
function export:f_7_Started()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Succeed()
end
function export:f_19_Started()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Enable()
end
function export:f_19_TimeElapsed()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Disable()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Disable()
end
function export:f_20_Out_1()
  local l0
  self = self._graph
  l0 = self[3]
  l0.ItemDB = "Items.9223372077393152803"
  l0:ExecuteRewards()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.SoundId = "soundbinary/917752853.bnk"
  l0:Start()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(0)
end
function export:f_12_Output_0()
  local l0
  self = self._graph
  l0 = self[13]
  l0.ItemDB = "Items.9223372078434880413"
  l0:ExecuteRewards()
end
function export:f_12_Output_1()
  local l0
  self = self._graph
  l0 = self[14]
  l0.ItemDB = "Items.9223372078434880414"
  l0:ExecuteRewards()
end
function export:f_12_Output_2()
  local l0
  self = self._graph
  l0 = self[15]
  l0.ItemDB = "Items.9223372078434880415"
  l0:ExecuteRewards()
end
function export:f_12_Output_3()
  local l0
  self = self._graph
  l0 = self[16]
  l0.ItemDB = "Items.9223372078434880416"
  l0:ExecuteRewards()
end
function export:f_18_ValidPhotoTaken()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0:In()
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.LandmarkTargetName = {
    section = "PRESENTATION.SHOPS.Clothing Shops.Clothing_Items_Rewards",
    item = "EasterEgg_Generic",
    id = "698604"
  }
end
_compilerVersion = 4
