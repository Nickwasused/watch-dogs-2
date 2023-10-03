ConvoyController = {}
function ConvoyController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ConvoyController:Init(cbox)
end
function ConvoyController:ShutDown()
end
function ConvoyController:VerifyDataInputs()
  if self.VIPCharacter ~= nil and LuaLibCore:VerifyDataInputEntity(self.VIPCharacter, "VIPCharacter") == false then
    return false
  end
  if self.VIPVehicle ~= nil and LuaLibCore:VerifyDataInputEntity(self.VIPVehicle, "VIPVehicle") == false then
    return false
  end
  if self.Destination ~= nil and LuaLibCore:VerifyDataInputEntity(self.Destination, "Destination") == false then
    return false
  end
  if self.EscortCharacters ~= nil then
    local nbEscorts = table.getn(self.EscortCharacters)
    if nbEscorts > 0 and LuaLibCore:VerifyDataInputEntityList(self.EscortCharacters, "EscortCharacters") == false then
      return false
    end
  end
  if self.EscortVehicles ~= nil then
    local nbEscortVehicles = table.getn(self.EscortVehicles)
    if nbEscortVehicles > 0 and LuaLibCore:VerifyDataInputEntityList(self.EscortVehicles, "EscortVehicles") == false then
      return false
    end
  end
  return true
end
function ConvoyController:Start()
  if self:VerifyDataInputs() then
    local convoyConfig = self.ConvoyConfig
    local destination = self.Destination or ""
    local vipCharacter = self.VIPCharacter or ""
    local vipVehicle = self.VIPVehicle or ""
    local escortCharacters = self.EscortCharacters or {}
    local escortVehicles = self.EscortVehicles or {}
    local objectiveTextID = "-1"
    if self.ObjectiveText then
      objectiveTextID = self.ObjectiveText.id
    end
    local convoyId = StartConvoy(convoyConfig, objectiveTextID, destination, vipCharacter, vipVehicle, escortCharacters, escortVehicles)
    self.OutConvoyId = convoyId
    self:Started()
  end
end
function ConvoyController:Update()
  if self:VerifyDataInputs() then
    local convoyConfig = self.ConvoyConfig
    local destination = self.Destination or ""
    local vipCharacter = self.VIPCharacter or ""
    local vipVehicle = self.VIPVehicle or ""
    local escortCharacters = self.EscortCharacters or {}
    local escortVehicles = self.EscortVehicles or {}
    local convoyId = self.InConvoyId or -1
    local objectiveTextID = "-1"
    if self.ObjectiveText then
      objectiveTextID = self.ObjectiveText.id
    end
    UpdateConvoy(convoyId, convoyConfig, objectiveTextID, destination, vipCharacter, vipVehicle, escortCharacters, escortVehicles)
    self.OutConvoyId = convoyId
    self:Updated()
  end
end
function ConvoyController:Stop()
  local convoyId = self.InConvoyId or -1
  StopConvoy(convoyId)
  self.OutConvoyId = convoyId
  self:Stopped()
end
export = ConvoyController
ConvoyController = nil
