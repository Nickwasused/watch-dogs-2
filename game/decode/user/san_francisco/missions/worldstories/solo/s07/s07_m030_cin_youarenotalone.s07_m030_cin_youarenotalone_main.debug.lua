export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/LoadingScreenMonitor_v2.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerInsideHma.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S07_M030_CIN_YouAreNotAlone_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Sitara = {}
  self.Wrench = {}
  self.Wrench_HackerSpace = nil
  self.Sitara_HackerSpace = nil
  self.box_CLOMonitor_24 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_24
  l0._graph = self
  l0._name = "box_CLOMonitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|68459834"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_24_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_24_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_24_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_CinematicPrep_11 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_11
  l0._graph = self
  l0._name = "box_CinematicPrep_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|310277568"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_11_PostOut
  self.box_Multiple_AND_19 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_19
  l0._graph = self
  l0._name = "box_Multiple_AND_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|429112070"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_19_Out
  self.box_OnceOnly_v3_8 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|503490842"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_8_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_21 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_21
  l0._graph = self
  l0._name = "box_MultipleOR_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|635655432"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_21_Out
  self.box_Timer_v2_4 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_4
  l0._graph = self
  l0._name = "box_Timer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|700355108"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_3 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_3
  l0._graph = self
  l0._name = "box_PlaySequence_v5_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|988610549"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_3_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_3_Finished
  self.box_MultipleOR_17 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1065328973"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_Loading_Screen_Monitor_v2_7 = cbox:CreateBox("domino/System/LoadingScreenMonitor_v2.lua")
  l0 = self.box_Loading_Screen_Monitor_v2_7
  l0._graph = self
  l0._name = "box_Loading_Screen_Monitor_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1474951265"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Loading_Screen_Monitor_v2_7_Disabled
  l0.LoadingScreenEnded = self.f_box_Loading_Screen_Monitor_v2_7_LoadingScreenEnded
  l0.LoadingScreenStarted = DummyFunction
  self.box_CLOMonitor_15 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_15
  l0._graph = self
  l0._name = "box_CLOMonitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1532015125"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_15_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_15_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_15_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_Timer_v2_9 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1861968571"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOMonitor_1 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_1
  l0._graph = self
  l0._name = "box_CLOMonitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1966803536"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_1_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_1_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_1_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_CLOMonitor_20 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_20
  l0._graph = self
  l0._name = "box_CLOMonitor_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1994420225"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_20_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_20_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_20_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_TeleportPlayerInsideHma_13 = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self.box_TeleportPlayerInsideHma_13
  l0._graph = self
  l0._name = "box_TeleportPlayerInsideHma_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|2044826034"
  l0.Out = DummyFunction
  l0.Done = self.f_box_TeleportPlayerInsideHma_13_Done
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|89335207"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1795235499", "1795235499", "S07_M030_CIN_YouAreNotAlone_Main", "In", "box_Ordered_Output_14.In", self, l0)
  l0:In()
end
function export:f_box_CLOMonitor_24_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_24
  self.Sitara_HackerSpace = l0.UserID
end
function export:f_box_CLOMonitor_24_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_24
  self.Sitara_HackerSpace = l0.UserID
