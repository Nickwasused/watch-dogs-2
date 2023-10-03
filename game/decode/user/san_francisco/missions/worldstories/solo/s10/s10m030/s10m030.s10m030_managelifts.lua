export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:LoadResource("soundbinary/4075311810.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1732618735.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/120256320.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1857481464.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2344623958.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/962520994.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3411970017.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1936918042.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.OpenDoorsElevatorLaunched = DummyFunction
  self.MoveElevatorUpFinished = DummyFunction
  self.MoveElevatorDownFinished = DummyFunction
  self.DoorsElevatorClosed = DummyFunction
  self.OpenDoorsExtLaunched = DummyFunction
  self.CloseDoorsExtLaunched = DummyFunction
  self.CloseDoorsElevatorLaunched = DummyFunction
  self.MoveElevatorUpStarted = DummyFunction
  self.MoveElevatorDownStarted = DummyFunction
  self[9] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_8_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = self.f_8_OnFwdMovementFinished
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_16_Out
  self[1] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[17] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[12] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[14] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
  self[6] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[56] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[56]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = self.f_56_OnFwdMovementFinished
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_56_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_2_Out
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[10] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[7] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CloseDoorsElevator()
  local l0
  l0 = self[1]
  l0.SoundId = "soundbinary/120256320.bnk"
  l0:Play()
end
function export:CloseDoorsExt()
  local l0
  self:en_70()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:MoveElevatorDown()
  local l0
  l0 = self[14]
  l0.Entity = "9223372062266132528"
  l0.SoundId = "soundbinary/4075311810.bnk"
  l0:Play()
end
function export:MoveElevatorUp()
  local l0
  l0 = self[9]
  l0.Entity = "9223372062266132528"
  l0.SoundId = "soundbinary/1857481464.bnk"
  l0:Play()
end
function export:OpenDoorsElevator()
  local l0
  l0 = self[6]
  l0.SoundId = "soundbinary/962520994.bnk"
  l0:Play()
end
function export:OpenDoorsExt()
  local l0
  self:en_70()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_45_MovedBackward()
  local l0
  self = self._graph
  self:en_48()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_45_MovedForward()
  local l0
  self = self._graph
  self:en_48()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_32_MovedBackward()
  local l0
  self = self._graph
  self:en_44()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_32_MovedForward()
  local l0
  self = self._graph
  self:en_44()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_52_MovedBackward()
  local l0
  self = self._graph
  self:en_42()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_52_MovedForward()
  local l0
  self = self._graph
  self:en_42()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_36_MovedBackward()
  local l0
  self = self._graph
  self:en_45()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_36_MovedForward()
  local l0
  self = self._graph
  self:en_45()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_11_Out_0
  l0.Out[1] = self.f_11_Out_1
  l0:In()
end
function export:f_53_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0:In()
end
function export:f_53_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_19_Out_0
  l0.Out[1] = self.f_19_Out_1
  l0:In()
end
function export:f_8_Disabled()
  self = self._graph
  self:DoorsElevatorClosed()
end
function export:f_8_OnFwdMovementFinished()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Disable()
end
function export:f_70_MovedBackward()
  self = self._graph
  self:OpenDoorsExtLaunched()
end
function export:f_70_MovedForward()
  self = self._graph
  self:CloseDoorsExtLaunched()
end
function export:f_5_Out_0()
  self = self._graph
  self:MoveElevatorUpFinished()
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(0)
end
function export:f_5_Out_2()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Entity = "9223372062266132528"
  l0.SoundId = "soundbinary/1732618735.bnk"
  l0:Play()
end
function export:f_5_Out_3()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Input(0)
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  self:en_53()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(1)
end
function export:f_11_Out_0()
  local l0
  self = self._graph
  self:en_53()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_11_Out_1()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:f_3_Out_0()
  self = self._graph
  self:MoveElevatorDownFinished()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(1)
end
function export:f_3_Out_2()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Entity = "9223372062266132528"
  l0.SoundId = "soundbinary/3411970017.bnk"
  l0:Play()
end
function export:f_3_Out_3()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Input(1)
end
function export:f_33_MovedBackward()
  self = self._graph
  self:OpenDoorsElevatorLaunched()
end
function export:f_33_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0:In()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(1)
end
function export:f_20_Out_1()
  self = self._graph
  self:MoveElevatorDownStarted()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Entity = "9223372062266132528"
  l0.SoundId = "soundbinary/1936918042.bnk"
  l0:Play()
end
function export:f_1_Out()
  local l0
  self = self._graph
  self:en_32()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_44_MovedBackward()
  local l0
  self = self._graph
  self:en_52()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_44_MovedForward()
  local l0
  self = self._graph
  self:en_52()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:f_18_Out_1()
  self = self._graph
  self:CloseDoorsElevatorLaunched()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0:In()
end
function export:f_48_MovedBackward()
  local l0
  self = self._graph
  self:en_33()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_48_MovedForward()
  local l0
  self = self._graph
  self:en_33()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_42_MovedBackward()
  local l0
  self = self._graph
  self:en_36()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_42_MovedForward()
  local l0
  self = self._graph
  self:en_36()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Entity = "9223372062266132528"
  l0.SoundId = "soundbinary/2344623958.bnk"
  l0:Play()
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_32()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_56_OnBkwMovementFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0.Out[2] = self.f_3_Out_2
  l0.Out[3] = self.f_3_Out_3
  l0:In()
end
function export:f_56_OnFwdMovementFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0.Out[2] = self.f_5_Out_2
  l0.Out[3] = self.f_5_Out_3
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:Enable()
end
function export:f_4_Out()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:Disable()
end
function export:f_19_Out_0()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(0)
end
function export:f_19_Out_1()
  self = self._graph
  self:MoveElevatorUpStarted()
end
function export:en_45()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459206"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_45_MovedForward
  l0.MovedBackward = self.f_45_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_32()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459194"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_32_MovedForward
  l0.MovedBackward = self.f_32_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_52()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459196"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_52_MovedForward
  l0.MovedBackward = self.f_52_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_36()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459202"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_36_MovedForward
  l0.MovedBackward = self.f_36_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_53()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459192"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_53_MovedForward
  l0.MovedBackward = self.f_53_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.MoveableEntity = "9223372051857459208"
end
function export:en_70()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372055806812084"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_70_MovedForward
  l0.MovedBackward = self.f_70_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_33()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459208"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_33_MovedForward
  l0.MovedBackward = self.f_33_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_44()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459198"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_44_MovedForward
  l0.MovedBackward = self.f_44_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_48()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459204"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_48_MovedForward
  l0.MovedBackward = self.f_48_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_42()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372051857459200"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_42_MovedForward
  l0.MovedBackward = self.f_42_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_56()
  local l0
  l0 = self[56]
  l0.MoveableEntity = "9223372051857459192"
end
function export:OpenDoorsElevatorLaunched()
end
function export:MoveElevatorUpFinished()
end
function export:MoveElevatorDownFinished()
end
function export:DoorsElevatorClosed()
end
function export:OpenDoorsExtLaunched()
end
function export:CloseDoorsExtLaunched()
end
function export:CloseDoorsElevatorLaunched()
end
function export:MoveElevatorUpStarted()
end
function export:MoveElevatorDownStarted()
end
_compilerVersion = 4
