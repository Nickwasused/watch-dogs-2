export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S08M010_LocateTheCentralServer"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer"
  self.Disabled = DummyFunction
  self.Located = DummyFunction
  self.Server_HackableEntity_Server = "9223372050081565640"
  self.Server_HackableEntity_ServerWrong_01 = "9223372050081565642"
  self.Data_Container_GenericAnimatedObjectInteractive_wrong_1 = "9223372049981357849"
  self.Server_HackableEntity_ServerWrong_04 = "9223372050081565649"
  self.Server_HackableEntity_ServerWrong_03 = "9223372050081565638"
  self.S08m010_GenericInteract_Server = "9223372046334026510"
  self.Data_Container_GenericAnimatedObjectInteractive_wrong_3 = "9223372049981358301"
  self.Data_Container_GenericAnimatedObjectInteractive_wrong_4 = "9223372049981463205"
  self.Data_Container_GenericAnimatedObjectInteractive_wrong_5 = "9223372049981463971"
  self.Server_HackableEntity_ServerWrong_02 = "9223372050081565644"
  self.Data_Container_GenericAnimatedObjectInteractive_wrong_2 = "9223372049981358303"
  self.GenericInteracts = {}
  self.HackableEntities = {}
  self.MissionHint_wrongserver_01 = "9223372053028188498"
  self.MissionHint_wrongserver_04 = "9223372053028188500"
  self.MissionHint_wrongserver_02 = "9223372053028188502"
  self.MissionHint_wrongserver_05 = "9223372053028188504"
  self.MissionHint_wrongserver_03 = "9223372053028188506"
  self.MissionHint_CorrectServer = "9223372053028188496"
  self.Server_HackableEntity_ServerWrong_05 = "9223372050081565651"
  self.box_HackableController_v2_48 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_48
  l0._graph = self
  l0._name = "box_HackableController_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|26513720"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_48_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Intel_Controller_28 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_28
  l0._graph = self
  l0._name = "box_Intel_Controller_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|71417222"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self.box_HackableController_v2_25 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_25
  l0._graph = self
  l0._name = "box_HackableController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|124126892"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_25_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_14 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_14
  l0._graph = self
  l0._name = "box_HackableController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|125548061"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_14_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_29 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_29
  l0._graph = self
  l0._name = "box_MultipleOR_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|145306962"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_29_Out
  self.box_Intel_Controller_5 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_5
  l0._graph = self
  l0._name = "box_Intel_Controller_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|199267875"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self.box_PhoneCommunicationController_18 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_18
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|214440320"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_3 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_3
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|222856122"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_3_Completed
  self.box_DistanceBasedProgressBarController_v2_9 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_9
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|262340729"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_9_Completed
  self.box_Intel_Controller_30 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_30
  l0._graph = self
  l0._name = "box_Intel_Controller_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|300844135"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_10 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_10
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|395567776"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_10_Completed
  self.box_Intel_Controller_27 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_27
  l0._graph = self
  l0._name = "box_Intel_Controller_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|413142579"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self.box_Hackable_Monitor_44 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_44
  l0._graph = self
  l0._name = "box_Hackable_Monitor_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|421579456"
  l0.Enabled = self.f_box_Hackable_Monitor_44_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_44_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_44_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PhoneCommunicationController_22 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_22
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|445205104"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Hackable_Monitor_1 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_1
  l0._graph = self
  l0._name = "box_Hackable_Monitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|531926629"
  l0.Enabled = self.f_box_Hackable_Monitor_1_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_1_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_1_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PhoneCommunicationController_21 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_21
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|671393914"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Intel_Controller_11 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_11
  l0._graph = self
  l0._name = "box_Intel_Controller_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|703898173"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self.box_Hackable_Monitor_2 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_2
  l0._graph = self
  l0._name = "box_Hackable_Monitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|735539255"
  l0.Enabled = self.f_box_Hackable_Monitor_2_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_2_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_2_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MultipleOR_38 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_38
  l0._graph = self
  l0._name = "box_MultipleOR_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|738218366"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_38_Out
  self.box_HackableController_v2_26 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_26
  l0._graph = self
  l0._name = "box_HackableController_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|956887223"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_26_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_7 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_7
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|983622280"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_7_Completed
  self.box_ListWriter_16 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_16
  l0._graph = self
  l0._name = "box_ListWriter_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1045585654"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_16_Added
  l0.Removed = self.f_box_ListWriter_16_Removed
  l0.Out = self.f_box_ListWriter_16_Out
  self.box_DistanceBasedProgressBarController_v2_8 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_8
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1187100949"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_8_Completed
  self.box_PhoneCommunicationController_17 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_17
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1258551938"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_17_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_ListForEach_46 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_46
  l0._graph = self
  l0._name = "box_ListForEach_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1366126782"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.ForEach = self.f_box_ListForEach_46_ForEach
  l0.GotNext = DummyFunction
  l0.EndOfList = self.f_box_ListForEach_46_EndOfList
  l0.GotFirst = DummyFunction
  self.box_Hackable_Monitor_13 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_13
  l0._graph = self
  l0._name = "box_Hackable_Monitor_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1381949457"
  l0.Enabled = self.f_box_Hackable_Monitor_13_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_13_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_13_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_47 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_47
  l0._graph = self
  l0._name = "box_HackableController_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1387494826"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_47_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_40 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_40
  l0._graph = self
  l0._name = "box_MultipleOR_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1485646757"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_40_Out
  self.box_PhoneCommunicationController_19 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_19
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1643085206"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_33 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_33
  l0._graph = self
  l0._name = "box_MultipleOR_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1715513397"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_33_Out
  self.box_MultipleOR_42 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_42
  l0._graph = self
  l0._name = "box_MultipleOR_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1735773365"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_42_Out
  self.box_Hackable_Monitor_32 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_32
  l0._graph = self
  l0._name = "box_Hackable_Monitor_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1756775015"
  l0.Enabled = self.f_box_Hackable_Monitor_32_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_32_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_32_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PhoneCommunicationController_20 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_20
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1802553197"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_51 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_51
  l0._graph = self
  l0._name = "box_HackableController_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1854866486"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_51_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_50 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_50
  l0._graph = self
  l0._name = "box_HackableController_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1872646163"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_50_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Intel_Controller_12 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_12
  l0._graph = self
  l0._name = "box_Intel_Controller_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1904849171"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self.box_ListWriter_15 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_15
  l0._graph = self
  l0._name = "box_ListWriter_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1924790173"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_15_Added
  l0.Removed = self.f_box_ListWriter_15_Removed
  l0.Out = self.f_box_ListWriter_15_Out
  self.box_HackableController_v2_49 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_49
  l0._graph = self
  l0._name = "box_HackableController_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|2033712309"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_49_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_36 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|2036741142"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_Hackable_Monitor_31 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_31
  l0._graph = self
  l0._name = "box_Hackable_Monitor_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|2058149963"
  l0.Enabled = self.f_box_Hackable_Monitor_31_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_31_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_31_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_6 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_6
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|2090463895"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_6_Completed
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|54781806"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1789142096", "1789142096", "S08M010_LocateTheCentralServer", "Disable", "box_Ordered_Output_23.In", self, l0)
  l0:In()
