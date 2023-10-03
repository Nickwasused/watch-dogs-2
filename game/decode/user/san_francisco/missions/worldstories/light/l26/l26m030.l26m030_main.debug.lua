export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Light/L26/l26m030_iop.L26M030_IOP_Main.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:LoadResource("soundbinary/2712294448.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L26M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main"
  self.PlayerEntity = nil
  self.WayOutDoors = {
    "9223372048342077902",
    "9223372052869592695",
    "9223372049202053908",
    "9223372049150575666"
  }
  self.box_MultipleOR_21 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_21
  l0._graph = self
  l0._name = "box_MultipleOR_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|299734400"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_21_Out
  self.box_PGTController_v2_17 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_17
  l0._graph = self
  l0._name = "box_PGTController_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|547971503"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_17_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_CinematicPrep_14 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_14
  l0._graph = self
  l0._name = "box_CinematicPrep_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|576542124"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_14_PostOut
  self.box_Escape_Gameplay_7 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_7
  l0._graph = self
  l0._name = "box_Escape_Gameplay_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|577763716"
  l0.Started = self.f_box_Escape_Gameplay_7_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_7_Escaped
  l0.LeftArea = DummyFunction
  self.box_PlayDialog_v2_9 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_9
  l0._graph = self
  l0._name = "box_PlayDialog_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|600519768"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_15 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_15
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|706361766"
  l0.Out = self.f_box_MissionCheckpointReach_15_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_v3_10 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_10
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|708007593"
  l0.Out = self.f_box_MissionMessageController_v3_10_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_19 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_19
  l0._graph = self
  l0._name = "box_MissionLayer_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|762158567"
  l0.Loaded = self.f_box_MissionLayer_v2_19_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_L26M030_IOP_Main_8 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L26/l26m030_iop.L26M030_IOP_Main.debug.lua")
  l0 = self.box_L26M030_IOP_Main_8
  l0._graph = self
  l0._name = "box_L26M030_IOP_Main_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|793992077"
  l0.Out = self.f_box_L26M030_IOP_Main_8_Out
  self.box_MultipleOR_1 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|841472085"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_1_Out
  self.box_MissionLayer_v2_11 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_11
  l0._graph = self
  l0._name = "box_MissionLayer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1127964316"
  l0.Loaded = self.f_box_MissionLayer_v2_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PGTController_v2_16 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_16
  l0._graph = self
  l0._name = "box_PGTController_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1322930331"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_16_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionController_v4_4 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_4
  l0._graph = self
  l0._name = "box_MissionController_v4_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1795038755"
  self.box_PhoneCommunicationController_5 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_5
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1914989716"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_5_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_13 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_13
  l0._graph = self
  l0._name = "box_MissionLayer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|2064903911"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_13_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_3 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_3
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|2125925827"
  l0.Out = self.f_box_MissionCheckpointReach_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
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
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|2084523986", "2084523986", "L26M030_Main", "CheckPoint_0", "box_MultipleOR_1.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_19
  l0.LayerName = "L26M030_IOP_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1620753645", "1620753645", "L26M030_Main", "CheckPoint_1", "box_MissionLayer_v2_19.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1192843976", "1192843976", "L26M030_Main", "In", "box_MultipleOR_1.Input", self, l0)
  l0:Input(0)
end
function export:f_box_AI_Agent_Zone_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372062876125714"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1236734896"
  l0.Out = self.f_box_Phys_Zone_Cleanup_20_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1802401624", "1802401624", "L26M030_Main", "box_AI_Agent_Zone_22.Out", "box_Phys_Zone_Cleanup_20.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MultipleOR_21_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_15
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_21
  l1 = self.box_MissionCheckpointReach_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1703130064", "1703130064", "L26M030_Main", "box_MultipleOR_21.Out", "box_MissionCheckpointReach_15.In", l0, l1)
  l1:In()
