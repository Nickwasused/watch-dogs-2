export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S14M060_ScreenAndBinkManager"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager"
  self.box_Timer_v2_43 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_43
  l0._graph = self
  l0._name = "box_Timer_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|367380145"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_43_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Media_System_Custom_Broadcast_Monitor_45 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_45
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|427257542"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_45_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_45_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_7 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_7
  l0._graph = self
  l0._name = "box_Multiple_AND_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1179773055"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_7_Out
  self.box_Media_System_Custom_Broadcast_Monitor_56 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_56
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1837066894"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_56_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_56_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|715167554"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_40_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_40_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_40_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_40_Out_3
  l0.Out[4] = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1083478580", "1083478580", "S14M060_ScreenAndBinkManager", "In", "box_Ordered_Output_40.In", self, l0)
  l0:In()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_10_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_45()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|2035078492", "2035078492", "S14M060_ScreenAndBinkManager", "box_Media_System_Custom_Broadcast_Controller_10.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_45.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_43_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372060432399863"
  l0.OnGenericChannel = 1
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|933287858"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_11_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_43
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|470625442", "470625442", "S14M060_ScreenAndBinkManager", "box_Timer_v2_43.TimeElapsed", "box_Media_System_Custom_Broadcast_Controller_11.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_45_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_45()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1607773269", "1607773269", "S14M060_ScreenAndBinkManager", "box_Media_System_Custom_Broadcast_Monitor_45.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_45.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_45_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372060432399864"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|474211943"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_18_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_45
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1752499425", "1752499425", "S14M060_ScreenAndBinkManager", "box_Media_System_Custom_Broadcast_Monitor_45.Disabled", "box_Media_System_Custom_Broadcast_Controller_18.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_18_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1064888324"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_26_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_26_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_26_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1769539212", "1769539212", "S14M060_ScreenAndBinkManager", "box_Media_System_Custom_Broadcast_Controller_18.LoadAndPlayRequested", "box_Ordered_Output_26.In", clone, l0)
  l0:In()
end
function export:f_box_Dynamic_Media_Controller_22_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_7()
  l0 = self.box_Multiple_AND_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|2068391903", "2068391903", "S14M060_ScreenAndBinkManager", "box_Dynamic_Media_Controller_22.ChannelChanged", "box_Multiple_AND_7.Condition", clone, l0)
  l0:Condition(3)
end
function export:f_box_Ordered_Output_40_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434292657"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1183696671"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_5_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1247519623", "1247519623", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_40.Out", "box_Dynamic_Media_Controller_5.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_40_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434292659"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1059656805"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_50_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1525361663", "1525361663", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_40.Out", "box_Dynamic_Media_Controller_50.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_40_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434279737"
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1984310251"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_1_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1862180028", "1862180028", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_40.Out", "box_Dynamic_Media_Controller_1.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_40_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434292653"
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|603872539"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_22_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1886555163", "1886555163", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_40.Out", "box_Dynamic_Media_Controller_22.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371244"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|2076109945"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1557090788", "1557090788", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_15.Out", "box_MaterialController_29.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_15_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371240"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1024148683"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1193428070", "1193428070", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_15.Out", "box_MaterialController_6.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_15_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371242"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1317964586"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1120480238", "1120480238", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_15.Out", "box_MaterialController_19.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_15_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292681"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|2012684667"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1176883901", "1176883901", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_15.Out", "box_MaterialController_23.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_15_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292683"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1131686320"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|163477413", "163477413", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_15.Out", "box_MaterialController_13.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_15_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371252"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|421731270"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|809905926", "809905926", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_15.Out", "box_MaterialController_30.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_15_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371250"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|890108838"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|510566721", "510566721", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_15.Out", "box_MaterialController_47.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_15_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371248"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|570126318"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1350693305", "1350693305", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_15.Out", "box_MaterialController_31.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_15_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371246"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1050272221"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|457385623", "457385623", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_15.Out", "box_MaterialController_46.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_15_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371183"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1870024922"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|108065869", "108065869", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_15.Out", "box_MaterialController_24.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_15_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371185"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|386798712"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1019413670", "1019413670", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_15.Out", "box_MaterialController_34.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_11_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_56()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1048124088", "1048124088", "S14M060_ScreenAndBinkManager", "box_Media_System_Custom_Broadcast_Controller_11.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_56.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Dynamic_Media_Controller_50_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_7()
  l0 = self.box_Multiple_AND_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1301318007", "1301318007", "S14M060_ScreenAndBinkManager", "box_Dynamic_Media_Controller_50.ChannelChanged", "box_Multiple_AND_7.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_26_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1909162387"
  l0._DynamicAnchors = {Out = 11}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_12_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_12_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_12_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_12_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_12_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_12_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_12_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_12_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_12_Out_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1025778444", "1025778444", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_26.Out", "box_Ordered_Output_12.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_26_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1759186339"
  l0._DynamicAnchors = {Out = 18}
  l0.Out[0] = self.f_box_Ordered_Output_36_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_36_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_36_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_36_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_36_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_36_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_36_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_36_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_36_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_36_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_36_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_36_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_36_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_36_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_36_Out_14
  l0.Out[15] = self.f_box_Ordered_Output_36_Out_15
  l0.Out[16] = self.f_box_Ordered_Output_36_Out_16
  l0.Out[17] = self.f_box_Ordered_Output_36_Out_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|839008170", "839008170", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_26.Out", "box_Ordered_Output_36.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_26_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|794064525"
  l0._DynamicAnchors = {Out = 11}
  l0.Out[0] = self.f_box_Ordered_Output_15_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_15_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_15_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_15_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_15_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_15_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_15_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_15_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_15_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_15_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_15_Out_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1877530095", "1877530095", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_26.Out", "box_Ordered_Output_15.In", clone, l0)
  l0:In()
