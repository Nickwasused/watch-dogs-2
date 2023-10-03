export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackGameplayController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:LoadResource("soundbinary/1153372685.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L27M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main"
  self.PlayerEntity = nil
  self.Laptop_HackableEntity_L27M010 = "9223372049956831201"
  self.L27_StoryIcon_0 = "9223372049956831199"
  self.CLO_NPC_Target02 = "9223372050091869526"
  self.CLO_NPC_Target01 = "9223372050091710702"
  self.CLO_NPC_Target03 = "9223372050091869531"
  self.MissionArea_Target01 = "9223372050091763617"
  self.MissionArea_Target02 = "9223372050091869528"
  self.MissionArea_Target03 = "9223372050091869530"
  self.Target1 = nil
  self.box_HackGameplayController_36 = cbox:CreateBox("domino/System/HackGameplayController.lua")
  l0 = self.box_HackGameplayController_36
  l0._graph = self
  l0._name = "box_HackGameplayController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|52612970"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_HackGameplayController_36_Completed
  self.box_Player_Proximity_Monitor_8 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_8
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|124603858"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_8_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|176053323"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|248646588"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_16 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|342338372"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_16_Out
  self.box_Player_Proximity_Monitor_14 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_14
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|362970419"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_14_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_MissionLayer_v2_18 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_18
  l0._graph = self
  l0._name = "box_MissionLayer_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|399585363"
  l0.Loaded = self.f_box_MissionLayer_v2_18_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionController_v4_43 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_43
  l0._graph = self
  l0._name = "box_MissionController_v4_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|488365481"
  self.box_Escape_Gameplay_44 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_44
  l0._graph = self
  l0._name = "box_Escape_Gameplay_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|511158490"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Escape_Gameplay_44_Stopped
  l0.Escaped = self.f_box_Escape_Gameplay_44_Escaped
  l0.LeftArea = DummyFunction
  self.box_CinematicPrep_32 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_32
  l0._graph = self
  l0._name = "box_CinematicPrep_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|543918866"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_32_PostOut
  self.box_ObjectiveMonitor_v2_24 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_24
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|556465886"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_24_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_MissionLayer_v2_40 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_40
  l0._graph = self
  l0._name = "box_MissionLayer_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|619273538"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_40_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_30 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_30
  l0._graph = self
  l0._name = "box_MultipleOR_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|656910441"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_30_Out
  self.box_MissionMessageController_v3_10 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_10
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|672260950"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_PlayDialog_v2_5 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_5
  l0._graph = self
  l0._name = "box_PlayDialog_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|717651572"
  l0.Started = self.f_box_PlayDialog_v2_5_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_31 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_31
  l0._graph = self
  l0._name = "box_MissionLayer_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|734643441"
  l0.Loaded = self.f_box_MissionLayer_v2_31_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_7 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_7
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|757516864"
  l0.Out = self.f_box_MissionCheckpointReach_7_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_v3_39 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_39
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|792544984"
  l0.Out = self.f_box_MissionMessageController_v3_39_Out
  l0.MessageCompleted = DummyFunction
  self.box_Player_Proximity_Monitor_15 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_15
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|864448709"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_15_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_MissionCheckpointReach_9 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_9
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1083895872"
  l0.Out = self.f_box_MissionCheckpointReach_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_HackGameplayController_38 = cbox:CreateBox("domino/System/HackGameplayController.lua")
  l0 = self.box_HackGameplayController_38
  l0._graph = self
  l0._name = "box_HackGameplayController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1384185778"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_HackGameplayController_38_Completed
  self.box_HackGameplayController_34 = cbox:CreateBox("domino/System/HackGameplayController.lua")
  l0 = self.box_HackGameplayController_34
  l0._graph = self
  l0._name = "box_HackGameplayController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1481272151"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_HackGameplayController_34_Completed
  self.box_PhoneCommunicationController_42 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_42
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1540731061"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_42_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_22 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_22
  l0._graph = self
  l0._name = "box_MultipleOR_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1852296495"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_22_Out
  self.box_CinematicPrep_11 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_11
  l0._graph = self
  l0._name = "box_CinematicPrep_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|2033378556"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_11_PostOut
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
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|654793935", "654793935", "L27M010_Main", "CheckPoint_0", "box_MultipleOR_30.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_18
  l0.LayerName = "L27M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|472482855", "472482855", "L27M010_Main", "CheckPoint_1", "box_MissionLayer_v2_18.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|2067204319", "2067204319", "L27M010_Main", "In", "box_MultipleOR_30.Input", self, l0)
  l0:Input(0)
