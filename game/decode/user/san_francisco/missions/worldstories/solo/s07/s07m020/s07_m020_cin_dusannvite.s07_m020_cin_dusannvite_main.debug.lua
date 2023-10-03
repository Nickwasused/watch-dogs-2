export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/1889681517.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1883853094.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S07_M020_CIN_DusanNvite_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.PGTMissionArea = "9223372046518049337"
  self.box_PlaySound_v2_14 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_14
  l0._graph = self
  l0._name = "box_PlaySound_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1361111865"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1417440749"
  l0._DynamicAnchors = {
    SPOut = {
      "Invite Alarm Cue",
      "Police Sirens Cue"
    }
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  l0.SPOut["Invite Alarm Cue"] = self.f_box_PlaySequence_v5_1_SPOut__Invite_Alarm_Cue_
  l0.SPOut["Police Sirens Cue"] = self.f_box_PlaySequence_v5_1_SPOut__Police_Sirens_Cue_
  self.box_Teleport_To_SpawnPoint_2 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_2
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1736418286"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_2_TeleportDone
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1798958312"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_MissionLayer_v2_8 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_8
  l0._graph = self
  l0._name = "box_MissionLayer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1829757364"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_8_Unloaded
  l0.Reseted = DummyFunction
  self.box_PlaySound_v2_16 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_16
  l0._graph = self
  l0._name = "box_PlaySound_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|2010559406"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Teleport_To_SpawnPoint_15 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_15
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|2109322007"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_15_TeleportDone
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|891446684"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1004543230", "1004543230", "S07_M020_CIN_DusanNvite_Main", "In", "box_Ordered_Output_17.In", self, l0)
  l0:In()
end
function export:f_box_Ordered_Output_22_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_8
  l0.LayerName = "S07M020_LivingCity"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|345106407", "345106407", "S07_M020_CIN_DusanNvite_Main", "box_Ordered_Output_22.Out", "box_MissionLayer_v2_8.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_Ordered_Output_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_10()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|694177799", "694177799", "S07_M020_CIN_DusanNvite_Main", "box_Ordered_Output_22.Out", "box_VisibilityController_v2_10.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_22_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_18()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|2041895526", "2041895526", "S07_M020_CIN_DusanNvite_Main", "box_Ordered_Output_22.Out", "box_VisibilityController_v2_18.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_22_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_19()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1129548938", "1129548938", "S07_M020_CIN_DusanNvite_Main", "box_Ordered_Output_22.Out", "box_VisibilityController_v2_19.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_22_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_20()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|441995700", "441995700", "S07_M020_CIN_DusanNvite_Main", "box_Ordered_Output_22.Out", "box_VisibilityController_v2_20.Show", clone, l0)
  l0:Show()
end
function export:f_box_Lanes_Restrictions_Control_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1248949976", "1248949976", "S07_M020_CIN_DusanNvite_Main", "box_Lanes_Restrictions_Control_7.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_To_SpawnPoint_15
  l0.SpawnPoint = "9223372046786832658"
  l0.UseFadeToBlack = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|362826225", "362826225", "S07_M020_CIN_DusanNvite_Main", "box_Ordered_Output_17.Out", "box_Teleport_To_SpawnPoint_15.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1784031280"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_21_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_21_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|467975663", "467975663", "S07_M020_CIN_DusanNvite_Main", "box_Ordered_Output_17.Out", "box_Ordered_Output_21.In", clone, l0)
  l0:In()
end
function export:f_box_FelonyTargetController_3_ChaseStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372056242376105"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|824824896"
  l0.Out = self.f_box_Lanes_Restrictions_Control_7_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1954244143", "1954244143", "S07_M020_CIN_DusanNvite_Main", "box_FelonyTargetController_3.ChaseStarted", "box_Lanes_Restrictions_Control_7.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1742230848", "1742230848", "S07_M020_CIN_DusanNvite_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|286675205", "286675205", "S07_M020_CIN_DusanNvite_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_1_SPOut__Invite_Alarm_Cue_()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_14
  l0.Entity = "9223372064220175531"
  l0.SoundId = "soundbinary/1889681517.bnk"
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_PlaySound_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1090330895", "1090330895", "S07_M020_CIN_DusanNvite_Main", "box_PlaySequence_v5_1.SPOut", "box_PlaySound_v2_14.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySequence_v5_1_SPOut__Police_Sirens_Cue_()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_16
  l0.SoundId = "soundbinary/1883853094.bnk"
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_PlaySound_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1615583664", "1615583664", "S07_M020_CIN_DusanNvite_Main", "box_PlaySequence_v5_1.SPOut", "box_PlaySound_v2_16.Play", l0, l1)
  l1:Play()
end
function export:f_box_Teleport_To_SpawnPoint_2_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = nil
  l0.FelonyLevel = 3
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1070807528"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_box_FelonyTargetController_3_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_Teleport_To_SpawnPoint_2
  l1 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|14986834", "14986834", "S07_M020_CIN_DusanNvite_Main", "box_Teleport_To_SpawnPoint_2.TeleportDone", "box_FelonyTargetController_3.StartChase", l0, l1)
  l1:StartChase()
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_10()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|407075561", "407075561", "S07_M020_CIN_DusanNvite_Main", "box_Ordered_Output_21.Out", "box_VisibilityController_v2_10.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_18()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|789419653", "789419653", "S07_M020_CIN_DusanNvite_Main", "box_Ordered_Output_21.Out", "box_VisibilityController_v2_18.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_21_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_19()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|769504134", "769504134", "S07_M020_CIN_DusanNvite_Main", "box_Ordered_Output_21.Out", "box_VisibilityController_v2_19.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_21_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_20()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1782973027", "1782973027", "S07_M020_CIN_DusanNvite_Main", "box_Ordered_Output_21.Out", "box_VisibilityController_v2_20.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|696478298"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_22_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_22_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_22_Out_4
  l0 = self.box_OnceOnly_v3_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|281679799", "281679799", "S07_M020_CIN_DusanNvite_Main", "box_OnceOnly_v3_4.Out", "box_Ordered_Output_22.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_8_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_2
  l0.SpawnPoint = "9223372046786631821"
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_MissionLayer_v2_8
  l1 = self.box_Teleport_To_SpawnPoint_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|2135165002", "2135165002", "S07_M020_CIN_DusanNvite_Main", "box_MissionLayer_v2_8.Unloaded", "box_Teleport_To_SpawnPoint_2.In", l0, l1)
  l1:In()
end
function export:f_box_Teleport_To_SpawnPoint_15_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047683075847"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_DusanNvite_CIN/s07_dusannvite_cin.seq"
  l0 = self.box_Teleport_To_SpawnPoint_15
  l1 = self.box_PlaySequence_v5_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|385968824", "385968824", "S07_M020_CIN_DusanNvite_Main", "box_Teleport_To_SpawnPoint_15.TeleportDone", "box_PlaySequence_v5_1.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_VisibilityController_v2_10()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372064985016700"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|125102193"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_19()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372064826856952"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|296271665"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_20()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372064826856953"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|656316469"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_18()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372064826856951"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\s07_m020_cin_dusannvite.domino|@S07_M020_CIN_DusanNvite_Main|1492998978"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:Out()
end
_compilerVersion = 4