end
function export:Start()
  local l0
  l0 = self.box_ListWriter_16
  l0.Input = self.GenericInteracts
  l0.Data[0] = self.S08m010_GenericInteract_Server
  l0.Data[1] = self.Data_Container_GenericAnimatedObjectInteractive_wrong_1
  l0.Data[2] = self.Data_Container_GenericAnimatedObjectInteractive_wrong_2
  l0.Data[3] = self.Data_Container_GenericAnimatedObjectInteractive_wrong_3
  l0.Data[4] = self.Data_Container_GenericAnimatedObjectInteractive_wrong_4
  l0.Data[5] = self.Data_Container_GenericAnimatedObjectInteractive_wrong_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1881781222", "1881781222", "S08M010_LocateTheCentralServer", "Start", "box_ListWriter_16.Add", self, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_43_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|421586086", "421586086", "S08M010_LocateTheCentralServer", "box_Ordered_Output_43.Out", "box_MultipleOR_29.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_43_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_10
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "AnalyzingData",
    id = "15768"
  }
  l0.TotalTime = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|639555766", "639555766", "S08M010_LocateTheCentralServer", "box_Ordered_Output_43.Out", "box_DistanceBasedProgressBarController_v2_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_48_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_19
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052247292961"
  l0 = self.box_HackableController_v2_48
  l1 = self.box_PhoneCommunicationController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1585506424", "1585506424", "S08M010_LocateTheCentralServer", "box_HackableController_v2_48.Disabled", "box_PhoneCommunicationController_19.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|281424399"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_24_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_24_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_24_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_24_Out_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1917569880", "1917569880", "S08M010_LocateTheCentralServer", "box_Ordered_Output_23.Out", "box_Ordered_Output_24.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_15
  l0.Input = self.HackableEntities
  l0.Data[0] = self.Server_HackableEntity_ServerWrong_01
  l0.Data[1] = self.Server_HackableEntity_ServerWrong_02
  l0.Data[2] = self.Server_HackableEntity_ServerWrong_03
  l0.Data[3] = self.Server_HackableEntity_ServerWrong_04
  l0.Data[4] = self.Server_HackableEntity_ServerWrong_05
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|990250436", "990250436", "S08M010_LocateTheCentralServer", "box_Ordered_Output_23.Out", "box_ListWriter_15.Add", clone, l0)
  l0:Add()