end
function export:f_box_PGTController_v2_17_AllSpawned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_PGTController_v2_17
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|692712770", "692712770", "L26M030_Main", "box_PGTController_v2_17.AllSpawned", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CinematicPrep_14_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_CinematicPrep_14
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1726252106", "1726252106", "L26M030_Main", "box_CinematicPrep_14.PostOut", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Escape_Gameplay_7_Escaped()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_5
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051775436206"
  l0 = self.box_Escape_Gameplay_7
  l1 = self.box_PhoneCommunicationController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|2024826976", "2024826976", "L26M030_Main", "box_Escape_Gameplay_7.Escaped", "box_PhoneCommunicationController_5.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Escape_Gameplay_7_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_9
  l0.SoundId = "soundbinary/2712294448.bnk"
  l0 = self.box_Escape_Gameplay_7
  l1 = self.box_PlayDialog_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|218913529", "218913529", "L26M030_Main", "box_Escape_Gameplay_7.Started", "box_PlayDialog_v2_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionCheckpointReach_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_10
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L26.L26M040.ActivationObjective",
    item = "ActivationObjective",
    id = "689172"
  }
  l0 = self.box_MissionCheckpointReach_15
  l1 = self.box_MissionMessageController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1547525793", "1547525793", "L26M030_Main", "box_MissionCheckpointReach_15.Out", "box_MissionMessageController_v3_10.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_7
  l0.Entity = "9223372050340640650"
  l0.Entity_AreaRadius = 65
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
  l0 = self.box_MissionMessageController_v3_10
  l1 = self.box_Escape_Gameplay_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|961896649", "961896649", "L26M030_Main", "box_MissionMessageController_v3_10.Out", "box_Escape_Gameplay_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_19_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372062876125713"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|107042504"
  l0.Out = self.f_box_AI_Agent_Zone_22_Out
  l0 = self.box_MissionLayer_v2_19
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1579675205", "1579675205", "L26M030_Main", "box_MissionLayer_v2_19.Loaded", "box_AI_Agent_Zone_22.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_L26M030_IOP_Main_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372062876125714"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|924646485"
  l0.Out = self.f_box_Phys_Zone_Cleanup_12_Out
  l0 = self.box_L26M030_IOP_Main_8
  l1 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1980007459", "1980007459", "L26M030_Main", "box_L26M030_IOP_Main_8.Out", "box_Phys_Zone_Cleanup_12.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_11
  l0.LayerName = "L26M030_IOP_Main"
  l0 = self.box_MultipleOR_1
  l1 = self.box_MissionLayer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1716244492", "1716244492", "L26M030_Main", "box_MultipleOR_1.Out", "box_MissionLayer_v2_11.Load", l0, l1)
  l1:Load()
end
function export:f_box_Phys_Zone_Cleanup_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_17
  l0.PGTMissionArea = "9223372062876125718"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|886219781", "886219781", "L26M030_Main", "box_Phys_Zone_Cleanup_12.Out", "box_PGTController_v2_17.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionLayer_v2_11_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372062876125713"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1480277679"
  l0.Out = self.f_box_AI_Agent_Zone_2_Out
  l0 = self.box_MissionLayer_v2_11
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1390328837", "1390328837", "L26M030_Main", "box_MissionLayer_v2_11.Loaded", "box_AI_Agent_Zone_2.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Phys_Zone_Cleanup_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_16
  l0.PGTMissionArea = "9223372062876125718"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1509064489", "1509064489", "L26M030_Main", "box_Phys_Zone_Cleanup_20.Out", "box_PGTController_v2_16.Start", clone, l0)
  l0:Start()
end
function export:f_box_PGTController_v2_16_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1985345932"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_25_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_25_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_25_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_25_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_25_Out_4
  l0 = self.box_PGTController_v2_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|112939732", "112939732", "L26M030_Main", "box_PGTController_v2_16.AllSpawned", "box_Ordered_Output_25.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Agent_Zone_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_3
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1877547082", "1877547082", "L26M030_Main", "box_AI_Agent_Zone_2.Out", "box_MissionCheckpointReach_3.In", clone, l0)
  l0:In()
end
function export:f_box_BlackoutController_6_BlackoutStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_14
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1005360709", "1005360709", "L26M030_Main", "box_BlackoutController_6.BlackoutStarted", "box_CinematicPrep_14.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_PhoneCommunicationController_5_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_13
  l0.LayerName = "L26M030_IOP_Main"
  l0 = self.box_PhoneCommunicationController_5
  l1 = self.box_MissionLayer_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|9926927", "9926927", "L26M030_Main", "box_PhoneCommunicationController_5.OnCommunicationFinished", "box_MissionLayer_v2_13.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Ordered_Output_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = nil
  l0.Radius = 300
  l0.PropagationSpeed = 50
  l0.RecoverySpeed = 50
  l0.Duration = 5
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = nil
  l0._graph = self
  l0._name = "box_BlackoutController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1625154869"
  l0.BlackoutStarted = self.f_box_BlackoutController_6_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|608390213", "608390213", "L26M030_Main", "box_Ordered_Output_25.Out", "box_BlackoutController_6.StartBlackout", clone, l0)
  l0:StartBlackout()
end
function export:f_box_Ordered_Output_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372052869592681"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1095517395"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1548011591", "1548011591", "L26M030_Main", "box_Ordered_Output_25.Out", "box_MoveableEntityController_24.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Ordered_Output_25_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372048342077900"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|280327363"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|159781502", "159781502", "L26M030_Main", "box_Ordered_Output_25.Out", "box_MoveableEntityController_23.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Ordered_Output_25_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049202053907"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1971165946"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1587953271", "1587953271", "L26M030_Main", "box_Ordered_Output_25.Out", "box_MoveableEntityController_26.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Ordered_Output_25_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049150575665"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1203097614"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|34782480", "34782480", "L26M030_Main", "box_Ordered_Output_25.Out", "box_MoveableEntityController_27.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_MissionLayer_v2_13_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_13
  l1 = self.box_MissionController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|232653346", "232653346", "L26M030_Main", "box_MissionLayer_v2_13.Unloaded", "box_MissionController_v4_4.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionCheckpointReach_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_3
  l1 = self.box_L26M030_IOP_Main_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\L26M030.domino|@L26M030_Main|1431085566", "1431085566", "L26M030_Main", "box_MissionCheckpointReach_3.Out", "box_L26M030_IOP_Main_8.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_21()
end
function export:OnEnter_box_MultipleOR_1()
end
_compilerVersion = 4
