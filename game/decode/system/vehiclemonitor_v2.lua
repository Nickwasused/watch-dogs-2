VehicleMonitor = {}
function VehicleMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function VehicleMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidEnter = nil
  self.callidEntered = nil
  self.callidLeave = nil
  self.callidExiting = nil
  self.callidChangeSeat = nil
  self.callidOnStateChange = nil
  self.callidOnBailedOut = nil
  self.callidOnRagDollBailedOut = nil
  self.callidOnVehicleNoMove = nil
  self.callidOnVehicleBroken = nil
  self.callidSlowEnoughToExit = nil
  self.callidIsUnderwater = nil
  self.callidIsPawnHiding = nil
  self.callidPawnIsNotHiding = nil
  self.callidTakenDamage = nil
  self.callidVehicleJump = nil
  self.callidVehicleLanding = nil
  self.callidBollardTakedown = nil
  self.callidSteamPipeTakedown = nil
  self.callidTrafficLightTakedown = nil
end
function VehicleMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function VehicleMonitor:Enable()
  instance = CScriptCallbackSystem_GetInstance()
  self.Pawn = self.Pawn or GetLocalPlayerEntityId()
  self.Vehicle = self.Vehicle or GetInvalidEntityId()
  self.CheckNow = self.CheckNow or 0
  if self.Pawn ~= nil and self.callidEnter == nil then
    self.callidEnter = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_Enter", "get in vehicle", self.missionId)
    self.callidEntered = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_Entered", "AssignSeatCompleted", self.missionId)
    self.callidLeave = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_Exited", "PawnDetachedFromVehicle", self.missionId)
    self.callidExiting = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_Exiting", "StartLeavingVehicle", self.missionId)
    self.callidChangeSeat = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_ChangeSeat", "change seat in vehicle", self.missionId)
    self.callidOnBailedOut = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_BailedOut", "bailout vehicle", self.missionId)
    self.callidOnRagDollBailedOut = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_BailedOut", "BailOutOfVecicleActionRequest", self.missionId)
    self.callidIsPawnHiding = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_IsPawnHiding", "IsHidingInVehicle", self.missionId)
    self.callidPawnIsNotHiding = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_PawnIsNotHiding", "IsUnHidingInVehicle", self.missionId)
  end
  if self.Vehicle ~= GetInvalidEntityId() and self.callidOnStateChange == nil then
    self.callidOnStateChange = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_OnStateChange", "OnStateChange", self.missionId)
  end
  if self.Vehicle ~= GetInvalidEntityId() and self.callidOnVehicleNoMove == nil and self.NoMoveTime ~= nil then
    self.callidOnVehicleNoMove = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_VehicleNoMovement", "VehicleNoMovement", self.missionId)
    StartVehicleMovingTimer(self.Vehicle, 1, self.NoMoveTime)
  end
  if self.IsSlowEnoughToExit ~= DummyFunction and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    self.callidSlowEnoughToExit = instance:RegisterMissionEventCallback(self.Vehicle, self, "OnSlowEnoughToExit", "DominoVehicleSafeToExit", self.missionId)
    VerifyVehicleSlowEnoughToExit(self.Vehicle)
  end
  if self.IsUnusable ~= DummyFunction and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    if self.CheckNow == 1 and GetVehicleIsDriveable(self.Vehicle) == 0 then
      self:IsUnusable()
    elseif self.callidOnVehicleBroken == nil then
      self.callidOnVehicleBroken = instance:RegisterMissionEventCallback(self.Vehicle, self, "OnVehicleBroken", "DominoVehicleBroken", self.missionId)
    end
  end
  if self.TakenDamage ~= DummyFunction and self.callidTakenDamage == nil and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    self.callidTakenDamage = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_HealthChanged", "VehicleHealthChangedEvent", self.missionId)
  end
  if self.VehicleJump ~= DummyFunction and self.callidVehicleJump == nil and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    self.callidVehicleJump = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_VehicleJump", "VehicleJump", self.missionId)
  end
  if self.VehicleLanding ~= DummyFunction and self.callidVehicleLanding == nil and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    self.callidVehicleLanding = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_VehicleLanding", "VehicleLanding", self.missionId)
  end
  if self.IsUnderwater ~= DummyFunction and self.callidIsUnderwater == nil and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    self.callidIsUnderwater = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_Underwater", "DominoIsUnderwater", self.missionId)
  end
  if self.CheckNow ~= nil and self.CheckNow == 1 then
    self.VehicleID = GetCurrentVehicleEntityId(self.Pawn)
    self.IsPassenger = GetPawnIsPassenger(self.Pawn)
    if self.VehicleID ~= GetInvalidEntityId() then
      if self.Vehicle == GetInvalidEntityId() or self.Vehicle == self.VehicleID then
        self:Enter()
        self:Entered()
      end
    else
      self:Leave()
    end
  end
  if (self.BollardTakedown ~= DummyFunction or self.SteamPipeTakedown ~= DummyFunction or self.TrafficLightTakedown ~= DummyFunction or self.FullTakedown ~= DummyFunction or self.PartialTakedown ~= DummyFunction) and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    self.callidBollardTakedown = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_BollardTakedown", "DominoBollardTakedown", self.missionId)
    self.callidSteamPipeTakedown = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_SteamPipeTakedown", "DominoSteamPipeTakedown", self.missionId)
    self.callidTrafficLightTakedown = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_TrafficLightTakedown", "DominoTrafficLightTakedown", self.missionId)
  end
  self:Enabled()
