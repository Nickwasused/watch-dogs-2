GetVehicleSeatEntryPositionBox = {}
function GetVehicleSeatEntryPositionBox:Create(cbox)
end
function GetVehicleSeatEntryPositionBox:Init(cbox)
end
function GetVehicleSeatEntryPositionBox:ShutDown()
end
function GetVehicleSeatEntryPositionBox:In()
  local seatPos = GetSeatEntryPos(self.Vehicle, self:GetSeatID(self.Seat))
  local isValid = 1
  self.xPos = seatPos[1]
  self.yPos = seatPos[2]
  self.zPos = seatPos[3]
  if self.xPos == nil then
    self.xPos = 0
    isValid = 0
  end
  if self.yPos == nil then
    self.yPos = 0
    isValid = 0
  end
  if self.zPos == nil then
    self.zPos = 0
    isValid = 0
  end
  if isValid == 1 then
    self:Out()
  else
    self:Failed()
  end
end
function GetVehicleSeatEntryPositionBox:Disable()
end
function GetVehicleSeatEntryPositionBox:GetSeatID(seatName)
  if seatName == "Driver" then
    return 1
  elseif seatName == "FrontPassenger" then
    return 2
  elseif seatName == "RearPassengerLeft" then
    return 3
  elseif seatName == "RearPassengerRight" then
    return 4
  elseif seatName == "FirstAvailable" then
    return 0
  end
  return 0
end
export = GetVehicleSeatEntryPositionBox
GetVehicleSeatEntryPositionBox = nil
