export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.OutScreen = DummyFunction
  self.OutScreenDedSec = DummyFunction
  self.PlayerEntity = nil
  self[23] = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_23_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_23_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_20_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_20_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self[4] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[4]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_4_PostOut
  self[3] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[3]
  l0._graph = self
  l0.PreOut = self.f_3_PreOut
  l0.PostOut = DummyFunction
  self[24] = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_24_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_24_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_1_Finished
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
  l0 = self[3]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
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
  l0.ByIndexSet = self.f_8_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
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
  l0.LoadAndPlayRequested = self.f_21_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_8_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372069428778149"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_9_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_23_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Disable()
end
function export:f_23_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372051060086163"
  l0.Channel = "Generic"
  l0._graph = self
  l0.ChannelChanged = self.f_15_ChannelChanged
  l0.Out = DummyFunction
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_22_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372057046009632"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0.LoadAndPlayRequested = self.f_25_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_25_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Enable()
end
function export:f_5_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372066755811582"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_10_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_20_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Disable()
end
function export:f_20_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372051060086165"
  l0.Channel = "Bar"
  l0._graph = self
  l0.ChannelChanged = self.f_16_ChannelChanged
  l0.Out = DummyFunction
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_17_Out()
  local l0
  self = self._graph
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
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_18_Out
  l0:CleanZone()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372049950207942"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_M050_SCR_Missionstart/s04_m050_scr_missionstart.seq"
  l0:Start()
end
function export:f_7_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372066755811578"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_2_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_2_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372069428778155"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_6_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_4_PostOut()
  self = self._graph
  self:Out()
end
function export:f_15_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372057046009631"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = 1
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0.LoadAndPlayRequested = self.f_19_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_9_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372069428778137"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_7_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_10_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372066755811570"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_12_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_3_PreOut()
  local l0
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
  l0.Out = self.f_17_Out
  l0:In()
end
function export:f_19_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Enable()
end
function export:f_24_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Disable()
end
function export:f_24_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372051060086169"
  l0.Channel = "Shop"
  l0._graph = self
  l0.ChannelChanged = self.f_22_ChannelChanged
  l0.Out = DummyFunction
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_6_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372069428778159"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_5_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_21_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Enable()
end
function export:f_12_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372066755811568"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_11_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_11_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372066755811572"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_14_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_14_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372066755811574"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_13_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_16_ChannelChanged()
  self = self._graph
  self:OutScreen()
end
function export:f_13_ByIndexSet()
  self = self._graph
  self:OutScreenDedSec()
end
function export:Out()
end
function export:OutScreen()
end
function export:OutScreenDedSec()
end
_compilerVersion = 4
