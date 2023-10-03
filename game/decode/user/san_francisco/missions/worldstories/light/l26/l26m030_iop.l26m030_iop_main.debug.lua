export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/IOPPropMonitor.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/1385151175.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1510380737.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4241938474.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L26M030_IOP_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.HackableEntity_OnceOnly_0 = "9223372068842132946"
  self.Cam = "9223372056554756107"
  self.Aiden = nil
  self.CharacterList = {}
  self.Grunt = nil
  self.WayOutDoors = {
    "9223372048342077902",
    "9223372052869592695",
    "9223372049202053908",
    "9223372049150575666"
  }
  self.box_CLOController_11 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_11
  l0._graph = self
  l0._name = "box_CLOController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|16135493"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_11_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_23 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_23
  l0._graph = self
  l0._name = "box_CLOController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|29086117"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_23_Deactivated
  l0.UnspawnedUser = self.f_box_CLOController_23_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Hackable_Monitor_3 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_3
  l0._graph = self
  l0._name = "box_Hackable_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|42495852"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_3_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_3_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_34 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_34
  l0._graph = self
  l0._name = "box_PlaySound_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|55803056"
  l0.Out = self.f_box_PlaySound_v2_34_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_33 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_33
  l0._graph = self
  l0._name = "box_PlaySound_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|94333778"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_33_Started
  l0.Finished = DummyFunction
  self.box_Timer_v2_9 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|119069325"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_32 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_32
  l0._graph = self
  l0._name = "box_HackableController_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|268991622"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_32_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_35 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_35
  l0._graph = self
  l0._name = "box_Timer_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|288992992"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_35_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_45 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_45
  l0._graph = self
  l0._name = "box_Timer_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|321753374"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_19 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_19
  l0._graph = self
  l0._name = "box_AI_IOPController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|955664230"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_19_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_10 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_10
  l0._graph = self
  l0._name = "box_AI_IOPController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|956067518"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_10_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_ListWriter_8 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_8
  l0._graph = self
  l0._name = "box_ListWriter_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1164353067"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_8_Added
  l0.Removed = self.f_box_ListWriter_8_Removed
  l0.Out = self.f_box_ListWriter_8_Out
  self.box_Security_Camera_Monitor_46 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_46
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1284527483"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_46_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_46_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_CinematicPrep_12 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_12
  l0._graph = self
  l0._name = "box_CinematicPrep_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1407253633"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_PlaySound_v2_13 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_13
  l0._graph = self
  l0._name = "box_PlaySound_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1470688479"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_13_Started
  l0.Finished = DummyFunction
  self.box_IOPMonitor_31 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_31
  l0._graph = self
  l0._name = "box_IOPMonitor_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1475943580"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_31_Disabled
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_31_EventOccurred
  l0.Out = DummyFunction
  self.box_IOPMonitor_1 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_1
  l0._graph = self
  l0._name = "box_IOPMonitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1481801094"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_box_IOPMonitor_1_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_4 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_4
  l0._graph = self
  l0._name = "box_Timer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1629703056"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_17 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_17
  l0._graph = self
  l0._name = "box_CLOController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1772369276"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_17_OnUserInPlace
  self.box_IOPPropMonitor_40 = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self.box_IOPPropMonitor_40
  l0._graph = self
  l0._name = "box_IOPPropMonitor_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1816721499"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_IOPPropMonitor_40_Enabled
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_box_IOPPropMonitor_40_PropSpawned
  self.box_IOP_StartUp_7 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_7
  l0._graph = self
  l0._name = "box_IOP_StartUp_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1877246544"
  l0.Out = self.f_box_IOP_StartUp_7_Out
  self.box_CLOController_2 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_2
  l0._graph = self
  l0._name = "box_CLOController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1920586885"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_2_OnUserInPlace
  self.box_AI_IOPController_24 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_24
  l0._graph = self
  l0._name = "box_AI_IOPController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1938725727"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_24_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_26 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_26
  l0._graph = self
  l0._name = "box_HackableController_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1946186801"
  l0.Enabled = self.f_box_HackableController_v2_26_Enabled
  l0.Disabled = self.f_box_HackableController_v2_26_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_26_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_30 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_30
  l0._graph = self
  l0._name = "box_Timer_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1970264665"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_30_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_37 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_37
  l0._graph = self
  l0._name = "box_PlaySound_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1975247891"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_IOP_CleanUp_14 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_14
  l0._graph = self
  l0._name = "box_IOP_CleanUp_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|2082880448"
  l0.Completed = self.f_box_IOP_CleanUp_14_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_14_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_28 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_28
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|2133135747"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_28_OnCommunicationFinished
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
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|689604548"
  l0.Out = self.f_box_Get_Player_ID_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|321168257", "321168257", "L26M030_IOP_Main", "In", "box_Get_Player_ID_18.In", self, l0)
  l0:In()