end
function export:f_box_Multiple_AND_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_43
  l0.Seconds = 2
  l0 = self.box_Multiple_AND_7
  l1 = self.box_Timer_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1678215574", "1678215574", "S14M060_ScreenAndBinkManager", "box_Multiple_AND_7.Out", "box_Timer_v2_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_Dynamic_Media_Controller_5_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_7()
  l0 = self.box_Multiple_AND_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1471030179", "1471030179", "S14M060_ScreenAndBinkManager", "box_Dynamic_Media_Controller_5.ChannelChanged", "box_Multiple_AND_7.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_36_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371193"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|553661283"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|2067985789", "2067985789", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_33.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371189"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|44696426"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1083621049", "1083621049", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_8.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371191"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|870748958"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1777188734", "1777188734", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_51.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371209"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|2018310458"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|674239837", "674239837", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_4.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371211"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|232670259"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1395289893", "1395289893", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_53.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371207"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|337485634"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|309440783", "309440783", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_16.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371205"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1817980791"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|364274281", "364274281", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_9.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371203"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|2107289677"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1609859126", "1609859126", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_2.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371201"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|759111533"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|745433226", "745433226", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_39.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292693"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|596918445"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|539788414", "539788414", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_27.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052412704291"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|425197763"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1906566439", "1906566439", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_44.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279731"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1273825627"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|226851705", "226851705", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_49.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279735"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1436153928"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|601731419", "601731419", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_3.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279733"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1801305140"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|230935629", "230935629", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_52.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279801"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|234416943"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1839508224", "1839508224", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_20.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_15()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279799"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1059664301"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1708537029", "1708537029", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_54.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_16()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279797"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|352572694"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|958423626", "958423626", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_17.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_36_Out_17()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052992091515"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|583692215"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1729488815", "1729488815", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_36.Out", "box_MaterialController_48.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_56_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_56()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1291065053", "1291065053", "S14M060_ScreenAndBinkManager", "box_Media_System_Custom_Broadcast_Monitor_56.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_56.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_56_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372060432399866"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = 1
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|223434844"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_10_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_56
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|708817557", "708817557", "S14M060_ScreenAndBinkManager", "box_Media_System_Custom_Broadcast_Monitor_56.Disabled", "box_Media_System_Custom_Broadcast_Controller_10.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371255"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1354294098"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1980238851", "1980238851", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_12.Out", "box_MaterialController_21.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371257"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1906076366"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1307675237", "1307675237", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_12.Out", "box_MaterialController_37.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_12_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371231"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|861484650"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1454034496", "1454034496", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_12.Out", "box_MaterialController_35.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_12_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371233"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1318525455"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1828956537", "1828956537", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_12.Out", "box_MaterialController_55.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_12_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371227"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|647455348"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1379318807", "1379318807", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_12.Out", "box_MaterialController_14.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_12_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371229"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1057077245"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|273990625", "273990625", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_12.Out", "box_MaterialController_42.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_12_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371198"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1319898971"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|802763799", "802763799", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_12.Out", "box_MaterialController_41.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_12_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371196"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|965869304"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|761529593", "761529593", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_12.Out", "box_MaterialController_28.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_12_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292663"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|621168545"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1886873639", "1886873639", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_12.Out", "box_MaterialController_25.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_12_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292661"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1660024925"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|829947341", "829947341", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_12.Out", "box_MaterialController_38.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_12_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292655"
  l0.Index = 3
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|93875105"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|827179565", "827179565", "S14M060_ScreenAndBinkManager", "box_Ordered_Output_12.Out", "box_MaterialController_57.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Dynamic_Media_Controller_1_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_7()
  l0 = self.box_Multiple_AND_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_ScreenAndBinkManager|1942033397", "1942033397", "S14M060_ScreenAndBinkManager", "box_Dynamic_Media_Controller_1.ChannelChanged", "box_Multiple_AND_7.Condition", clone, l0)
  l0:Condition(2)
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_45()
end
function export:OnEnter_box_Multiple_AND_7()
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_56()
end
_compilerVersion = 4