end
function export:f_box_HackableController_v2_25_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_26
  l0.HackableEntity = self.S08m010_GenericInteract_Server
  l0 = self.box_HackableController_v2_25
  l1 = self.box_HackableController_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|695942258", "695942258", "S08M010_LocateTheCentralServer", "box_HackableController_v2_25.Disabled", "box_HackableController_v2_26.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_HackableController_v2_14_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|218433747"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_4_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_4_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_4_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_4_Out_5
  l0 = self.box_HackableController_v2_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|179166312", "179166312", "S08M010_LocateTheCentralServer", "box_HackableController_v2_14.ProfilingDisabled", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_29_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_30()
  l0 = self.box_MultipleOR_29
  l1 = self.box_Intel_Controller_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1449530984", "1449530984", "S08M010_LocateTheCentralServer", "box_MultipleOR_29.Out", "box_Intel_Controller_30.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_34_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_9
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "AnalyzingData",
    id = "15768"
  }
  l0.TotalTime = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|959639330", "959639330", "S08M010_LocateTheCentralServer", "box_Ordered_Output_34.Out", "box_DistanceBasedProgressBarController_v2_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_34_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|2110237744", "2110237744", "S08M010_LocateTheCentralServer", "box_Ordered_Output_34.Out", "box_MultipleOR_33.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_1()
  l0 = self.box_Hackable_Monitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1769130619", "1769130619", "S08M010_LocateTheCentralServer", "box_Ordered_Output_4.Out", "box_Hackable_Monitor_1.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_31()
  l0 = self.box_Hackable_Monitor_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|345118228", "345118228", "S08M010_LocateTheCentralServer", "box_Ordered_Output_4.Out", "box_Hackable_Monitor_31.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_4_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_2()
  l0 = self.box_Hackable_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1267053636", "1267053636", "S08M010_LocateTheCentralServer", "box_Ordered_Output_4.Out", "box_Hackable_Monitor_2.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_4_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_13()
  l0 = self.box_Hackable_Monitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|535836173", "535836173", "S08M010_LocateTheCentralServer", "box_Ordered_Output_4.Out", "box_Hackable_Monitor_13.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_4_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_32()
  l0 = self.box_Hackable_Monitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|2061166959", "2061166959", "S08M010_LocateTheCentralServer", "box_Ordered_Output_4.Out", "box_Hackable_Monitor_32.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_4_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_44()
  l0 = self.box_Hackable_Monitor_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|740136915", "740136915", "S08M010_LocateTheCentralServer", "box_Ordered_Output_4.Out", "box_Hackable_Monitor_44.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_DistanceBasedProgressBarController_v2_3_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_48
  l0.HackableEntity = self.Server_HackableEntity_ServerWrong_02
  l0 = self.box_DistanceBasedProgressBarController_v2_3
  l1 = self.box_HackableController_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1082317444", "1082317444", "S08M010_LocateTheCentralServer", "box_DistanceBasedProgressBarController_v2_3.Completed", "box_HackableController_v2_48.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_DistanceBasedProgressBarController_v2_9_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_51
  l0.HackableEntity = self.Server_HackableEntity_ServerWrong_05
  l0 = self.box_DistanceBasedProgressBarController_v2_9
  l1 = self.box_HackableController_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|33917613", "33917613", "S08M010_LocateTheCentralServer", "box_DistanceBasedProgressBarController_v2_9.Completed", "box_HackableController_v2_51.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_1()
  l0 = self.box_Hackable_Monitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|39744756", "39744756", "S08M010_LocateTheCentralServer", "box_Ordered_Output_24.Out", "box_Hackable_Monitor_1.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_31()
  l0 = self.box_Hackable_Monitor_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|886669369", "886669369", "S08M010_LocateTheCentralServer", "box_Ordered_Output_24.Out", "box_Hackable_Monitor_31.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_24_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_2()
  l0 = self.box_Hackable_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|108858587", "108858587", "S08M010_LocateTheCentralServer", "box_Ordered_Output_24.Out", "box_Hackable_Monitor_2.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_24_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_13()
  l0 = self.box_Hackable_Monitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|688711515", "688711515", "S08M010_LocateTheCentralServer", "box_Ordered_Output_24.Out", "box_Hackable_Monitor_13.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_24_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_32()
  l0 = self.box_Hackable_Monitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|881699111", "881699111", "S08M010_LocateTheCentralServer", "box_Ordered_Output_24.Out", "box_Hackable_Monitor_32.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_24_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_44()
  l0 = self.box_Hackable_Monitor_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1484417617", "1484417617", "S08M010_LocateTheCentralServer", "box_Ordered_Output_24.Out", "box_Hackable_Monitor_44.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_DistanceBasedProgressBarController_v2_10_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_17
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052105795197"
  l0 = self.box_DistanceBasedProgressBarController_v2_10
  l1 = self.box_PhoneCommunicationController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1252882220", "1252882220", "S08M010_LocateTheCentralServer", "box_DistanceBasedProgressBarController_v2_10.Completed", "box_PhoneCommunicationController_17.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Hackable_Monitor_44_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_Hackable_Monitor_44
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|2111277642", "2111277642", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_44.Disabled", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Hackable_Monitor_44_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_28()
  l0 = self.box_Hackable_Monitor_44
  l1 = self.box_Intel_Controller_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1815574962", "1815574962", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_44.Enabled", "box_Intel_Controller_28.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Monitor_44_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|189111402"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_34_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_34_Out_1
  l0 = self.box_Hackable_Monitor_44
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|432586563", "432586563", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_44.HackSuccess", "box_Ordered_Output_34.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_1_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_Hackable_Monitor_1
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|2079004366", "2079004366", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_1.Disabled", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Hackable_Monitor_1_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_30()
  l0 = self.box_Hackable_Monitor_1
  l1 = self.box_Intel_Controller_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|543457463", "543457463", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_1.Enabled", "box_Intel_Controller_30.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Monitor_1_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|10512561"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_43_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_43_Out_1
  l0 = self.box_Hackable_Monitor_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|813703907", "813703907", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_1.HackSuccess", "box_Ordered_Output_43.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_2_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Hackable_Monitor_2
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|2102190951", "2102190951", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_2.Disabled", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Hackable_Monitor_2_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_12()
  l0 = self.box_Hackable_Monitor_2
  l1 = self.box_Intel_Controller_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1378124795", "1378124795", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_2.Enabled", "box_Intel_Controller_12.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Monitor_2_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1735932675"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_39_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_39_Out_1
  l0 = self.box_Hackable_Monitor_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|2018158008", "2018158008", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_2.HackSuccess", "box_Ordered_Output_39.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_38_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_11()
  l0 = self.box_MultipleOR_38
  l1 = self.box_Intel_Controller_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|273970972", "273970972", "S08M010_LocateTheCentralServer", "box_MultipleOR_38.Out", "box_Intel_Controller_11.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_6
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "AnalyzingData",
    id = "15768"
  }
  l0.TotalTime = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|506877871", "506877871", "S08M010_LocateTheCentralServer", "box_Ordered_Output_35.Out", "box_DistanceBasedProgressBarController_v2_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1325124557", "1325124557", "S08M010_LocateTheCentralServer", "box_Ordered_Output_35.Out", "box_MultipleOR_36.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_HackableController_v2_26_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = self.box_HackableController_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|320301577", "320301577", "S08M010_LocateTheCentralServer", "box_HackableController_v2_26.ProfilingEnabled", "Disabled", l0, self)
  self:Disabled()