end
function export:f_box_CLOController_11_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_11()
  l0 = self.box_CLOController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|529644119", "529644119", "L26M030_IOP_Main", "box_CLOController_11.UnspawnedUser", "box_CLOController_11.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_CLOController_23_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_11()
  l0 = self.box_CLOController_23
  l1 = self.box_CLOController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1561349967", "1561349967", "L26M030_IOP_Main", "box_CLOController_23.Deactivated", "box_CLOController_11.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_CLOController_23_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_23()
  l0 = self.box_CLOController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|781269167", "781269167", "L26M030_IOP_Main", "box_CLOController_23.UnspawnedUser", "box_CLOController_23.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_Hackable_Monitor_3_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.HackableEntity_OnceOnly_0
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1857350613"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_39_Hidden
  l0.Out = DummyFunction
  l0 = self.box_Hackable_Monitor_3
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1246739385", "1246739385", "L26M030_IOP_Main", "box_Hackable_Monitor_3.Disabled", "box_VisibilityController_v2_39.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Hackable_Monitor_3_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_26()
  l0 = self.box_Hackable_Monitor_3
  l1 = self.box_HackableController_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1619754202", "1619754202", "L26M030_IOP_Main", "box_Hackable_Monitor_3.HackSuccess", "box_HackableController_v2_26.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PlaySound_v2_34_Out()
  local l0
  self = self._graph
  l0 = self.box_PlaySound_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1933782797", "1933782797", "L26M030_IOP_Main", "box_PlaySound_v2_34.Out", "Out", l0, self)
  self:Out()
end
function export:f_box_PlaySound_v2_33_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_22()
  l0 = self.box_PlaySound_v2_33
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|130547058", "130547058", "L26M030_IOP_Main", "box_PlaySound_v2_33.Started", "box_SecurityCamController_22.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_24
  l0.IopID = "Vigilante"
  l0.IopEvent = "Vigilante.Hack"
  l0 = self.box_Timer_v2_9
  l1 = self.box_AI_IOPController_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|760986884", "760986884", "L26M030_IOP_Main", "box_Timer_v2_9.TimeElapsed", "box_AI_IOPController_24.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_HackableController_v2_32_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_8
  l0.Input = self.CharacterList
  l0.Data[0] = self.Aiden
  l0.Data[1] = self.Grunt
  l0 = self.box_HackableController_v2_32
  l1 = self.box_ListWriter_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|231420451", "231420451", "L26M030_IOP_Main", "box_HackableController_v2_32.ProfilingDisabled", "box_ListWriter_8.Add", l0, l1)
  l1:Add()
end
function export:f_box_Timer_v2_35_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372060518488252"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1675787429"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_35
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|147174332", "147174332", "L26M030_IOP_Main", "box_Timer_v2_35.TimeElapsed", "box_LightController_25.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Timer_v2_45_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_12
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_45
  l1 = self.box_CinematicPrep_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|191198285", "191198285", "L26M030_IOP_Main", "box_Timer_v2_45.TimeElapsed", "box_CinematicPrep_12.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_LightController_20_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|721272642", "721272642", "L26M030_IOP_Main", "box_LightController_20.Disabled", "box_Timer_v2_35.Start", clone, l0)
  l0:Start()
