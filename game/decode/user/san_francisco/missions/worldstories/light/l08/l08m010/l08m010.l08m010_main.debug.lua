export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LayerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L08M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main"
  self.ctOS_BOX = "9223372051557050701"
  self.Security_Cam = "9223372050077508269"
  self.Map_Icon_Access = "9223372050077338850"
  self.Map_Icon_Target = "9223372048502957679"
  self.PlayerEntity = "20"
  self.Cam2 = "9223372056641968010"
  self.Answering_Machine = "9223372056705199828"
  self.Oscilloscope = "9223372057381670701"
  self.Wave_Generator = "9223372057381670702"
  self.Cam1 = "9223372056705199827"
  self.AllCamsL08M010 = {
    "9223372056641968010",
    "9223372056705199827"
  }
  self.box_MissionCheckpointReach_30 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_30
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|60112241"
  l0.Out = self.f_box_MissionCheckpointReach_30_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_v3_16 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_16
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|85996533"
  l0.Out = self.f_box_MissionMessageController_v3_16_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Beat_5 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_5
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|124803582"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_5_NewBeatStarted
  self.box_MultipleOR_26 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_26
  l0._graph = self
  l0._name = "box_MultipleOR_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|393853364"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_26_Out
  self.box_PhoneCommunicationController_13 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_13
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|524019619"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_13_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_LayerMonitor_22 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_22
  l0._graph = self
  l0._name = "box_LayerMonitor_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|688479042"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_22_Loaded
  l0.Unloaded = DummyFunction
  self.box_PhoneCommunicationController_19 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_19
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|712810169"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_19_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_29 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_29
  l0._graph = self
  l0._name = "box_MultipleOR_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|716522438"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_29_Out
  self.box_Reward_Phone_Call_Monitor_21 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_21
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|750714199"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_21_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_21_OnPhoneCallEnded
  self.box_Security_Camera_Monitor_32 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_32
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|858973673"
  l0.Enabled = self.f_box_Security_Camera_Monitor_32_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_box_Security_Camera_Monitor_32_OnEndExitAll
  self.box_MultipleOR_31 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_31
  l0._graph = self
  l0._name = "box_MultipleOR_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|872259315"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_31_Out
  self.box_Timer_v2_25 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_25
  l0._graph = self
  l0._name = "box_Timer_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|883005395"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_25_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_24 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_24
  l0._graph = self
  l0._name = "box_Timer_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|926475639"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_24_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|951236546"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_14 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_14
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|993989720"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_14_MessageCompleted
  self.box_FreeRoam_Hack_Gameplay_15 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_15
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1010171224"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_15_Hacked
  self.box_Player_Proximity_Monitor_18 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_18
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1146949861"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_18_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_FreeRoam_Mission_End_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_2
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1214652690"
  self.box_MultipleOR_35 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_35
  l0._graph = self
  l0._name = "box_MultipleOR_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1499781625"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_35_Out
  self.box_AI_IOPController_27 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_27
  l0._graph = self
  l0._name = "box_AI_IOPController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1647282077"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_27_IOPKickOutComplete
  self.box_Progression_Tag_Monitor_33 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_33
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1670498543"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_33_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_33_HasNOT
  self.box_OnceOnly_v3_23 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_23
  l0._graph = self
  l0._name = "box_OnceOnly_v3_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1795172479"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_23_Out
  l0.ResetOut = DummyFunction
  self.box_PhoneCommunicationController_34 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_34
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1855752915"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_34_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Beat_10 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_10
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1896553815"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_10_NewBeatStarted
  self.box_PhoneCommunicationController_9 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_9
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1901296689"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_IOP_Interact_Gameplay_4 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_4
  l0._graph = self
  l0._name = "box_FreeRoam_IOP_Interact_Gameplay_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1913227043"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_IOP_Interact_Gameplay_4_Interacted
  self.box_FreeRoam_Locate_Gameplay_12 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Locate_Gameplay_12
  l0._graph = self
  l0._name = "box_FreeRoam_Locate_Gameplay_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1913321221"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_box_FreeRoam_Locate_Gameplay_12_Located
  self.box_FreeRoam_Hack_Gameplay_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_3
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1916172994"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_3_Hacked
  self.box_Reward_Phone_Call_Monitor_11 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_11
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1986880083"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_11_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_11_OnPhoneCallEnded
  self.box_PhoneCommunicationController_17 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_17
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|2037099405"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_17_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
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
  self:OnEnter_box_FreeRoam_Beat_5()
  l0 = self.box_FreeRoam_Beat_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1460480408", "1460480408", "L08M010_Main", "CheckPoint_0", "box_FreeRoam_Beat_5.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Beat_10()
  l0 = self.box_FreeRoam_Beat_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1337373668", "1337373668", "L08M010_Main", "CheckPoint_1", "box_FreeRoam_Beat_10.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_LayerMonitor_22
  l0.ProgressionLayer = "ProgressionLayers.9223372048502957724"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|303161106", "303161106", "L08M010_Main", "CheckPoint_2", "box_LayerMonitor_22.Enable", self, l0)
  l0:Enable()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1373254897", "1373254897", "L08M010_Main", "CheckPoint_3", "box_FreeRoam_Mission_End_2.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_Timer_v2_25
  l0.Seconds = 15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|615648242", "615648242", "L08M010_Main", "In", "box_Timer_v2_25.Start", self, l0)
  l0:Start()