end
function export:f_box_DistanceBasedProgressBarController_v2_7_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_47
  l0.HackableEntity = self.Server_HackableEntity_ServerWrong_01
  l0 = self.box_DistanceBasedProgressBarController_v2_7
  l1 = self.box_HackableController_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|2097111853", "2097111853", "S08M010_LocateTheCentralServer", "box_DistanceBasedProgressBarController_v2_7.Completed", "box_HackableController_v2_47.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_16_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_16
  self.GenericInteracts = l0.Target
  l0 = self.box_ListForEach_46
  l0.List = self.GenericInteracts
  l0 = self.box_ListWriter_16
  l1 = self.box_ListForEach_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1971446745", "1971446745", "S08M010_LocateTheCentralServer", "box_ListWriter_16.Added", "box_ListForEach_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_16_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_16
  self.GenericInteracts = l0.Target
end
function export:f_box_ListWriter_16_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_16
  self.GenericInteracts = l0.Target
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_7
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "AnalyzingData",
    id = "15768"
  }
  l0.TotalTime = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1957600841", "1957600841", "S08M010_LocateTheCentralServer", "box_Ordered_Output_41.Out", "box_DistanceBasedProgressBarController_v2_7.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|2130497712", "2130497712", "S08M010_LocateTheCentralServer", "box_Ordered_Output_41.Out", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_DistanceBasedProgressBarController_v2_8_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_49
  l0.HackableEntity = self.Server_HackableEntity_ServerWrong_03
  l0 = self.box_DistanceBasedProgressBarController_v2_8
  l1 = self.box_HackableController_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|89854087", "89854087", "S08M010_LocateTheCentralServer", "box_DistanceBasedProgressBarController_v2_8.Completed", "box_HackableController_v2_49.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PhoneCommunicationController_17_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self.box_PhoneCommunicationController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|922894318", "922894318", "S08M010_LocateTheCentralServer", "box_PhoneCommunicationController_17.StartCommunicationOut", "Located", l0, self)
  self:Located()