end
function export:f_box_CollisionController_27_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_17
  l0.CLO = "9223372056126999858"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1455763902", "1455763902", "L26M030_IOP_Main", "box_CollisionController_27.CollisionsDisabled", "box_CLOController_17.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_38_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = nil
  l0.Radius = 300
  l0.PropagationSpeed = 50
  l0.RecoverySpeed = 10
  l0.Duration = 30
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = nil
  l0._graph = self
  l0._name = "box_BlackoutController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|961384856"
  l0.BlackoutStarted = self.f_box_BlackoutController_36_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1914169339", "1914169339", "L26M030_IOP_Main", "box_Ordered_Output_38.Out", "box_BlackoutController_36.StartBlackout", clone, l0)
  l0:StartBlackout()
end
function export:f_box_Ordered_Output_38_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372060518488254"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|898583616"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_15_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|337609243", "337609243", "L26M030_IOP_Main", "box_Ordered_Output_38.Out", "box_LightController_15.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_38_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372052869592681"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1510357900"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1512289663", "1512289663", "L26M030_IOP_Main", "box_Ordered_Output_38.Out", "box_MoveableEntityController_41.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Ordered_Output_38_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372048342077900"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1512372889"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1719775963", "1719775963", "L26M030_IOP_Main", "box_Ordered_Output_38.Out", "box_MoveableEntityController_42.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Ordered_Output_38_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049202053907"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1653097184"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1120486219", "1120486219", "L26M030_IOP_Main", "box_Ordered_Output_38.Out", "box_MoveableEntityController_43.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Ordered_Output_38_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049150575665"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|912999919"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1076882368", "1076882368", "L26M030_IOP_Main", "box_Ordered_Output_38.Out", "box_MoveableEntityController_44.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_Get_Player_ID_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPPropMonitor_40()
  l0 = self.box_IOPPropMonitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|29519928", "29519928", "L26M030_IOP_Main", "box_Get_Player_ID_18.Out", "box_IOPPropMonitor_40.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_LightController_15_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|10646937", "10646937", "L26M030_IOP_Main", "box_LightController_15.Disabled", "box_Timer_v2_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_AI_IOPController_19_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1323673228"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0 = self.box_AI_IOPController_19
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|936340373", "936340373", "L26M030_IOP_Main", "box_AI_IOPController_19.StartCompleted", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_10_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_26()
  l0 = self.box_AI_IOPController_10
  l1 = self.box_HackableController_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|493040367", "493040367", "L26M030_IOP_Main", "box_AI_IOPController_10.SendEventCompleted", "box_HackableController_v2_26.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_BlackoutController_36_BlackoutStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_37
  l0.SoundId = "soundbinary/1385151175.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|447779001", "447779001", "L26M030_IOP_Main", "box_BlackoutController_36.BlackoutStarted", "box_PlaySound_v2_37.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_46()
  l0 = self.box_Security_Camera_Monitor_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1085981359", "1085981359", "L26M030_IOP_Main", "box_Ordered_Output_6.Out", "box_Security_Camera_Monitor_46.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_28
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357372613"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1067931035", "1067931035", "L26M030_IOP_Main", "box_Ordered_Output_6.Out", "box_PhoneCommunicationController_28.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_ListWriter_8_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_8
  self.CharacterList = l0.Target
  l0 = self.box_AI_IOPController_19
  l0.IopID = "Vigilante"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.CharacterList
  l0.IopRoleList = {
    "Vigilante.Aiden",
    "Vigilante.Guard"
  }
  l0 = self.box_ListWriter_8
  l1 = self.box_AI_IOPController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|122844027", "122844027", "L26M030_IOP_Main", "box_ListWriter_8.Added", "box_AI_IOPController_19.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_8_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_8
  self.CharacterList = l0.Target
end
function export:f_box_ListWriter_8_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_8
  self.CharacterList = l0.Target