end
function VehicleMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function VehicleMonitor:UnregisterCallback()
  instance = CScriptCallbackSystem_GetInstance()
  if self.Pawn ~= nil and self.callidEnter ~= nil then
    instance:RemoveCallback(self.Pawn, self.callidEnter)
    self.callidEnter = nil
    instance:RemoveCallback(self.Pawn, self.callidEntered)
    self.callidEntered = nil
    instance:RemoveCallback(self.Pawn, self.callidLeave)
    self.callidLeave = nil
    instance:RemoveCallback(self.Pawn, self.callidExiting)
    self.callidExiting = nil
    instance:RemoveCallback(self.Pawn, self.callidChangeSeat)
    self.callidChangeSeat = nil
    instance:RemoveCallback(self.Pawn, self.callidOnBailedOut)
    self.callidOnBailedOut = nil
    instance:RemoveCallback(self.Pawn, self.callidOnRagDollBailedOut)
    self.callidOnRagDollBailedOut = nil
  end
  if self.callidOnStateChange ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidOnStateChange)
    self.callidOnStateChange = nil
  end
  if self.callidSlowEnoughToExit ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidSlowEnoughToExit)
    self.callidSlowEnoughToExit = nil
  end
  if self.callidIsUnderwater ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidIsUnderwater)
    self.callidIsUnderwater = nil
  end
  if self.callidOnVehicleNoMove ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidOnVehicleNoMove)
    self.callidOnVehicleNoMove = nil
    StartVehicleMovingTimer(self.Vehicle, 0, self.NoMoveTime)
  end
  if self.callidOnVehicleBroken ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidOnVehicleBroken)
    self.callidOnVehicleBroken = nil
  end
  if self.callidBollardTakedown ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidBollardTakedown)
    self.callidBollardTakedown = nil
  end
  if self.callidSteamPipeTakedown ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidSteamPipeTakedown)
    self.callidSteamPipeTakedown = nil
  end
  if self.callidTrafficLightTakedown ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidTrafficLightTakedown)
    self.callidTrafficLightTakedown = nil
  end
  if self.callidIsPawnHiding ~= nil then
    instance:RemoveCallback(self.Pawn, self.callidIsPawnHiding)
    self.callidIsPawnHiding = nil
  end
  if self.callidPawnIsNotHiding ~= nil then
    instance:RemoveCallback(self.Pawn, self.callidPawnIsNotHiding)
    self.callidPawnIsNotHiding = nil
  end
  if self.callidTakenDamage ~= nil then
    instance:RemoveCallback(self.Pawn, self.callidTakenDamage)
    self.callidTakenDamage = nil
  end
  if self.callidVehicleJump ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidVehicleJump)
    self.callidVehicleJump = nil
  end
  if self.callidVehicleLanding ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidVehicleLanding)
    self.callidVehicleLanding = nil
  end
