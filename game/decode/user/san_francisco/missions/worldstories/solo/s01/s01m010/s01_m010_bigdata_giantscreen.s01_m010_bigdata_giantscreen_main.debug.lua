export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
end
function export:Init(cbox)
  self._name = "s01_M010_BigData_GiantScreen_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_bigdata_giantscreen.domino|@s01_M010_BigData_GiantScreen_Main"
  self.Started = DummyFunction
  self.Ended = DummyFunction
  self.PlayerEntity = nil
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
  self:OnEnter_box_Media_System_Custom_Broadcast_Controller_1()
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_bigdata_giantscreen.domino|@s01_M010_BigData_GiantScreen_Main|535848417", "535848417", "s01_M010_BigData_GiantScreen_Main", "In", "box_Media_System_Custom_Broadcast_Controller_1.LoadAndPlayCustomBroadcast", self, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:Off()
  local l0
  self:OnEnter_box_Media_System_Custom_Broadcast_Controller_1()
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_bigdata_giantscreen.domino|@s01_M010_BigData_GiantScreen_Main|1835332411", "1835332411", "s01_M010_BigData_GiantScreen_Main", "Off", "box_Media_System_Custom_Broadcast_Controller_1.EndAllCustomMediaBroadcasts", self, l0)
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_1_EndedAllCustomMediaBroadcasts()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_bigdata_giantscreen.domino|@s01_M010_BigData_GiantScreen_Main|335714325", "335714325", "s01_M010_BigData_GiantScreen_Main", "box_Media_System_Custom_Broadcast_Controller_1.EndedAllCustomMediaBroadcasts", "Ended", clone, self)
  self:Ended()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_1_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_bigdata_giantscreen.domino|@s01_M010_BigData_GiantScreen_Main|564218717", "564218717", "s01_M010_BigData_GiantScreen_Main", "box_Media_System_Custom_Broadcast_Controller_1.LoadAndPlayRequested", "Started", clone, self)
  self:Started()
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Controller_1()
  local l0
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491104"
  l0.OnGenericChannel = 1
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\s01_m010_bigdata_giantscreen.domino|@s01_M010_BigData_GiantScreen_Main|3108304"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_1_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = self.f_box_Media_System_Custom_Broadcast_Controller_1_EndedAllCustomMediaBroadcasts
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
end
function export:Started()
end
function export:Ended()
end
_compilerVersion = 4
