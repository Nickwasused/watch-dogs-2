export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/EnableCameraDoF.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2758983126.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3311965297.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/341390301.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3022738379.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/797229460.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/969887487.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4197762860.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L13M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main"
  self.PlayerEntity = nil
  self.Smoke_FX_List = {
    "9223372070704021782",
    "9223372070704021783",
    "9223372070704021784",
    "9223372070704021785",
    "9223372070704021786"
  }
  self.box_PhoneCommunicationController_8 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_8
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|137189898"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_box_PhoneCommunicationController_8_Out
  self.box_Timer_v2_6 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_6
  l0._graph = self
  l0._name = "box_Timer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|213753343"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_9 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_9
  l0._graph = self
  l0._name = "box_PlaySequence_v5_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|272898481"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_9_Finished
  self.box_PlaySequence_v5_19 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_19
  l0._graph = self
  l0._name = "box_PlaySequence_v5_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|275985591"
  l0.Started = self.f_box_PlaySequence_v5_19_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_40 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_40
  l0._graph = self
  l0._name = "box_PlaySound_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|294934615"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionController_v4_2 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_2
  l0._graph = self
  l0._name = "box_MissionController_v4_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|297724915"
  self.box_FreeRoam_Hack_Gameplay_10 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_10
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|385535144"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_10_Hacked
  self.box_MultipleOR_34 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_34
  l0._graph = self
  l0._name = "box_MultipleOR_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|404224626"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_34_Out
  self.box_PlaySound_v2_28 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_28
  l0._graph = self
  l0._name = "box_PlaySound_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|451277796"
  l0.Out = self.f_box_PlaySound_v2_28_Out
  l0.Started = self.f_box_PlaySound_v2_28_Started
  l0.Finished = DummyFunction
  self.box_Escape_Gameplay_15 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_15
  l0._graph = self
  l0._name = "box_Escape_Gameplay_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|492053530"
  l0.Started = self.f_box_Escape_Gameplay_15_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_15_Escaped
  l0.LeftArea = DummyFunction
  self.box_PlaySound_v2_27 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_27
  l0._graph = self
  l0._name = "box_PlaySound_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|604042435"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_25 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_25
  l0._graph = self
  l0._name = "box_PlaySound_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|711153196"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_25_Finished
  self.box_MissionMessageController_v3_38 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_38
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|935721668"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_38_MessageCompleted
  self.box_MissionCheckpointReach_23 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_23
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|984885262"
  l0.Out = self.f_box_MissionCheckpointReach_23_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Multiple_AND_17 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_17
  l0._graph = self
  l0._name = "box_Multiple_AND_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1030031102"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_17_Out
  self.box_CinematicPrep_39 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_39
  l0._graph = self
  l0._name = "box_CinematicPrep_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1030356776"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_39_PostOut
  self.box_PlaySound_v2_26 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_26
  l0._graph = self
  l0._name = "box_PlaySound_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1035682961"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Network_Surfing_Controller_43 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_43
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1304146113"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_43_Deactivated
  self.box_CinematicPrep_30 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_30
  l0._graph = self
  l0._name = "box_CinematicPrep_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1309627450"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_30_PostOut
  self.box_Enable_Camera_Depth_Of_Field_24 = cbox:CreateBox("domino/System/EnableCameraDoF.lua")
  l0 = self.box_Enable_Camera_Depth_Of_Field_24
  l0._graph = self
  l0._name = "box_Enable_Camera_Depth_Of_Field_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1376440213"
  l0.Out = self.f_box_Enable_Camera_Depth_Of_Field_24_Out
  self.box_MissionLayer_v2_22 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_22
  l0._graph = self
  l0._name = "box_MissionLayer_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1555285086"
  l0.Loaded = self.f_box_MissionLayer_v2_22_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PlaySound_v2_29 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_29
  l0._graph = self
  l0._name = "box_PlaySound_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1674501973"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_29_Started
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_37 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_37
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|2001745387"
  l0.Out = self.f_box_MissionMessageController_v3_37_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_42 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_42
  l0._graph = self
  l0._name = "box_PlaySound_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|2056796474"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_16 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_16
  l0._graph = self
  l0._name = "box_HackableController_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|2081904204"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_16_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_16_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PhoneCommunicationController_36 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_36
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|2101669019"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_36_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_18 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_18
  l0._graph = self
  l0._name = "box_MissionLayer_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|2127168773"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_18_Unloaded
  l0.Reseted = DummyFunction
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
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|432372691", "432372691", "L13M030_Main", "CheckPoint_0", "box_MultipleOR_34.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1010652417", "1010652417", "L13M030_Main", "In", "box_MultipleOR_34.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_37
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|911541373", "911541373", "L13M030_Main", "box_Ordered_Output_3.Out", "box_MissionMessageController_v3_37.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_14()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|302407440", "302407440", "L13M030_Main", "box_Ordered_Output_3.Out", "box_ParticleFXController_v2_14.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_PhoneCommunicationController_8_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_19()
  l0 = self.box_PhoneCommunicationController_8
  l1 = self.box_PlaySequence_v5_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|217758168", "217758168", "L13M030_Main", "box_PhoneCommunicationController_8.Out", "box_PlaySequence_v5_19.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_6_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_12()
  l0 = self.box_Timer_v2_6
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1828626025", "1828626025", "L13M030_Main", "box_Timer_v2_6.TimeElapsed", "box_SecurityCamController_12.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_InteractionScriptController_7_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Enable_Camera_Depth_Of_Field_24
  l0.Enable = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|213820696", "213820696", "L13M030_Main", "box_InteractionScriptController_7.Disabled", "box_Enable_Camera_Depth_Of_Field_24.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySequence_v5_9_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1058841973"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0 = self.box_PlaySequence_v5_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|595249832", "595249832", "L13M030_Main", "box_PlaySequence_v5_9.Finished", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_19_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_5()
  l0 = self.box_PlaySequence_v5_19
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|102361177", "102361177", "L13M030_Main", "box_PlaySequence_v5_19.Started", "box_SecurityCamController_5.SetInitialTarget", l0, l1)
  l1:SetInitialTarget()