end
function export:f_box_ListForEach_46_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_14
  l0.HackableEntityList = self.GenericInteracts
  l0 = self.box_ListForEach_46
  l1 = self.box_HackableController_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1729029507", "1729029507", "S08M010_LocateTheCentralServer", "box_ListForEach_46.EndOfList", "box_HackableController_v2_14.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_ListForEach_46_ForEach()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_46
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l1.InteractionEntity = l0.Data
  l1.InteractionEntityList = nil
  l1.EnableState = nil
  l1._graph = self
  l1._name = "box_InteractionScriptController_45"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1507421715"
  l1.Enabled = DummyFunction
  l1.Disabled = DummyFunction
  l1.EnableStateSet = DummyFunction
  l1.InteractionForced = DummyFunction
  l1.Out = DummyFunction
  l0 = self.box_ListForEach_46
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|294604909", "294604909", "S08M010_LocateTheCentralServer", "box_ListForEach_46.ForEach", "box_InteractionScriptController_45.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hackable_Monitor_13_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_Hackable_Monitor_13
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1903851716", "1903851716", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_13.Disabled", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Hackable_Monitor_13_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_11()
  l0 = self.box_Hackable_Monitor_13
  l1 = self.box_Intel_Controller_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|769836962", "769836962", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_13.Enabled", "box_Intel_Controller_11.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Monitor_13_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1498015712"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_37_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_37_Out_1
  l0 = self.box_Hackable_Monitor_13
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1834000639", "1834000639", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_13.HackSuccess", "box_Ordered_Output_37.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_47_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_18
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052105795200"
  l0 = self.box_HackableController_v2_47
  l1 = self.box_PhoneCommunicationController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|745394682", "745394682", "S08M010_LocateTheCentralServer", "box_HackableController_v2_47.Disabled", "box_PhoneCommunicationController_18.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_40_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_12()
  l0 = self.box_MultipleOR_40
  l1 = self.box_Intel_Controller_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1308273718", "1308273718", "S08M010_LocateTheCentralServer", "box_MultipleOR_40.Out", "box_Intel_Controller_12.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_8
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "AnalyzingData",
    id = "15768"
  }
  l0.TotalTime = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|822708184", "822708184", "S08M010_LocateTheCentralServer", "box_Ordered_Output_37.Out", "box_DistanceBasedProgressBarController_v2_8.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|565585353", "565585353", "S08M010_LocateTheCentralServer", "box_Ordered_Output_37.Out", "box_MultipleOR_38.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_33_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_28()
  l0 = self.box_MultipleOR_33
  l1 = self.box_Intel_Controller_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|572883617", "572883617", "S08M010_LocateTheCentralServer", "box_MultipleOR_33.Out", "box_Intel_Controller_28.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_42_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_5()
  l0 = self.box_MultipleOR_42
  l1 = self.box_Intel_Controller_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1237773997", "1237773997", "S08M010_LocateTheCentralServer", "box_MultipleOR_42.Out", "box_Intel_Controller_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_39_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_3
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "AnalyzingData",
    id = "15768"
  }
  l0.TotalTime = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|7605065", "7605065", "S08M010_LocateTheCentralServer", "box_Ordered_Output_39.Out", "box_DistanceBasedProgressBarController_v2_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_39_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|379305825", "379305825", "S08M010_LocateTheCentralServer", "box_Ordered_Output_39.Out", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Hackable_Monitor_32_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_Hackable_Monitor_32
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|897997483", "897997483", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_32.Disabled", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Hackable_Monitor_32_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_27()
  l0 = self.box_Hackable_Monitor_32
  l1 = self.box_Intel_Controller_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|238807977", "238807977", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_32.Enabled", "box_Intel_Controller_27.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Monitor_32_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|858249762"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  l0 = self.box_Hackable_Monitor_32
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1281698855", "1281698855", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_32.HackSuccess", "box_Ordered_Output_35.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_51_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_22
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052247292964"
  l0 = self.box_HackableController_v2_51
  l1 = self.box_PhoneCommunicationController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|649503268", "649503268", "S08M010_LocateTheCentralServer", "box_HackableController_v2_51.Disabled", "box_PhoneCommunicationController_22.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_HackableController_v2_50_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_21
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052247292963"
  l0 = self.box_HackableController_v2_50
  l1 = self.box_PhoneCommunicationController_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|161554407", "161554407", "S08M010_LocateTheCentralServer", "box_HackableController_v2_50.Disabled", "box_PhoneCommunicationController_21.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_ListWriter_15_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_15
  self.HackableEntities = l0.Target
  l0 = self.box_HackableController_v2_25
  l0.HackableEntityList = self.HackableEntities
  l0 = self.box_ListWriter_15
  l1 = self.box_HackableController_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1774287801", "1774287801", "S08M010_LocateTheCentralServer", "box_ListWriter_15.Added", "box_HackableController_v2_25.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_15_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_15
  self.HackableEntities = l0.Target
