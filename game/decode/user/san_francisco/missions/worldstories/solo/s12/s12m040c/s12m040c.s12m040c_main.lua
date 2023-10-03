export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CounterHackerController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/SpawnerController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M040C/s12_m040c_scr.S12_M040C_SCR_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M040C/S12M040C.S12M040C_DestroyObj.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.InteractObj3 = "9223372046621028430"
  self.PickupObj1 = "9223372046737841950"
  self.IconObj2A = "9223372047425964636"
  self.IconObj2C = "9223372046621028424"
  self.InteractObj1 = "9223372047796977206"
  self.PawnHacker = nil
  self.IconObj1 = "9223372046621027859"
  self.IconObj3 = "9223372046621028428"
  self.InteractObj2C = "9223372046621028426"
  self.InteractObj2B = "9223372046621028422"
  self.InteractObj2A = "9223372046621028416"
  self.IconObj2B = "9223372046621028420"
  self.DestructableObj2C = "9223372047347105087"
  self.TagPointMissionArea = "9223372046995425970"
  self.CLOHacker = "9223372046621076701"
  self.PGTMissionAreaM4C = "9223372046621052575"
  self.PGTMissionAreaM4A = "9223372046737935285"
  self.LookTriggerHacker = "9223372047347290699"
  self.LookTriggerObj2A = "9223372047425964634"
  self.LookTriggerObj2C = "9223372047347290701"
  self.LookTriggerObj2B = "9223372047347290703"
  self.LookTriggerObj1 = "9223372047347290707"
  self.DestructableObj2D = "9223372047388708154"
  self.LookTriggerObj2D = "9223372047425964634"
  self.IconObj2D = "9223372047425964636"
  self.DestroyIncrement = 0
  self.DestroyTotal = 2
  self.DestructableObj2E = "9223372047388708156"
  self.LookTriggerObj2E = "9223372047425964640"
  self.IconObj2E = "9223372047425964638"
  self.DestructableObj2F = "9223372047388708158"
  self.IconObj2F = "9223372047425964644"
  self.LookTriggerObj2F = "9223372047425964642"
  self.Robot = nil
  self.SecondEncounter = {}
  self.PawnHackerLeader = nil
  self.CLOToSpawn = nil
  self.EnemiesRemaining = {}
  self.RobotPawn = nil
  self.DestructableObj2AEntity = nil
  self.DestructableObj2BEntity = nil
  self.DestructableObj2ACLO = "9223372048457453512"
  self.DestructableObj2BCLO = "9223372048457453513"
  self.leaveMissionArea = "9223372048349441387"
  self.objSearchArea = "9223372049138751587"
  self.CLOBikerLeader = "9223372047074318504"
  self.PawnBikerLeader = nil
  self.ObjectiveATM_1 = "9223372057434273908"
  self.ObjectiveATM_2 = "9223372057434273910"
  self.ObjectiveATM_3 = "9223372057434273912"
  self.IconATM_2 = "9223372047425964636"
  self.IconATM_3 = "9223372046621028420"
  self.ATMGroup_Boathouse = {}
  self.ATMGroup_Shed = {}
  self.ATMGroup_Yard = {}
  self.IconATM_Yard = "9223372059159525840"
  self.IconATM_Shed = "9223372046621027859"
  self.IconATM_Boathouse = "9223372046621028420"
  self.FXGroup_Shed = {}
  self.FXGroup_Yard = {}
  self.FXGroup_Boathouse = {}
  self[30] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[30]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_30_PostOut
  self[4] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M040C/s12_m040c_scr.S12_M040C_SCR_Main.lua")
  l0 = self[4]
  l0._graph = self
  l0.out = self.f_4_out
  self[72] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[72]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_72_Out
  self[37] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[37]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_37_Added
  l0.Removed = self.f_37_Removed
  l0.Out = self.f_37_Out
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[87] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[87]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[62] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_62_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_13_Out
  self[17] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_17_Added
  l0.Removed = self.f_17_Removed
  l0.Out = self.f_17_Out
  self[23] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[23]
  l0._graph = self
  self[14] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_14_Added
  l0.Removed = self.f_14_Removed
  l0.Out = self.f_14_Out
  self[34] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M040C/S12M040C.S12M040C_DestroyObj.lua")
  l0 = self[34]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.AllBroken = self.f_34_AllBroken
  self[18] = cbox:CreateBox("domino/System/CounterHackerController.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = DummyFunction
  l0.ProfilerDisruptionEnabled = self.f_18_ProfilerDisruptionEnabled
  l0.NetHackDisruptionEnabled = DummyFunction
  l0.RcDisruptionEnabled = DummyFunction
  l0.HackingDisruptionEnabled = DummyFunction
  l0.ProfilerDisruptionDisabled = DummyFunction
  l0.NetHackDisruptionDisabled = DummyFunction
  l0.RcDisruptionDisabled = DummyFunction
  l0.HackingDisruptionDisabled = DummyFunction
  self[22] = cbox:CreateBox("domino/System/SpawnerController.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Triggered = self.f_22_Triggered
  l0.InitialSpawnDone = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.MessageCompleted = DummyFunction
  self[71] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[71]
  l0._graph = self
  l0.Loaded = self.f_71_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[12] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[12]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[35] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[35]
  l0._graph = self
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_35_Added
  l0.Removed = self.f_35_Removed
  l0.Out = self.f_35_Out
  self[15] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.MessageCompleted = DummyFunction
  self[36] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M040C/S12M040C.S12M040C_DestroyObj.lua")
  l0 = self[36]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.AllBroken = self.f_36_AllBroken
  self[7] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_7_Added
  l0.Removed = self.f_7_Removed
  l0.Out = self.f_7_Out
  self[84] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[84]
  l0._graph = self
  l0.Out = self.f_84_Out
  l0.MessageCompleted = DummyFunction
  self[9] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[9]
  l0._graph = self
  l0.StartCommunicationOut = self.f_9_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[16] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[92] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[92]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_92_Escaped
  l0.LeftArea = DummyFunction
  self[114] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[114]
  l0._graph = self
  l0.Out = self.f_114_Out
  l0.MessageCompleted = DummyFunction
  self[38] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[38]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_38_Added
  l0.Removed = self.f_38_Removed
  l0.Out = self.f_38_Out
  self[69] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[69]
  l0._graph = self
  l0.Out = self.f_69_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[20] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_20_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.MessageCompleted = DummyFunction
  self[39] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S12/S12M040C/S12M040C.S12M040C_DestroyObj.lua")
  l0 = self[39]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.AllBroken = self.f_39_AllBroken
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
  l0 = self[71]
  l0.LayerName = "S12M040C_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  self:en_23()
  l0 = self[23]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[2]
  l0.LayerName = "S12M040C_Main"
  l0:Load()
end
function export:f_30_PostOut()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S12.S12M040C.Objectives.Objective01",
    item = "Objective",
    id = "643485"
  }
  l0.IncrementalObjectiveTotal = 3
  l0:ShowNewObjective()
end
function export:f_4_out()
  local l0
  self = self._graph
  l0 = self[22]
  l0:TriggerInitialSpawn()
end
function export:f_72_Out()
  local l0
  self = self._graph
  l0 = self[69]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Start()
end
function export:f_37_Added()
  local l0
  self = self._graph
  l0 = self[37]
  self.ATMGroup_Shed = l0.Target
  l0 = self[35]
  l0.Input = self.ATMGroup_Yard
  l0.Data[0] = "9223372058180578428"
  l0.Data[1] = "9223372059159338536"
  l0.Data[2] = "9223372057434273910"
  l0.Data[3] = "9223372059159338538"
  l0:Add()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[37]
  self.ATMGroup_Shed = l0.Target
end
function export:f_37_Removed()
  local l0
  self = self._graph
  l0 = self[37]
  self.ATMGroup_Shed = l0.Target
end
function export:f_28_Out_0()
  local l0
  self = self._graph
  self:en_87()
  l0 = self[87]
  l0:Enable()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(0)
end
function export:f_62_AllSpawned()
  local l0
  self = self._graph
  l0 = self[18]
  l0:EnableProfilerDisruption()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048366123225"
  l0:StartCommunication()
end
function export:f_17_Added()
  local l0
  self = self._graph
  l0 = self[17]
  self.FXGroup_Boathouse = l0.Target
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 24
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:SetTimeOfDay()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[17]
  self.FXGroup_Boathouse = l0.Target
end
function export:f_17_Removed()
  local l0
  self = self._graph
  l0 = self[17]
  self.FXGroup_Boathouse = l0.Target
end
function export:f_14_Added()
  local l0
  self = self._graph
  l0 = self[14]
  self.FXGroup_Yard = l0.Target
  l0 = self[17]
  l0.Input = self.FXGroup_Boathouse
  l0.Data[0] = "9223372067187977379"
  l0.Data[1] = "9223372067187977377"
  l0.Data[2] = "9223372067187977373"
  l0.Data[3] = "9223372067187977371"
  l0.Data[4] = "9223372067187977375"
  l0:Add()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[14]
  self.FXGroup_Yard = l0.Target
end
function export:f_14_Removed()
  local l0
  self = self._graph
  l0 = self[14]
  self.FXGroup_Yard = l0.Target
end
function export:f_34_AllBroken()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0:IncrementObjective()
end
function export:f_18_ProfilerDisruptionEnabled()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Input = self.ATMGroup_Shed
  l0.Data[0] = "9223372057434273908"
  l0:Add()
end
function export:f_22_Triggered()
  local l0
  self = self._graph
  l0 = self[62]
  l0.PGTMissionArea = self.PGTMissionAreaM4C
  l0:Start()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[4]
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(2)
end
function export:f_71_Loaded()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(1)
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 1}
  l0.Out[0] = self.f_28_Out_0
  l0:In()