end
function export:f_box_FreeRoam_Hack_Gameplay_10_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1981180360"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_10
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1272708776", "1272708776", "L13M030_Main", "box_FreeRoam_Hack_Gameplay_10.Hacked", "box_Ordered_Output_20.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_34_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_22
  l0.LayerName = "L13M030_IOP_Main"
  l0 = self.box_MultipleOR_34
  l1 = self.box_MissionLayer_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|808759130", "808759130", "L13M030_Main", "box_MultipleOR_34.Out", "box_MissionLayer_v2_22.Load", l0, l1)
  l1:Load()
end
function export:f_box_PlaySound_v2_28_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_42
  l0.Entity = "9223372061660488344"
  l0.SoundId = "soundbinary/4197762860.bnk"
  l0 = self.box_PlaySound_v2_28
  l1 = self.box_PlaySound_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|2102249568", "2102249568", "L13M030_Main", "box_PlaySound_v2_28.Out", "box_PlaySound_v2_42.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_28_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_12()
  l0 = self.box_PlaySound_v2_28
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|190184380", "190184380", "L13M030_Main", "box_PlaySound_v2_28.Started", "box_SecurityCamController_12.ForceUserOutOfCamera", l0, l1)
  l1:ForceUserOutOfCamera()
end
function export:f_box_Escape_Gameplay_15_Escaped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_18
  l0.LayerName = "L13M030_IOP_Main"
  l0 = self.box_Escape_Gameplay_15
  l1 = self.box_MissionLayer_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1769800730", "1769800730", "L13M030_Main", "box_Escape_Gameplay_15.Escaped", "box_MissionLayer_v2_18.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Escape_Gameplay_15_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_36
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357369883"
  l0 = self.box_Escape_Gameplay_15
  l1 = self.box_PhoneCommunicationController_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1463500552", "1463500552", "L13M030_Main", "box_Escape_Gameplay_15.Started", "box_PhoneCommunicationController_36.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_ParticleFXController_v2_11_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_23
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|790944229", "790944229", "L13M030_Main", "box_ParticleFXController_v2_11.Stopped", "box_MissionCheckpointReach_23.In", clone, l0)
  l0:In()
end
function export:f_box_SecurityCamController_12_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_28
  l0.Entity = "9223372061660488344"
  l0.SoundId = "soundbinary/3022738379.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|566794819", "566794819", "L13M030_Main", "box_SecurityCamController_12.CanExitSet", "box_PlaySound_v2_28.Play", clone, l0)
  l0:Play()
