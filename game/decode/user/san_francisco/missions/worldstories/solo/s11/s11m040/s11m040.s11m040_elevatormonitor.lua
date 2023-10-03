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
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/915393988.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2917480546.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/713951920.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1922221619.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1877074416.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3785152517.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2010780472.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/919785047.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.ElevatorMoved_LowPosition = DummyFunction
  self.ElevatorMoved_HighPosition = DummyFunction
  self.DoorsOpened_ColdRoom = DummyFunction
  self.DoorsClosed_ColdRoom = DummyFunction
  self.DoorsOpened_BoilerRoom = DummyFunction
  self.DoorsClosed_BoilerRoom = DummyFunction
  self.DoorsOpening_ColdRoom = DummyFunction
  self.ElevatorMoving_HighPosition = DummyFunction
  self.ElevatorMoving_LowPosition = DummyFunction
  self.DoorOpening_BoilerRoom = DummyFunction
  self.WoodenDoor_Opened = DummyFunction
  self[27] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_27_Started
  l0.Finished = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = self.f_13_OnFwdMovementStarted
  l0.OnFwdMovementFinished = self.f_13_OnFwdMovementFinished
  l0.OnBkwMovementStarted = self.f_13_OnBkwMovementStarted
  l0.OnBkwMovementFinished = self.f_13_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[25] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_25_Started
  l0.Finished = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
  self[40] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_40_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[24] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = self.f_9_OnFwdMovementStarted
  l0.OnFwdMovementFinished = self.f_9_OnFwdMovementFinished
  l0.OnBkwMovementStarted = self.f_9_OnBkwMovementStarted
  l0.OnBkwMovementFinished = self.f_9_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
  self[37] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[37]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_37_Out
  self[39] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_39_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[44] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[45] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[45]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[46] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[21] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = self.f_8_OnFwdMovementStarted
  l0.OnFwdMovementFinished = self.f_8_OnFwdMovementFinished
  l0.OnBkwMovementStarted = self.f_8_OnBkwMovementStarted
  l0.OnBkwMovementFinished = self.f_8_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[42] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_42_Started
  l0.Finished = DummyFunction
  self[26] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[19] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_19_Out
  self[17] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_17_Out
  self[6] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[23] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[41] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = self.f_41_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[22] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[22]
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
function export:CloseDoors_BoilerRoom()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = self.f_31_Out_1
  l0:In()
end
function export:CloseDoors_ColdRoom()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_36_Out_0
  l0.Out[1] = self.f_36_Out_1
  l0:In()
end
function export:MoveElevator_HighPosition()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_34_Out_0
  l0.Out[1] = self.f_34_Out_1
  l0:In()
end
function export:MoveElevator_LowPosition()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_33_Out_0
  l0.Out[1] = self.f_33_Out_1
  l0:In()
end
function export:OpenDoors_BoilerRoom()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_32_Out_0
  l0.Out[1] = self.f_32_Out_1
  l0:In()
end
function export:OpenDoors_ColdRoom()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_35_Out_0
  l0.Out[1] = self.f_35_Out_1
  l0:In()
end
function export:f_27_Started()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Seconds = 2.5
  l0:Start()
end
function export:f_13_OnBkwMovementFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0:In()
end
function export:f_13_OnBkwMovementStarted()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Entity = "9223372061323390705"
  l0.SoundId = "soundbinary/1922221619.bnk"
  l0:Play()
end
function export:f_13_OnFwdMovementFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_14_Out_0
  l0.Out[1] = self.f_14_Out_1
  l0:In()
end
function export:f_13_OnFwdMovementStarted()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Entity = "9223372061323390705"
  l0.SoundId = "soundbinary/2010780472.bnk"
  l0:Play()
end
function export:f_25_Started()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Seconds = 15.8
  l0:Start()
end
function export:f_11_Out()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Disable()
end
function export:f_40_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[27]
  l0.SoundId = "soundbinary/919785047.bnk"
  l0:Play()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(1)
end
function export:f_20_Out_1()
  self = self._graph
  self:DoorsClosed_BoilerRoom()
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(0)
end
function export:f_18_Out_1()
  self = self._graph
  self:DoorsOpened_BoilerRoom()
end
function export:f_31_Out_0()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(1)
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  self:en_2()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_30_Out_0
  l0.Out[1] = self.f_30_Out_1
  l0:In()
end
function export:f_35_Out_1()
  local l0
  self = self._graph
  self:en_4()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_34_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_38_Out_0
  l0.Out[1] = self.f_38_Out_1
  l0:In()
end
function export:f_34_Out_1()
  local l0
  self = self._graph
  self:en_3()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_9_OnBkwMovementFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0:In()
end
function export:f_9_OnBkwMovementStarted()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(1)
end
function export:f_9_OnFwdMovementFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0.Out[2] = self.f_10_Out_2
  l0:In()