end
function export:f_box_ListWriter_15_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_15
  self.HackableEntities = l0.Target
end
function export:f_box_HackableController_v2_49_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_20
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052247292962"
  l0 = self.box_HackableController_v2_49
  l1 = self.box_PhoneCommunicationController_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1342298196", "1342298196", "S08M010_LocateTheCentralServer", "box_HackableController_v2_49.Disabled", "box_PhoneCommunicationController_20.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_27()
  l0 = self.box_MultipleOR_36
  l1 = self.box_Intel_Controller_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1071889160", "1071889160", "S08M010_LocateTheCentralServer", "box_MultipleOR_36.Out", "box_Intel_Controller_27.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hackable_Monitor_31_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_Hackable_Monitor_31
  l1 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|173610320", "173610320", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_31.Disabled", "box_MultipleOR_42.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Hackable_Monitor_31_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_5()
  l0 = self.box_Hackable_Monitor_31
  l1 = self.box_Intel_Controller_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1620417116", "1620417116", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_31.Enabled", "box_Intel_Controller_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Monitor_31_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1187072913"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  l0 = self.box_Hackable_Monitor_31
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|1645922927", "1645922927", "S08M010_LocateTheCentralServer", "box_Hackable_Monitor_31.HackSuccess", "box_Ordered_Output_41.In", l0, l1)
  l1:In()
