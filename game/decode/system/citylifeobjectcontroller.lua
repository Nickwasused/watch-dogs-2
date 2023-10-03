CityLifeObjectController = {}
function CityLifeObjectController:Create(cbox)
end
function CityLifeObjectController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnUserInPlace = nil
  self.callidOnReserve = nil
end
function CityLifeObjectController:ShutDown()
  if self.CLOEntity ~= nil then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    if self.callidOnUserInPlace ~= nil then
      scriptCallbackSystem:RemoveCallback(self.CLOEntity, self.callidOnUserInPlace)
    end
    if self.callidOnReserve ~= nil then
      scriptCallbackSystem:RemoveCallback(self.CLOEntity, self.callidOnReserve)
    end
  end
end
function CityLifeObjectController:Enable()
  scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
  self.callidOnUserInPlace = scriptCallbackSystem:RegisterMissionEventCallback(self.CLOEntity, self, "Event_OnUserInPlace", "OnCLOUserInPlace", self.missionId)
  self.callidOnReserve = scriptCallbackSystem:RegisterMissionEventCallback(self.CLOEntity, self, "Event_OnReserve", "OnCLOReserve", self.missionId)
  local Enabled = self.Enabled
  local Out = self.Out
  SetEnableCityLifeObject(self.CLOEntity, 1)
  Out(self)
  Enabled(self)
end
function CityLifeObjectController:Disable()
  local Disabled = self.Disabled
  local Out = self.Out
  SetEnableCityLifeObject(self.CLOEntity, 0)
  Out(self)
  Disabled(self)
end
function CityLifeObjectController:Set()
  local IsSet = self.IsSet
  local Out = self.Out
  if self.SetEnabled ~= nil then
    SetEnableCityLifeObject(self.CLOEntity, self.SetEnabled)
  end
  Out(self)
  IsSet(self)
end
function CityLifeObjectController:Unspawn()
  UnspawnCLOUser(self.CLOEntity)
  self:Out()
end
function CityLifeObjectController:Toggle()
  local Toggled = self.Toggled
  local Out = self.Out
  if GetEnableCityLifeObject(self.CLOEntity) == 1 then
    SetEnableCityLifeObject(self.CLOEntity, 0)
  else
    SetEnableCityLifeObject(self.CLOEntity, 1)
  end
  Out(self)
  Toggled(self)
end
function CityLifeObjectController:Event_OnUserInPlace(entity)
  self.User = entity
  if self.CLOEntity ~= nil then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    if self.callidOnUserInPlace ~= nil then
      scriptCallbackSystem:RemoveCallback(self.CLOEntity, self.callidOnUserInPlace)
    end
  end
  return self:OnUserInPlace()
end
function CityLifeObjectController:Event_OnReserve(entity)
  self.User = entity
  if self.CLOEntity ~= nil then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    if self.callidOnReserve ~= nil then
      scriptCallbackSystem:RemoveCallback(self.CLOEntity, self.callidOnReserve)
    end
  end
  return self:OnReserve()
end
export = CityLifeObjectController
CityLifeObjectController = nil
