export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[10] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_10_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_9_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_7_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0.Shown = self.f_8_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[3] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[3]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self[5] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_5_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
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
  l0 = self[2]
  l0.LayerName = "Test_S13M30_Main"
  l0:Load()
end
function export:f_6_EnterForced()
  local l0
  self = self._graph
  l0 = self[7]
  l0.CameraEntity = "9223372046621344054"
  l0:Enable()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.MapPoint = "9223372046696953303"
  l0:Show()
end
function export:f_10_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372046621344054"
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
  l0.EnterForced = self.f_6_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0:ForceEnter()
end
function export:f_9_MessageRequested()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(0)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_11_Out_0
  l0.Out[1] = self.f_11_Out_1
  l0:In()
end
function export:f_7_OnStartExitCamera()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(1)
end
function export:f_8_Shown()
  local l0
  self = self._graph
  l0 = self[5]
  l0.HackableEntity = "9223372046621344047"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_11_Out_0()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_11_Out_1()
  local l0
  self = self._graph
  l0 = self[9]
  l0.MissionName = "MissionList.9223372046566117088"
  l0.DebugObjective = "Hack Teh World"
  l0:ShowNewObjective()
end
function export:f_5_HackSuccess()
  local l0
  self = self._graph
  l0 = self[10]
  l0.MapPoint = "9223372046696953303"
  l0:Hide()
end
_compilerVersion = 4