end
function export:f_box_CLOMonitor_24_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_24
  self.Sitara_HackerSpace = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1899233675"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_CLOMonitor_24
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|166731449", "166731449", "S07_M030_CIN_YouAreNotAlone_Main", "box_CLOMonitor_24.OnUserInPlace", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = nil
  l0.OnGenericChannel = 1
  l0.OnShopChannel = 1
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|511890321"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1161447847", "1161447847", "S07_M030_CIN_YouAreNotAlone_Main", "box_Ordered_Output_14.Out", "box_Media_System_Custom_Broadcast_Controller_12.EndAllCustomMediaBroadcasts", clone, l0)
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|859863135", "859863135", "S07_M030_CIN_YouAreNotAlone_Main", "box_Ordered_Output_14.Out", "box_Timer_v2_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_5_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_19()
  l0 = self.box_Multiple_AND_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|70856135", "70856135", "S07_M030_CIN_YouAreNotAlone_Main", "box_VisibilityController_v2_5.Hidden", "box_Multiple_AND_19.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_VisibilityController_v2_6_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_19()
  l0 = self.box_Multiple_AND_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1988315541", "1988315541", "S07_M030_CIN_YouAreNotAlone_Main", "box_VisibilityController_v2_6.Hidden", "box_Multiple_AND_19.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_15()
  l0 = self.box_CLOMonitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|835217388", "835217388", "S07_M030_CIN_YouAreNotAlone_Main", "box_Ordered_Output_10.Out", "box_CLOMonitor_15.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|483859013", "483859013", "S07_M030_CIN_YouAreNotAlone_Main", "box_Ordered_Output_10.Out", "box_MultipleOR_17.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CinematicPrep_11_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1436979564", "1436979564", "S07_M030_CIN_YouAreNotAlone_Main", "box_CinematicPrep_11.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_1
  l0.CLO = "9223372047464636836"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|710365621", "710365621", "S07_M030_CIN_YouAreNotAlone_Main", "box_Ordered_Output_23.Out", "box_CLOMonitor_1.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_20
  l0.CLO = "9223372047464636840"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|444084926", "444084926", "S07_M030_CIN_YouAreNotAlone_Main", "box_Ordered_Output_23.Out", "box_CLOMonitor_20.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_Multiple_AND_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_3
  l0.SceneEntity = "9223372047779474419"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_YouAreNotAlone_CIN/s07_youarenotalone_cin.seq"
  l0 = self.box_Multiple_AND_19
  l1 = self.box_PlaySequence_v5_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|524408584", "524408584", "S07_M030_CIN_YouAreNotAlone_Main", "box_Multiple_AND_19.Out", "box_PlaySequence_v5_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|864698375"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_16_Out_2
  l0 = self.box_OnceOnly_v3_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1409724979", "1409724979", "S07_M030_CIN_YouAreNotAlone_Main", "box_OnceOnly_v3_8.Out", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_21_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Sitara_HackerSpace
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|260136833"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_5_Hidden
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_21
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1417613250", "1417613250", "S07_M030_CIN_YouAreNotAlone_Main", "box_MultipleOR_21.Out", "box_VisibilityController_v2_5.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Timer_v2_4_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_TeleportPlayerInsideHma_13
  l0.SpawnPoint = "9223372046684741814"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_Timer_v2_4
  l1 = self.box_TeleportPlayerInsideHma_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1834071812", "1834071812", "S07_M030_CIN_YouAreNotAlone_Main", "box_Timer_v2_4.TimeElapsed", "box_TeleportPlayerInsideHma_13.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|463829489", "463829489", "S07_M030_CIN_YouAreNotAlone_Main", "box_Ordered_Output_16.Out", "box_Timer_v2_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Sitara_HackerSpace
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1869148940"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1610967856", "1610967856", "S07_M030_CIN_YouAreNotAlone_Main", "box_Ordered_Output_16.Out", "box_VisibilityController_v2_18.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_16_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Wrench_HackerSpace
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|676089432"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|937596484", "937596484", "S07_M030_CIN_YouAreNotAlone_Main", "box_Ordered_Output_16.Out", "box_VisibilityController_v2_22.Show", clone, l0)
  l0:Show()
end
function export:f_box_PlaySequence_v5_3_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1788241474", "1788241474", "S07_M030_CIN_YouAreNotAlone_Main", "box_PlaySequence_v5_3.Finished", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_3_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|143048110", "143048110", "S07_M030_CIN_YouAreNotAlone_Main", "box_PlaySequence_v5_3.Skipped", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(0)
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Wrench_HackerSpace
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|278087236"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_6_Hidden
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_17
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1720960280", "1720960280", "S07_M030_CIN_YouAreNotAlone_Main", "box_MultipleOR_17.Out", "box_VisibilityController_v2_6.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Loading_Screen_Monitor_v2_7_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|417773506"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  l0 = self.box_Loading_Screen_Monitor_v2_7
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1530488648", "1530488648", "S07_M030_CIN_YouAreNotAlone_Main", "box_Loading_Screen_Monitor_v2_7.Disabled", "box_Ordered_Output_23.In", l0, l1)
  l1:In()