end
function export:f_box_Security_Camera_Monitor_46_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_45
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_46
  l1 = self.box_Timer_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1915609721", "1915609721", "L26M030_IOP_Main", "box_Security_Camera_Monitor_46.Disabled", "box_Timer_v2_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_46_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_46()
  l0 = self.box_Security_Camera_Monitor_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1603875932", "1603875932", "L26M030_IOP_Main", "box_Security_Camera_Monitor_46.OnEndAccessCamera", "box_Security_Camera_Monitor_46.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1129836085", "1129836085", "L26M030_IOP_Main", "box_Ordered_Output_21.Out", "box_Timer_v2_30.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1691687519", "1691687519", "L26M030_IOP_Main", "box_Ordered_Output_21.Out", "box_IOPMonitor_1.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlaySound_v2_13_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_2
  l0.CLO = "9223372056126999853"
  l0 = self.box_PlaySound_v2_13
  l1 = self.box_CLOController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|492279816", "492279816", "L26M030_IOP_Main", "box_PlaySound_v2_13.Started", "box_CLOController_2.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_IOPMonitor_31_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|623731396"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_38_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_38_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_38_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_38_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_38_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_38_Out_5
  l0 = self.box_IOPMonitor_31
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1661600538", "1661600538", "L26M030_IOP_Main", "box_IOPMonitor_31.Disabled", "box_Ordered_Output_38.In", l0, l1)
  l1:In()
end
function export:f_box_IOPMonitor_31_EventOccurred()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_31()
  l0 = self.box_IOPMonitor_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1181043679", "1181043679", "L26M030_IOP_Main", "box_IOPMonitor_31.EventOccurred", "box_IOPMonitor_31.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_IOPMonitor_1_IOPComplete()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_1
  l1 = self.box_IOP_CleanUp_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1148944223", "1148944223", "L26M030_IOP_Main", "box_IOPMonitor_1.IOPComplete", "box_IOP_CleanUp_14.In", l0, l1)
  l1:In()
end
function export:f_box_Bind_v2_16_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPPropMonitor_40()
  l0 = self.box_IOPPropMonitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1569853561", "1569853561", "L26M030_IOP_Main", "box_Bind_v2_16.Bound", "box_IOPPropMonitor_40.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_4_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372060518488256"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|333148117"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_20_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_4
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|626232592", "626232592", "L26M030_IOP_Main", "box_Timer_v2_4.TimeElapsed", "box_LightController_20.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_CLOController_17_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_17
  self.Aiden = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Aiden
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|2049164139"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_5_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_17
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|595659694", "595659694", "L26M030_IOP_Main", "box_CLOController_17.OnUserInPlace", "box_CollisionController_5.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_IOPPropMonitor_40_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_StartUp_7
  l0.CinemaZone = "9223372058159738125"
  l0 = self.box_IOPPropMonitor_40
  l1 = self.box_IOP_StartUp_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|293733692", "293733692", "L26M030_IOP_Main", "box_IOPPropMonitor_40.Enabled", "box_IOP_StartUp_7.In", l0, l1)
  l1:In()
end
function export:f_box_IOPPropMonitor_40_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPropMonitor_40
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = self.HackableEntity_OnceOnly_0
  l1.BoneName = nil
  l1.BoneNameStr = "cell_phone_01"
  l1.RemoveOffset = 1
  l1._graph = self
  l1._name = "box_Bind_v2_16"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1541329948"
  l1.Bound = self.f_box_Bind_v2_16_Bound
  l1.UnBound = DummyFunction
  l1.Out = DummyFunction
  l0 = self.box_IOPPropMonitor_40
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|831872802", "831872802", "L26M030_IOP_Main", "box_IOPPropMonitor_40.PropSpawned", "box_Bind_v2_16.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_VisibilityController_v2_39_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_9
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|2083993206", "2083993206", "L26M030_IOP_Main", "box_VisibilityController_v2_39.Hidden", "box_Timer_v2_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_IOP_StartUp_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_13
  l0.SoundId = "soundbinary/3973683875.bnk"
  l0 = self.box_IOP_StartUp_7
  l1 = self.box_PlaySound_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|860564994", "860564994", "L26M030_IOP_Main", "box_IOP_StartUp_7.Out", "box_PlaySound_v2_13.Play", l0, l1)
  l1:Play()
end
function export:f_box_CLOController_2_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_2
  self.Grunt = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Grunt
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|451031954"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_27_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_2
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|514331110", "514331110", "L26M030_IOP_Main", "box_CLOController_2.OnUserInPlace", "box_CollisionController_27.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_SecurityCamController_22_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1119008892"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|193457883", "193457883", "L26M030_IOP_Main", "box_SecurityCamController_22.CanExitSet", "box_Ordered_Output_6.In", clone, l0)
  l0:In()
