CustomScan = {}
function CustomScan:Create(cbox)
end
function CustomScan:Init(cbox)
end
function CustomScan:ShutDown()
end
function CustomScan:startScan()
  self.player = self.player or GetLocalPlayerId()
  local felonyType = self:GetFelonyTypeID(self.FelonyType)
  self.skipDispatchBark = self.skipDispatchBark or 0
  self.detectionRate = self.detectionRate or -1
  self.transitionToFelony = self.transitionToFelony or 1
  local Out = self.Out
  if self.player then
    FelonyStartCustomScan(self.player, felonyType, self.customScanIndex, self.skipDispatchBark, self.detectionRate, self.transitionToFelony)
  end
  Out(self)
end
function CustomScan:GetFelonyTypeID(felonyTypeName)
  if felonyTypeName == "Police" then
    return 0
  elseif felonyTypeName == "AFI" then
    return 1
  elseif felonyTypeName == "P_8" then
    return 3
  elseif felonyTypeName == "T_13" then
    return 6
  elseif felonyTypeName == "Boys" then
    return 9
  elseif felonyTypeName == "Ridaz" then
    return 10
  elseif felonyTypeName == "UZulu" then
    return 11
  elseif felonyTypeName == "Bratva" then
    return 12
  elseif felonyTypeName == "Wolves" then
    return 15
  end
  return 0
end
export = CustomScan
CustomScan = nil
