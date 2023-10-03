export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S04M050_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main"
  self.Out = DummyFunction
  self.OutScreen = DummyFunction
  self.OutScreenDedSec = DummyFunction
  self.PlayerEntity = nil
  self.box_Media_System_Custom_Broadcast_Monitor_23 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_23
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|189981444"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_23_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_23_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_Media_System_Custom_Broadcast_Monitor_20 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_20
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|524925678"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_20_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_20_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_4 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_4
  l0._graph = self
  l0._name = "box_CinematicPrep_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|875560786"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_4_PostOut
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1371022474"
  l0.PreOut = self.f_box_CinematicPrep_3_PreOut
  l0.PostOut = DummyFunction
  self.box_Media_System_Custom_Broadcast_Monitor_24 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_24
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1677037184"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_24_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_24_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1771859460"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
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
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|647722069", "647722069", "S04M050_SCR_Main", "In", "box_CinematicPrep_3.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:InScreenDedSec()
  local l0
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372069428778145"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|68047887"
  l0.ByIndexSet = self.f_box_MaterialController_8_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|605344957", "605344957", "S04M050_SCR_Main", "InScreenDedSec", "box_MaterialController_8.SetByIndex", self, l0)
  l0:SetByIndex()
end
function export:InScreens()
  local l0
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372057046009630"
  l0.OnGenericChannel = 1
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1835191254"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_21_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1199534304", "1199534304", "S04M050_SCR_Main", "InScreens", "box_Media_System_Custom_Broadcast_Controller_21.LoadAndPlayCustomBroadcast", self, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_MaterialController_8_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372069428778149"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1061602568"
  l0.ByIndexSet = self.f_box_MaterialController_9_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1043122761", "1043122761", "S04M050_SCR_Main", "box_MaterialController_8.ByIndexSet", "box_MaterialController_9.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_23_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_23()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|754922031", "754922031", "S04M050_SCR_Main", "box_Media_System_Custom_Broadcast_Monitor_23.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_23.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_23_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372051060086163"
  l0.Channel = "Generic"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|964395720"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_15_ChannelChanged
  l0.Out = DummyFunction
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_23
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1158837949", "1158837949", "S04M050_SCR_Main", "box_Media_System_Custom_Broadcast_Monitor_23.Disabled", "box_Dynamic_Media_Controller_15.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Dynamic_Media_Controller_22_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372057046009632"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|467877594"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_25_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1846598076", "1846598076", "S04M050_SCR_Main", "box_Dynamic_Media_Controller_22.ChannelChanged", "box_Media_System_Custom_Broadcast_Controller_25.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_25_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_20()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1025375364", "1025375364", "S04M050_SCR_Main", "box_Media_System_Custom_Broadcast_Controller_25.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_20.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MaterialController_5_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372066755811582"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1185372498"
  l0.ByIndexSet = self.f_box_MaterialController_10_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1321725280", "1321725280", "S04M050_SCR_Main", "box_MaterialController_5.ByIndexSet", "box_MaterialController_10.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_20_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_20()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|516944694", "516944694", "S04M050_SCR_Main", "box_Media_System_Custom_Broadcast_Monitor_20.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_20.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_20_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372051060086165"
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|2095884064"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_16_ChannelChanged
  l0.Out = DummyFunction
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_20
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|62333992", "62333992", "S04M050_SCR_Main", "box_Media_System_Custom_Broadcast_Monitor_20.Disabled", "box_Dynamic_Media_Controller_16.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Lanes_Restrictions_Control_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372063966593460"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|722949511"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|687494846", "687494846", "S04M050_SCR_Main", "box_Lanes_Restrictions_Control_17.Out", "box_Cinema_Zone_Cleanup_18.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Cinema_Zone_Cleanup_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372049950207942"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_M050_SCR_Missionstart/s04_m050_scr_missionstart.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|944617677", "944617677", "S04M050_SCR_Main", "box_Cinema_Zone_Cleanup_18.Out", "box_PlaySequence_v5_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_MaterialController_7_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372066755811578"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|822982874"
  l0.ByIndexSet = self.f_box_MaterialController_2_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|2133533664", "2133533664", "S04M050_SCR_Main", "box_MaterialController_7.ByIndexSet", "box_MaterialController_2.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_MaterialController_2_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372069428778155"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1719846587"
  l0.ByIndexSet = self.f_box_MaterialController_6_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1875876307", "1875876307", "S04M050_SCR_Main", "box_MaterialController_2.ByIndexSet", "box_MaterialController_6.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_CinematicPrep_4_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1202715369", "1202715369", "S04M050_SCR_Main", "box_CinematicPrep_4.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_Dynamic_Media_Controller_15_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372057046009631"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = 1
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1664870634"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_19_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|545842952", "545842952", "S04M050_SCR_Main", "box_Dynamic_Media_Controller_15.ChannelChanged", "box_Media_System_Custom_Broadcast_Controller_19.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_MaterialController_9_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372069428778137"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|803591812"
  l0.ByIndexSet = self.f_box_MaterialController_7_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1658708416", "1658708416", "S04M050_SCR_Main", "box_MaterialController_9.ByIndexSet", "box_MaterialController_7.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_MaterialController_10_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372066755811570"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1896312873"
  l0.ByIndexSet = self.f_box_MaterialController_12_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|733445104", "733445104", "S04M050_SCR_Main", "box_MaterialController_10.ByIndexSet", "box_MaterialController_12.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_CinematicPrep_3_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053647796086"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|670368762"
  l0.Out = self.f_box_Lanes_Restrictions_Control_17_Out
  l0 = self.box_CinematicPrep_3
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1389886265", "1389886265", "S04M050_SCR_Main", "box_CinematicPrep_3.PreOut", "box_Lanes_Restrictions_Control_17.In", l0, l1)
  l1:In()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_19_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_24()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|900122339", "900122339", "S04M050_SCR_Main", "box_Media_System_Custom_Broadcast_Controller_19.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_24.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_24_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_24()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|431329771", "431329771", "S04M050_SCR_Main", "box_Media_System_Custom_Broadcast_Monitor_24.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_24.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_24_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372051060086169"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|287877080"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_22_ChannelChanged
  l0.Out = DummyFunction
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_24
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1646252284", "1646252284", "S04M050_SCR_Main", "box_Media_System_Custom_Broadcast_Monitor_24.Disabled", "box_Dynamic_Media_Controller_22.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_MaterialController_6_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372069428778159"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|506616256"
  l0.ByIndexSet = self.f_box_MaterialController_5_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1090899250", "1090899250", "S04M050_SCR_Main", "box_MaterialController_6.ByIndexSet", "box_MaterialController_5.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_4
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_CinematicPrep_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|280370352", "280370352", "S04M050_SCR_Main", "box_PlaySequence_v5_1.Finished", "box_CinematicPrep_4.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_21_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_23()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|909864304", "909864304", "S04M050_SCR_Main", "box_Media_System_Custom_Broadcast_Controller_21.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MaterialController_12_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372066755811568"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1913180215"
  l0.ByIndexSet = self.f_box_MaterialController_11_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1212236101", "1212236101", "S04M050_SCR_Main", "box_MaterialController_12.ByIndexSet", "box_MaterialController_11.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_MaterialController_11_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372066755811572"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|2080519320"
  l0.ByIndexSet = self.f_box_MaterialController_14_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|534898980", "534898980", "S04M050_SCR_Main", "box_MaterialController_11.ByIndexSet", "box_MaterialController_14.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_MaterialController_14_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372066755811574"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|2109609833"
  l0.ByIndexSet = self.f_box_MaterialController_13_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|1491105883", "1491105883", "S04M050_SCR_Main", "box_MaterialController_14.ByIndexSet", "box_MaterialController_13.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Dynamic_Media_Controller_16_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|342796553", "342796553", "S04M050_SCR_Main", "box_Dynamic_Media_Controller_16.ChannelChanged", "OutScreen", clone, self)
  self:OutScreen()
end
function export:f_box_MaterialController_13_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\s04m050_scr.domino|@S04M050_SCR_Main|566900824", "566900824", "S04M050_SCR_Main", "box_MaterialController_13.ByIndexSet", "OutScreenDedSec", clone, self)
  self:OutScreenDedSec()
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_23()
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_20()
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_24()
end
function export:Out()
end
function export:OutScreen()
end
function export:OutScreenDedSec()
end
_compilerVersion = 4
