export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MediaSystemController.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/PawnHealthController.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self[8] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[5] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Loaded = self.f_5_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[13] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_13_Out
  self[9] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_9_Out
  self[6] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
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
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_3_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = self.MainLayer
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_4_Is_nil
  l0.Is_not_nil = self.f_4_Is_not_nil
  l0:In()
end
function export:f_7_Is_nil()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(0)
end
function export:f_7_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Checkpoint = self.CheckPoint
  l0:In()
end
function export:f_10_Popped()
  self = self._graph
  self:Out()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(1)
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(1)
end
function export:f_14_BroadcastStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_3_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_5_Loaded()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_12_Is_nil()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(0)
end
function export:f_12_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = self.CinemaZone
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = 0
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_11_Out
  l0:CleanZone()
end
function export:f_4_Is_nil()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[5]
  l0.LayerName = self.MainLayer
  l0:Load()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_10_Popped
  l0:Pop()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.CinemaZone
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_12_Is_nil
  l0.Is_not_nil = self.f_12_Is_not_nil
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MediaSystemController.lua")]
  l0.BroadcastType = nil
  l0.BroadcastInfo = nil
  l0._graph = self
  l0.BroadcastStarted = DummyFunction
  l0.BroadcastStopped = self.f_14_BroadcastStopped
  l0.SystemPaused = DummyFunction
  l0.SystemUnpaused = DummyFunction
  l0.Unloaded = DummyFunction
  l0.Reloaded = DummyFunction
  l0.OnDisabledSpecialBroadcastSubtitles = DummyFunction
  l0.OnReenabledSpecialBroadcastSubtitles = DummyFunction
  l0:StopCurrentBroadcast()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("Domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:SetInvincible()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = self.CheckPoint
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_7_Is_nil
  l0.Is_not_nil = self.f_7_Is_not_nil
  l0:In()
end
function export:Out()
end
_compilerVersion = 4
