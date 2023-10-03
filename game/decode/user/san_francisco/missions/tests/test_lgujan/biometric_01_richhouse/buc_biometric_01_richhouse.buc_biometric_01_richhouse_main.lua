export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/singleplayer/BiometricCarKeyActivity.BiometricCarKeyActivity_Main.lua")
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/HackableController.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:RegisterBox("domino/System/TriggerVehicleAlarm.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.OwnerLocationIcon = "9223372047218374500"
  self.MissionArea_5 = "9223372047218374504"
  self.CLO_9223372047218374498 = "9223372047218374498"
  self.CarLocationIcon = "9223372047218374497"
  self.CLO_9223372047218374495 = "9223372047218374495"
  self.LockedIngredient_Lock_2 = "9223372047097331457"
  self.vehicle = nil
  self.Car_Locked = {
    section = "",
    item = "",
    id = "4294983740"
  }
  self.Invisible_VRACtivator = "9223372047517208020"
  self.VR_InteriorCamera_ = "9223372047517203543"
  self.VR_ExitNode_EndNode = "9223372047360824169"
  self.VR_SourceNode = "9223372047360824165"
  self.VR_Switch = "9223372047360824167"
  self.VR_ExitNode = "9223372047360824169"
  self.VrProfilingPath_388 = "9223372047360824173"
  self.VrProfilingPath_389 = "9223372047360824264"
  self[1] = cbox:CreateBox("domino/Library/singleplayer/BiometricCarKeyActivity.BiometricCarKeyActivity_Main.lua")
  l0 = self[1]
  l0._graph = self
  l0.LayerLoaded = DummyFunction
  l0.Started = self.f_1_Started
  l0.OwnerSpawned = DummyFunction
  l0.OwnerProfiled = DummyFunction
  l0.OwnerHacked = DummyFunction
  l0.VehicleSpawned = self.f_1_VehicleSpawned
  l0.VehiclePickedUp = self.f_1_VehiclePickedUp
  l0.MissionSuccess = DummyFunction
  l0.MissionFailed = DummyFunction
  l0.Out = DummyFunction
  self[15] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_15_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_15_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[4] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Activated = self.f_4_Activated
  l0.Deactivated = DummyFunction
  self[23] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  self[2] = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = self.f_2_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_2_TimeElapsed
  self[6] = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_6_HackForced
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
  l0 = self[1]
  l0.Mission = "MissionList.9223372047218374505"
  l0.MissionLayer = "BiometricCar_01_Main"
  l0.MissionArea = self.MissionArea_5
  l0.VehicleCLO = self.CLO_9223372047218374495
  l0.VehicleIcon = self.CarLocationIcon
  l0.VehicleLockIcon = "9223372047218376175"
  l0.VehicleProfileLocked = {
    section = "",
    item = "",
    id = "4294984286"
  }
  l0.VehicleProfileUnLocked = {
    section = "",
    item = "",
    id = "4294984287"
  }
  l0.OwnerCLO = self.CLO_9223372047218374498
  l0.OwnerIcon = self.OwnerLocationIcon
  l0.OwnerProfile = {
    section = "",
    item = "",
    id = "4294983736"
  }
  l0.DropOffIcon = "9223372047218374502"
  l0:Start()
end
function export:f_5_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_Switch
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_9_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_13_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_InteriorCamera_
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = DummyFunction
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Disable()
end
function export:f_18_Out_1()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Stop()
end
function export:f_18_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_SourceNode
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = DummyFunction
  l0.UnBound = self.f_19_UnBound
  l0.Out = DummyFunction
  l0:UnBind()
end
function export:f_16_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_InteriorCamera_
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = DummyFunction
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:UnBind()
end
function export:f_8_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VrProfilingPath_389
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_12_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = self.PlayerEntity
  l0.FelonyType = nil
  l0.HeatValue = 1
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372048779320402"
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StartChase()
end
function export:f_14_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VrProfilingPath_388
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = DummyFunction
  l0.UnBound = self.f_16_UnBound
  l0.Out = DummyFunction
  l0:UnBind()
end
function export:f_12_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VrProfilingPath_388
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_13_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_1_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_SourceNode
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_5_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_1_VehiclePickedUp()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Activate()
end
function export:f_1_VehicleSpawned()
  local l0
  self = self._graph
  l0 = self[1]
  self.vehicle = l0.Vehicle
end
function export:f_17_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_ExitNode
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = DummyFunction
  l0.UnBound = self.f_20_UnBound
  l0.Out = DummyFunction
  l0:UnBind()
end
function export:f_9_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_ExitNode
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_8_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_20_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VrProfilingPath_389
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = DummyFunction
  l0.UnBound = self.f_14_UnBound
  l0.Out = DummyFunction
  l0:UnBind()
end
function export:f_15_Disabled()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Deactivate()
end
function export:f_15_HackSuccess()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0.Out[2] = self.f_18_Out_2
  l0:In()
end
function export:f_7_EnterForced()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Enable()
end
function export:f_4_Activated()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Start()
end
function export:f_19_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_Switch
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = DummyFunction
  l0.UnBound = self.f_17_UnBound
  l0.Out = DummyFunction
  l0:UnBind()
end
function export:f_2_Started()
  local l0
  self = self._graph
  l0 = self[6]
  l0.HackableEntity = self.Invisible_VRACtivator
  l0:ForceHack()
end
function export:f_2_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerVehicleAlarm.lua")]
  l0.VehicleEntity = self.vehicle
  l0.Length = 10
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:In()
end
function export:f_6_HackForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.VR_InteriorCamera_
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_7_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0:ForceEnter()
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.HackableEntity = self.VR_ExitNode_EndNode
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.Seconds = 10
end
_compilerVersion = 4
