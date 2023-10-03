export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("Domino/System/FelonyTargetMonitor.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TimerToScreen.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S10_SpotTheFed_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main"
  self.PlayerEntity = nil
  self.copTest = "9223372046211481569"
  self.patrolCop1 = "9223372046211481911"
  self.CopCLO = "9223372046211517747"
  self.PatrolCop1 = "9223372046211517749"
  self.radius_Guy = 0
  self.CopInCar = nil
  self.CopOnFoot = nil
  self.Car_01 = nil
  self.NMI_List = {}
  self.CopInFixedCar01 = nil
  self.FixedCar01 = nil
  self.NMI_list = {}
  self.CLO_9223372046376096873 = "9223372046376096873"
  self.PlayerVehicle = nil
  self.UbberCarMarcus = nil
  self.FBIagent1 = nil
  self.FBIcarPatrol1 = nil
  self.FBIagentFix1 = nil
  self.FBIcarFix1 = nil
  self.FBIagentPatrol2 = nil
  self.FBIcarPatrol2 = nil
  self.TagPointPatrol1 = {}
  self.indexListTagPatrol1 = 1
  self.currentStepPatrol1 = nil
  self.NB_steps_patrol1 = 0
  self.ListTagPointsPatrol2 = {}
  self.NBstepPatrol2 = 0
  self.CurrentStepPatrol2 = 0
  self.indexStepsPatrol2 = 1
  self.currentStepPatrol2 = nil
  self.XposMarcus = 0
  self.YposMarcus = 0
  self.ZposMarcus = 0
  self.MarcusInRange = 0
  self.FBIAgentPatrol3 = nil
  self.FBIcarPatrol3 = nil
  self.TagPointsPatrol3 = {}
  self.NbStepPatrol3 = 0
  self.IndexStepPatrol3 = 1
  self.currentStepPatrol3 = nil
  self.FBIAgentPatrol4 = nil
  self.FBIcarPatrol4 = nil
  self.TagPointsPatrol4 = {}
  self.NBStepsPatrol4 = 0
  self.IndexStepPatrol4 = 1
  self.currentStepPatrol4 = nil
  self.FixFBIagentRadar1 = nil
  self.FixCarFBIRadar1 = nil
  self.FbiAgentPatrol5 = nil
  self.FBIcarPatrol5 = nil
  self.listStepsPatrol5 = {}
  self.NBstepsPatrol5 = 0
  self.indexStepPatrol5 = 1
  self.currentStepPatrol5 = nil
  self.FBIAgentFix2 = nil
  self.FBIcarFix2 = nil
  self.FBIAgentFix3 = nil
  self.FBIcarFix3 = nil
  self.FBIAgentFix4 = nil
  self.FBIcarFix4 = nil
  self.FBIAgentFix5 = nil
  self.FBIcarFix5 = nil
  self.testNilEntity = nil
  self.box_MapPointController_v3_74 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_74
  l0._graph = self
  l0._name = "box_MapPointController_v3_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|68468247"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_147 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_147
  l0._graph = self
  l0._name = "box_MultipleOR_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|402309425"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_147_Out
  self.box_TimerToScreen_192 = cbox:CreateBox("Domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_192
  l0._graph = self
  l0._name = "box_TimerToScreen_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|403649254"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_192_TimeElapsed
  self.box_CLOController_38 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_38
  l0._graph = self
  l0._name = "box_CLOController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|404843578"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_38_OnUserInPlace
  self.box_Timer_v2_17 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_17
  l0._graph = self
  l0._name = "box_Timer_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|720057761"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_17_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_17_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_FelonyTargetMonitor_191 = cbox:CreateBox("Domino/System/FelonyTargetMonitor.lua")
  l0 = self.box_FelonyTargetMonitor_191
  l0._graph = self
  l0._name = "box_FelonyTargetMonitor_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|951909947"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_FelonyTargetMonitor_191_Stopped
  l0.None = DummyFunction
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = self.f_box_FelonyTargetMonitor_191_Chasing
  l0.Searching = self.f_box_FelonyTargetMonitor_191_Searching
  l0.Evaded = self.f_box_FelonyTargetMonitor_191_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|995551744"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_MultipleOR_176 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_176
  l0._graph = self
  l0._name = "box_MultipleOR_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|998590864"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_176_Out
  self.box_MultipleOR_175 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_175
  l0._graph = self
  l0._name = "box_MultipleOR_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1397034095"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_175_Out
  self.box_MapPointController_v3_75 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_75
  l0._graph = self
  l0._name = "box_MapPointController_v3_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1460140358"
  l0.Shown = self.f_box_MapPointController_v3_75_Shown
  l0.Hidden = self.f_box_MapPointController_v3_75_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_VehicleMonitor_v2_42 = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_42
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1470435337"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v2_42_Entered
  l0.Leave = self.f_box_VehicleMonitor_v2_42_Leave
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.StateChange = DummyFunction
  l0.BailedOut = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.TakenDamage = DummyFunction
  self.box_MultipleOR_194 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_194
  l0._graph = self
  l0._name = "box_MultipleOR_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1773720929"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_194_Out
  self.box_SnapAndBind_73 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_73
  l0._graph = self
  l0._name = "box_SnapAndBind_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|2026488292"
  l0.Attached = self.f_box_SnapAndBind_73_Attached
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
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S10_SpotTheFed_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|213468296", "213468296", "S10_SpotTheFed_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|794668992", "794668992", "S10_SpotTheFed_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_FelonyTargetController_189_SearchStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetMonitor_191()
  l0 = self.box_FelonyTargetMonitor_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1268732281", "1268732281", "S10_SpotTheFed_Main", "box_FelonyTargetController_189.SearchStarted", "box_FelonyTargetMonitor_191.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_147_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_75()
  l0 = self.box_MultipleOR_147
  l1 = self.box_MapPointController_v3_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|410266207", "410266207", "S10_SpotTheFed_Main", "box_MultipleOR_147.Out", "box_MapPointController_v3_75.Show", l0, l1)
  l1:Show()
end
function export:f_box_TimerToScreen_192_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_194()
  l0 = self.box_TimerToScreen_192
  l1 = self.box_MultipleOR_194
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|464549356", "464549356", "S10_SpotTheFed_Main", "box_TimerToScreen_192.TimeElapsed", "box_MultipleOR_194.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOController_38_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_38
  self.UbberCarMarcus = l0.UserID
  self:OnEnter_box_MultipleOR_147()
  l1 = self.box_MultipleOR_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1875135964", "1875135964", "S10_SpotTheFed_Main", "box_CLOController_38.OnUserInPlace", "box_MultipleOR_147.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_17_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_194()
  l0 = self.box_Timer_v2_17
  l1 = self.box_MultipleOR_194
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1016551431", "1016551431", "S10_SpotTheFed_Main", "box_Timer_v2_17.Stopped", "box_MultipleOR_194.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_17_TimeElapsed()
  local l0
  self = self._graph
  self:OnEnter_box_Timer_v2_17()
  l0 = self.box_Timer_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1534980530", "1534980530", "S10_SpotTheFed_Main", "box_Timer_v2_17.TimeElapsed", "box_Timer_v2_17.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_38
  l0.CLO = "9223372046376096873"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1235392365", "1235392365", "S10_SpotTheFed_Main", "box_Get_Player_ID_1.Out", "box_CLOController_38.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_FelonyTargetMonitor_191_Chasing()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_176()
  l0 = self.box_FelonyTargetMonitor_191
  l1 = self.box_MultipleOR_176
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|707526587", "707526587", "S10_SpotTheFed_Main", "box_FelonyTargetMonitor_191.Chasing", "box_MultipleOR_176.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_FelonyTargetMonitor_191_Evaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_175()
  l0 = self.box_FelonyTargetMonitor_191
  l1 = self.box_MultipleOR_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1209762341", "1209762341", "S10_SpotTheFed_Main", "box_FelonyTargetMonitor_191.Evaded", "box_MultipleOR_175.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_FelonyTargetMonitor_191_Searching()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_175()
  l0 = self.box_FelonyTargetMonitor_191
  l1 = self.box_MultipleOR_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1790507560", "1790507560", "S10_SpotTheFed_Main", "box_FelonyTargetMonitor_191.Searching", "box_MultipleOR_175.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_FelonyTargetMonitor_191_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_17()
  l0 = self.box_FelonyTargetMonitor_191
  l1 = self.box_Timer_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1775013999", "1775013999", "S10_SpotTheFed_Main", "box_FelonyTargetMonitor_191.Stopped", "box_Timer_v2_17.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_74()
  l0 = self.box_MultipleOR_19
  l1 = self.box_MapPointController_v3_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|239027028", "239027028", "S10_SpotTheFed_Main", "box_MultipleOR_19.Out", "box_MapPointController_v3_74.Show", l0, l1)
  l1:Show()
end
function export:f_box_MultipleOR_176_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_74()
  l0 = self.box_MultipleOR_176
  l1 = self.box_MapPointController_v3_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1418694433", "1418694433", "S10_SpotTheFed_Main", "box_MultipleOR_176.Out", "box_MapPointController_v3_74.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_190_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v3_75()
  l0 = self.box_MapPointController_v3_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|2069949797", "2069949797", "S10_SpotTheFed_Main", "box_Ordered_Output_190.Out", "box_MapPointController_v3_75.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_190_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TimerToScreen_192
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1545545931", "1545545931", "S10_SpotTheFed_Main", "box_Ordered_Output_190.Out", "box_TimerToScreen_192.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_175_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1855188681"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_81_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_81_Out_1
  l0 = self.box_MultipleOR_175
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|554449902", "554449902", "S10_SpotTheFed_Main", "box_MultipleOR_175.Out", "box_Ordered_Output_81.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v3_75_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MapPointController_v3_75
  l1 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|245814153", "245814153", "S10_SpotTheFed_Main", "box_MapPointController_v3_75.Hidden", "box_MultipleOR_19.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MapPointController_v3_75_Shown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|2040036886"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_148_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_148_Out_1
  l0 = self.box_MapPointController_v3_75
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|173146114", "173146114", "S10_SpotTheFed_Main", "box_MapPointController_v3_75.Shown", "box_Ordered_Output_148.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v2_42_Entered()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1231637723"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_190_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_190_Out_1
  l0 = self.box_VehicleMonitor_v2_42
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1893417644", "1893417644", "S10_SpotTheFed_Main", "box_VehicleMonitor_v2_42.Entered", "box_Ordered_Output_190.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v2_42_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_147()
  l0 = self.box_VehicleMonitor_v2_42
  l1 = self.box_MultipleOR_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|2142631881", "2142631881", "S10_SpotTheFed_Main", "box_VehicleMonitor_v2_42.Leave", "box_MultipleOR_147.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_194_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = nil
  l0.FelonyLevel = 3
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.3243151746"
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|263889187"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = self.f_box_FelonyTargetController_189_SearchStarted
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_MultipleOR_194
  l1 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1202311422", "1202311422", "S10_SpotTheFed_Main", "box_MultipleOR_194.Out", "box_FelonyTargetController_189.StartSearch", l0, l1)
  l1:StartSearch()
end
function export:f_box_Ordered_Output_81_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetMonitor_191()
  l0 = self.box_FelonyTargetMonitor_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|546017108", "546017108", "S10_SpotTheFed_Main", "box_Ordered_Output_81.Out", "box_FelonyTargetMonitor_191.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_81_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|2114526568", "2114526568", "S10_SpotTheFed_Main", "box_Ordered_Output_81.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_SnapAndBind_73_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_42
  l0.Vehicle = self.UbberCarMarcus
  l0 = self.box_SnapAndBind_73
  l1 = self.box_VehicleMonitor_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|561719172", "561719172", "S10_SpotTheFed_Main", "box_SnapAndBind_73.Attached", "box_VehicleMonitor_v2_42.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_148_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_73
  l0.Parent = self.UbberCarMarcus
  l0.Child = "9223372046376139434"
  l0.zPosOffset = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1433532345", "1433532345", "S10_SpotTheFed_Main", "box_Ordered_Output_148.Out", "box_SnapAndBind_73.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Ordered_Output_148_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_176()
  l0 = self.box_MultipleOR_176
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S10_SpotTheFed\\S10_SpotTheFed.domino|@S10_SpotTheFed_Main|1022376518", "1022376518", "S10_SpotTheFed_Main", "box_Ordered_Output_148.Out", "box_MultipleOR_176.Input", clone, l0)
  l0:Input(1)
end
function export:OnEnter_box_MapPointController_v3_74()
  local l0
  l0 = self.box_MapPointController_v3_74
  l0.MapPoint = "9223372046376139084"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:OnEnter_box_MultipleOR_147()
end
function export:OnEnter_box_Timer_v2_17()
  local l0
  l0 = self.box_Timer_v2_17
  l0.Seconds = 0.5
end
function export:OnEnter_box_FelonyTargetMonitor_191()
end
function export:OnEnter_box_MultipleOR_19()
end
function export:OnEnter_box_MultipleOR_176()
end
function export:OnEnter_box_MultipleOR_175()
end
function export:OnEnter_box_MapPointController_v3_75()
  local l0
  l0 = self.box_MapPointController_v3_75
  l0.MapPoint = "9223372046376139434"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
end
function export:OnEnter_box_MultipleOR_194()
end
_compilerVersion = 4
