export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S02M020_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main"
  self.PlayerEntity = nil
  self.DeadSecReactMale = nil
  self.DeadSecReactFemale = nil
  self.AI = nil
  self.box_CLOController_7 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_7
  l0._graph = self
  l0._name = "box_CLOController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|70191321"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_6 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_6
  l0._graph = self
  l0._name = "box_CLOController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|162739814"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_6_OnUserInPlace
  self.box_Timer_v2_2 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_2
  l0._graph = self
  l0._name = "box_Timer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|173822136"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_1 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_1
  l0._graph = self
  l0._name = "box_CLOController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|483752215"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_1_OnUserInPlace
  self.box_CLOController_5 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_5
  l0._graph = self
  l0._name = "box_CLOController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|1728008411"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:End_Broadcast()
  local l0
  self:OnEnter_box_Media_System_Custom_Broadcast_Controller_14()
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|1205934781", "1205934781", "S02M020_SCR_Main", "End_Broadcast", "box_Media_System_Custom_Broadcast_Controller_14.EndAllCustomMediaBroadcasts", self, l0)
  l0:EndAllCustomMediaBroadcasts()
end
function export:In()
  local l0
  l0 = self.box_CLOController_1
  l0.CLO = "9223372049720888214"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|1047129362", "1047129362", "S02M020_SCR_Main", "In", "box_CLOController_1.Activate", self, l0)
  l0:Activate()
end
function export:TriggerDeadSecVideoReact()
  local l0
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491180"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|390518463"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_13_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|1224676736", "1224676736", "S02M020_SCR_Main", "TriggerDeadSecVideoReact", "box_Media_System_Custom_Broadcast_Controller_13.LoadAndPlayCustomBroadcast", self, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_CLOController_6_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_6
  self.DeadSecReactFemale = l0.UserID
  self:OnEnter_box_Media_System_Custom_Broadcast_Controller_14()
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|1526750033", "1526750033", "S02M020_SCR_Main", "box_CLOController_6.OnUserInPlace", "box_Media_System_Custom_Broadcast_Controller_14.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_Timer_v2_2_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|1971270383"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_Timer_v2_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|2122151170", "2122151170", "S02M020_SCR_Main", "box_Timer_v2_2.TimeElapsed", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_13_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_2
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|1326384694", "1326384694", "S02M020_SCR_Main", "box_Media_System_Custom_Broadcast_Controller_13.LoadAndPlayRequested", "box_Timer_v2_2.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_1_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_1
  self.DeadSecReactMale = l0.UserID
  l0 = self.box_CLOController_6
  l0.CLO = "9223372049720888215"
  l0 = self.box_CLOController_1
  l1 = self.box_CLOController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|1675421843", "1675421843", "S02M020_SCR_Main", "box_CLOController_1.OnUserInPlace", "box_CLOController_6.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_5
  l0.CLO = "9223372049720888214"
  l0.User = self.DeadSecReactMale
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|701366267", "701366267", "S02M020_SCR_Main", "box_Ordered_Output_8.Out", "box_CLOController_5.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_7
  l0.CLO = "9223372049720888215"
  l0.User = self.DeadSecReactFemale
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|367098839", "367098839", "S02M020_SCR_Main", "box_Ordered_Output_8.Out", "box_CLOController_7.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Controller_14()
  local l0
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491181"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\s02m020_scr.domino|@S02M020_SCR_Main|424935469"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
end
_compilerVersion = 4
