TriggerState = {}
function TriggerState:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function TriggerState:Init(cbox)
end
function TriggerState:ShutDown()
end
function TriggerState:SetEnabled()
  local Out = self.Out
  local Enabled = self.Enabled
  if LuaLibCore:VerifyDataInputEntity(self.Trigger, "Trigger") then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.Trigger, "CBaseTriggerComponent", "SetEnabled")
    Out(self)
    Enabled(self)
  end
end
function TriggerState:SetDisabled()
  local Out = self.Out
  local Disabled = self.Disabled
  if LuaLibCore:VerifyDataInputEntity(self.Trigger, "Trigger") then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.Trigger, "CBaseTriggerComponent", "SetDisabled")
    Out(self)
    Disabled(self)
  end
end
function TriggerState:SetAsUsable()
  local Trigger = self.Trigger
  local CheckLookAt = self.CheckLookAt
  local CheckAngle = self.CheckAngle
  local Out = self.Out
  local Usable = self.Usable
  if LuaLibCore:VerifyDataInputEntity(self.Trigger, "Trigger") then
    if CheckLookAt ~= nil then
      if CheckLookAt == 1 then
        CDominoManager_GetInstance():SendRegisteredEventToEntity(Trigger, "CProximityTriggerComponent", "SetCheckLookAt")
      elseif CheckLookAt == 0 then
        CDominoManager_GetInstance():SendRegisteredEventToEntity(Trigger, "CProximityTriggerComponent", "SetNotCheckLookAt")
      end
    end
    if CheckAngle ~= nil then
      if CheckAngle == 1 then
        CDominoManager_GetInstance():SendRegisteredEventToEntity(Trigger, "CProximityTriggerComponent", "SetCheckAngle")
      elseif CheckAngle == 0 then
        CDominoManager_GetInstance():SendRegisteredEventToEntity(Trigger, "CProximityTriggerComponent", "SetNotCheckAngle")
      end
    end
    CDominoManager_GetInstance():SendRegisteredEventToEntity(Trigger, "CProximityTriggerComponent", "SetAsUsable")
    Out(self)
    Usable(self)
  end
end
function TriggerState:SetAsUnusable()
  local Out = self.Out
  local Unusable = self.Unusable
  if LuaLibCore:VerifyDataInputEntity(self.Trigger, "Trigger") then
    CDominoManager_GetInstance():SendRegisteredEventToEntity(self.Trigger, "CProximityTriggerComponent", "SetAsUnusable")
    Out(self)
    Unusable(self)
  end
end
function TriggerState:SetIconOffset()
  if LuaLibCore:VerifyDataInputEntity(self.Trigger, "Trigger") and self.IconZOffset ~= nil then
    SetIconOffsetForProximityTrigger(self.Trigger, self.IconZOffset)
    self:IconOffsetSet()
  end
end
function TriggerState:SetCustomOasisId()
  if LuaLibCore:VerifyDataInputEntity(self.Trigger, "Trigger") and self.OasisId ~= nil then
    SetCustomOasisIdForProximityTriggerId(self.Trigger, self.OasisId.id)
    self:CustomOasisIdSet()
  end
end
function TriggerState:SetNoInteractionText()
  if LuaLibCore:VerifyDataInputEntity(self.Trigger, "Trigger") then
    SetNoInteractionTextForProximityTriggerId(self.Trigger)
    self:NoInteractionTextSet()
  end
end
export = TriggerState
TriggerState = nil
