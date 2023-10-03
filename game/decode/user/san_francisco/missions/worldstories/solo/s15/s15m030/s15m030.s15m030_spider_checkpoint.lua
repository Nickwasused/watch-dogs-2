export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("Domino/System/TeleportEntity.lua")
end
function export:Init(cbox)
  local l0
  self.CheckPointLoaded = DummyFunction
  self.Activated = DummyFunction
  self.TEST_Spider = nil
  self.Ref_SpiderDrone = nil
  self[7] = cbox:CreateBox("Domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = self.f_7_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Loaded = self.f_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[5] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[22] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_22_Out
  self[10] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_10_OnUserInPlace
  self[9] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.SetTrue = self.f_9_SetTrue
  l0.SetFalse = self.f_9_SetFalse
  l0.Toggled = self.f_9_Toggled
  l0.SetFromBool = self.f_9_SetFromBool
  self[6] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[6]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_6_PostOut
  self[12] = cbox:CreateBox("Domino/System/TeleportEntity.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TeleportDone = self.f_12_TeleportDone
  self[20] = cbox:CreateBox("Domino/System/TeleportEntity.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TeleportDone = self.f_20_TeleportDone
  self[8] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[3] = cbox:CreateBox("Domino/System/TeleportEntity.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TeleportDone = self.f_3_TeleportDone
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Activate()
  local l0
  l0 = self[5]
  l0.Checkpoint = self.SetCheckpoint
  l0:In()
end
function export:CheckpointIn()
  local l0
  l0 = self[4]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:f_7_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ForceTimeOfDay
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_23_A_is_True
  l0.A_is_False = self.f_23_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.SpiderDroneID = l0.Target
  self:Activated()
end
function export:f_4_Loaded()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Checkpoint = self.SetCheckpoint
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.SpiderDroneID = l0.Target
  self:CheckPointLoaded()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.SpiderRef_IN
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:FromEntity()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Entity = "9223372055105397390"
  l0.Destination = "9223372055105225718"
  l0.UseFadeToBlack = 0
  l0:In()
end
function export:f_10_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[10]
  self.Ref_SpiderDrone = l0.UserID
  l0 = self[9]
  l0:True()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[9]
  self.FromSpiderCheckPoint = l0.Target
end
function export:f_9_SetFalse()
  local l0
  self = self._graph
  l0 = self[9]
  self.FromSpiderCheckPoint = l0.Target
end
function export:f_9_SetFromBool()
  local l0
  self = self._graph
  l0 = self[9]
  self.FromSpiderCheckPoint = l0.Target
end
function export:f_9_SetTrue()
  local l0
  self = self._graph
  l0 = self[9]
  self.FromSpiderCheckPoint = l0.Target
  l0 = self[6]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_9_Toggled()
  local l0
  self = self._graph
  l0 = self[9]
  self.FromSpiderCheckPoint = l0.Target
end
function export:f_6_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.Ref_SpiderDrone
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:FromEntity()
end
function export:f_12_TeleportDone()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Entity = "9223372060110433468"
  l0.Destination = "9223372060110433467"
  l0.UseFadeToBlack = 0
  l0:In()
end
function export:f_20_TeleportDone()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Entity = "9223372066810222704"
  l0.Destination = "9223372062336590480"
  l0.UseFadeToBlack = 0
  l0:In()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.MissionArea = self.MissionZoneSupplied
  l0.MissionLayer = self.MissionLayer
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  l0:Enable()
end
function export:f_3_TeleportDone()
  local l0
  self = self._graph
  l0 = self[10]
  l0.CLO = self.SpiderDrone_CLO
  l0:Activate()
end
function export:f_23_A_is_False()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(1)
end
function export:f_23_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_21_Out
  l0:SetTimeOfDay()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(0)
end
function export:CheckPointLoaded()
end
function export:Activated()
end
_compilerVersion = 4