end
function VehicleMonitor:Event_Enter()
  self.IsPassenger = GetPawnIsPassenger(self.Pawn)
  self.VehicleID = GetCurrentVehicleEntityId(self.Pawn)
  if self.Vehicle == GetInvalidEntityId() or self.VehicleID ~= GetInvalidEntityId() and self.Vehicle == self.VehicleID then
    self:Enter()
  end
end
function VehicleMonitor:Event_Entered()
  self.IsPassenger = GetPawnIsPassenger(self.Pawn)
  self.VehicleID = GetCurrentVehicleEntityId(self.Pawn)
  if self.Vehicle == GetInvalidEntityId() or self.VehicleID ~= GetInvalidEntityId() and self.Vehicle == self.VehicleID then
    self:Entered()
  end
end
function VehicleMonitor:Event_Exited()
  self.IsPassenger = GetPawnIsPassenger(self.Pawn)
  self.VehicleID = GetCurrentVehicleEntityId(self.Pawn)
  if self.Vehicle == GetInvalidEntityId() or self.VehicleID ~= GetInvalidEntityId() and self.Vehicle == self.VehicleID then
    self:Leave()
  end
end
function VehicleMonitor:Event_Exiting()
  self.IsPassenger = GetPawnIsPassenger(self.Pawn)
  self.VehicleID = GetCurrentVehicleEntityId(self.Pawn)
  if self.Vehicle == GetInvalidEntityId() or self.VehicleID ~= GetInvalidEntityId() and self.Vehicle == self.VehicleID then
    self:Exiting()
  end
end
function VehicleMonitor:Event_ChangeSeat()
  self.IsPassenger = GetPawnIsPassenger(self.Pawn)
  self.VehicleID = GetCurrentVehicleEntityId(self.Pawn)
  if self.Vehicle == GetInvalidEntityId() or self.VehicleID ~= GetInvalidEntityId() and self.Vehicle == self.VehicleID then
    self:ChangeSeat()
  end
end
function VehicleMonitor:Event_OnStateChange(state)
  self.StateID = state
  self:StateChange()
end
function VehicleMonitor:Event_BailedOut()
  self.IsPassenger = GetPawnIsPassenger(self.Pawn)
  self.VehicleID = GetCurrentVehicleEntityId(self.Pawn)
  if self.Vehicle == GetInvalidEntityId() or self.VehicleID ~= GetInvalidEntityId() and self.Vehicle == self.VehicleID then
    self:Leave()
    self:BailedOut()
  end
end
function VehicleMonitor:Event_VehicleNoMovement(timerEnd)
  if timerEnd == 1 then
    self:NoMoveTimer()
  else
    self:OnMoveTimer()
  end
end
function VehicleMonitor:OnVehicleBroken()
  self:IsUnusable()
end
function VehicleMonitor:OnSlowEnoughToExit()
  self:IsSlowEnoughToExit()
end
function VehicleMonitor:Event_BollardTakedown(event)
  local takedownResult = tonumber(event)
  if takedownResult == 1 then
    self:FullTakedown()
  else
    self:PartialTakedown()
  end
  self:BollardTakedown()
end
function VehicleMonitor:Event_SteamPipeTakedown(event)
  local takedownResult = tonumber(event)
  if takedownResult == 1 then
    self:FullTakedown()
  else
    self:PartialTakedown()
  end
  self:SteamPipeTakedown()
end
function VehicleMonitor:Event_TrafficLightTakedown(event)
  local takedownResult = tonumber(event)
  if takedownResult == 1 then
    self:FullTakedown()
  else
    self:PartialTakedown()
  end
  self:TrafficLightTakedown()
end
function VehicleMonitor:Event_Underwater(event)
  self:IsUnderwater()
end
function VehicleMonitor:Event_HealthChanged(previousHealth, newHealth)
  if previousHealth - newHealth > 1 then
    self:TakenDamage()
  end
end
function VehicleMonitor:Event_IsPawnHiding(event)
  self:IsPawnHiding()
end
function VehicleMonitor:Event_PawnIsNotHiding(event)
  self:PawnIsNotHiding()
end
function VehicleMonitor:Event_VehicleJump(event)
  self:VehicleJump()
end
function VehicleMonitor:Event_VehicleLanding(event)
  self:VehicleLanding()
end
export = VehicleMonitor
VehicleMonitor = nil