end
function export:f_box_SecurityCamController_22_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_22()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|139528209", "139528209", "L26M030_IOP_Main", "box_SecurityCamController_22.EnterForced", "box_SecurityCamController_22.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_AI_IOPController_24_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_IOPMonitor_31()
  l0 = self.box_AI_IOPController_24
  l1 = self.box_IOPMonitor_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1198350729", "1198350729", "L26M030_IOP_Main", "box_AI_IOPController_24.SendEventCompleted", "box_IOPMonitor_31.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_26_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_26()
  l0 = self.box_HackableController_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|762390862", "762390862", "L26M030_IOP_Main", "box_HackableController_v2_26.Disabled", "box_HackableController_v2_26.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_26_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_3()
  l0 = self.box_HackableController_v2_26
  l1 = self.box_Hackable_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|540684801", "540684801", "L26M030_IOP_Main", "box_HackableController_v2_26.Enabled", "box_Hackable_Monitor_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_26_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_3()
  l0 = self.box_HackableController_v2_26
  l1 = self.box_Hackable_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1700984676", "1700984676", "L26M030_IOP_Main", "box_HackableController_v2_26.ProfilingDisabled", "box_Hackable_Monitor_3.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Timer_v2_30_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_33
  l0.SoundId = "soundbinary/4241938474.bnk"
  l0 = self.box_Timer_v2_30
  l1 = self.box_PlaySound_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|930496971", "930496971", "L26M030_IOP_Main", "box_Timer_v2_30.TimeElapsed", "box_PlaySound_v2_33.Play", l0, l1)
  l1:Play()
end
function export:f_box_CollisionController_5_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_32
  l0.HackableEntity = self.Grunt
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1853565880", "1853565880", "L26M030_IOP_Main", "box_CollisionController_5.CollisionsDisabled", "box_HackableController_v2_32.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_IOP_CleanUp_14_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_34
  l0.SoundId = "soundbinary/1510380737.bnk"
  l0 = self.box_IOP_CleanUp_14
  l1 = self.box_PlaySound_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|162118599", "162118599", "L26M030_IOP_Main", "box_IOP_CleanUp_14.Completed", "box_PlaySound_v2_34.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOP_CleanUp_14_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_23()
  l0 = self.box_IOP_CleanUp_14
  l1 = self.box_CLOController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1917751688", "1917751688", "L26M030_IOP_Main", "box_IOP_CleanUp_14.DisconnectedAnimationPlayed", "box_CLOController_23.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_PhoneCommunicationController_28_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_10
  l0.IopID = "Vigilante"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_PhoneCommunicationController_28
  l1 = self.box_AI_IOPController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|519604431", "519604431", "L26M030_IOP_Main", "box_PhoneCommunicationController_28.OnCommunicationFinished", "box_AI_IOPController_10.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:OnEnter_box_CLOController_11()
  local l0
  l0 = self.box_CLOController_11
  l0.CLO = "9223372056126999853"
  l0.User = self.Grunt
end
function export:OnEnter_box_CLOController_23()
  local l0
  l0 = self.box_CLOController_23
  l0.CLO = "9223372056126999858"
  l0.User = self.Aiden
end
function export:OnEnter_box_Hackable_Monitor_3()
  local l0
  l0 = self.box_Hackable_Monitor_3
  l0.HackableEntity = self.HackableEntity_OnceOnly_0
end
function export:OnEnter_box_Security_Camera_Monitor_46()
  local l0
  l0 = self.box_Security_Camera_Monitor_46
  l0.CameraEntity = self.Cam
end
function export:OnEnter_box_IOPMonitor_31()
  local l0
  l0 = self.box_IOPMonitor_31
  l0.MonitoredEvent = "Vigilante.Blackout"
end
function export:OnEnter_box_IOPPropMonitor_40()
  local l0
  l0 = self.box_IOPPropMonitor_40
  l0.PropName = "cell_phone_01"
end
function export:OnEnter_box_SecurityCamController_22()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.Cam
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L26\\l26m030_iop.domino|@L26M030_IOP_Main|1938238075"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_22_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_22_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_HackableController_v2_26()
  local l0
  l0 = self.box_HackableController_v2_26
  l0.HackableEntity = self.HackableEntity_OnceOnly_0
end
function export:Out()
end
_compilerVersion = 4