end
function export:f_box_HackGameplayController_36_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_HackGameplayController_36
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1103068933", "1103068933", "L27M010_Main", "box_HackGameplayController_36.Completed", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Player_Proximity_Monitor_8_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_Player_Proximity_Monitor_8
  l1 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|936907692", "936907692", "L27M010_Main", "box_Player_Proximity_Monitor_8.EnterRadius", "box_MultipleOR_16.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_10
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M010.Objectives.Objective010",
    item = "Objective",
    id = "550090"
  }
  l0 = self.box_MultipleOR_6
  l1 = self.box_MissionMessageController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|716884130", "716884130", "L27M010_Main", "box_MultipleOR_6.Out", "box_MissionMessageController_v3_10.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|718697643"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_12_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_12_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_12_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_12_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_12_Out_6
  l0 = self.box_MissionMessageController_v3_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1477054050", "1477054050", "L27M010_Main", "box_MissionMessageController_v3_3.Out", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_5
  l0.SoundId = "soundbinary/1153372685.bnk"
  l0 = self.box_MultipleOR_16
  l1 = self.box_PlayDialog_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|64733732", "64733732", "L27M010_Main", "box_MultipleOR_16.Out", "box_PlayDialog_v2_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_Player_Proximity_Monitor_14_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_Player_Proximity_Monitor_14
  l1 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1347914543", "1347914543", "L27M010_Main", "box_Player_Proximity_Monitor_14.EnterRadius", "box_MultipleOR_16.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionLayer_v2_18_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_11
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionLayer_v2_18
  l1 = self.box_CinematicPrep_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|761180865", "761180865", "L27M010_Main", "box_MissionLayer_v2_18.Loaded", "box_CinematicPrep_11.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Escape_Gameplay_44_Escaped()
  local l0
  self = self._graph
  self:OnEnter_box_Escape_Gameplay_44()
  l0 = self.box_Escape_Gameplay_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1931401222", "1931401222", "L27M010_Main", "box_Escape_Gameplay_44.Escaped", "box_Escape_Gameplay_44.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Escape_Gameplay_44_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_Escape_Gameplay_44
  l1 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1500924604", "1500924604", "L27M010_Main", "box_Escape_Gameplay_44.Stopped", "box_MultipleOR_22.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CinematicPrep_32_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_7
  l0.CheckpointList = "CheckPoint_0"
  l0 = self.box_CinematicPrep_32
  l1 = self.box_MissionCheckpointReach_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|708404060", "708404060", "L27M010_Main", "box_CinematicPrep_32.PostOut", "box_MissionCheckpointReach_7.In", l0, l1)
  l1:In()
end
function export:f_box_ObjectiveMonitor_v2_24_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_39
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M010.Objectives.Objective010",
    item = "Objective_B",
    id = "685213"
  }
  l0 = self.box_ObjectiveMonitor_v2_24
  l1 = self.box_MissionMessageController_v3_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1298489755", "1298489755", "L27M010_Main", "box_ObjectiveMonitor_v2_24.ObjectiveCompleted", "box_MissionMessageController_v3_39.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionLayer_v2_40_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_40
  l1 = self.box_MissionController_v4_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|228713382", "228713382", "L27M010_Main", "box_MissionLayer_v2_40.Unloaded", "box_MissionController_v4_43.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_30_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_31
  l0.LayerName = "L27M010_Main"
  l0 = self.box_MultipleOR_30
  l1 = self.box_MissionLayer_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|2056938627", "2056938627", "L27M010_Main", "box_MultipleOR_30.Out", "box_MissionLayer_v2_31.Load", l0, l1)
  l1:Load()