end
function export:f_35_Added()
  local l0
  self = self._graph
  l0 = self[35]
  self.ATMGroup_Yard = l0.Target
  l0 = self[38]
  l0.Input = self.ATMGroup_Boathouse
  l0.Data[0] = "9223372057434273912"
  l0.Data[1] = "9223372058180578432"
  l0.Data[2] = "9223372059159352502"
  l0:Add()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[35]
  self.ATMGroup_Yard = l0.Target
end
function export:f_35_Removed()
  local l0
  self = self._graph
  l0 = self[35]
  self.ATMGroup_Yard = l0.Target
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  self:en_87()
  l0 = self[87]
  l0:Disable()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = self[92]
  l0.Entity = "9223372046995425970"
  l0.Entity_AreaRadius = 225
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
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_53_Out_0
  l0.Out[1] = self.f_53_Out_1
  l0.Out[2] = self.f_53_Out_2
  l0.Out[3] = self.f_53_Out_3
  l0.Out[4] = self.f_53_Out_4
  l0:In()
end
function export:f_36_AllBroken()
  local l0
  self = self._graph
  l0 = self[114]
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0:IncrementObjective()
end
function export:f_7_Added()
  local l0
  self = self._graph
  l0 = self[7]
  self.FXGroup_Shed = l0.Target
  l0 = self[14]
  l0.Input = self.FXGroup_Yard
  l0.Data[0] = "9223372067187977361"
  l0.Data[1] = "9223372067187977362"
  l0.Data[2] = "9223372067187977363"
  l0.Data[3] = "9223372067187977364"
  l0.Data[4] = "9223372067187977365"
  l0:Add()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[7]
  self.FXGroup_Shed = l0.Target
