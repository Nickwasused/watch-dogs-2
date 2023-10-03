export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
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
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M010/S16M010_CIN_CargoContainer.S16M010_CIN_CargoContainer_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M010/S16M010_SCR.S16M010_SCR_Main.debug.lua")
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
  self._name = "S16M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main"
  self.PlayerEntity = nil
  self.box_PlaySound_v2_28 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_28
  l0._graph = self
  l0._name = "box_PlaySound_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|14368130"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Escape_Gameplay_14 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_14
  l0._graph = self
  l0._name = "box_Escape_Gameplay_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|116596002"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_14_Escaped
  l0.LeftArea = DummyFunction
  self.box_Timer_v2_25 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_25
  l0._graph = self
  l0._name = "box_Timer_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|138837063"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_25_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_S16M010_CIN_CargoContainer_Main_3 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M010/S16M010_CIN_CargoContainer.S16M010_CIN_CargoContainer_Main.debug.lua")
  l0 = self.box_S16M010_CIN_CargoContainer_Main_3
  l0._graph = self
  l0._name = "box_S16M010_CIN_CargoContainer_Main_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|354738242"
  l0.cin_out = self.f_box_S16M010_CIN_CargoContainer_Main_3_cin_out
  self.box_MissionMessageController_v3_10 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_10
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|364656631"
  l0.Out = self.f_box_MissionMessageController_v3_10_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_4 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_4
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|388418893"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_4_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_S16M010_SCR_Main_11 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M010/S16M010_SCR.S16M010_SCR_Main.debug.lua")
  l0 = self.box_S16M010_SCR_Main_11
  l0._graph = self
  l0._name = "box_S16M010_SCR_Main_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|418112266"
  l0.out = DummyFunction
  self.box_MissionCheckpointReach_16 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_16
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|488856631"
  l0.Out = self.f_box_MissionCheckpointReach_16_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_24 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_24
  l0._graph = self
  l0._name = "box_Timer_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|542813355"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_24_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_18 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_18
  l0._graph = self
  l0._name = "box_PlaySound_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|640027700"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_18_Finished
  self.box_MissionController_v4_7 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_7
  l0._graph = self
  l0._name = "box_MissionController_v4_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|875782643"
  self.box_PlaySound_v2_15 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_15
  l0._graph = self
  l0._name = "box_PlaySound_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1154266152"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_15_Finished
  self.box_Timer_v2_26 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_26
  l0._graph = self
  l0._name = "box_Timer_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1202764382"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_21 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_21
  l0._graph = self
  l0._name = "box_PlaySound_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1300473806"
  l0.Out = self.f_box_PlaySound_v2_21_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_8 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_8
  l0._graph = self
  l0._name = "box_MissionLayer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1364537741"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_8_Unloaded
  l0.Reseted = DummyFunction
  self.box_Multiple_AND_13 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_13
  l0._graph = self
  l0._name = "box_Multiple_AND_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1478486450"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_13_Out
  self.box_Timer_v2_27 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_27
  l0._graph = self
  l0._name = "box_Timer_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1501405671"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_23 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_23
  l0._graph = self
  l0._name = "box_Timer_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1578089573"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_23_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_20 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_20
  l0._graph = self
  l0._name = "box_PlaySound_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1837011275"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_20_Finished
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1927362112"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_19 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_19
  l0._graph = self
  l0._name = "box_PlaySound_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1964887335"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_19_Finished
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1969849031"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_Timer_v2_17 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_17
  l0._graph = self
  l0._name = "box_Timer_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|2030955355"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_17_TimeElapsed
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
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|41607478", "41607478", "S16M010_Main", "CheckPoint_0", "box_MultipleOR_6.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1378891552", "1378891552", "S16M010_Main", "In", "box_MultipleOR_6.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Escape_Gameplay_14_Escaped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_Escape_Gameplay_14
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1674553249", "1674553249", "S16M010_Main", "box_Escape_Gameplay_14.Escaped", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Timer_v2_25_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_20
  l0.Entity = "9223372069628212372"
  l0.SoundId = "soundbinary/2289742725.bnk"
  l0 = self.box_Timer_v2_25
  l1 = self.box_PlaySound_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|2109838375", "2109838375", "S16M010_Main", "box_Timer_v2_25.TimeElapsed", "box_PlaySound_v2_20.Play", l0, l1)
  l1:Play()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|794668992", "794668992", "S16M010_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_S16M010_CIN_CargoContainer_Main_3_cin_out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1642192643"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_12_Out_2
  l0 = self.box_S16M010_CIN_CargoContainer_Main_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|223926689", "223926689", "S16M010_Main", "box_S16M010_CIN_CargoContainer_Main_3.cin_out", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_10_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1364942179"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_MissionMessageController_v3_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1287776540", "1287776540", "S16M010_Main", "box_MissionMessageController_v3_10.Out", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_4_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_13()
  l0 = self.box_PhoneCommunicationController_4
  l1 = self.box_Multiple_AND_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|98138284", "98138284", "S16M010_Main", "box_PhoneCommunicationController_4.OnCommunicationFinished", "box_Multiple_AND_13.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MissionCheckpointReach_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_16
  l1 = self.box_S16M010_CIN_CargoContainer_Main_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1230753564", "1230753564", "S16M010_Main", "box_MissionCheckpointReach_16.Out", "box_S16M010_CIN_CargoContainer_Main_3.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_24_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_19
  l0.Entity = "9223372069628212372"
  l0.SoundId = "soundbinary/1044214885.bnk"
  l0 = self.box_Timer_v2_24
  l1 = self.box_PlaySound_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|556727958", "556727958", "S16M010_Main", "box_Timer_v2_24.TimeElapsed", "box_PlaySound_v2_19.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_18_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_24
  l0.Seconds = 10
  l0 = self.box_PlaySound_v2_18
  l1 = self.box_Timer_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1950990727", "1950990727", "S16M010_Main", "box_PlaySound_v2_18.Finished", "box_Timer_v2_24.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_16
  l0.CheckpointList = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1855546658", "1855546658", "S16M010_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_16.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_15_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_23
  l0.Seconds = 8
  l0 = self.box_PlaySound_v2_15
  l1 = self.box_Timer_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1974914558", "1974914558", "S16M010_Main", "box_PlaySound_v2_15.Finished", "box_Timer_v2_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_26_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_21
  l0.Entity = "9223372069628212372"
  l0.SoundId = "soundbinary/344570174.bnk"
  l0 = self.box_Timer_v2_26
  l1 = self.box_PlaySound_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|442945393", "442945393", "S16M010_Main", "box_Timer_v2_26.TimeElapsed", "box_PlaySound_v2_21.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_21_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_27
  l0.Seconds = 7
  l0 = self.box_PlaySound_v2_21
  l1 = self.box_Timer_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1936213961", "1936213961", "S16M010_Main", "box_PlaySound_v2_21.Out", "box_Timer_v2_27.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_8_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l1 = self.box_MissionController_v4_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|863739940", "863739940", "S16M010_Main", "box_MissionLayer_v2_8.Unloaded", "box_MissionController_v4_7.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Escape_Gameplay_14
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1013570288", "1013570288", "S16M010_Main", "box_Ordered_Output_9.Out", "box_Escape_Gameplay_14.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_4
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421345769"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|2091170439", "2091170439", "S16M010_Main", "box_Ordered_Output_9.Out", "box_PhoneCommunicationController_4.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Multiple_AND_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_8
  l0.LayerName = "S16M010_Main"
  l0 = self.box_Multiple_AND_13
  l1 = self.box_MissionLayer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1896962830", "1896962830", "S16M010_Main", "box_Multiple_AND_13.Out", "box_MissionLayer_v2_8.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Timer_v2_27_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_28
  l0.Entity = "9223372069628212372"
  l0.SoundId = "soundbinary/1259512265.bnk"
  l0 = self.box_Timer_v2_27
  l1 = self.box_PlaySound_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1335601162", "1335601162", "S16M010_Main", "box_Timer_v2_27.TimeElapsed", "box_PlaySound_v2_28.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_23_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_18
  l0.Entity = "9223372069628212372"
  l0.SoundId = "soundbinary/426111056.bnk"
  l0 = self.box_Timer_v2_23
  l1 = self.box_PlaySound_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1014998370", "1014998370", "S16M010_Main", "box_Timer_v2_23.TimeElapsed", "box_PlaySound_v2_18.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_5
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|338736656", "338736656", "S16M010_Main", "box_Ordered_Output_12.Out", "box_Timer_v2_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S16M010_SCR_Main_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1062778731", "1062778731", "S16M010_Main", "box_Ordered_Output_12.Out", "box_S16M010_SCR_Main_11.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_12_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_17
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1012244772", "1012244772", "S16M010_Main", "box_Ordered_Output_12.Out", "box_Timer_v2_17.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_20_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_26
  l0.Seconds = 8
  l0 = self.box_PlaySound_v2_20
  l1 = self.box_Timer_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1522349189", "1522349189", "S16M010_Main", "box_PlaySound_v2_20.Finished", "box_Timer_v2_26.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_10
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M010.Objectives.Objective010",
    item = "Objective",
    id = "657018"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_Timer_v2_5
  l1 = self.box_MissionMessageController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|711718766", "711718766", "S16M010_Main", "box_Timer_v2_5.TimeElapsed", "box_MissionMessageController_v3_10.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PlaySound_v2_19_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_25
  l0.Seconds = 7
  l0 = self.box_PlaySound_v2_19
  l1 = self.box_Timer_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|1381065055", "1381065055", "S16M010_Main", "box_PlaySound_v2_19.Finished", "box_Timer_v2_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S16M010_Main"
  l0 = self.box_MultipleOR_6
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|2045398717", "2045398717", "S16M010_Main", "box_MultipleOR_6.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_Timer_v2_17_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_15
  l0.Entity = "9223372069628212372"
  l0.SoundId = "soundbinary/2059760737.bnk"
  l0 = self.box_Timer_v2_17
  l1 = self.box_PlaySound_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M010\\S16M010.domino|@S16M010_Main|620394214", "620394214", "S16M010_Main", "box_Timer_v2_17.TimeElapsed", "box_PlaySound_v2_15.Play", l0, l1)
  l1:Play()
end
function export:OnEnter_box_Multiple_AND_13()
end
function export:OnEnter_box_MultipleOR_6()
end
_compilerVersion = 4
