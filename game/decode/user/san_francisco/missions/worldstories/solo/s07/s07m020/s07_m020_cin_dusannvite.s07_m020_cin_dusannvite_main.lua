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
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.PGTMissionArea = "9223372046518049337"
  self[14] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
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
  l0.Skipped = self.f_1_Skipped
  l0.Finished = self.f_1_Finished
  l0.SPOut["Invite Alarm Cue"] = self.f_1_SPOut__Invite_Alarm_Cue_
  l0.SPOut["Police Sirens Cue"] = self.f_1_SPOut__Police_Sirens_Cue_
  self[2] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_2_TeleportDone
  self[4] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_4_Out
  l0.ResetOut = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_8_Unloaded
  l0.Reseted = DummyFunction
  self[16] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[15] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_15_TeleportDone
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
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0:In()
end
function export:f_22_Out_0()
  local l0
  self = self._graph
  l0 = self[8]
  l0.LayerName = "S07M020_LivingCity"
  l0:Unload()
end
function export:f_22_Out_1()
  local l0
  self = self._graph
  self:en_10()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_22_Out_2()
  local l0
  self = self._graph
  self:en_18()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_22_Out_3()
  local l0
  self = self._graph
  self:en_19()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_22_Out_4()
  local l0
  self = self._graph
  self:en_20()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_7_Out()
  self = self._graph
  self:Out()
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  l0 = self[15]
  l0.SpawnPoint = "9223372046786832658"
  l0.UseFadeToBlack = 0
  l0:In()
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_21_Out_0
  l0.Out[1] = self.f_21_Out_1
  l0.Out[2] = self.f_21_Out_2
  l0.Out[3] = self.f_21_Out_3
  l0:In()
end
function export:f_3_ChaseStarted()
  local l0
  self = self._graph
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
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(1)
end
function export:f_1_Skipped()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(0)
end
function export:f_1_SPOut__Invite_Alarm_Cue_()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Entity = "9223372064220175531"
  l0.SoundId = "soundbinary/1889681517.bnk"
  l0:Play()
end
function export:f_1_SPOut__Police_Sirens_Cue_()
  local l0
  self = self._graph
  l0 = self[16]
  l0.SoundId = "soundbinary/1883853094.bnk"
  l0:Play()
end
function export:f_2_TeleportDone()
  local l0
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
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_3_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StartChase()
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  self:en_10()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_21_Out_1()
  local l0
  self = self._graph
  self:en_18()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_21_Out_2()
  local l0
  self = self._graph
  self:en_19()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_21_Out_3()
  local l0
  self = self._graph
  self:en_20()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_22_Out_0
  l0.Out[1] = self.f_22_Out_1
  l0.Out[2] = self.f_22_Out_2
  l0.Out[3] = self.f_22_Out_3
  l0.Out[4] = self.f_22_Out_4
  l0:In()
end
function export:f_8_Unloaded()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SpawnPoint = "9223372046786631821"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_15_TeleportDone()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372047683075847"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_DusanNvite_CIN/s07_dusannvite_cin.seq"
  l0:Start()
end
function export:en_10()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372064985016700"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:en_19()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372064826856952"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:en_20()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372064826856953"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:en_18()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372064826856951"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:Out()
end
_compilerVersion = 4