end
function export:f_box_PlayDialog_v2_5_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1926987280"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_13_Out_2
  l0 = self.box_PlayDialog_v2_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|75997303", "75997303", "L27M010_Main", "box_PlayDialog_v2_5.Started", "box_Ordered_Output_13.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_8()
  l0 = self.box_Player_Proximity_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|100769806", "100769806", "L27M010_Main", "box_Ordered_Output_12.Out", "box_Player_Proximity_Monitor_8.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_14()
  l0 = self.box_Player_Proximity_Monitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|2011345168", "2011345168", "L27M010_Main", "box_Ordered_Output_12.Out", "box_Player_Proximity_Monitor_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_12_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_15()
  l0 = self.box_Player_Proximity_Monitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1849311962", "1849311962", "L27M010_Main", "box_Ordered_Output_12.Out", "box_Player_Proximity_Monitor_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_12_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackGameplayController_38
  l0.HackCategoryType = "Contextual"
  l0.CLO = self.CLO_NPC_Target01
  l0.UseStoryIcon = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|490503858", "490503858", "L27M010_Main", "box_Ordered_Output_12.Out", "box_HackGameplayController_38.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_12_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackGameplayController_34
  l0.HackCategoryType = "Contextual"
  l0.CLO = self.CLO_NPC_Target02
  l0.UseStoryIcon = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1443279538", "1443279538", "L27M010_Main", "box_Ordered_Output_12.Out", "box_HackGameplayController_34.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_12_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackGameplayController_36
  l0.HackCategoryType = "Contextual"
  l0.CLO = self.CLO_NPC_Target03
  l0.UseStoryIcon = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|330537583", "330537583", "L27M010_Main", "box_Ordered_Output_12.Out", "box_HackGameplayController_36.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_12_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ObjectiveMonitor_v2_24
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M010.Objectives.Objective010",
    item = "Objective",
    id = "550090"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1336915543", "1336915543", "L27M010_Main", "box_Ordered_Output_12.Out", "box_ObjectiveMonitor_v2_24.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionLayer_v2_31_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_32
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionLayer_v2_31
  l1 = self.box_CinematicPrep_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1583634985", "1583634985", "L27M010_Main", "box_MissionLayer_v2_31.Loaded", "box_CinematicPrep_32.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionCheckpointReach_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M010.Objectives.Objective010",
    item = "Objective",
    id = "550090"
  }
  l0.IncrementalObjectiveTotal = 3
  l0 = self.box_MissionCheckpointReach_7
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1623658144", "1623658144", "L27M010_Main", "box_MissionCheckpointReach_7.Out", "box_MissionMessageController_v3_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_39_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Escape_Gameplay_44()
  l0 = self.box_MissionMessageController_v3_39
  l1 = self.box_Escape_Gameplay_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|920821063", "920821063", "L27M010_Main", "box_MissionMessageController_v3_39.Out", "box_Escape_Gameplay_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_Player_Proximity_Monitor_15_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_Player_Proximity_Monitor_15
  l1 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|2061715007", "2061715007", "L27M010_Main", "box_Player_Proximity_Monitor_15.EnterRadius", "box_MultipleOR_16.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_MissionCheckpointReach_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_42
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367120"
  l0 = self.box_MissionCheckpointReach_9
  l1 = self.box_PhoneCommunicationController_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1581843162", "1581843162", "L27M010_Main", "box_MissionCheckpointReach_9.Out", "box_PhoneCommunicationController_42.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_HackGameplayController_38_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_HackGameplayController_38
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1202341995", "1202341995", "L27M010_Main", "box_HackGameplayController_38.Completed", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_HackGameplayController_34_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_HackGameplayController_34
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|1241762409", "1241762409", "L27M010_Main", "box_HackGameplayController_34.Completed", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PhoneCommunicationController_42_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_40
  l0.LayerName = "L27M010_Main"
  l0 = self.box_PhoneCommunicationController_42
  l1 = self.box_MissionLayer_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|40184019", "40184019", "L27M010_Main", "box_PhoneCommunicationController_42.OnCommunicationFinished", "box_MissionLayer_v2_40.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_9
  l0.CheckpointList = "CheckPoint_1"
  l0 = self.box_MultipleOR_22
  l1 = self.box_MissionCheckpointReach_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|313929888", "313929888", "L27M010_Main", "box_MultipleOR_22.Out", "box_MissionCheckpointReach_9.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_8()
  l0 = self.box_Player_Proximity_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|941589777", "941589777", "L27M010_Main", "box_Ordered_Output_13.Out", "box_Player_Proximity_Monitor_8.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_14()
  l0 = self.box_Player_Proximity_Monitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|947170900", "947170900", "L27M010_Main", "box_Ordered_Output_13.Out", "box_Player_Proximity_Monitor_14.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_13_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_15()
  l0 = self.box_Player_Proximity_Monitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|677401092", "677401092", "L27M010_Main", "box_Ordered_Output_13.Out", "box_Player_Proximity_Monitor_15.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CinematicPrep_11_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_CinematicPrep_11
  l1 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L27\\L27M010.domino|@L27M010_Main|984138577", "984138577", "L27M010_Main", "box_CinematicPrep_11.PostOut", "box_MultipleOR_22.Input", l0, l1)
  l1:Input(1)
end
function export:OnEnter_box_Player_Proximity_Monitor_8()
  local l0
  l0 = self.box_Player_Proximity_Monitor_8
  l0.TargetEntity = "9223372055539389961"
  l0.Radius = 10
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_MultipleOR_16()
end
function export:OnEnter_box_Player_Proximity_Monitor_14()
  local l0
  l0 = self.box_Player_Proximity_Monitor_14
  l0.TargetEntity = "9223372055539389963"
  l0.Radius = 5
  l0.CheckDistance3D = 1
end
function export:OnEnter_box_Escape_Gameplay_44()
  local l0
  l0 = self.box_Escape_Gameplay_44
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372067295950309"
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
end
function export:OnEnter_box_MultipleOR_30()
end
function export:OnEnter_box_Player_Proximity_Monitor_15()
  local l0
  l0 = self.box_Player_Proximity_Monitor_15
  l0.TargetEntity = "9223372055539389965"
  l0.Radius = 7
  l0.CheckDistance3D = 1
end
function export:OnEnter_box_MultipleOR_22()
end
_compilerVersion = 4