end
function export:f_box_SecurityCamController_12_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_30
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1711281443", "1711281443", "L13M030_Main", "box_SecurityCamController_12.UserForcedOutOfCamera", "box_CinematicPrep_30.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_PlaySound_v2_25_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_26
  l0.SoundId = "soundbinary/3311965297.bnk"
  l0 = self.box_PlaySound_v2_25
  l1 = self.box_PlaySound_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|16377478", "16377478", "L13M030_Main", "box_PlaySound_v2_25.Finished", "box_PlaySound_v2_26.Play", l0, l1)
  l1:Play()
end
function export:f_box_SecurityCamController_35_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_39
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|99595310", "99595310", "L13M030_Main", "box_SecurityCamController_35.EnterForced", "box_CinematicPrep_39.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_MissionMessageController_v3_38_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_38
  l1 = self.box_MissionController_v4_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1271586177", "1271586177", "L13M030_Main", "box_MissionMessageController_v3_38.MessageCompleted", "box_MissionController_v4_2.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_SecurityCamController_21_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_21()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|2032193690", "2032193690", "L13M030_Main", "box_SecurityCamController_21.CanExitSet", "box_SecurityCamController_21.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_SecurityCamController_21_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_9
  l0.SceneEntity = "9223372055682152657"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/L13/ulc_zodiackiller.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|473148286", "473148286", "L13M030_Main", "box_SecurityCamController_21.EnterForced", "box_PlaySequence_v5_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_SecurityCamController_5_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_16()
  l0 = self.box_HackableController_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|543397469", "543397469", "L13M030_Main", "box_SecurityCamController_5.CanExitSet", "box_HackableController_v2_16.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_SecurityCamController_5_InitialTargetSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_5()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1347402437", "1347402437", "L13M030_Main", "box_SecurityCamController_5.InitialTargetSet", "box_SecurityCamController_5.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_MissionCheckpointReach_23_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372055083731553"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|777987943"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_35_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_MissionCheckpointReach_23
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|177595573", "177595573", "L13M030_Main", "box_MissionCheckpointReach_23.Out", "box_SecurityCamController_35.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:f_box_ParticleFXController_v2_13_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1353836881", "1353836881", "L13M030_Main", "box_ParticleFXController_v2_13.Started", "box_Timer_v2_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_Multiple_AND_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Multiple_AND_17
  l1 = self.box_MissionMessageController_v3_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1372708482", "1372708482", "L13M030_Main", "box_Multiple_AND_17.Out", "box_MissionMessageController_v3_38.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_CinematicPrep_39_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1483560327"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  l0 = self.box_CinematicPrep_39
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1997480321", "1997480321", "L13M030_Main", "box_CinematicPrep_39.PostOut", "box_Ordered_Output_41.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = self.Smoke_FX_List
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1025920779"
  l0.Started = self.f_box_ParticleFXController_v2_13_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1766960238", "1766960238", "L13M030_Main", "box_Ordered_Output_4.Out", "box_ParticleFXController_v2_13.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1142810373"
  l0.Out = self.f_box_Simple_Node_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|2069717747", "2069717747", "L13M030_Main", "box_Ordered_Output_4.Out", "box_Simple_Node_1.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_14()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1662409382", "1662409382", "L13M030_Main", "box_Simple_Node_1.Out", "box_ParticleFXController_v2_14.Start", clone, l0)
  l0:Start()
end
function export:f_box_Network_Surfing_Controller_43_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_21()
  l0 = self.box_Network_Surfing_Controller_43
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1913371451", "1913371451", "L13M030_Main", "box_Network_Surfing_Controller_43.Deactivated", "box_SecurityCamController_21.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_CinematicPrep_30_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|46939339"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0 = self.box_CinematicPrep_30
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|759483048", "759483048", "L13M030_Main", "box_CinematicPrep_30.PostOut", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:f_box_Enable_Camera_Depth_Of_Field_24_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_27
  l0.SoundId = "soundbinary/969887487.bnk"
  l0 = self.box_Enable_Camera_Depth_Of_Field_24
  l1 = self.box_PlaySound_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|636044708", "636044708", "L13M030_Main", "box_Enable_Camera_Depth_Of_Field_24.Out", "box_PlaySound_v2_27.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_29
  l0.Entity = "9223372061660488344"
  l0.SoundId = "soundbinary/2758983126.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1132188436", "1132188436", "L13M030_Main", "box_Ordered_Output_41.Out", "box_PlaySound_v2_29.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_40
  l0.Entity = "9223372061660488344"
  l0.SoundId = "soundbinary/797229460.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|13685165", "13685165", "L13M030_Main", "box_Ordered_Output_41.Out", "box_PlaySound_v2_40.Play", clone, l0)
  l0:Play()