end
function export:f_box_MissionCheckpointReach_30_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_11()
  l0 = self.box_MissionCheckpointReach_30
  l1 = self.box_Reward_Phone_Call_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|705236736", "705236736", "L08M010_Main", "box_MissionCheckpointReach_30.Out", "box_Reward_Phone_Call_Monitor_11.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Hack_Gameplay_15
  l0.CLO = "9223372048502957674"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372048502958913"
  l0 = self.box_MissionMessageController_v3_16
  l1 = self.box_FreeRoam_Hack_Gameplay_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|788027822", "788027822", "L08M010_Main", "box_MissionMessageController_v3_16.Out", "box_FreeRoam_Hack_Gameplay_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Beat_5_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Beat_5
  self.PlayerEntity = l0.PlayerEntity
  l0 = self.box_Progression_Tag_Monitor_33
  l0.ProgressionTag = "ProgressionTag.9223372048502958913"
  l0 = self.box_FreeRoam_Beat_5
  l1 = self.box_Progression_Tag_Monitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|721030877", "721030877", "L08M010_Main", "box_FreeRoam_Beat_5.NewBeatStarted", "box_Progression_Tag_Monitor_33.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|628026895", "628026895", "L08M010_Main", "box_Ordered_Output_6.Out", "box_MultipleOR_29.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_18()
  l0 = self.box_Player_Proximity_Monitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|737011044", "737011044", "L08M010_Main", "box_Ordered_Output_6.Out", "box_Player_Proximity_Monitor_18.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_26_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_34
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367114"
  l0 = self.box_MultipleOR_26
  l1 = self.box_PhoneCommunicationController_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1384146882", "1384146882", "L08M010_Main", "box_MultipleOR_26.Out", "box_PhoneCommunicationController_34.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PhoneCommunicationController_13_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_PhoneCommunicationController_13
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|122825906", "122825906", "L08M010_Main", "box_PhoneCommunicationController_13.OnCommunicationFinished", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_LayerMonitor_22_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_LayerMonitor_22
  l1 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|647626224", "647626224", "L08M010_Main", "box_LayerMonitor_22.Loaded", "box_MultipleOR_26.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PhoneCommunicationController_19_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_18()
  l0 = self.box_PhoneCommunicationController_19
  l1 = self.box_Player_Proximity_Monitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|786278004", "786278004", "L08M010_Main", "box_PhoneCommunicationController_19.OnCommunicationStarted", "box_Player_Proximity_Monitor_18.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_29_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_4
  l0.IOPBoxEntity = "9223372051557050701"
  l0.MapPoint = "9223372050077338850"
  l0 = self.box_MultipleOR_29
  l1 = self.box_FreeRoam_IOP_Interact_Gameplay_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|751488274", "751488274", "L08M010_Main", "box_MultipleOR_29.Out", "box_FreeRoam_IOP_Interact_Gameplay_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_Reward_Phone_Call_Monitor_21_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_13
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495846404"
  l0 = self.box_Reward_Phone_Call_Monitor_21
  l1 = self.box_PhoneCommunicationController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|619902646", "619902646", "L08M010_Main", "box_Reward_Phone_Call_Monitor_21.Disabled", "box_PhoneCommunicationController_13.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Reward_Phone_Call_Monitor_21_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_21()
  l0 = self.box_Reward_Phone_Call_Monitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|430563961", "430563961", "L08M010_Main", "box_Reward_Phone_Call_Monitor_21.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_21.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Security_Camera_Monitor_32_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_3()
  l0 = self.box_Security_Camera_Monitor_32
  l1 = self.box_FreeRoam_Hack_Gameplay_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1717843542", "1717843542", "L08M010_Main", "box_Security_Camera_Monitor_32.Enabled", "box_FreeRoam_Hack_Gameplay_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_32_OnEndExitAll()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|910188957"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_8_Out_2
  l0 = self.box_Security_Camera_Monitor_32
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|583924325", "583924325", "L08M010_Main", "box_Security_Camera_Monitor_32.OnEndExitAll", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_31_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_32()
  l0 = self.box_MultipleOR_31
  l1 = self.box_Security_Camera_Monitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|554194378", "554194378", "L08M010_Main", "box_MultipleOR_31.Out", "box_Security_Camera_Monitor_32.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Timer_v2_25_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_17
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372056441907557"
  l0 = self.box_Timer_v2_25
  l1 = self.box_PhoneCommunicationController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1378026984", "1378026984", "L08M010_Main", "box_Timer_v2_25.TimeElapsed", "box_PhoneCommunicationController_17.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1486993585", "1486993585", "L08M010_Main", "box_Ordered_Output_8.Out", "box_MultipleOR_31.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|706632999", "706632999", "L08M010_Main", "box_Ordered_Output_8.Out", "box_MultipleOR_29.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_8_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_3()
  l0 = self.box_FreeRoam_Hack_Gameplay_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|463878323", "463878323", "L08M010_Main", "box_Ordered_Output_8.Out", "box_FreeRoam_Hack_Gameplay_3.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Timer_v2_24_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1136759042"
  l0.Out = self.f_box_Get_Player_ID_28_Out
  l0 = self.box_Timer_v2_24
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|626966953", "626966953", "L08M010_Main", "box_Timer_v2_24.TimeElapsed", "box_Get_Player_ID_28.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|208870858"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0 = self.box_MissionMessageController_v3_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1223688691", "1223688691", "L08M010_Main", "box_MissionMessageController_v3_1.Out", "box_Ordered_Output_6.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_14_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Locate_Gameplay_12
  l0.CLO = "9223372048502957674"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.DistrictsDB = "Districts.9223372048308079976"
  l0 = self.box_MissionMessageController_v3_14
  l1 = self.box_FreeRoam_Locate_Gameplay_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1898792738", "1898792738", "L08M010_Main", "box_MissionMessageController_v3_14.MessageCompleted", "box_FreeRoam_Locate_Gameplay_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1731398645", "1731398645", "L08M010_Main", "box_Simple_Node_36.Out", "box_MultipleOR_35.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|867742522", "867742522", "L08M010_Main", "box_Ordered_Output_7.Out", "box_MultipleOR_31.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_30
  l0.CheckpointList = "CheckPoint_2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|523771019", "523771019", "L08M010_Main", "box_Ordered_Output_7.Out", "box_MissionCheckpointReach_30.In", clone, l0)
  l0:In()
