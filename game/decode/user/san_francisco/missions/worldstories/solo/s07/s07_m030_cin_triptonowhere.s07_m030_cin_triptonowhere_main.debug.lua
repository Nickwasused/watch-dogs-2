export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("domino/System/FreeFormTextController.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S07_M030_CIN_TripToNowhere_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.RunningFestival_Sitara = nil
  self.RunningFestival_Josh = nil
  self.RunningFestival_Wrench = nil
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|275746308"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_PlaySequence_v5_4 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_4
  l0._graph = self
  l0._name = "box_PlaySequence_v5_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|708044468"
  l0._DynamicAnchors = {
    SPOut = {"Text"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_4_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_4_Finished
  l0.SPOut.Text = self.f_box_PlaySequence_v5_4_SPOut__Text_
  self.box_FreeFormTextController_2 = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self.box_FreeFormTextController_2
  l0._graph = self
  l0._name = "box_FreeFormTextController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|1404558343"
  l0.OnFreeFormTextRequested = DummyFunction
  l0.OnFreeFormTextHidden = DummyFunction
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
  l0 = self.box_PlaySequence_v5_4
  l0.SceneEntity = "9223372047235789144"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_TripToNowhere_CIN/s07_triptonowhere_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|1771104742", "1771104742", "S07_M030_CIN_TripToNowhere_Main", "In", "box_PlaySequence_v5_4.Start", self, l0)
  l0:Start()
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491195"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|1447195056"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_3_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_5
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|1512783773", "1512783773", "S07_M030_CIN_TripToNowhere_Main", "box_MultipleOR_5.Out", "box_Media_System_Custom_Broadcast_Controller_3.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_MaterialController_1_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372069285162902"
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|1975553339"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_15_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|1505630914", "1505630914", "S07_M030_CIN_TripToNowhere_Main", "box_MaterialController_1.ByIndexSet", "box_Dynamic_Media_Controller_15.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_PlaySequence_v5_4_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|258193772", "258193772", "S07_M030_CIN_TripToNowhere_Main", "box_PlaySequence_v5_4.Finished", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_4_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|1712091501", "1712091501", "S07_M030_CIN_TripToNowhere_Main", "box_PlaySequence_v5_4.Skipped", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlaySequence_v5_4_SPOut__Text_()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeFormTextController_2
  l0.FreeFormText = "FreeFormTextDB.9223372070165474113"
  l0 = self.box_PlaySequence_v5_4
  l1 = self.box_FreeFormTextController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|674886953", "674886953", "S07_M030_CIN_TripToNowhere_Main", "box_PlaySequence_v5_4.SPOut", "box_FreeFormTextController_2.Open", l0, l1)
  l1:Open()
end
function export:f_box_Dynamic_Media_Controller_17_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|1686882339", "1686882339", "S07_M030_CIN_TripToNowhere_Main", "box_Dynamic_Media_Controller_17.ChannelChanged", "Out", clone, self)
  self:Out()
end
function export:f_box_Dynamic_Media_Controller_10_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372069285162900"
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|933186927"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_17_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|1409440858", "1409440858", "S07_M030_CIN_TripToNowhere_Main", "box_Dynamic_Media_Controller_10.ChannelChanged", "box_Dynamic_Media_Controller_17.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_3_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372062567734418"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|699226783"
  l0.ByIndexSet = self.f_box_MaterialController_1_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|339997476", "339997476", "S07_M030_CIN_TripToNowhere_Main", "box_Media_System_Custom_Broadcast_Controller_3.LoadAndPlayRequested", "box_MaterialController_1.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Dynamic_Media_Controller_15_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372069285162901"
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|1086093571"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_10_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_triptonowhere.domino|@S07_M030_CIN_TripToNowhere_Main|1842768799", "1842768799", "S07_M030_CIN_TripToNowhere_Main", "box_Dynamic_Media_Controller_15.ChannelChanged", "box_Dynamic_Media_Controller_10.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:OnEnter_box_MultipleOR_5()
end
function export:Out()
end
_compilerVersion = 4
