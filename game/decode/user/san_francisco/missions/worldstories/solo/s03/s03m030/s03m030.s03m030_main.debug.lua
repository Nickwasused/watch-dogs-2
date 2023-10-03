export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter_SoundID.lua")
  cbox:RegisterBox("domino/System/LocateGameplayController.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/ResearchComponentMonitor.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:LoadResource("soundbinary/4190136920.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4240371191.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/153324964.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3891757117.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S03M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main"
  self.PlayerEntity = nil
  self.ComponentCovered = {}
  self.GotComponent = 0
  self.box_PlayDialog_v2_3 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_3
  l0._graph = self
  l0._name = "box_PlayDialog_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|155464088"
  l0.Started = DummyFunction
  l0.ListStarted = self.f_box_PlayDialog_v2_3_ListStarted
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_25 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_25
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|173269105"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_25_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_LocateGameplayController_8 = cbox:CreateBox("domino/System/LocateGameplayController.lua")
  l0 = self.box_LocateGameplayController_8
  l0._graph = self
  l0._name = "box_LocateGameplayController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|188694509"
  l0.Started = self.f_box_LocateGameplayController_8_Started
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_MissionMessageController_v3_15 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_15
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|304387122"
  l0.Out = self.f_box_MissionMessageController_v3_15_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|637136074"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_ResearchComponentMonitor_5 = cbox:CreateBox("domino/System/ResearchComponentMonitor.lua")
  l0 = self.box_ResearchComponentMonitor_5
  l0._graph = self
  l0._name = "box_ResearchComponentMonitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|781478612"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_ResearchComponentMonitor_5_Disabled
  l0.GotComponent = self.f_box_ResearchComponentMonitor_5_GotComponent
  l0.ComponentAdded = self.f_box_ResearchComponentMonitor_5_ComponentAdded
  l0.AmountReached = self.f_box_ResearchComponentMonitor_5_AmountReached
  l0.AmountNotReached = self.f_box_ResearchComponentMonitor_5_AmountNotReached
  self.box_FreeRoam_Mission_End_6 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_6
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|792430784"
  self.box_PlayDialog_v2_12 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_12
  l0._graph = self
  l0._name = "box_PlayDialog_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|1573950781"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_12_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriterSoundID_2 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_2
  l0._graph = self
  l0._name = "box_ListWriterSoundID_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|1816182044"
  l0._DynamicAnchors = {SoundID = 3}
  l0.Added = self.f_box_ListWriterSoundID_2_Added
  l0.Removed = self.f_box_ListWriterSoundID_2_Removed
  l0.Out = self.f_box_ListWriterSoundID_2_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_6()
  l0 = self.box_FreeRoam_Mission_End_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|1802457655", "1802457655", "S03M030_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_6.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_ListWriterSoundID_2
  l0.Input = self.ComponentCovered
  l0.SoundID[0] = "soundbinary/3891757117.bnk"
  l0.SoundID[1] = "soundbinary/153324964.bnk"
  l0.SoundID[2] = "soundbinary/4190136920.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|995765359", "995765359", "S03M030_Main", "In", "box_ListWriterSoundID_2.Add", self, l0)
  l0:Add()
end
function export:f_box_PlayDialog_v2_3_ListStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_PlayDialog_v2_3
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|435856479", "435856479", "S03M030_Main", "box_PlayDialog_v2_3.ListStarted", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PhoneCommunicationController_25_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_PhoneCommunicationController_25
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|1072323220", "1072323220", "S03M030_Main", "box_PhoneCommunicationController_25.StartCommunicationOut", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_LocateGameplayController_8_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ResearchComponentMonitor_5()
  l0 = self.box_LocateGameplayController_8
  l1 = self.box_ResearchComponentMonitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|191410084", "191410084", "S03M030_Main", "box_LocateGameplayController_8.Started", "box_ResearchComponentMonitor_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|409812665"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_MissionMessageController_v3_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|409119028", "409119028", "S03M030_Main", "box_MissionMessageController_v3_15.Out", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ResearchComponentMonitor_5()
  l0 = self.box_ResearchComponentMonitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|58440774", "58440774", "S03M030_Main", "box_Ordered_Output_11.Out", "box_ResearchComponentMonitor_5.GetComponent", clone, l0)
  l0:GetComponent()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_6()
  l0 = self.box_MultipleOR_4
  l1 = self.box_FreeRoam_Mission_End_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|230397834", "230397834", "S03M030_Main", "box_MultipleOR_4.Out", "box_FreeRoam_Mission_End_6.End", l0, l1)
  l1:End()