end
function export:f_box_FreeRoam_Hack_Gameplay_15_Hacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_21()
  l0 = self.box_FreeRoam_Hack_Gameplay_15
  l1 = self.box_Reward_Phone_Call_Monitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1337936122", "1337936122", "L08M010_Main", "box_FreeRoam_Hack_Gameplay_15.Hacked", "box_Reward_Phone_Call_Monitor_21.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Get_Player_ID_28_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self.box_AI_IOPController_27
  l1.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|223887376", "223887376", "L08M010_Main", "box_Get_Player_ID_28.Out", "box_AI_IOPController_27.TriggerIOPDisconnectScreenAndKickOut", clone, l0)
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_Player_Proximity_Monitor_18_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_19
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367112"
  l0 = self.box_Player_Proximity_Monitor_18
  l1 = self.box_PhoneCommunicationController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|377922185", "377922185", "L08M010_Main", "box_Player_Proximity_Monitor_18.EnterRadius", "box_PhoneCommunicationController_19.TryStartCommunication", l0, l1)
  l1:TryStartCommunication()
end
function export:f_box_MultipleOR_35_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_10()
  l0 = self.box_MultipleOR_35
  l1 = self.box_FreeRoam_Beat_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|2076695844", "2076695844", "L08M010_Main", "box_MultipleOR_35.Out", "box_FreeRoam_Beat_10.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:f_box_AI_IOPController_27_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_AI_IOPController_27
  l1 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|133726827", "133726827", "L08M010_Main", "box_AI_IOPController_27.IOPKickOutComplete", "box_FreeRoam_Mission_End_2.End", l0, l1)
  l1:End()
end
function export:f_box_Progression_Tag_Monitor_33_Has()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|994476139"
  l0.Out = self.f_box_Simple_Node_36_Out
  l0 = self.box_Progression_Tag_Monitor_33
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|75038618", "75038618", "L08M010_Main", "box_Progression_Tag_Monitor_33.Has", "box_Simple_Node_36.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_33_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_14
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M001.Objectives.Objective010",
    item = "Objective",
    id = "658898"
  }
  l0 = self.box_Progression_Tag_Monitor_33
  l1 = self.box_MissionMessageController_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1797259914", "1797259914", "L08M010_Main", "box_Progression_Tag_Monitor_33.HasNOT", "box_MissionMessageController_v3_14.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_OnceOnly_v3_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_9
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367113"
  l0 = self.box_OnceOnly_v3_23
  l1 = self.box_PhoneCommunicationController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1577157914", "1577157914", "L08M010_Main", "box_OnceOnly_v3_23.Out", "box_PhoneCommunicationController_9.StartCommunication", l0, l1)
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
  self:OnEnter_box_Security_Camera_Monitor_32()
  l0 = self.box_Security_Camera_Monitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1432945296", "1432945296", "L08M010_Main", "box_Ordered_Output_20.Out", "box_Security_Camera_Monitor_32.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|160015903", "160015903", "L08M010_Main", "box_Ordered_Output_20.Out", "box_OnceOnly_v3_23.In", clone, l0)
  l0:In(0)