end
function export:f_box_DistanceBasedProgressBarController_v2_6_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_50
  l0.HackableEntity = self.Server_HackableEntity_ServerWrong_04
  l0 = self.box_DistanceBasedProgressBarController_v2_6
  l1 = self.box_HackableController_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_LocateTheCentralServer|728561784", "728561784", "S08M010_LocateTheCentralServer", "box_DistanceBasedProgressBarController_v2_6.Completed", "box_HackableController_v2_50.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:OnEnter_box_Intel_Controller_28()
  local l0
  l0 = self.box_Intel_Controller_28
  l0.Entity = self.Server_HackableEntity_ServerWrong_05
end
function export:OnEnter_box_MultipleOR_29()
end
function export:OnEnter_box_Intel_Controller_5()
  local l0
  l0 = self.box_Intel_Controller_5
  l0.Entity = self.Server_HackableEntity_ServerWrong_01
end
function export:OnEnter_box_Intel_Controller_30()
  local l0
  l0 = self.box_Intel_Controller_30
  l0.Entity = self.Server_HackableEntity_Server
end
function export:OnEnter_box_Intel_Controller_27()
  local l0
  l0 = self.box_Intel_Controller_27
  l0.Entity = self.Server_HackableEntity_ServerWrong_04
end
function export:OnEnter_box_Hackable_Monitor_44()
  local l0
  l0 = self.box_Hackable_Monitor_44
  l0.HackableEntity = self.Server_HackableEntity_ServerWrong_05
  l0.AutoDisable = 1
end
function export:OnEnter_box_Hackable_Monitor_1()
  local l0
  l0 = self.box_Hackable_Monitor_1
  l0.HackableEntity = self.Server_HackableEntity_Server
  l0.AutoDisable = 1
end
function export:OnEnter_box_Intel_Controller_11()
  local l0
  l0 = self.box_Intel_Controller_11
  l0.Entity = self.Server_HackableEntity_ServerWrong_03
end
function export:OnEnter_box_Hackable_Monitor_2()
  local l0
  l0 = self.box_Hackable_Monitor_2
  l0.HackableEntity = self.Server_HackableEntity_ServerWrong_02
  l0.AutoDisable = 1
end
function export:OnEnter_box_MultipleOR_38()
end
function export:OnEnter_box_Hackable_Monitor_13()
  local l0
  l0 = self.box_Hackable_Monitor_13
  l0.HackableEntity = self.Server_HackableEntity_ServerWrong_03
  l0.AutoDisable = 1
end
function export:OnEnter_box_MultipleOR_40()
end
function export:OnEnter_box_MultipleOR_33()
end
function export:OnEnter_box_MultipleOR_42()
end
function export:OnEnter_box_Hackable_Monitor_32()
  local l0
  l0 = self.box_Hackable_Monitor_32
  l0.HackableEntity = self.Server_HackableEntity_ServerWrong_04
  l0.AutoDisable = 1
end
function export:OnEnter_box_Intel_Controller_12()
  local l0
  l0 = self.box_Intel_Controller_12
  l0.Entity = self.Server_HackableEntity_ServerWrong_02
end
function export:OnEnter_box_MultipleOR_36()
end
function export:OnEnter_box_Hackable_Monitor_31()
  local l0
  l0 = self.box_Hackable_Monitor_31
  l0.HackableEntity = self.Server_HackableEntity_ServerWrong_01
  l0.AutoDisable = 1
end
function export:Disabled()
end
function export:Located()
end
_compilerVersion = 4