end
function export:f_7_Removed()
  local l0
  self = self._graph
  l0 = self[7]
  self.FXGroup_Shed = l0.Target
end
function export:f_84_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_53_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:In()
end
function export:f_53_Out_1()
  local l0
  self = self._graph
  l0 = self[36]
  l0.ATMGroupList = self.ATMGroup_Shed
  l0.ObjectiveMapIcon = self.IconATM_Shed
  l0.YInteractObject = "9223372066999314172"
  l0.ParticleGroupList = self.FXGroup_Shed
  l0:Start()
end
function export:f_53_Out_2()
  local l0
  self = self._graph
  l0 = self[39]
  l0.ATMGroupList = self.ATMGroup_Yard
  l0.ObjectiveMapIcon = self.IconATM_Yard
  l0.YInteractObject = "9223372066999315146"
  l0.ParticleGroupList = self.FXGroup_Yard
  l0:Start()
end
function export:f_53_Out_3()
  local l0
  self = self._graph
  l0 = self[34]
  l0.ATMGroupList = self.ATMGroup_Boathouse
  l0.ObjectiveMapIcon = self.IconATM_Boathouse
  l0.YInteractObject = "9223372066999314176"
  l0.ParticleGroupList = self.FXGroup_Boathouse
  l0:Start()
end
function export:f_53_Out_4()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Seconds = 15
  l0:Start()
end
function export:f_9_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[84]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S12.S12M040C.Objectives.Objective02",
    item = "Objective",
    id = "656253"
  }
  l0:ShowNewObjective()
end
function export:f_16_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[12]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048366123220"
  l0:StartCommunication()
end
function export:f_92_Escaped()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:End()
end
function export:f_114_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(0)
end
function export:f_38_Added()
  local l0
  self = self._graph
  l0 = self[38]
  self.ATMGroup_Boathouse = l0.Target
  l0 = self[7]
  l0.Input = self.FXGroup_Shed
  l0.Data[0] = "9223372067187977369"
  l0.Data[1] = "9223372067187977367"
  l0:Add()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = self[38]
  self.ATMGroup_Boathouse = l0.Target
end
function export:f_38_Removed()
  local l0
  self = self._graph
  l0 = self[38]
  self.ATMGroup_Boathouse = l0.Target
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_20_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[30]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Condition(1)
end
function export:f_39_AllBroken()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Destroy",
    id = "169179"
  }
  l0:IncrementObjective()
end
function export:en_87()
  local l0
  l0 = self[87]
  l0.MissionArea = "9223372048786320203"
  l0.MissionLayer = "S12M040C_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "S12M040C_Main"
  l0.TeamSpeak = "PhoneCommunicationSettingsDb.9223372055108868044"
  l0.ShowMissionComplete = 1
end
_compilerVersion = 4