end
function export:f_box_PhoneCommunicationController_34_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_24
  l0.Seconds = 2
  l0 = self.box_PhoneCommunicationController_34
  l1 = self.box_Timer_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|985052346", "985052346", "L08M010_Main", "box_PhoneCommunicationController_34.OnCommunicationFinished", "box_Timer_v2_24.Start", l0, l1)
  l1:Start()
end
function export:f_box_FreeRoam_Beat_10_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_1
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M010.Objectives.Objective010",
    item = "Objective",
    id = "457643"
  }
  l0 = self.box_FreeRoam_Beat_10
  l1 = self.box_MissionMessageController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|287706234", "287706234", "L08M010_Main", "box_FreeRoam_Beat_10.NewBeatStarted", "box_MissionMessageController_v3_1.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_4_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1805997756"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1634224046", "1634224046", "L08M010_Main", "box_FreeRoam_IOP_Interact_Gameplay_4.Interacted", "box_Ordered_Output_20.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Locate_Gameplay_12_Located()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_16
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M001.Objectives.Objective011",
    item = "Objective",
    id = "659015"
  }
  l0 = self.box_FreeRoam_Locate_Gameplay_12
  l1 = self.box_MissionMessageController_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|962122599", "962122599", "L08M010_Main", "box_FreeRoam_Locate_Gameplay_12.Located", "box_MissionMessageController_v3_16.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_FreeRoam_Hack_Gameplay_3_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|999749396"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1935696417", "1935696417", "L08M010_Main", "box_FreeRoam_Hack_Gameplay_3.Hacked", "box_Ordered_Output_7.In", l0, l1)
  l1:In()
end
function export:f_box_Reward_Phone_Call_Monitor_11_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_Reward_Phone_Call_Monitor_11
  l1 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|1936715929", "1936715929", "L08M010_Main", "box_Reward_Phone_Call_Monitor_11.Disabled", "box_MultipleOR_26.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Reward_Phone_Call_Monitor_11_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_11()
  l0 = self.box_Reward_Phone_Call_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|2030511534", "2030511534", "L08M010_Main", "box_Reward_Phone_Call_Monitor_11.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_11.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PhoneCommunicationController_17_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_5()
  l0 = self.box_PhoneCommunicationController_17
  l1 = self.box_FreeRoam_Beat_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L08\\L08M010\\L08M010.domino|@L08M010_Main|535010207", "535010207", "L08M010_Main", "box_PhoneCommunicationController_17.OnCommunicationFinished", "box_FreeRoam_Beat_5.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:OnEnter_box_FreeRoam_Beat_5()
  local l0
  l0 = self.box_FreeRoam_Beat_5
  l0.ProgressionLayer = "ProgressionLayers.9223372048502957724"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_MultipleOR_26()
end
function export:OnEnter_box_MultipleOR_29()
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_21()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_21
  l0.ItemDb = "Items.9223372050357367125"
end
function export:OnEnter_box_Security_Camera_Monitor_32()
  local l0
  l0 = self.box_Security_Camera_Monitor_32
  l0.CameraEntityList = self.AllCamsL08M010
end
function export:OnEnter_box_MultipleOR_31()
end
function export:OnEnter_box_Player_Proximity_Monitor_18()
  local l0
  l0 = self.box_Player_Proximity_Monitor_18
  l0.TargetEntity = "9223372050077338850"
  l0.Radius = 30
  l0.CheckDistance3D = 1
end
function export:OnEnter_box_FreeRoam_Mission_End_2()
  local l0
  l0 = self.box_FreeRoam_Mission_End_2
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367115"
  l0.Checkpoint = "CheckPoint_3"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_MultipleOR_35()
end
function export:OnEnter_box_FreeRoam_Beat_10()
  local l0
  l0 = self.box_FreeRoam_Beat_10
  l0.ProgressionLayer = "ProgressionLayers.9223372048502957724"
  l0.Checkpoint = "CheckPoint_1"
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_3()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_3
  l0.CLO = self.Answering_Machine
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_11()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_11
  l0.ItemDb = "Items.9223372059111819039"
end
_compilerVersion = 4