end
function export:f_box_MissionLayer_v2_22_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = self.Smoke_FX_List
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|633422097"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_11_Stopped
  l0.Cleaned = DummyFunction
  l0 = self.box_MissionLayer_v2_22
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|890217291", "890217291", "L13M030_Main", "box_MissionLayer_v2_22.Loaded", "box_ParticleFXController_v2_11.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_ParticleFXController_v2_14_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_25
  l0.SoundId = "soundbinary/341390301.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1414153442", "1414153442", "L13M030_Main", "box_ParticleFXController_v2_14.Started", "box_PlaySound_v2_25.Play", clone, l0)
  l0:Play()
end
function export:f_box_ParticleFXController_v2_14_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372055083731551"
  l0.InteractionEntityList = nil
  l0.EnableState = 0
  l0._graph = self
  l0._name = "box_InteractionScriptController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|244247190"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_7_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1164999428", "1164999428", "L13M030_Main", "box_ParticleFXController_v2_14.Stopped", "box_InteractionScriptController_7.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PlaySound_v2_29_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_8
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357371345"
  l0 = self.box_PlaySound_v2_29
  l1 = self.box_PhoneCommunicationController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|910541251", "910541251", "L13M030_Main", "box_PlaySound_v2_29.Started", "box_PhoneCommunicationController_8.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_19()
  l0 = self.box_PlaySequence_v5_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|152998397", "152998397", "L13M030_Main", "box_Ordered_Output_20.Out", "box_PlaySequence_v5_19.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Network_Surfing_Controller_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1597454225", "1597454225", "L13M030_Main", "box_Ordered_Output_20.Out", "box_Network_Surfing_Controller_43.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_MissionMessageController_v3_37_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_15
  l0.Entity = "9223372069868760730"
  l0.Entity_AreaRadius = 150
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
  l0 = self.box_MissionMessageController_v3_37
  l1 = self.box_Escape_Gameplay_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|833541110", "833541110", "L13M030_Main", "box_MissionMessageController_v3_37.Out", "box_Escape_Gameplay_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_16_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_16()
  l0 = self.box_HackableController_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|454754351", "454754351", "L13M030_Main", "box_HackableController_v2_16.Disabled", "box_HackableController_v2_16.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_16_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Hack_Gameplay_10
  l0.CLO = "9223372056457306315"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_HackableController_v2_16
  l1 = self.box_FreeRoam_Hack_Gameplay_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|578207708", "578207708", "L13M030_Main", "box_HackableController_v2_16.ProfilingDisabled", "box_FreeRoam_Hack_Gameplay_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_36_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_17()
  l0 = self.box_PhoneCommunicationController_36
  l1 = self.box_Multiple_AND_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|669124135", "669124135", "L13M030_Main", "box_PhoneCommunicationController_36.OnCommunicationFinished", "box_Multiple_AND_17.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MissionLayer_v2_18_Unloaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_17()
  l0 = self.box_MissionLayer_v2_18
  l1 = self.box_Multiple_AND_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1165222182", "1165222182", "L13M030_Main", "box_MissionLayer_v2_18.Unloaded", "box_Multiple_AND_17.Condition", l0, l1)
  l1:Condition(1)
end
function export:OnEnter_box_PlaySequence_v5_19()
  local l0
  l0 = self.box_PlaySequence_v5_19
  l0.SceneEntity = "9223372055682152657"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/L13/ulc_zodiackiller_loop.seq"
end
function export:OnEnter_box_MultipleOR_34()
end
function export:OnEnter_box_SecurityCamController_12()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372056457307502"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 1
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|681389965"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_12_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_box_SecurityCamController_12_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_SecurityCamController_21()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372056457307502"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|951561015"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_21_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_21_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_SecurityCamController_5()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372055083731553"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|978616008"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_5_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = self.f_box_SecurityCamController_5_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_Multiple_AND_17()
end
function export:OnEnter_box_ParticleFXController_v2_14()
  local l0
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = nil
  l0.ParticleEmitterList = {
    "9223372056750375871",
    "9223372056750271951"
  }
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L13\\L13M030\\L13M030.domino|@L13M030_Main|1672209260"
  l0.Started = self.f_box_ParticleFXController_v2_14_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_14_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_HackableController_v2_16()
  local l0
  l0 = self.box_HackableController_v2_16
  l0.HackableEntity = "9223372056457307502"
end
_compilerVersion = 4
