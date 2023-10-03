export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/Bind_v2.lua")
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("Domino/System/CLOMonitor.lua")
  cbox:RegisterBox("Domino/System/DrawWeapon_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/SpawnerController.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v2.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/TeleportEntity.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.TraitorNPC = nil
  self.SearchNPC = nil
  self.AI_Backstreet_1 = nil
  self.AI_Courtyard_1 = nil
  self[3] = cbox:CreateBox("Domino/System/CLOMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnUserInPlace = self.f_3_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[13] = cbox:CreateBox("Domino/System/CLOMonitor.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnUserInPlace = self.f_13_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[8] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_8_MessageRequested
  l0.MessageCompleted = DummyFunction
  self[2] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[29] = cbox:CreateBox("Domino/System/TeleportEntity.lua")
  l0 = self[29]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TeleportDone = DummyFunction
  self[11] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_11_Killed
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[12] = cbox:CreateBox("Domino/System/CLOMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnUserInPlace = self.f_12_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[39] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_39_Unloaded
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/SpawnerController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Triggered = DummyFunction
  l0.InitialSpawnDone = DummyFunction
  self[14] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[14]
  l0._graph = self
  l0.Shown = self.f_14_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[43] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[43]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_43_PostOut
  self[40] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self[44] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Loaded = self.f_44_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[10] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Shown = self.f_10_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[42] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[42]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_42_Out
  self[30] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[30]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_30_Out
  self[15] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_15_Killed
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[5] = cbox:CreateBox("Domino/System/CLOMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnUserInPlace = self.f_5_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Checkpoint_0()
  local l0
  l0 = self[44]
  l0.LayerName = "TestWorld"
  l0:Load()
end
function export:In()
  local l0
  l0 = self[2]
  l0.LayerName = "TestWorld"
  l0:Load()
end
function export:f_3_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[3]
  self.AI_Backstreet_1 = l0.UserID
  l0 = Boxes[PathID("Domino/System/DrawWeapon_v2.lua")]
  l0.Pawn = self.AI_Backstreet_1
  l0._graph = self
  l0.Out = DummyFunction
  l0.Holstered = DummyFunction
  l0.HandgunEquipped = DummyFunction
  l0.AssaultEquipped = DummyFunction
  l0.ShotGunEquipped = DummyFunction
  l0.SniperEquipped = DummyFunction
  l0:Sniper()
end
function export:f_13_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[13]
  self.TraitorNPC = l0.UserID
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = self.TraitorNPC
  l0.Child = "9223372043673451377"
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_9_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_8_MessageRequested()
  local l0
  self = self._graph
  l0 = self[39]
  l0.LayerName = "TestWorld"
  l0:Load()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_9_Bound()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Show()
end
function export:f_11_Killed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_37_Out_0
  l0.Out[1] = self.f_37_Out_1
  l0:In()
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  l0 = self[29]
  l0.Entity = self.PlayerEntity
  l0.Destination = "9223372043673431000"
  l0:In()
end
function export:f_41_Out_1()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Input(0)
end
function export:f_12_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[12]
  self.AI_Courtyard_1 = l0.UserID
end
function export:f_39_Unloaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  l0.Mission = "MissionList.106034781"
  l0._graph = self
  l0.Out = DummyFunction
  l0:TerminateMission()
end
function export:f_37_Out_0()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Hide()
end
function export:f_37_Out_1()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Condition(1)
end
function export:f_14_Shown()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Pawn = self.SearchNPC
  l0:Enable()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_41_Out_0
  l0.Out[1] = self.f_41_Out_1
  l0:In()
end
function export:f_36_Out_0()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Hide()
end
function export:f_36_Out_1()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Condition(0)
end
function export:f_28_Bound()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Show()
end
function export:f_43_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_45_Out
  l0:In()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[42]
  l0:Input(1)
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  l0 = self[13]
  l0.CLO = "4011422619223293023"
  l0:Enable()
end
function export:f_7_Out_1()
  local l0
  self = self._graph
  l0 = self[5]
  l0.CLO = "4758277768836844221"
  l0:Enable()
end
function export:f_7_Out_2()
  local l0
  self = self._graph
  l0 = self[12]
  l0.CLO = "2364307284315776696"
  l0:Enable()
end
function export:f_7_Out_3()
  local l0
  self = self._graph
  l0 = self[3]
  l0.CLO = "6022914201741116819"
  l0:Enable()
end
function export:f_44_Loaded()
  local l0
  self = self._graph
  l0 = self[43]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0:PostCinematic()
end
function export:f_10_Shown()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Pawn = self.TraitorNPC
  l0:Enable()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0.Out[2] = self.f_18_Out_2
  l0:In()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.MissionName = "MissionList.106034781"
  l0.Objective = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONSUCCESS",
    item = "MissionComplete_upper",
    id = "165443"
  }
  l0:ShowNewObjective()
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0.Out[2] = self.f_7_Out_2
  l0.Out[3] = self.f_7_Out_3
  l0:In()
end
function export:f_18_Out_1()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Checkpoint = "Checkpoint_0"
  l0:In()
end
function export:f_18_Out_2()
  local l0
  self = self._graph
  l0 = self[4]
  l0:TriggerInitialSpawn()
end
function export:f_15_Killed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_36_Out_0
  l0.Out[1] = self.f_36_Out_1
  l0:In()
end
function export:f_5_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[5]
  self.SearchNPC = l0.UserID
  l0 = Boxes[PathID("Domino/System/Bind_v2.lua")]
  l0.Parent = self.SearchNPC
  l0.Child = "9223372043673429623"
  l0.BoneName = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_28_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.MapPoint = "9223372043673429623"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Kill",
    id = "200565"
  }
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.MapPoint = "9223372043673451377"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Kill",
    id = "200565"
  }
end
_compilerVersion = 4
