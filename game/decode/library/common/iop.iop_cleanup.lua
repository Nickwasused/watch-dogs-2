export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/IOPController.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/HackableController_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/PawnHealthController.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.DisconnectedAnimationPlayed = DummyFunction
  self.Completed = DummyFunction
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.ATM_Camera = "9223372049706323852"
  self[5] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_5_Out
  self[3] = cbox:CreateBox("Domino/System/IOPController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_3_IOPKickOutComplete
  self[6] = cbox:CreateBox("Domino/System/HackableController_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_6_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
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
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = self.SecurityCameraList
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_4_Is_nil
  l0.Is_not_nil = self.f_4_Is_not_nil
  l0:In()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.PlayerEntity = self.PlayerEntity
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_4_Is_nil()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(0)
end
function export:f_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[6]
  l0.HackableEntityList = self.SecurityCameraList
  l0:DisableHack()
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
  l0:UnsetInvincible()
end
function export:f_3_IOPKickOutComplete()
  self = self._graph
  self:Completed()
end
function export:f_3_Out()
  self = self._graph
  self:DisconnectedAnimationPlayed()
end
function export:f_6_Disabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(1)
end
function export:DisconnectedAnimationPlayed()
end
function export:Completed()
end
function export:Out()
end
_compilerVersion = 4
