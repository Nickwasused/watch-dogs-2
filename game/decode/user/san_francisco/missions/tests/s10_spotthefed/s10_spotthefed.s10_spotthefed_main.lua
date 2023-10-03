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
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TimerToScreen.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
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
  self[74] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[74]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[2] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[147] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[147]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_147_Out
  self[192] = cbox:CreateBox("Domino/System/TimerToScreen.lua")
  l0 = self[192]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_192_TimeElapsed
  self[38] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[38]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_38_OnUserInPlace
  self[17] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_17_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_17_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[191] = cbox:CreateBox("Domino/System/FelonyTargetMonitor.lua")
  l0 = self[191]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_191_Stopped
  l0.None = DummyFunction
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = self.f_191_Chasing
  l0.Searching = self.f_191_Searching
  l0.Evaded = self.f_191_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_19_Out
  self[176] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[176]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_176_Out
  self[175] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[175]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_175_Out
  self[75] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[75]
  l0._graph = self
  l0.Shown = self.f_75_Shown
  l0.Hidden = self.f_75_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[42] = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_42_Entered
  l0.Leave = self.f_42_Leave
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
  self[194] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[194]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_194_Out
  self[73] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[73]
  l0._graph = self
  l0.Attached = self.f_73_Attached
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
  l0 = self[2]
  l0.LayerName = "S10_SpotTheFed_Main"
  l0:Load()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_189_SearchStarted()
  local l0
  self = self._graph
  l0 = self[191]
  l0:Start()
end
function export:f_147_Out()
  local l0
  self = self._graph
  self:en_75()
  l0 = self[75]
  l0:Show()
end
function export:f_192_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[194]
  l0:Input(0)
end
function export:f_38_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[38]
  self.UbberCarMarcus = l0.UserID
  l0 = self[147]
  l0:Input(0)
end
function export:f_17_Stopped()
  local l0
  self = self._graph
  l0 = self[194]
  l0:Input(1)
end
function export:f_17_TimeElapsed()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Stop()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[38]
  l0.CLO = "9223372046376096873"
  l0:Activate()
end
function export:f_191_Chasing()
  local l0
  self = self._graph
  l0 = self[176]
  l0:Input(0)
end
function export:f_191_Evaded()
  local l0
  self = self._graph
  l0 = self[175]
  l0:Input(0)
end
function export:f_191_Searching()
  local l0
  self = self._graph
  l0 = self[175]
  l0:Input(1)
end
function export:f_191_Stopped()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Start()
end
function export:f_19_Out()
  local l0
  self = self._graph
  self:en_74()
  l0 = self[74]
  l0:Show()
end
function export:f_176_Out()
  local l0
  self = self._graph
  self:en_74()
  l0 = self[74]
  l0:Hide()
end
function export:f_190_Out_0()
  local l0
  self = self._graph
  self:en_75()
  l0 = self[75]
  l0:Hide()
end
function export:f_190_Out_1()
  local l0
  self = self._graph
  l0 = self[192]
  l0.Seconds = 5
  l0:Start()
end
function export:f_175_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_81_Out_0
  l0.Out[1] = self.f_81_Out_1
  l0:In()
end
function export:f_75_Hidden()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(0)
end
function export:f_75_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_148_Out_0
  l0.Out[1] = self.f_148_Out_1
  l0:In()
end
function export:f_42_Entered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_190_Out_0
  l0.Out[1] = self.f_190_Out_1
  l0:In()
end
function export:f_42_Leave()
  local l0
  self = self._graph
  l0 = self[147]
  l0:Input(1)
end
function export:f_194_Out()
  local l0
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
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = self.f_189_SearchStarted
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StartSearch()
end
function export:f_81_Out_0()
  local l0
  self = self._graph
  l0 = self[191]
  l0:Stop()
end
function export:f_81_Out_1()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(1)
end
function export:f_73_Attached()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Vehicle = self.UbberCarMarcus
  l0:Enable()
end
function export:f_148_Out_0()
  local l0
  self = self._graph
  l0 = self[73]
  l0.Parent = self.UbberCarMarcus
  l0.Child = "9223372046376139434"
  l0.zPosOffset = 1
  l0:Attach()
end
function export:f_148_Out_1()
  local l0
  self = self._graph
  l0 = self[176]
  l0:Input(1)
end
function export:en_74()
  local l0
  l0 = self[74]
  l0.MapPoint = "9223372046376139084"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.Seconds = 0.5
end
function export:en_75()
  local l0
  l0 = self[75]
  l0.MapPoint = "9223372046376139434"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
end
_compilerVersion = 4
