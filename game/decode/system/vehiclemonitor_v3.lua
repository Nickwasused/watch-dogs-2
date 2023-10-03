VehicleMonitor = {}
function VehicleMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function VehicleMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidEnter = nil
  self.callidEntered = nil
  self.callidPassangerEntered = nil
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
  self.callidVehicleNitro = nil
  self.callidVehicleFlipped = nil
  self.callidVehicleRemovedFromWorld = nil
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
    if self.Vehicle ~= GetInvalidEntityId() then
      self.callidEnter = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_Enter", "get in vehicle", self.missionId)
      self.callidEntered = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_Entered", "AssignSeatCompleted", self.missionId)
      self.callidLeave = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_Exited", "PawnDetachedFromVehicle", self.missionId)
      self.callidExiting = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_Exiting", "StartLeavingVehicle", self.missionId)
    else
      self.callidEnter = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_Enter", "get in vehicle", self.missionId)
      self.callidEntered = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_Entered", "AssignSeatCompleted", self.missionId)
      self.callidLeave = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_Exited", "PawnDetachedFromVehicle", self.missionId)
      self.callidExiting = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_Exiting", "StartLeavingVehicle", self.missionId)
    end
    self.callidChangeSeat = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_ChangeSeat", "change seat in vehicle", self.missionId)
    self.callidOnBailedOut = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_BailedOut", "bailout vehicle", self.missionId)
    self.callidOnRagDollBailedOut = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_BailedOut", "BailOutOfVecicleActionRequest", self.missionId)
    self.callidIsPawnHiding = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_IsPawnHiding", "IsHidingInVehicle", self.missionId)
    self.callidPawnIsNotHiding = instance:RegisterMissionEventCallback(self.Pawn, self, "Event_PawnIsNotHiding", "IsUnHidingInVehicle", self.missionId)
  end
  if self.Vehicle ~= GetInvalidEntityId() then
    if self.callidOnStateChange == nil then
      self.callidOnStateChange = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_OnStateChange", "OnStateChange", self.missionId)
    end
    if self.callidOnVehicleNoMove == nil and self.NoMoveTime ~= nil then
      self.callidOnVehicleNoMove = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_VehicleNoMovement", "VehicleNoMovement", self.missionId)
      StartVehicleMovingTimer(self.Vehicle, 1, self.NoMoveTime)
    end
    if (LuaLibCore:IsPlugged(self, "IsFlipped") or LuaLibCore:IsPlugged(self, "IsUnFlipped")) and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
      self.callidVehicleFlipped = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_Flipped", "VehicleFlipped", self.missionId)
    end
    if LuaLibCore:IsPlugged(self, "Unloaded") and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
      self.callidVehicleRemovedFromWorld = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_Unloaded", "VehicleGettingRemoveFromWorld", self.missionId)
    end
    if LuaLibCore:IsPlugged(self, "IsSlowEnoughToExit") and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
      self.callidSlowEnoughToExit = instance:RegisterMissionEventCallback(self.Vehicle, self, "OnSlowEnoughToExit", "DominoVehicleSafeToExit", self.missionId)
      VerifyVehicpleSlowEnoughToExit(self.Vehicle)
    end
    if LuaLibCore:IsPlugged(self, "IsUnusable") and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
      if self.CheckNow == 1 and GetVehicleIsDriveable(self.Vehicle) == 0 then
        self:IsUnusable()
      elseif self.callidOnVehicleBroken == nil then
        self.callidOnVehicleBroken = instance:RegisterMissionEventCallback(self.Vehicle, self, "OnVehicleBroken", "DominoVehicleBroken", self.missionId)
      end
    end
    if LuaLibCore:IsPlugged(self, "TakenDamage") and self.callidTakenDamage == nil and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
      self.callidTakenDamage = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_HealthChanged", "VehicleHealthChangedEvent", self.missionId)
    end
    if LuaLibCore:IsPlugged(self, "VehicleJump") and self.callidVehicleJump == nil and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
      self.callidVehicleJump = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_VehicleJump", "VehicleJump", self.missionId)
    end
    if LuaLibCore:IsPlugged(self, "VehicleLanding") and self.callidVehicleLanding == nil and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
      self.callidVehicleLanding = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_VehicleLanding", "VehicleLanding", self.missionId)
    end
    if LuaLibCore:IsPlugged(self, "IsUnderwater") and self.callidIsUnderwater == nil and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
      self.callidIsUnderwater = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_Underwater", "DominoIsUnderwater", self.missionId)
    end
    if LuaLibCore:IsPlugged(self, "NitroUsed") or LuaLibCore:IsPlugged(self, "NitroStopped") and self.callidVehicleNitro == nil and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
      self.callidVehicleNitro = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_Nitro", "VehicleNitroEvent", self.missionId)
    end
    if LuaLibCore:IsPlugged(self, "PassangerEntered") and self.callidPassangerEntered == nil and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
      self.callidPassangerEntered = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_PassangerEntered", "AssignSeatCompleted", self.missionId)
    end
    if (LuaLibCore:IsPlugged(self, "BollardTakedown") or LuaLibCore:IsPlugged(self, "SteamPipeTakedown") or LuaLibCore:IsPlugged(self, "TrafficLightTakedown") or LuaLibCore:IsPlugged(self, "FullTakedown") or LuaLibCore:IsPlugged(self, "PartialTakedown")) and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
      self.callidBollardTakedown = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_BollardTakedown", "DominoBollardTakedown", self.missionId)
      self.callidSteamPipeTakedown = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_SteamPipeTakedown", "DominoSteamPipeTakedown", self.missionId)
      self.callidTrafficLightTakedown = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_TrafficLightTakedown", "DominoTrafficLightTakedown", self.missionId)
    end
  end
  if self.CheckNow ~= nil and self.CheckNow == 1 then
    self.VehicleID = GetCurrentVehicleEntityId(self.Pawn)
    self.IsPassenger = GetPawnIsPassenger(self.Pawn)
    if self.VehicleID ~= GetInvalidEntityId() then
      if self.Vehicle == GetInvalidEntityId() or self.Vehicle == self.VehicleID then
        self:Enter()
        self:Entered()
      else
        self:Leave()
      end
    else
      self:Leave()
    end
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
    if self.Vehicle ~= GetInvalidEntityId() then
      instance:RemoveCallback(self.Vehicle, self.callidEnter)
      instance:RemoveCallback(self.Vehicle, self.callidEntered)
      instance:RemoveCallback(self.Vehicle, self.callidLeave)
      instance:RemoveCallback(self.Vehicle, self.callidExiting)
    else
      instance:RemoveCallback(self.Pawn, self.callidEnter)
      instance:RemoveCallback(self.Pawn, self.callidEntered)
      instance:RemoveCallback(self.Pawn, self.callidLeave)
      instance:RemoveCallback(self.Pawn, self.callidExiting)
    end
    self.callidEnter = nil
    self.callidEntered = nil
    self.callidLeave = nil
    self.callidExiting = nil
    instance:RemoveCallback(self.Pawn, self.callidChangeSeat)
    self.callidChangeSeat = nil
    instance:RemoveCallback(self.Pawn, self.callidOnBailedOut)
    self.callidOnBailedOut = nil
    instance:RemoveCallback(self.Pawn, self.callidOnRagDollBailedOut)
    self.callidOnRagDollBailedOut = nil
  end
  if self.callidPassangerEntered ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidPassangerEntered)
    self.callidPassangerEntered = nil
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
  if self.callidVehicleNitro ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidVehicleNitro)
    self.callidVehicleNitro = nil
  end
  if self.callidVehicleFlipped ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidVehicleFlipped)
    self.callidVehicleFlipped = nil
  end
  if self.callidVehicleRemovedFromWorld ~= nil then
    instance:RemoveCallback(self.Vehicle, self.callidVehicleRemovedFromWorld)
    self.callidVehicleRemovedFromWorld = nil
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
function VehicleMonitor:Event_PassangerEntered(entityID)
  self.PassangerID = entityID
  if self.PassangerID ~= GetInvalidEntityId() then
    self:PassangerEntered()
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
function VehicleMonitor:Event_Nitro(isActive)
  if isActive == 0 then
    self:NitroStopped()
  else
    self:NitroUsed()
  end
end
function VehicleMonitor:Event_Flipped(isFlipped)
  if isFlipped == 0 then
    self:IsUnFlipped()
  else
    self:IsFlipped()
  end
end
function VehicleMonitor:Event_Unloaded(event)
  self:Unloaded()
  self._type.UnregisterCallback(self)
end
export = VehicleMonitor
VehicleMonitor = nil
