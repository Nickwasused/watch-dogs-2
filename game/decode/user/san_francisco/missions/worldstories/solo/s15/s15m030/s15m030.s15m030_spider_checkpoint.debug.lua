export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("Domino/System/TeleportEntity.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S15M030_Spider_Checkpoint"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint"
  self.CheckPointLoaded = DummyFunction
  self.Activated = DummyFunction
  self.TEST_Spider = nil
  self.Ref_SpiderDrone = nil
  self.box_MissionZone_7 = cbox:CreateBox("Domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_7
  l0._graph = self
  l0._name = "box_MissionZone_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|295248911"
  l0.Enabled = self.f_box_MissionZone_7_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_MissionLayer_v2_4 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|626865969"
  l0.Loaded = self.f_box_MissionLayer_v2_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_5 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_5
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|681904880"
  l0.Out = self.f_box_MissionCheckpointReach_5_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_22
  l0._graph = self
  l0._name = "box_MultipleOR_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|707003288"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_22_Out
  self.box_CLOController_10 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_10
  l0._graph = self
  l0._name = "box_CLOController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1223830048"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_10_OnUserInPlace
  self.box_SetBoolean_v2_9 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_9
  l0._graph = self
  l0._name = "box_SetBoolean_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1255392060"
  l0.Out = self.f_box_SetBoolean_v2_9_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_9_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_9_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_9_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_9_SetFromBool
  self.box_CinematicPrep_6 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_6
  l0._graph = self
  l0._name = "box_CinematicPrep_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1318096165"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_6_PostOut
  self.box_Teleport_Entity_12 = cbox:CreateBox("Domino/System/TeleportEntity.lua")
  l0 = self.box_Teleport_Entity_12
  l0._graph = self
  l0._name = "box_Teleport_Entity_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1374991922"
  l0.Out = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_Entity_12_TeleportDone
  self.box_Teleport_Entity_20 = cbox:CreateBox("Domino/System/TeleportEntity.lua")
  l0 = self.box_Teleport_Entity_20
  l0._graph = self
  l0._name = "box_Teleport_Entity_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1638159295"
  l0.Out = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_Entity_20_TeleportDone
  self.box_MissionCheckpointReach_8 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_8
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1726209755"
  l0.Out = self.f_box_MissionCheckpointReach_8_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Teleport_Entity_3 = cbox:CreateBox("Domino/System/TeleportEntity.lua")
  l0 = self.box_Teleport_Entity_3
  l0._graph = self
  l0._name = "box_Teleport_Entity_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1803867199"
  l0.Out = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_Entity_3_TeleportDone
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Activate()
  local l0
  l0 = self.box_MissionCheckpointReach_5
  l0.Checkpoint = self.SetCheckpoint
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1746215715", "1746215715", "S15M030_Spider_Checkpoint", "Activate", "box_MissionCheckpointReach_5.In", self, l0)
  l0:In()
end
function export:CheckpointIn()
  local l0
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|938022849", "938022849", "S15M030_Spider_Checkpoint", "CheckpointIn", "box_MissionLayer_v2_4.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionZone_7_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ForceTimeOfDay
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1926027780"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_23_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_23_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MissionZone_7
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|2094907430", "2094907430", "S15M030_Spider_Checkpoint", "box_MissionZone_7.Enabled", "box_Compare_Boolean_v2_23.In", l0, l1)
  l1:In()
end
function export:f_box_Set_Entity_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.SpiderDroneID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1838537504", "1838537504", "S15M030_Spider_Checkpoint", "box_Set_Entity_2.Out", "Activated", clone, self)
  self:Activated()
end
function export:f_box_MissionLayer_v2_4_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_8
  l0.Checkpoint = self.SetCheckpoint
  l0 = self.box_MissionLayer_v2_4
  l1 = self.box_MissionCheckpointReach_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1903820703", "1903820703", "S15M030_Spider_Checkpoint", "box_MissionLayer_v2_4.Loaded", "box_MissionCheckpointReach_8.In", l0, l1)
  l1:In()
end
function export:f_box_Set_Entity_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.SpiderDroneID = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|601796867", "601796867", "S15M030_Spider_Checkpoint", "box_Set_Entity_1.Out", "CheckPointLoaded", clone, self)
  self:CheckPointLoaded()
end
function export:f_box_MissionCheckpointReach_5_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.SpiderRef_IN
  l0._graph = self
  l0._name = "box_Set_Entity_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|598658365"
  l0.Out = self.f_box_Set_Entity_2_Out
  l0 = self.box_MissionCheckpointReach_5
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|871579958", "871579958", "S15M030_Spider_Checkpoint", "box_MissionCheckpointReach_5.Out", "box_Set_Entity_2.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_MultipleOR_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_Entity_12
  l0.Entity = "9223372055105397390"
  l0.Destination = "9223372055105225718"
  l0.UseFadeToBlack = 0
  l0 = self.box_MultipleOR_22
  l1 = self.box_Teleport_Entity_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1640029465", "1640029465", "S15M030_Spider_Checkpoint", "box_MultipleOR_22.Out", "box_Teleport_Entity_12.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_10_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_10
  self.Ref_SpiderDrone = l0.UserID
  l1 = self.box_SetBoolean_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1149059681", "1149059681", "S15M030_Spider_Checkpoint", "box_CLOController_10.OnUserInPlace", "box_SetBoolean_v2_9.True", l0, l1)
  l1:True()
end
function export:f_box_SetBoolean_v2_9_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.FromSpiderCheckPoint = l0.Target
end
function export:f_box_SetBoolean_v2_9_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.FromSpiderCheckPoint = l0.Target
end
function export:f_box_SetBoolean_v2_9_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.FromSpiderCheckPoint = l0.Target
end
function export:f_box_SetBoolean_v2_9_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.FromSpiderCheckPoint = l0.Target
  l0 = self.box_CinematicPrep_6
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_SetBoolean_v2_9
  l1 = self.box_CinematicPrep_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|258592289", "258592289", "S15M030_Spider_Checkpoint", "box_SetBoolean_v2_9.SetTrue", "box_CinematicPrep_6.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_SetBoolean_v2_9_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.FromSpiderCheckPoint = l0.Target
end
function export:f_box_CinematicPrep_6_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Ref_SpiderDrone
  l0._graph = self
  l0._name = "box_Set_Entity_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|679406034"
  l0.Out = self.f_box_Set_Entity_1_Out
  l0 = self.box_CinematicPrep_6
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|749648207", "749648207", "S15M030_Spider_Checkpoint", "box_CinematicPrep_6.PostOut", "box_Set_Entity_1.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_Teleport_Entity_12_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_Entity_20
  l0.Entity = "9223372060110433468"
  l0.Destination = "9223372060110433467"
  l0.UseFadeToBlack = 0
  l0 = self.box_Teleport_Entity_12
  l1 = self.box_Teleport_Entity_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1492098565", "1492098565", "S15M030_Spider_Checkpoint", "box_Teleport_Entity_12.TeleportDone", "box_Teleport_Entity_20.In", l0, l1)
  l1:In()
end
function export:f_box_Teleport_Entity_20_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_Entity_3
  l0.Entity = "9223372066810222704"
  l0.Destination = "9223372062336590480"
  l0.UseFadeToBlack = 0
  l0 = self.box_Teleport_Entity_20
  l1 = self.box_Teleport_Entity_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1902605735", "1902605735", "S15M030_Spider_Checkpoint", "box_Teleport_Entity_20.TeleportDone", "box_Teleport_Entity_3.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionZone_7
  l0.MissionArea = self.MissionZoneSupplied
  l0.MissionLayer = self.MissionLayer
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  l0 = self.box_MissionCheckpointReach_8
  l1 = self.box_MissionZone_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|125058531", "125058531", "S15M030_Spider_Checkpoint", "box_MissionCheckpointReach_8.Out", "box_MissionZone_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Teleport_Entity_3_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_10
  l0.CLO = self.SpiderDrone_CLO
  l0 = self.box_Teleport_Entity_3
  l1 = self.box_CLOController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|642012440", "642012440", "S15M030_Spider_Checkpoint", "box_Teleport_Entity_3.TeleportDone", "box_CLOController_10.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Compare_Boolean_v2_23_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|698338859", "698338859", "S15M030_Spider_Checkpoint", "box_Compare_Boolean_v2_23.A_is_False", "box_MultipleOR_22.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_23_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|2084434849"
  l0.Out = self.f_box_SetTimeOfDay_21_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1194893465", "1194893465", "S15M030_Spider_Checkpoint", "box_Compare_Boolean_v2_23.A_is_True", "box_SetTimeOfDay_21.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_SetTimeOfDay_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s15\\s15m030\\s15m030.domino|@S15M030_Spider_Checkpoint|1166529733", "1166529733", "S15M030_Spider_Checkpoint", "box_SetTimeOfDay_21.Out", "box_MultipleOR_22.Input", clone, l0)
  l0:Input(0)
end
function export:OnEnter_box_MultipleOR_22()
end
function export:CheckPointLoaded()
end
function export:Activated()
end
_compilerVersion = 4
