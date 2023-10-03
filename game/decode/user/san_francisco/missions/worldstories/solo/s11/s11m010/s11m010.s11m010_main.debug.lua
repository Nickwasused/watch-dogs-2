export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S11M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main"
  self.PlayerEntity = nil
  self.Camera_List = {}
  self.box_Teleport_To_SpawnPoint_24 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_24
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|156955940"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_24_TeleportDone
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_5 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_5
  l0._graph = self
  l0._name = "box_CinematicPrep_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|246020693"
  l0.PreOut = self.f_box_CinematicPrep_5_PreOut
  l0.PostOut = DummyFunction
  self.box_MultipleOR_22 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_22
  l0._graph = self
  l0._name = "box_MultipleOR_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|369501586"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_22_Out
  self.box_PlaySequence_v5_33 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_33
  l0._graph = self
  l0._name = "box_PlaySequence_v5_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|490267228"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_33_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_33_Finished
  self.box_Mission_End_7 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_7
  l0._graph = self
  l0._name = "box_Mission_End_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|797770024"
  self.box_PhoneCommunicationController_11 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_11
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|832130980"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_11_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_36 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_36
  l0._graph = self
  l0._name = "box_CinematicPrep_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|982573015"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_36_PostOut
  self.box_MissionCheckpointReach_9 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_9
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1027593840"
  l0.Out = self.f_box_MissionCheckpointReach_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySequence_v5_3 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_3
  l0._graph = self
  l0._name = "box_PlaySequence_v5_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1300207588"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_3_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_3_Finished
  self.box_CinematicPrep_4 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_4
  l0._graph = self
  l0._name = "box_CinematicPrep_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1475125072"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_4_PostOut
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1569904378"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_MissionLayer_v2_13 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_13
  l0._graph = self
  l0._name = "box_MissionLayer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1599359953"
  l0.Loaded = self.f_box_MissionLayer_v2_13_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1779625227"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_CinematicPrep_16 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_16
  l0._graph = self
  l0._name = "box_CinematicPrep_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|2014343395"
  l0.PreOut = self.f_box_CinematicPrep_16_PreOut
  l0.PostOut = DummyFunction
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
  l0 = self.box_MissionLayer_v2_13
  l0.LayerName = "S11M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1483665379", "1483665379", "S11M010_Main", "CheckPoint_0", "box_MissionLayer_v2_13.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_Mission_End_7()
  l0 = self.box_Mission_End_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1386502754", "1386502754", "S11M010_Main", "CheckPoint_1", "box_Mission_End_7.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S11M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1104553538", "1104553538", "S11M010_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_Teleport_To_SpawnPoint_24_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|699134583"
  l0.Out = self.f_box_Simple_Node_21_Out
  l0 = self.box_Teleport_To_SpawnPoint_24
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1169366580", "1169366580", "S11M010_Main", "box_Teleport_To_SpawnPoint_24.TeleportDone", "box_Simple_Node_21.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|794668992", "794668992", "S11M010_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_5_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372064742473294"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|950434402"
  l0.Out = self.f_box_AI_Agent_Zone_23_Out
  l0 = self.box_CinematicPrep_5
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|653673469", "653673469", "S11M010_Main", "box_CinematicPrep_5.PreOut", "box_AI_Agent_Zone_23.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_36
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MultipleOR_22
  l1 = self.box_CinematicPrep_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|549526494", "549526494", "S11M010_Main", "box_MultipleOR_22.Out", "box_CinematicPrep_36.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySequence_v5_33_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_PlaySequence_v5_33
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1457625746", "1457625746", "S11M010_Main", "box_PlaySequence_v5_33.Finished", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_33_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_PlaySequence_v5_33
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1380683736", "1380683736", "S11M010_Main", "box_PlaySequence_v5_33.Skipped", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetActionMap_v2_18_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_11
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048063956708"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|223589468", "223589468", "S11M010_Main", "box_SetActionMap_v2_18.Popped", "box_PhoneCommunicationController_11.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Simple_Node_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1818157625", "1818157625", "S11M010_Main", "box_Simple_Node_21.Out", "box_MultipleOR_22.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1385717833", "1385717833", "S11M010_Main", "box_Get_Player_ID_1.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_PhoneCommunicationController_11_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_7()
  l0 = self.box_PhoneCommunicationController_11
  l1 = self.box_Mission_End_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|165607935", "165607935", "S11M010_Main", "box_PhoneCommunicationController_11.OnCommunicationFinished", "box_Mission_End_7.End", l0, l1)
  l1:End()