end
function export:f_box_Loading_Screen_Monitor_v2_7_LoadingScreenEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Loading_Screen_Monitor_v2_7()
  l0 = self.box_Loading_Screen_Monitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|759034295", "759034295", "S07_M030_CIN_YouAreNotAlone_Main", "box_Loading_Screen_Monitor_v2_7.LoadingScreenEnded", "box_Loading_Screen_Monitor_v2_7.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOMonitor_15_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_15
  self.Wrench_HackerSpace = l0.UserID
end
function export:f_box_CLOMonitor_15_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_15
  self.Wrench_HackerSpace = l0.UserID
end
function export:f_box_CLOMonitor_15_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_15
  self.Wrench_HackerSpace = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|290701183"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_CLOMonitor_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|240216162", "240216162", "S07_M030_CIN_YouAreNotAlone_Main", "box_CLOMonitor_15.OnUserInPlace", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_11
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_9
  l1 = self.box_CinematicPrep_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|2140785736", "2140785736", "S07_M030_CIN_YouAreNotAlone_Main", "box_Timer_v2_9.TimeElapsed", "box_CinematicPrep_11.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_24()
  l0 = self.box_CLOMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1641927006", "1641927006", "S07_M030_CIN_YouAreNotAlone_Main", "box_Ordered_Output_2.Out", "box_CLOMonitor_24.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|757378111", "757378111", "S07_M030_CIN_YouAreNotAlone_Main", "box_Ordered_Output_2.Out", "box_MultipleOR_21.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CLOMonitor_1_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_1
  self.Sitara_HackerSpace = l0.UserID
  self:OnEnter_box_MultipleOR_21()
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|743448363", "743448363", "S07_M030_CIN_YouAreNotAlone_Main", "box_CLOMonitor_1.GotUser", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_1_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_1
  self.Sitara_HackerSpace = l0.UserID
  self:OnEnter_box_CLOMonitor_24()
  l1 = self.box_CLOMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1986081143", "1986081143", "S07_M030_CIN_YouAreNotAlone_Main", "box_CLOMonitor_1.NotGotUser", "box_CLOMonitor_24.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_1_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_1
  self.Sitara_HackerSpace = l0.UserID
end
function export:f_box_CLOMonitor_20_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_20
  self.Wrench_HackerSpace = l0.UserID
  self:OnEnter_box_MultipleOR_17()
  l1 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|1458864067", "1458864067", "S07_M030_CIN_YouAreNotAlone_Main", "box_CLOMonitor_20.GotUser", "box_MultipleOR_17.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_20_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_20
  self.Wrench_HackerSpace = l0.UserID
  self:OnEnter_box_CLOMonitor_15()
  l1 = self.box_CLOMonitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|599988783", "599988783", "S07_M030_CIN_YouAreNotAlone_Main", "box_CLOMonitor_20.NotGotUser", "box_CLOMonitor_15.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_20_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_20
  self.Wrench_HackerSpace = l0.UserID
end
function export:f_box_TeleportPlayerInsideHma_13_Done()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Loading_Screen_Monitor_v2_7()
  l0 = self.box_TeleportPlayerInsideHma_13
  l1 = self.box_Loading_Screen_Monitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07_M030_CIN_YouAreNotAlone.domino|@S07_M030_CIN_YouAreNotAlone_Main|432060387", "432060387", "S07_M030_CIN_YouAreNotAlone_Main", "box_TeleportPlayerInsideHma_13.Done", "box_Loading_Screen_Monitor_v2_7.Enable", l0, l1)
  l1:Enable()
end
function export:OnEnter_box_CLOMonitor_24()
  local l0
  l0 = self.box_CLOMonitor_24
  l0.CLO = "9223372047464636836"
end
function export:OnEnter_box_Multiple_AND_19()
end
function export:OnEnter_box_OnceOnly_v3_8()
end
function export:OnEnter_box_MultipleOR_21()
end
function export:OnEnter_box_MultipleOR_17()
end
function export:OnEnter_box_Loading_Screen_Monitor_v2_7()
end
function export:OnEnter_box_CLOMonitor_15()
  local l0
  l0 = self.box_CLOMonitor_15
  l0.CLO = "9223372047464636840"
end
function export:Out()
end
_compilerVersion = 4
