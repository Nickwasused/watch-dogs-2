export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugAnnotationTextController.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.DebugAnnotationTextEntity_323 = "9223372048624640997"
  self.Hackable_Tablet_6 = "9223372048624640996"
  self.Hackable_Tablet_7 = "9223372048740236436"
  self.L12M030_DebugAnnotationTextEntity_324 = "9223372048740236438"
  self.NotActivatedByDefault_0 = "9223372048740236440"
  self.L12M030_WomansVehicle = "9223372052734217800"
  self.L12_StoryIcon_2 = "9223372048624732010"
  self.L12M030_CodeBreaker = "9223372052734291488"
  self.VehicleID = nil
  self[11] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[14]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_14_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_13_MessageCompleted
  self[12] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.MessageCompleted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.MessageCompleted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[2]
  l0._graph = self
  self[6] = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = self.f_6_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = self.f_6_IsPawnHiding
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[15] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_15_Located
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
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_11_TimeElapsed()
  local l0
  self = self._graph
  self:en_10()
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0:Disable()
end
function export:f_10_Disabled()
  local l0
  self = self._graph
  l0 = self[13]
  l0:ShowLastObjectiveComplete()
end
function export:f_10_Enabled()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Seconds = 8
  l0:Start()
end
function export:f_14_Hidden()
  local l0
  self = self._graph
  self:en_4()
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0:Enable()
end
function export:f_13_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Succeed()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.MapPoint = self.L12_StoryIcon_2
  l0:Show()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.CLO = self.L12M030_CodeBreaker
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.DistrictsDB = "Districts.9223372048308080052"
  l0:Start()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[6]
  l0.Vehicle = self.L12M030_WomansVehicle
  l0:Enable()
end
function export:f_7_TimeElapsed()
  local l0
  self = self._graph
  self:en_4()
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0:Disable()
end
function export:f_6_Enabled()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Objective = {
    section = "",
    item = "",
    id = "457702"
  }
  l0:ShowNewObjective()
end
function export:f_6_IsPawnHiding()
  local l0
  self = self._graph
  l0 = self[14]
  l0.MapPoint = self.L12_StoryIcon_2
  l0:Hide()
end
function export:f_15_Located()
  local l0
  self = self._graph
  self:en_10()
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0:Enable()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Objective = {
    section = "",
    item = "",
    id = "457703"
  }
  l0:ShowNewObjective()
end
function export:f_4_Enabled()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Seconds = 8
  l0:Start()
end
function export:en_10()
  local l0
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = self.L12M030_DebugAnnotationTextEntity_324
  l0.Text = nil
  l0._graph = self
  l0.Enabled = self.f_10_Enabled
  l0.Disabled = self.f_10_Disabled
  l0.TextSet = DummyFunction
end
function export:en_4()
  local l0
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = self.DebugAnnotationTextEntity_323
  l0.Text = nil
  l0._graph = self
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = self.f_4_Disabled
  l0.TextSet = DummyFunction
end
_compilerVersion = 4
