export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/DebugExecuteConsole_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S01M01_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main"
  self.PlayerEntity = nil
  self.Virus_Installed_3rd_house = 0
  self.Virus_Installed_1st_house = 0
  self.Virus_Installed_2nd_house = 0
  self.Spawned_Truck = nil
  self.ProximityTrigger_245 = "9223372043682471110"
  self.DynamicObjectiveSpawner_0 = "9223372043527436090"
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|1012652423"
  l0.Loaded = self.f_box_MissionLayer_v2_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_17 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_17
  l0._graph = self
  l0._name = "box_MissionLayer_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|1083251078"
  l0.Loaded = self.f_box_MissionLayer_v2_17_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_19 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_19
  l0._graph = self
  l0._name = "box_CinematicPrep_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|1201563280"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_19_PostOut
  self.box_MultipleOR_18 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|1223103342"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_MissionCheckpointReach_15 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_15
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|1506216935"
  l0.Out = self.f_box_MissionCheckpointReach_15_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Hackable_Controller_14 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_14
  l0._graph = self
  l0._name = "box_Hackable_Controller_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|1555210592"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_Hackable_Controller_14_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
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
  l0 = self.box_MissionLayer_v2_17
  l0.LayerName = "FP_S01M01_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|1089896", "1089896", "S01M01_Main", "CheckPoint_0", "box_MissionLayer_v2_17.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = "FP_S01M01_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|870021753", "870021753", "S01M01_Main", "In", "box_MissionLayer_v2_4.Load", self, l0)
  l0:Load()
end
function export:f_box_Get_Player_ID_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_19
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|376374819", "376374819", "S01M01_Main", "box_Get_Player_ID_16.Out", "box_CinematicPrep_19.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_DebugExecuteConsole_v2_9_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Controller_14
  l0.HackableEntity = "9223372043682511532"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|2108827093", "2108827093", "S01M01_Main", "box_DebugExecuteConsole_v2_9.Executed", "box_Hackable_Controller_14.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_MissionLayer_v2_4_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|1951316581"
  l0.Out = self.f_box_Get_Player_ID_8_Out
  l0 = self.box_MissionLayer_v2_4
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|669675607", "669675607", "S01M01_Main", "box_MissionLayer_v2_4.Loaded", "box_Get_Player_ID_8.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_17_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|498246196"
  l0.Out = self.f_box_Get_Player_ID_16_Out
  l0 = self.box_MissionLayer_v2_17
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|1674931316", "1674931316", "S01M01_Main", "box_MissionLayer_v2_17.Loaded", "box_Get_Player_ID_16.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_19_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_CinematicPrep_19
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|2069247764", "2069247764", "S01M01_Main", "box_CinematicPrep_19.PostOut", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_15
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_18
  l1 = self.box_MissionCheckpointReach_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|1324588966", "1324588966", "S01M01_Main", "box_MultipleOR_18.Out", "box_MissionCheckpointReach_15.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|2111670171"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_MissionCheckpointReach_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|1060070220", "1060070220", "S01M01_Main", "box_MissionCheckpointReach_15.Out", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Controller_14_HackForced()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "faa_mission_start FP.S01M01_Main_01_GRABnSHOW_VAN_Com-Fort"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|249721231"
  l0.Executed = DummyFunction
  l0 = self.box_Hackable_Controller_14
  l1 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|613571809", "613571809", "S01M01_Main", "box_Hackable_Controller_14.HackForced", "box_DebugExecuteConsole_v2_3.Execute", l0, l1)
  l1:Execute()
end
function export:f_box_Get_Player_ID_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|1993631270", "1993631270", "S01M01_Main", "box_Get_Player_ID_8.Out", "box_MultipleOR_18.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "Cheat_hubs_unlocked 1"
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|884248101"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_9_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Demos\\FP_2015\\worldstories\\Solo\\S01\\S01M01.domino|@S01M01_Main|1893859840", "1893859840", "S01M01_Main", "box_Ordered_Output_2.Out", "box_DebugExecuteConsole_v2_9.Execute", clone, l0)
  l0:Execute()
end
function export:OnEnter_box_MultipleOR_18()
end
_compilerVersion = 4
