export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:LoadResource("soundbinary/2106903556.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.HackEnabled = DummyFunction
  self.HackDisabled = DummyFunction
  self.DoorOpened = DummyFunction
  self.DoorClosed = DummyFunction
  self.DoorWithoutHackOpened = DummyFunction
  self.Door_Entrance = {}
  self.HackableEntity = nil
  self.Hinge_Hackable_Door_37 = "9223372069597546487"
  self[5] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[8] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_8_Added
  l0.Removed = self.f_8_Removed
  l0.Out = self.f_8_Out
  self[2] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_2_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[6] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_6_Added
  l0.Removed = self.f_6_Removed
  l0.Out = self.f_6_Out
  self[4] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = self.f_4_Disabled
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
function export:CloseDoor()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372069597530404"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = self.f_3_Out
  l0:MoveBackward()
end
function export:DisableHack()
  local l0
  l0 = self[8]
  l0.Input = self.Door_Entrance
  l0.Data[0] = "9223372069597530403"
  l0.Data[1] = "9223372069597530407"
  l0.Data[2] = "9223372069597530404"
  l0.Data[3] = "9223372069597546495"
  l0.Data[4] = self.Hinge_Hackable_Door_37
  l0.Data[5] = "9223372069597546495"
  l0:Add()
end
function export:EnableHack()
  local l0
  l0 = self[6]
  l0.Input = self.Door_Entrance
  l0.Data[0] = "9223372069597530403"
  l0.Data[1] = "9223372069597530407"
  l0.Data[2] = "9223372069597530404"
  l0.Data[3] = "9223372069597546495"
  l0.Data[4] = self.Hinge_Hackable_Door_37
  l0.Data[5] = "9223372069597546495"
  l0:Add()
end
function export:OpenDoor()
  local l0
  l0 = self[2]
  l0.HackableEntity = "9223372069597530403"
  l0:ForceHack()
end
function export:OpenDoorWithoutHack()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372069597530404"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = self.f_7_Out
  l0:MoveForward()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Hinge_Hackable_Door_37
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = self.f_1_Out
  l0:MoveBackward()
end
function export:f_7_Out()
  self = self._graph
  self:DoorWithoutHackOpened()
end
function export:f_5_Out()
  self = self._graph
  self:DoorOpened()
end
function export:f_1_Out()
  self = self._graph
  self:DoorClosed()
end
function export:f_8_Added()
  local l0
  self = self._graph
  l0 = self[8]
  self.Door_Entrance = l0.Target
  self:en_4()
  l0 = self[4]
  l0:DisableHack()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[8]
  self.Door_Entrance = l0.Target
end
function export:f_8_Removed()
  local l0
  self = self._graph
  l0 = self[8]
  self.Door_Entrance = l0.Target
end
function export:f_2_HackForced()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Entity = "9223372069597530403"
  l0.SoundId = "soundbinary/2106903556.bnk"
  l0:Play()
end
function export:f_6_Added()
  local l0
  self = self._graph
  l0 = self[6]
  self.Door_Entrance = l0.Target
  self:en_4()
  l0 = self[4]
  l0:EnableHack()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[6]
  self.Door_Entrance = l0.Target
end
function export:f_6_Removed()
  local l0
  self = self._graph
  l0 = self[6]
  self.Door_Entrance = l0.Target
end
function export:f_4_Disabled()
  self = self._graph
  self:HackDisabled()
end
function export:f_4_Enabled()
  self = self._graph
  self:HackEnabled()
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.HackableEntityList = self.Door_Entrance
end
function export:HackEnabled()
end
function export:HackDisabled()
end
function export:DoorOpened()
end
function export:DoorClosed()
end
function export:DoorWithoutHackOpened()
end
_compilerVersion = 4