end
function export:f_box_AI_Agent_Zone_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372056543865358"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1042034785"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1312862975", "1312862975", "S11M010_Main", "box_AI_Agent_Zone_23.Out", "box_Cinema_Zone_Cleanup_14.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Show_Or_Hide_All_UI_15_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|650894691"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_18_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|879653790", "879653790", "S11M010_Main", "box_Show_Or_Hide_All_UI_15.Shown", "box_SetActionMap_v2_18.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_CinematicPrep_36_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|964227889"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_15_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_36
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1026988033", "1026988033", "S11M010_Main", "box_CinematicPrep_36.PostOut", "box_Show_Or_Hide_All_UI_15.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionCheckpointReach_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1523139824"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_19_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_MissionCheckpointReach_9
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1725602122", "1725602122", "S11M010_Main", "box_MissionCheckpointReach_9.Out", "box_SetActionMap_v2_19.Push", l0, l1)
  l1:Push()
end
function export:f_box_Cinema_Zone_Cleanup_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_3
  l0.SceneEntity = "9223372049341580745"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S11/S11_M010MissionStart_CIN/s11_m010missionstart_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|2126145745", "2126145745", "S11M010_Main", "box_Cinema_Zone_Cleanup_14.Out", "box_PlaySequence_v5_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_To_SpawnPoint_24
  l0.SpawnPoint = "9223372053000921201"
  l0.KeepBlackScreenOnExit = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1106606436", "1106606436", "S11M010_Main", "box_Simple_Node_20.Out", "box_Teleport_To_SpawnPoint_24.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySequence_v5_3_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_4
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_CinematicPrep_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|580964434", "580964434", "S11M010_Main", "box_PlaySequence_v5_3.Finished", "box_CinematicPrep_4.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySequence_v5_3_Skipped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1181309970"
  l0.Out = self.f_box_Simple_Node_20_Out
  l0 = self.box_PlaySequence_v5_3
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1684498950", "1684498950", "S11M010_Main", "box_PlaySequence_v5_3.Skipped", "box_Simple_Node_20.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_4_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_16
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CinematicPrep_4
  l1 = self.box_CinematicPrep_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1808327750", "1808327750", "S11M010_Main", "box_CinematicPrep_4.PostOut", "box_CinematicPrep_16.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_SetActionMap_v2_19_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1894198365"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_17_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|735255271", "735255271", "S11M010_Main", "box_SetActionMap_v2_19.Pushed", "box_Show_Or_Hide_All_UI_17.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_9
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_10
  l1 = self.box_MissionCheckpointReach_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|911159848", "911159848", "S11M010_Main", "box_MultipleOR_10.Out", "box_MissionCheckpointReach_9.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_13_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1800398594"
  l0.Out = self.f_box_Get_Player_ID_12_Out
  l0 = self.box_MissionLayer_v2_13
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|100829377", "100829377", "S11M010_Main", "box_MissionLayer_v2_13.Loaded", "box_Get_Player_ID_12.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MultipleOR_6
  l1 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|776325000", "776325000", "S11M010_Main", "box_MultipleOR_6.Out", "box_MultipleOR_22.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Get_Player_ID_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1074507771", "1074507771", "S11M010_Main", "box_Get_Player_ID_12.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Show_Or_Hide_All_UI_17_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_5
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|342876817", "342876817", "S11M010_Main", "box_Show_Or_Hide_All_UI_17.Hidden", "box_CinematicPrep_5.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_CinematicPrep_16_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_33
  l0.SceneEntity = "9223372050022502833"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S11/S11_TezcaScan-FS_VID/s11_tezcascan-fs_vid.seq"
  l0 = self.box_CinematicPrep_16
  l1 = self.box_PlaySequence_v5_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M010\\S11M010.domino|@S11M010_Main|1368308180", "1368308180", "S11M010_Main", "box_CinematicPrep_16.PreOut", "box_PlaySequence_v5_33.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_MultipleOR_22()
end
function export:OnEnter_box_Mission_End_7()
  local l0
  l0 = self.box_Mission_End_7
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "S11M010_Main"
  l0.ShowMissionComplete = 0
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_MultipleOR_6()
end
_compilerVersion = 4
