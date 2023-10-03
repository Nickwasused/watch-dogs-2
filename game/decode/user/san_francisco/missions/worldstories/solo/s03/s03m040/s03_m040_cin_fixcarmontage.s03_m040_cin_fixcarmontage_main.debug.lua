export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugExecuteConsole_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2605024495.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S03_M040_CIN_FixCarMontage_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main"
  self.Out_Cin = DummyFunction
  self.PlayerEntity = nil
  self.box_Timer_v2_13 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_13
  l0._graph = self
  l0._name = "box_Timer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|386601149"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_13_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|790232880"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_1 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_1
  l0._graph = self
  l0._name = "box_PlaySound_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|793572978"
  l0.Out = self.f_box_PlaySound_v2_1_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_2 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_2
  l0._graph = self
  l0._name = "box_PlaySequence_v5_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|1331859045"
  l0.Started = self.f_box_PlaySequence_v5_2_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_2_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_2_Finished
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
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_reflectionUpdateCountPerFrame 15"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|2103130662"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_9_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|28612477", "28612477", "S03_M040_CIN_FixCarMontage_Main", "In", "box_DebugExecuteConsole_v2_9.Execute", self, l0)
  l0:Execute()
end
function export:f_box_DebugExecuteConsole_v2_12_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "fx_lightProbesForceUpdateAll 0"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|1453423254"
  l0.Executed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|350088231", "350088231", "S03_M040_CIN_FixCarMontage_Main", "box_DebugExecuteConsole_v2_12.Executed", "box_DebugExecuteConsole_v2_11.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_Timer_v2_13_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_reflectionUpdateCountPerFrame 1"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|336755121"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_12_Executed
  l0 = self.box_Timer_v2_13
  l1 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|385542896", "385542896", "S03_M040_CIN_FixCarMontage_Main", "box_Timer_v2_13.TimeElapsed", "box_DebugExecuteConsole_v2_12.Execute", l0, l1)
  l1:Execute()
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372065022209691"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = 0
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
  l0._name = "box_Lanes_Restrictions_Control_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|1477234911"
  l0.Out = self.f_box_Lanes_Restrictions_Control_15_Out
  l0 = self.box_OnceOnly_v3_4
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|1704073594", "1704073594", "S03_M040_CIN_FixCarMontage_Main", "box_OnceOnly_v3_4.Out", "box_Lanes_Restrictions_Control_15.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_1_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySound_v2_1
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|627039497", "627039497", "S03_M040_CIN_FixCarMontage_Main", "box_PlaySound_v2_1.Out", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_2_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|540316097", "540316097", "S03_M040_CIN_FixCarMontage_Main", "box_PlaySequence_v5_2.Finished", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_2_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_1
  l0.SoundId = "soundbinary/2605024495.bnk"
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_PlaySound_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|1951451189", "1951451189", "S03_M040_CIN_FixCarMontage_Main", "box_PlaySequence_v5_2.Skipped", "box_PlaySound_v2_1.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySequence_v5_2_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_Timer_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|1572417556", "1572417556", "S03_M040_CIN_FixCarMontage_Main", "box_PlaySequence_v5_2.Started", "box_Timer_v2_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_Lanes_Restrictions_Control_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|710819247", "710819247", "S03_M040_CIN_FixCarMontage_Main", "box_Lanes_Restrictions_Control_15.Out", "Out_Cin", clone, self)
  self:Out_Cin()
end
function export:f_box_DebugExecuteConsole_v2_10_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_2
  l0.SceneEntity = "9223372048764591431"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_FixCarMontage_PRE/s03_fixcarmontage_pre.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|2055550263", "2055550263", "S03_M040_CIN_FixCarMontage_Main", "box_DebugExecuteConsole_v2_10.Executed", "box_PlaySequence_v5_2.Start", clone, l0)
  l0:Start()
end
function export:f_box_DebugExecuteConsole_v2_9_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gfx_lightProbesForceUpdateAll 1"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|1554591667"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_10_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\s03_m040_cin_fixcarmontage.domino|@S03_M040_CIN_FixCarMontage_Main|2021153851", "2021153851", "S03_M040_CIN_FixCarMontage_Main", "box_DebugExecuteConsole_v2_9.Executed", "box_DebugExecuteConsole_v2_10.Execute", clone, l0)
  l0:Execute()
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:Out_Cin()
end
_compilerVersion = 4
