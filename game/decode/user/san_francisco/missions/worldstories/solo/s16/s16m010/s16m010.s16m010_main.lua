export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M010/S16M010_CIN_CargoContainer.S16M010_CIN_CargoContainer_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M010/S16M010_SCR.S16M010_SCR_Main.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1259512265.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/426111056.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1044214885.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/344570174.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2059760737.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2289742725.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[28] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[14] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[14]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_14_Escaped
  l0.LeftArea = DummyFunction
  self[25] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_25_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[3] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M010/S16M010_CIN_CargoContainer.S16M010_CIN_CargoContainer_Main.lua")
  l0 = self[3]
  l0._graph = self
  l0.cin_out = self.f_3_cin_out
  self[10] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.MessageCompleted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[4]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_4_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[11] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M010/S16M010_SCR.S16M010_SCR_Main.lua")
  l0 = self[11]
  l0._graph = self
  l0.out = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[24] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_24_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[18] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_18_Finished
  self[7] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[7]
  l0._graph = self
  self[15] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_15_Finished
  self[26] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[21] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = self.f_21_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_8_Unloaded
  l0.Reseted = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_13_Out
  self[27] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[23] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_23_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[20] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_20_Finished
  self[5] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[19] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_19_Finished
  self[6] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[17] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_17_TimeElapsed
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
function export:CheckPoint_0()
  local l0
  l0 = self[6]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[6]
  l0:Input(0)
end
function export:f_14_Escaped()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(0)
end
function export:f_25_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Entity = "9223372069628212372"
  l0.SoundId = "soundbinary/2289742725.bnk"
  l0:Play()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_3_cin_out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0.Out[2] = self.f_12_Out_2
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0:In()
end
function export:f_4_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(1)
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0:In()
end
function export:f_24_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Entity = "9223372069628212372"
  l0.SoundId = "soundbinary/1044214885.bnk"
  l0:Play()
end
function export:f_18_Finished()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Seconds = 10
  l0:Start()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[16]
  l0.CheckpointList = "CheckPoint_0"
  l0:In()
end
function export:f_15_Finished()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Seconds = 8
  l0:Start()
end
function export:f_26_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Entity = "9223372069628212372"
  l0.SoundId = "soundbinary/344570174.bnk"
  l0:Play()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Seconds = 7
  l0:Start()
end
function export:f_8_Unloaded()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Succeed()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Entity = "9223372056998250823"
  l0.Entity_AreaRadius = 100
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.EscapeFelonyLocID = {
    section = "MISSIONS.COMMON.MESSAGES.OBJECTIVE",
    item = "Objective_Escape",
    id = "693233"
  }
  l0:Start()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  l0 = self[4]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421345769"
  l0:StartCommunication()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.LayerName = "S16M010_Main"
  l0:Unload()
end
function export:f_27_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[28]
  l0.Entity = "9223372069628212372"
  l0.SoundId = "soundbinary/1259512265.bnk"
  l0:Play()
end
function export:f_23_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Entity = "9223372069628212372"
  l0.SoundId = "soundbinary/426111056.bnk"
  l0:Play()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Seconds = 3
  l0:Start()
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = self[11]
  l0:In()
end
function export:f_12_Out_2()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Seconds = 1
  l0:Start()
end
function export:f_20_Finished()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Seconds = 8
  l0:Start()
end
function export:f_5_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M010.Objectives.Objective010",
    item = "Objective",
    id = "657018"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_19_Finished()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Seconds = 7
  l0:Start()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S16M010_Main"
  l0:Load()
end
function export:f_17_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Entity = "9223372069628212372"
  l0.SoundId = "soundbinary/2059760737.bnk"
  l0:Play()
end
_compilerVersion = 4
