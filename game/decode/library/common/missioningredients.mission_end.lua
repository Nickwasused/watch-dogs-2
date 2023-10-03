export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/LMALayerController.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v4.lua")
  cbox:RegisterBox("Domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.IsPlayerAlive = 1
  self[15] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
  self[22] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_22_Out
  self[6] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[5] = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self[5]
  l0._graph = self
  self[23] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_23_Out
  self[3] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_3_Unloaded
  l0.Reseted = DummyFunction
  self[30] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = self.f_30_Out
  l0.SetTrue = self.f_30_SetTrue
  l0.SetFalse = self.f_30_SetFalse
  l0.Toggled = self.f_30_Toggled
  l0.SetFromBool = self.f_30_SetFromBool
  self[19] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[19]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_19_PostOut
  self[18] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_18_Out
  self[16] = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self[16]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_16_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[12] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_12_Out
  self[13] = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self[13]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_13_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[28] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = self.f_28_Out
  l0.SetTrue = self.f_28_SetTrue
  l0.SetFalse = self.f_28_SetFalse
  l0.Toggled = self.f_28_Toggled
  l0.SetFromBool = self.f_28_SetFromBool
  self[10] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[2] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_2_Out
  self[25] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[25]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_25_Out
  self[11] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
  self[26] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v4.lua")
  l0 = self[26]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.DamageReceived = DummyFunction
  l0.Killed = self.f_26_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = self.f_26_DeadChecked
  l0.HealthChecked = DummyFunction
  self[8] = cbox:CreateBox("Domino/System/LMALayerController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_8_Unloaded
  self[1] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.MessageCompleted = self.f_1_MessageCompleted
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:End()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.ShowMissionComplete
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_20_Is_nil
  l0.Is_not_nil = self.f_20_Is_not_nil
  l0:In()
end
function export:FromCheckpoint()
  local l0
  l0 = self[19]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(1)
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0:ShowMissionComplete()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0:In()
end
function export:f_20_Is_nil()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(0)
end
function export:f_20_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowMissionComplete
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_21_A_is_True
  l0.A_is_False = self.f_21_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_21_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0:In()
end
function export:f_21_A_is_True()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(1)
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.CheckpointList = self.Checkpoint
  l0:In()
end
function export:f_3_Unloaded()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_17_Is_nil()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:f_17_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[16]
  l0.PhoneCommunicationDb = self.TeamSpeak
  l0:StartCommunication()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[30]
  self.IsPlayerAlive = l0.Target
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0:In()
end
function export:f_30_SetFalse()
  local l0
  self = self._graph
  l0 = self[30]
  self.IsPlayerAlive = l0.Target
end
function export:f_30_SetFromBool()
  local l0
  self = self._graph
  l0 = self[30]
  self.IsPlayerAlive = l0.Target
end
function export:f_30_SetTrue()
  local l0
  self = self._graph
  l0 = self[30]
  self.IsPlayerAlive = l0.Target
end
function export:f_30_Toggled()
  local l0
  self = self._graph
  l0 = self[30]
  self.IsPlayerAlive = l0.Target
end
function export:f_19_PostOut()
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
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.TeamSpeak
  l0._graph = self
  l0.Is_nil = self.f_17_Is_nil
  l0.Is_not_nil = self.f_17_Is_not_nil
  l0:In()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[30]
  l0:True()
end
function export:f_16_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(1)
end
function export:f_29_A_is_True()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Succeed()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(0)
end
function export:f_13_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(1)
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[28]
  self.IsPlayerAlive = l0.Target
end
function export:f_28_SetFalse()
  local l0
  self = self._graph
  l0 = self[28]
  self.IsPlayerAlive = l0.Target
end
function export:f_28_SetFromBool()
  local l0
  self = self._graph
  l0 = self[28]
  self.IsPlayerAlive = l0.Target
end
function export:f_28_SetTrue()
  local l0
  self = self._graph
  l0 = self[28]
  self.IsPlayerAlive = l0.Target
end
function export:f_28_Toggled()
  local l0
  self = self._graph
  l0 = self[28]
  self.IsPlayerAlive = l0.Target
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Condition(0)
end
function export:f_27_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l1 = self[26]
  l1.Pawn = l0.PlayerID
  l1:CheckIfDead()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Condition(2)
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = self.MissionLayer
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
function export:f_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = self.LmaLayer
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
function export:f_24_Out_0()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(1)
end
function export:f_24_Out_1()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(1)
end
function export:f_25_Out()
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
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.TeamSpeak
  l0._graph = self
  l0.Is_nil = self.f_14_Is_nil
  l0.Is_not_nil = self.f_14_Is_not_nil
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Condition(1)
end
function export:f_26_DeadChecked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsPlayerAlive
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_29_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_26_Killed()
  local l0
  self = self._graph
  l0 = self[28]
  l0:False()
end
function export:f_4_Is_nil()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:f_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[8]
  l0.LMALayerName = self.LmaLayer
  l0:Unload()
end
function export:f_8_Unloaded()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(1)
end
function export:f_1_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(0)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(0)
end
function export:f_7_Is_nil()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(0)
end
function export:f_7_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[3]
  l0.LayerName = self.MissionLayer
  l0:Unload()
end
function export:f_14_Is_nil()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(0)
end
function export:f_14_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[13]
  l0.PhoneCommunicationDb = self.TeamSpeak
  l0:StartCommunication()
end
_compilerVersion = 4