end
function export:f_9_OnFwdMovementStarted()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(0)
end
function export:f_15_Out()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Disable()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[41]
  l0.SoundId = "soundbinary/713951920.bnk"
  l0:Play()
end
function export:f_39_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[25]
  l0.SoundId = "soundbinary/1877074416.bnk"
  l0:Play()
end
function export:f_45_TimeElapsed()
  self = self._graph
  self:WoodenDoor_Opened()
end
function export:f_32_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_29_Out_0
  l0.Out[1] = self.f_29_Out_1
  l0:In()
end
function export:f_32_Out_1()
  local l0
  self = self._graph
  self:en_2()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_8_OnBkwMovementFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0:In()
end
function export:f_8_OnBkwMovementStarted()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Entity = "9223372061323390707"
  l0.SoundId = "soundbinary/1922221619.bnk"
  l0:Play()
end
function export:f_8_OnFwdMovementFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0:In()
end
function export:f_8_OnFwdMovementStarted()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Entity = "9223372061323390707"
  l0.SoundId = "soundbinary/2010780472.bnk"
  l0:Play()
end
function export:f_29_Out_0()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(0)
end
function export:f_29_Out_1()
  self = self._graph
  self:DoorOpening_BoilerRoom()
end
function export:f_28_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_28_Out_1()
  self = self._graph
  self:ElevatorMoving_LowPosition()
end
function export:f_28_Out_2()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Entity = "9223372068348216667"
  l0.SoundId = "soundbinary/915393988.bnk"
  l0:Play()
end
function export:f_42_Started()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Seconds = 2.7
  l0:Start()
end
function export:f_3_MovedBackward()
  local l0
  self = self._graph
  self:en_43()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_3_MovedForward()
  local l0
  self = self._graph
  self:en_43()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_33_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_28_Out_0
  l0.Out[1] = self.f_28_Out_1
  l0.Out[2] = self.f_28_Out_2
  l0:In()
end
function export:f_33_Out_1()
  local l0
  self = self._graph
  self:en_3()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_26_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[42]
  l0.SoundId = "soundbinary/3785152517.bnk"
  l0:Play()
end
function export:f_2_MovedBackward()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_2_MovedForward()
  local l0
  self = self._graph
  self:en_1()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_4_MovedBackward()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_4_MovedForward()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveForward()
end
function export:f_7_Out()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Enable()
end
function export:f_30_Out_0()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_30_Out_1()
  self = self._graph
  self:DoorsOpening_ColdRoom()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(1)
end
function export:f_12_Out_1()
  self = self._graph
  self:ElevatorMoved_HighPosition()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(1)
end
function export:f_16_Out_1()
  self = self._graph
  self:DoorsClosed_ColdRoom()
end
function export:f_19_Out()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Disable()
end
function export:f_17_Out()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Enable()
end
function export:f_14_Out_0()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:f_14_Out_1()
  self = self._graph
  self:DoorsOpened_ColdRoom()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[39]
  l0.Seconds = 2.7
  l0:Start()
end
function export:f_36_Out_0()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_36_Out_1()
  local l0
  self = self._graph
  self:en_4()
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0:MoveBackward()
end
function export:f_38_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_38_Out_1()
  self = self._graph
  self:ElevatorMoving_HighPosition()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:f_10_Out_1()
  self = self._graph
  self:ElevatorMoved_LowPosition()
end
function export:f_10_Out_2()
  local l0
  self = self._graph
  l0 = self[46]
  l0.Entity = "9223372068348216667"
  l0.SoundId = "soundbinary/2917480546.bnk"
  l0:Play()
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.MoveableEntity = "9223372061323390705"
end
function export:en_43()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372061323390715"
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
  l0.Out = DummyFunction
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.MoveableEntity = "9223372061323390711"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.MoveableEntity = "9223372061323390707"
end
function export:en_3()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372061323390711"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_3_MovedForward
  l0.MovedBackward = self.f_3_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_2()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372061323390709"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_2_MovedForward
  l0.MovedBackward = self.f_2_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_4()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372061323390703"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_4_MovedForward
  l0.MovedBackward = self.f_4_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
end
function export:en_1()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372061323390707"
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
  l0.Out = DummyFunction
end
function export:en_5()
  local l0
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372061323390705"
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
  l0.Out = DummyFunction
end
function export:ElevatorMoved_LowPosition()
end
function export:ElevatorMoved_HighPosition()
end
function export:DoorsOpened_ColdRoom()
end
function export:DoorsClosed_ColdRoom()
end
function export:DoorsOpened_BoilerRoom()
end
function export:DoorsClosed_BoilerRoom()
end
function export:DoorsOpening_ColdRoom()
end
function export:ElevatorMoving_HighPosition()
end
function export:ElevatorMoving_LowPosition()
end
function export:DoorOpening_BoilerRoom()
end
function export:WoodenDoor_Opened()
end
_compilerVersion = 4