end
function export:f_box_ResearchComponentMonitor_5_AmountNotReached()
  local l0
  self = self._graph
  l0 = self.box_ResearchComponentMonitor_5
  self.GotComponent = l0.ComponentCount
end
function export:f_box_ResearchComponentMonitor_5_AmountReached()
  local l0
  self = self._graph
  l0 = self.box_ResearchComponentMonitor_5
  self.GotComponent = l0.ComponentCount
  self:OnEnter_box_ResearchComponentMonitor_5()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|34858856", "34858856", "S03M030_Main", "box_ResearchComponentMonitor_5.AmountReached", "box_ResearchComponentMonitor_5.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_ResearchComponentMonitor_5_ComponentAdded()
  local l0
  self = self._graph
  l0 = self.box_ResearchComponentMonitor_5
  self.GotComponent = l0.ComponentCount
end
function export:f_box_ResearchComponentMonitor_5_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_12
  l0.SoundId = "soundbinary/4240371191.bnk"
  l0 = self.box_ResearchComponentMonitor_5
  l1 = self.box_PlayDialog_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|1166757104", "1166757104", "S03M030_Main", "box_ResearchComponentMonitor_5.Disabled", "box_PlayDialog_v2_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_ResearchComponentMonitor_5_GotComponent()
  local l0, l1
  self = self._graph
  l0 = self.box_ResearchComponentMonitor_5
  self.GotComponent = l0.ComponentCount
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.GotComponent
  l0.B = 1
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|1533037775"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_7_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_7_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0 = self.box_ResearchComponentMonitor_5
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|871464500", "871464500", "S03M030_Main", "box_ResearchComponentMonitor_5.GotComponent", "box_Compare_Integers_v2_7.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LocateGameplayController_8
  l0.TargetEntity = "9223372052992384748"
  l0.DistrictDB = "Districts.9223372048308080000"
  l0.UseStoryIcon = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|1504213139", "1504213139", "S03M030_Main", "box_Simple_Node_9.Out", "box_LocateGameplayController_8.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Integers_v2_7_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_3
  l0.SoundIdList = self.ComponentCovered
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|2065855629", "2065855629", "S03M030_Main", "box_Compare_Integers_v2_7.A_eq_B", "box_PlayDialog_v2_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Integers_v2_7_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|1164115618"
  l0.Out = self.f_box_Simple_Node_9_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|818776407", "818776407", "S03M030_Main", "box_Compare_Integers_v2_7.A_lt_B", "box_Simple_Node_9.In", clone, l0)
  l0:In()
end
function export:f_box_PlayDialog_v2_12_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_25
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421345932"
  l0 = self.box_PlayDialog_v2_12
  l1 = self.box_PhoneCommunicationController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|647401299", "647401299", "S03M030_Main", "box_PlayDialog_v2_12.Finished", "box_PhoneCommunicationController_25.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_ListWriterSoundID_2_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_2
  self.ComponentCovered = l0.Target
  l0 = self.box_MissionMessageController_v3_15
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M030.Objectives.Objective010",
    item = "Objective2",
    id = "634463"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_ListWriterSoundID_2
  l1 = self.box_MissionMessageController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M030\\S03M030.domino|@S03M030_Main|1573376795", "1573376795", "S03M030_Main", "box_ListWriterSoundID_2.Added", "box_MissionMessageController_v3_15.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_ListWriterSoundID_2_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_2
  self.ComponentCovered = l0.Target
end
function export:f_box_ListWriterSoundID_2_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_2
  self.ComponentCovered = l0.Target
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_ResearchComponentMonitor_5()
  local l0
  l0 = self.box_ResearchComponentMonitor_5
  l0.ComponentDB = "Items.9223372048406406116"
  l0.AmountToReach = 1
end
function export:OnEnter_box_FreeRoam_Mission_End_6()
  local l0
  l0 = self.box_FreeRoam_Mission_End_6
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
