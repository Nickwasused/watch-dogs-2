VehicleSeatingController = {}
function VehicleSeatingController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function VehicleSeatingController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.assignEntity = nil
  self.unassignEntity = nil
  self.assignCompleted = nil
  self.unassignCompleted = nil
  self.playerAssignCompleted = nil
  self.vehicleBroken = nil
end
function VehicleSeatingController:ShutDown()
  self._type.UnregisterCallbacks(self)
end
function VehicleSeatingController:MoveAndUseSeat()
  local Assigned = self.Assigned
  self:SetupMoveAndUseSeat()
  Assigned(self)
end
function VehicleSeatingController:SetupMoveAndUseSeat()
  self:UnregisterCallbacks(self)
  if LuaLibCore:VerifyDataInputEntity(self.Pawn, "Pawn") and self.assignCompleted == nil then
    callbackTarget = self.Pawn
  end
  local speed = ""
  if self.WalkType ~= nil then
    speed = self.WalkType
  end
  if callbackTarget ~= nil and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    self.assignEntity = callbackTarget
    self.assignCompleted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(callbackTarget, self, "Event_MoveToEntryCompleted", "AICommandResultEvent", self.missionId)
    self.commandID = ReserveAndMoveToSeat(self.Vehicle, self.Pawn, self:GetSeatID(self.Seat), speed, self.CanAutoSwitchToDriver or 0)
    if self.Pawn == GetLocalPlayerEntityId() then
      self.playerAssignCompleted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(callbackTarget, self, "Event_PlayerEntryCompleted", "AssignSeatCompleted", self.missionId)
    elseif self.commandID == GetAICommand_InvalidID(0) then
      self:AbortMoveAndUseSeat()
    end
  end
end
function VehicleSeatingController:Assign()
  local Assigned = self.Assigned
  local Out = self.Out
  local callbackTarget
  self:UnregisterCallbacks(self)
  if LuaLibCore:VerifyDataInputEntity(self.Pawn, "Pawn") and self.assignCompleted == nil then
    callbackTarget = self.Pawn
  end
  if callbackTarget ~= nil and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    self.assignEntity = callbackTarget
    self.assignCompleted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(callbackTarget, self, "Event_MoveToEntryCompleted", "AICommandResultEvent", self.missionId)
    local shouldUseAnim = self.UseAnimation or 0
    self.commandID = ReserveAndUseSeat(self.Vehicle, self.Pawn, self:GetSeatID(self.Seat), shouldUseAnim)
    if self.Pawn == GetLocalPlayerEntityId() or shouldUseAnim == 0 and self.commandID ~= GetAICommand_InvalidID(0) then
      self.playerAssignCompleted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(callbackTarget, self, "Event_PlayerEntryCompleted", "AssignSeatCompleted", self.missionId)
    elseif self.commandID == GetAICommand_InvalidID(0) then
      self:AbortMoveAndUseSeat()
    end
  end
  Assigned(self)
  Out(self)
end
function VehicleSeatingController:Unassign()
  local Unassigned = self.Unassigned
  local Out = self.Out
  local callbackTarget
  if self.Pawn ~= nil and self.unassignCompleted == nil then
    if LuaLibCore:VerifyDataInputEntity(self.Pawn, "Pawn") then
      callbackTarget = self.Pawn
    end
  elseif self.Vehicle ~= nil and self.unassignCompleted == nil and LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    callbackTarget = self.Vehicle
  end
  if callbackTarget ~= nil then
    self.unassignEntity = callbackTarget
    self.unassignCompleted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(callbackTarget, self, "Event_UnassignSeatCompleted", "UnassignSeatCompleted", self.missionId)
  end
  UnassignVehicleSeat(self.Vehicle or GetInvalidEntityId(), self.Pawn or GetInvalidEntityId(), self:GetSeatID(self.Seat), self.UseAnimation or 0)
  Unassigned(self)
  Out(self)
end
function VehicleSeatingController:Event_PlayerEntryCompleted(event)
  self:UnregisterCallbacks(self)
  return self:AssignCompleted()
end
function VehicleSeatingController:Event_UnassignSeatCompleted(event)
  self:UnregisterCallbacks(self)
  return self:UnassignCompleted()
end
function VehicleSeatingController:Event_MoveToEntryCompleted(commandID, result)
  local Out = self.Out
  if self.commandID == commandID then
    if result == 2 then
      self._type.UnregisterCallbacks(self)
      return self:AssignCompleted()
    elseif result == 3 or result == 4 then
      self._type.UnregisterCallbacks(self)
      self:AbortMoveAndUseSeat(self)
    end
  end
end
function VehicleSeatingController:UnregisterCallbacks()
  if self.assignEntity ~= nil or self.unassignEntity ~= nil then
    if self.assignCompleted ~= nil then
      instance = CScriptCallbackSystem_GetInstance()
      instance:RemoveCallback(self.assignEntity, self.assignCompleted)
      self.assignCompleted = nil
    end
    if self.playerAssignCompleted ~= nil then
      instance = CScriptCallbackSystem_GetInstance()
      instance:RemoveCallback(self.assignEntity, self.playerAssignCompleted)
      self.playerAssignCompleted = nil
    end
    self.assignEntity = nil
    if self.unassignCompleted ~= nil then
      instance = CScriptCallbackSystem_GetInstance()
      instance:RemoveCallback(self.unassignEntity, self.unassignCompleted)
      self.unassignCompleted = nil
      self.unassignEntity = nil
    end
  end
end
function VehicleSeatingController:GetSeatID(seatName)
  if seatName == "Driver" then
    return 1
  elseif seatName == "FrontPassenger" then
    return 2
  elseif seatName == "RearPassengerLeft" then
    return 3
  elseif seatName == "RearPassengerRight" then
    return 4
  elseif seatName == "SeatPassenger_02" then
    return 5
  elseif seatName == "SeatPassenger_03" then
    return 6
  elseif seatName == "SeatPassenger_04" then
    return 7
  elseif seatName == "SeatPassenger_05" then
    return 8
  elseif seatName == "SeatPassenger_06" then
    return 9
  elseif seatName == "SeatPassenger_07" then
    return 10
  elseif seatName == "SeatPassenger_08" then
    return 11
  elseif seatName == "SeatPassenger_09" then
    return 12
  elseif seatName == "SeatPassenger_10" then
    return 13
  elseif seatName == "SeatPassenger_11" then
    return 14
  elseif seatName == "SeatPassenger_12" then
    return 15
  elseif seatName == "FirstAvailable" then
    return 0
  end
  return 0
end
export = VehicleSeatingController
VehicleSeatingController = nil
